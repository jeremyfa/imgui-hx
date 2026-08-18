package imguicpp;

/**
 * cpp-target scratch storage used by the generated portable facade
 * (`imgui.ImGui`). All scratch lives in unmanaged (malloc'd) memory so no
 * hxcpp GC interaction can ever invalidate a pointer mid-call, and nothing
 * here allocates garbage per frame.
 *
 * NOT thread-safe - but neither is Dear ImGui (single context, main thread).
 */
@:allow(imgui.ImGui)
class Marshal {

    /// Numeric scratch for fixed-size array args (float[2..4], int[2..4]).
    /// Two float slots because some calls take two arrays at once.

    static var floatsA:cpp.RawPointer<cpp.Float32> = cast cpp.Stdlib.nativeMalloc(16);
    static var floatsB:cpp.RawPointer<cpp.Float32> = cast cpp.Stdlib.nativeMalloc(16);
    static var intsA:cpp.RawPointer<Int> = cast cpp.Stdlib.nativeMalloc(16);
    static var intsB:cpp.RawPointer<Int> = cast cpp.Stdlib.nativeMalloc(16);

    static function loadFloats(dst:cpp.RawPointer<cpp.Float32>, src:Array<Float>, n:Int):Void {
        for (i in 0...n) dst[i] = src[i];
    }

    static function storeFloats(src:cpp.RawPointer<cpp.Float32>, dst:Array<Float>, n:Int):Void {
        for (i in 0...n) dst[i] = src[i];
    }

    static function loadInts(dst:cpp.RawPointer<Int>, src:Array<Int>, n:Int):Void {
        for (i in 0...n) dst[i] = src[i];
    }

    static function storeInts(src:cpp.RawPointer<Int>, dst:Array<Int>, n:Int):Void {
        for (i in 0...n) dst[i] = src[i];
    }

    /// Growable float buffer for dynamic-size array args (plotLines...).

    static var dynFloats:cpp.RawPointer<cpp.Float32> = null;
    static var dynFloatsCap:Int = 0;

    static function floatsDyn(values:Array<Float>):cpp.RawPointer<cpp.Float32> {
        var n = values.length;
        if (n > dynFloatsCap) {
            dynFloats = cast cpp.Stdlib.nativeRealloc(cast dynFloats, n * 4);
            dynFloatsCap = n;
        }
        for (i in 0...n) dynFloats[i] = values[i];
        return dynFloats;
    }

    /// String buffer for inputText & co (grown on demand, never shrunk).
    /// A single buffer is enough: ImGui edits one text field at a time and the
    /// buffer contents only matter for the duration of one call.

    static var strBuf:cpp.RawPointer<cpp.Char> = null;
    static var strBufSize:Int = 0;

    /**
     * Copy the UTF-8 bytes of `s` (clamped to `maxLength` BYTES, on a codepoint
     * boundary) into the scratch buffer and return it, zero-terminated.
     */
    static function strScratch(s:String, maxLength:Int):cpp.Star<cpp.Char> {
        if (s == null) s = '';
        var needed = maxLength + 1;
        if (needed > strBufSize) {
            strBuf = cast cpp.Stdlib.nativeRealloc(cast strBuf, needed);
            strBufSize = needed;
        }
        untyped __cpp__('{
            const char* src = {0}.utf8_str();
            size_t n = src ? strlen(src) : 0;
            if (n > (size_t){1}) {
                n = (size_t){1};
                while (n > 0 && (((unsigned char)src[n]) & 0xC0) == 0x80) n--;
            }
            if (n > 0) memcpy({2}, src, n);
            {2}[n] = 0;
        }', s, maxLength, strBuf);
        return cast strBuf;
    }

    /** Whether the scratch buffer content differs from `original` (no allocation). */
    static function strChanged(original:String):Bool {
        if (original == null) original = '';
        return untyped __cpp__('strcmp({0}.utf8_str(), (const char*){1}) != 0', original, strBuf);
    }

    /** The scratch buffer content as a Haxe String (allocates - call only on change). */
    static function strRead():String {
        return untyped __cpp__('::String::create((const char*){0})', strBuf);
    }

}
