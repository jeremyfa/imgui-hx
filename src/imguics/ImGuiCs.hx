package imguics;

/**
 * cs-target runtime support for the generated bindings (`imguics.ImGui`):
 * native addresses cross as Haxe Float (53-bit mantissa covers user-space
 * pointers on every supported platform), converted to System.IntPtr at the
 * P/Invoke boundary. Scratch memory is allocated once (Marshal.AllocHGlobal
 * through DCImGui.Alloc) - nothing here allocates garbage per frame.
 */
class ImGuiCs {

    /** Float address type used across the generated cs bindings. */
    public static var numScratch:Float = 0;
    public static var arrScratchA:Float = 0;
    public static var arrScratchB:Float = 0;

    static var bufAddr:Float = 0;
    static var bufCap:Int = 0;
    static var inited:Bool = false;

    public static function init():Void {
        if (inited) return;
        inited = true;
        numScratch = addr(DCImGui.Alloc(64));
        arrScratchA = addr(DCImGui.Alloc(16));
        arrScratchB = addr(DCImGui.Alloc(16));
        bufCap = 1024;
        bufAddr = addr(DCImGui.Alloc(bufCap));
    }

    /** Haxe Float address → native pointer. */
    inline public static function ptr(a:Float):cs.system.IntPtr {
        return untyped __cs__('(global::System.IntPtr)(long){0}', a);
    }

    /** Native pointer → Haxe Float address. */
    inline public static function addr(p:cs.system.IntPtr):Float {
        return untyped __cs__('(double)(long){0}', p);
    }

    inline public static function nullPtr():cs.system.IntPtr {
        return untyped __cs__('global::System.IntPtr.Zero');
    }

    inline public static function toU64(v:Float):cs.StdTypes.UInt64 {
        return untyped __cs__('(ulong)(long){0}', v);
    }

    inline public static function toI64(v:Float):haxe.Int64 {
        return untyped __cs__('(long){0}', v);
    }

    inline public static function from64(v:cs.StdTypes.UInt64):Float {
        return untyped __cs__('(double){0}', v);
    }

    inline public static function from64i(v:haxe.Int64):Float {
        return untyped __cs__('(double){0}', v);
    }

    // Small C integer types: explicit casts at the P/Invoke boundary.
    inline public static function toI8(v:Int):cs.StdTypes.Int8 return untyped __cs__('(sbyte){0}', v);
    inline public static function toU8(v:Int):cs.StdTypes.UInt8 return untyped __cs__('(byte){0}', v);
    inline public static function toI16(v:Int):cs.StdTypes.Int16 return untyped __cs__('(short){0}', v);
    inline public static function toU16(v:Int):cs.StdTypes.UInt16 return untyped __cs__('(ushort){0}', v);

    // Typed native memory reads/writes at Float byte addresses.
    inline public static function getF32(a:Float):Float return DCImGui.GetF32(ptr(a));
    inline public static function setF32(a:Float, v:Float):Void DCImGui.SetF32(ptr(a), v);
    inline public static function getF64(a:Float):Float return DCImGui.GetF64(ptr(a));
    inline public static function setF64(a:Float, v:Float):Void DCImGui.SetF64(ptr(a), v);
    inline public static function getI32(a:Float):Int return DCImGui.GetI32(ptr(a));
    inline public static function setI32(a:Float, v:Int):Void DCImGui.SetI32(ptr(a), v);
    inline public static function getU32(a:Float):Float {
        var v = DCImGui.GetI32(ptr(a));
        return v < 0 ? v + 4294967296.0 : v;
    }
    inline public static function setU32(a:Float, v:Float):Void DCImGui.SetI32(ptr(a), Std.int(v >= 2147483648.0 ? v - 4294967296.0 : v));
    inline public static function getU16(a:Float):Int return DCImGui.GetU16(ptr(a));
    inline public static function getU8(a:Float):Int return DCImGui.GetU8(ptr(a));
    inline public static function setU8(a:Float, v:Int):Void DCImGui.SetU8(ptr(a), v);

    // Growable float buffer for dynamic-size array args (plotLines...).
    static var dynFloats:Float = 0;
    static var dynFloatsCap:Int = 0;

    /** Copy a Haxe Array<Float> into a persistent native f32 buffer; returns its address. */
    public static function floatsDyn(values:Array<Float>):Float {
        var n = values.length;
        if (n > dynFloatsCap) {
            if (dynFloats != 0) untyped __cs__('global::System.Runtime.InteropServices.Marshal.FreeHGlobal((global::System.IntPtr)(long)(double){0})', dynFloats);
            dynFloats = addr(DCImGui.Alloc(n * 4));
            dynFloatsCap = n;
        }
        for (i in 0...n) setF32(dynFloats + (i << 2), values[i]);
        return dynFloats;
    }

    /** Native pointer size in bytes. */
    public static var ptrSize(get, never):Int;
    inline static function get_ptrSize():Int return untyped __cs__('global::System.IntPtr.Size');

    /** Read a native pointer at addr. */
    inline public static function readPtr(addr:Float):Float {
        return ptrSize == 8 ? getU32(addr) + getU32(addr + 4) * 4294967296.0 : getU32(addr);
    }

    /** Whether a native pointer is NULL. */
    inline public static function isNull(p:cs.system.IntPtr):Bool {
        return untyped __cs__('{0} == global::System.IntPtr.Zero', p);
    }

    /** Read a u64 at addr as a Haxe Float (registry ids are small). */
    inline public static function getU64(a:Float):Float {
        return getU32(a) + getU32(a + 4) * 4294967296.0;
    }

    /** Read a NUL-terminated UTF-8 native string. */
    inline public static function readString(p:cs.system.IntPtr):String {
        return DCImGui.ReadUTF8(p);
    }

    /**
     * Copy `s` (UTF-8, clamped to maxLength bytes on a codepoint boundary,
     * zero-terminated) into the persistent buffer; returns its Float address.
     */
    public static function strBufPut(s:String, maxLength:Int):Float {
        var needed = maxLength + 1;
        if (needed > bufCap) {
            bufCap = needed * 2;
            bufAddr = addr(DCImGui.Alloc(bufCap));
        }
        DCImGui.WriteUTF8(s != null ? s : '', ptr(bufAddr), needed);
        return bufAddr;
    }

    /** Whether the persistent buffer differs from `original`. */
    public static function strBufChanged(original:String):Bool {
        if (original == null) original = '';
        var read = DCImGui.ReadUTF8(ptr(bufAddr));
        return read != original;
    }

    /** The persistent buffer content as a Haxe String. */
    public static function strBufRead():String {
        return DCImGui.ReadUTF8(ptr(bufAddr));
    }

}
