package imguijs;

/**
 * js-target runtime support for the generated bindings (`imguijs.ImGui`):
 * holds the emscripten-built dcimgui module and the scratch memory used to
 * marshal strings, out-params and small arrays - nothing here allocates
 * garbage per frame (bump offsets into persistent wasm heap blocks).
 *
 * The module must be loaded and passed to `init()` before any ImGui call
 * (the ceramic imgui plugin does this at startup).
 */
class ImGuiJs {

    /** The emscripten module (result of the `DCImGui()` factory promise). */
    public static var M:Dynamic = null;

    /** 16-byte block for by-value struct returns (ImVec2/ImVec4/ImTextureRef). */
    public static var vecScratch:Int = 0;

    /** 64-byte block for scalar out-params (widget macros; 8 bytes per slot). */
    public static var numScratch:Int = 0;

    /** Two 16-byte blocks for fixed-size array args (float[2..4], int[2..4]). */
    public static var arrScratchA:Int = 0;
    public static var arrScratchB:Int = 0;

    // Bump region for call-scoped UTF-8 strings.
    static var strBase:Int = 0;
    static var strCap:Int = 0;
    static var strOffset:Int = 0;

    // Persistent buffer for inputText & co (native writes into it).
    static var bufBase:Int = 0;
    static var bufCap:Int = 0;

    public static function init(module:Dynamic):Void {
        M = module;
        vecScratch = M._malloc(16);
        numScratch = M._malloc(64);
        arrScratchA = M._malloc(16);
        arrScratchB = M._malloc(16);
        strCap = 16384;
        strBase = M._malloc(strCap);
        bufCap = 1024;
        bufBase = M._malloc(bufCap);
    }

    /** Reset the call-scoped string bump region (start of each binding call). */
    public static inline function strReset():Void {
        strOffset = 0;
    }

    /** Copy a Haxe string as UTF-8 into the bump region, return its address (0 for null). */
    public static function str(s:String):Int {
        if (s == null) return 0;
        var max:Int = (M.lengthBytesUTF8(s):Int) + 1;
        if (strOffset + max > strCap) {
            // Grow (rare): allocate a bigger region; the old one leaks by design
            // (couldn't be freed safely mid-call), bounded by the largest frame.
            strCap = (strOffset + max) * 2;
            strBase = M._malloc(strCap);
            strOffset = 0;
        }
        var ptr = strBase + strOffset;
        M.stringToUTF8(s, ptr, max);
        strOffset += max;
        return ptr;
    }

    /** u64 boundary: wasm i64 params take a BigInt (WASM_BIGINT). */
    public static inline function u64(v:Float):Dynamic {
        return js.Syntax.code('BigInt(Math.round({0}))', v);
    }

    /** u64 boundary: BigInt result back to a Haxe Float. */
    public static inline function num64(v:Dynamic):Float {
        return js.Syntax.code('Number({0})', v);
    }

    // Typed heap reads/writes at byte addresses.
    public static inline function getF32(addr:Int):Float return M.HEAPF32[addr >> 2];
    public static inline function setF32(addr:Int, v:Float):Void M.HEAPF32[addr >> 2] = v;
    public static inline function getF64(addr:Int):Float return M.HEAPF64[addr >> 3];
    public static inline function setF64(addr:Int, v:Float):Void M.HEAPF64[addr >> 3] = v;
    public static inline function getI32(addr:Int):Int return M.HEAP32[addr >> 2];
    public static inline function setI32(addr:Int, v:Int):Void M.HEAP32[addr >> 2] = v;
    public static inline function getU32(addr:Int):Int return M.HEAPU32[addr >> 2];
    public static inline function setU32(addr:Int, v:Int):Void M.HEAPU32[addr >> 2] = v;
    public static inline function getU16(addr:Int):Int return M.HEAPU16[addr >> 1];
    public static inline function getU8(addr:Int):Int return M.HEAPU8[addr];
    public static inline function setU8(addr:Int, v:Int):Void M.HEAPU8[addr] = v;

    // Growable float buffer for dynamic-size array args (plotLines...).
    static var dynFloats:Int = 0;
    static var dynFloatsCap:Int = 0;

    /** Copy a Haxe Array<Float> into a persistent native f32 buffer; returns its address. */
    public static function floatsDyn(values:Array<Float>):Int {
        var n = values.length;
        if (n > dynFloatsCap) {
            if (dynFloats != 0) M._free(dynFloats);
            dynFloats = M._malloc(n * 4);
            dynFloatsCap = n;
        }
        for (i in 0...n) M.HEAPF32[(dynFloats >> 2) + i] = values[i];
        return dynFloats;
    }

    /** Native pointer size in bytes (wasm32). */
    public static inline var ptrSize:Int = 4;

    /** Read a native pointer at addr. */
    public static inline function readPtr(addr:Int):Int return M.HEAPU32[addr >> 2];

    /** Read a u64 at addr as a Haxe Float (registry ids are small: low half wins). */
    public static inline function getU64(addr:Int):Float {
        return M.HEAPU32[addr >> 2] + M.HEAPU32[(addr >> 2) + 1] * 4294967296.0;
    }

    /**
     * Copy `s` (UTF-8, clamped to maxLength bytes on a codepoint boundary,
     * zero-terminated) into the persistent buffer; returns its address.
     */
    public static function strBufPut(s:String, maxLength:Int):Int {
        if (s == null) s = '';
        var needed = maxLength + 1;
        if (needed > bufCap) {
            bufCap = needed * 2;
            bufBase = M._malloc(bufCap);
        }
        var written:Int = M.stringToUTF8(s, bufBase, needed); // truncates on codepoint boundary
        return bufBase;
    }

    /** Whether the persistent buffer differs from `original` (no allocation). */
    public static function strBufChanged(original:String):Bool {
        if (original == null) original = '';
        var i = bufBase;
        var heap:Dynamic = M.HEAPU8;
        // Compare against the UTF-8 encoding of original without materializing it:
        // cheap path - encode into the bump region and memcmp.
        strReset();
        var p = str(original);
        var j = p;
        while (true) {
            var a:Int = heap[i];
            var b:Int = heap[j];
            if (a != b) return true;
            if (a == 0) return false;
            i++;
            j++;
        }
    }

    /** The persistent buffer content as a Haxe String (allocates - call on change only). */
    public static function strBufRead():String {
        return M.UTF8ToString(bufBase);
    }

}
