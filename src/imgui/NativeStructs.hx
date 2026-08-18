package imgui;

import imgui.ImGui;

/**
 * Portable creation of the few ImGui helper structs that user code owns
 * (the generator binds their fields and member functions, but cannot emit
 * constructors: C++ ctor semantics are replicated here per target).
 *
 * Also provides raw native memory helpers for the rare APIs taking a
 * buffer + size (drag and drop payloads, polyline points...).
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class NativeStructs {

    /**
     * Allocate an ImGuiListClipper (C++ ctor semantics in imgui 1.92: plain
     * zeroing). Destroy it with `destroyListClipper` when done, or keep one
     * per call site for its lifetime (clippers are reusable).
     */
    public static function createListClipper():#if cpp cpp.Star<ImGuiListClipper> #else ImGuiListClipper #end {
        #if cpp
        // dcimgui's ImGuiListClipper is the C struct (no C++ ctor), but the
        // 1.92 constructor is a plain memset: value-init matches it exactly.
        return untyped __cpp__('new ImGuiListClipper()');
        #elseif js
        var size:Int = ImGuiListClipper.sizeOf();
        var addr:Int = imguijs.ImGuiJs.M._malloc(size);
        for (i in 0...size) imguijs.ImGuiJs.setU8(addr + i, 0);
        return (addr:ImGuiListClipper);
        #elseif cs
        var size:Int = ImGuiListClipper.sizeOf();
        var addr:Float = imguics.ImGuiCs.addr(imguics.DCImGui.Alloc(size));
        for (i in 0...size) imguics.ImGuiCs.setU8(addr + i, 0);
        return (addr:ImGuiListClipper);
        #else
        return cast null;
        #end
    }

    public static function destroyListClipper(clipper:#if cpp cpp.Star<ImGuiListClipper> #else ImGuiListClipper #end):Void {
        #if cpp
        untyped __cpp__('delete {0}', clipper);
        #elseif js
        imguijs.ImGuiJs.M._free((clipper:Int));
        #elseif cs
        untyped __cs__('global::System.Runtime.InteropServices.Marshal.FreeHGlobal((global::System.IntPtr)(long)(double){0})', (clipper:Float));
        #end
    }

    /**
     * Create an ImGuiSelectionBasicStorage. `adapter` is the index-to-storage-id
     * function pointer (use imgui.ImGuiCallbacks.selectionAdapter to install a
     * Haxe handler); the C++ constructor installs an identity adapter, but the
     * bindings replicate the ctor per target so the adapter is always set here.
     */
    public static function createSelectionBasicStorage(adapter:#if cpp cpp.RawPointer<cpp.Void> #elseif cs Float #else Int #end):#if cpp cpp.Star<ImGuiSelectionBasicStorage> #else ImGuiSelectionBasicStorage #end {
        #if cpp
        // dcimgui's ImGuiSelectionBasicStorage is the C struct (no C++ ctor):
        // value-init zeroes it, then set the constructor defaults explicitly.
        var storage:cpp.Star<ImGuiSelectionBasicStorage> = untyped __cpp__('new ImGuiSelectionBasicStorage()');
        storage._SelectionOrder = 1;
        untyped __cpp__('{0}->AdapterIndexToStorageId = (ImGuiID (*)(ImGuiSelectionBasicStorage*, int))({1})', storage, adapter);
        return storage;
        #elseif js
        var size:Int = ImGuiSelectionBasicStorage.sizeOf();
        var addr:Int = imguijs.ImGuiJs.M._malloc(size);
        for (i in 0...size) imguijs.ImGuiJs.setU8(addr + i, 0);
        var storage:ImGuiSelectionBasicStorage = addr;
        storage._SelectionOrder = 1;
        imguijs.ImGuiJs.M._dcx_ImGuiSelectionBasicStorage_SetAdapter(addr, adapter);
        return storage;
        #elseif cs
        var size:Int = ImGuiSelectionBasicStorage.sizeOf();
        var addr:Float = imguics.ImGuiCs.addr(imguics.DCImGui.Alloc(size));
        for (i in 0...size) imguics.ImGuiCs.setU8(addr + i, 0);
        var storage:ImGuiSelectionBasicStorage = addr;
        storage._SelectionOrder = 1;
        imguics.DCImGuiExtra.dcx_ImGuiSelectionBasicStorage_SetAdapter(imguics.ImGuiCs.ptr(addr), imguics.ImGuiCs.ptr(adapter));
        return storage;
        #else
        return cast null;
        #end
    }

    public static function destroySelectionBasicStorage(storage:#if cpp cpp.Star<ImGuiSelectionBasicStorage> #else ImGuiSelectionBasicStorage #end):Void {
        #if cpp
        untyped __cpp__('delete {0}', storage);
        #elseif js
        imguijs.ImGuiJs.M._free((storage:Int));
        #elseif cs
        untyped __cs__('global::System.Runtime.InteropServices.Marshal.FreeHGlobal((global::System.IntPtr)(long)(double){0})', (storage:Float));
        #end
    }

    /**
     * Allocate an ImFontConfig (C++ ctor semantics replicated per target:
     * fontDataOwnedByAtlas=true, glyphMaxAdvanceX=FLT_MAX, rasterizer
     * multiply/density=1). Destroy it with `destroyFontConfig` when done
     * (the atlas copies the config during AddFont* calls).
     */
    public static function createFontConfig():#if cpp cpp.Star<ImFontConfig> #else ImFontConfig #end {
        #if cpp
        // dcimgui's ImFontConfig is the C struct (no C++ ctor): value-init
        // zeroes it, then set the same defaults as the C++ constructor.
        var cfg:cpp.Star<ImFontConfig> = untyped __cpp__('new ImFontConfig()');
        cfg.fontDataOwnedByAtlas = true;
        cfg.extraSizeScale = 1.0;
        cfg.glyphMaxAdvanceX = 3.402823466e38;
        cfg.rasterizerMultiply = 1.0;
        cfg.rasterizerDensity = 1.0;
        return cfg;
        #elseif js
        var size:Int = ImFontConfig.sizeOf();
        var addr:Int = imguijs.ImGuiJs.M._malloc(size);
        for (i in 0...size) imguijs.ImGuiJs.setU8(addr + i, 0);
        var cfg:ImFontConfig = addr;
        cfg.fontDataOwnedByAtlas = true;
        cfg.extraSizeScale = 1.0;
        cfg.glyphMaxAdvanceX = 3.402823466e38;
        cfg.rasterizerMultiply = 1.0;
        cfg.rasterizerDensity = 1.0;
        return cfg;
        #elseif cs
        var size:Int = ImFontConfig.sizeOf();
        var addr:Float = imguics.ImGuiCs.addr(imguics.DCImGui.Alloc(size));
        for (i in 0...size) imguics.ImGuiCs.setU8(addr + i, 0);
        var cfg:ImFontConfig = addr;
        cfg.fontDataOwnedByAtlas = true;
        cfg.extraSizeScale = 1.0;
        cfg.glyphMaxAdvanceX = 3.402823466e38;
        cfg.rasterizerMultiply = 1.0;
        cfg.rasterizerDensity = 1.0;
        return cfg;
        #else
        return cast null;
        #end
    }

    public static function destroyFontConfig(cfg:#if cpp cpp.Star<ImFontConfig> #else ImFontConfig #end):Void {
        #if cpp
        untyped __cpp__('delete {0}', cfg);
        #elseif js
        imguijs.ImGuiJs.M._free((cfg:Int));
        #elseif cs
        untyped __cs__('global::System.Runtime.InteropServices.Marshal.FreeHGlobal((global::System.IntPtr)(long)(double){0})', (cfg:Float));
        #end
    }

    /**
     * Allocate native bytes and copy a haxe.io.Bytes into them (fast per
     * target: memcpy / HEAPU8.set / Marshal.Copy). Suited to font files and
     * other large blobs. The returned buffer is never freed automatically.
     */
    public static function allocBytesFromHaxe(bytes:haxe.io.Bytes):#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end {
        var len = bytes.length;
        #if cpp
        var addr:cpp.RawPointer<cpp.UInt8> = cast cpp.Stdlib.nativeMalloc(len);
        var src:cpp.Pointer<cpp.UInt8> = cpp.NativeArray.address(bytes.getData(), 0);
        untyped __cpp__('memcpy({0}, {1}, {2})', addr, src.raw, len);
        return addr;
        #elseif js
        var addr:Int = imguijs.ImGuiJs.M._malloc(len);
        var view = new js.lib.Uint8Array((bytes.getData():js.lib.ArrayBuffer), 0, len);
        (imguijs.ImGuiJs.M.HEAPU8:js.lib.Uint8Array).set(view, addr);
        return addr;
        #elseif cs
        var addr:Float = imguics.ImGuiCs.addr(imguics.DCImGui.Alloc(len));
        untyped __cs__('global::System.Runtime.InteropServices.Marshal.Copy((byte[]){0}, 0, (global::System.IntPtr)(long)(double){1}, {2})', bytes.getData(), addr, len);
        return addr;
        #else
        return 0;
        #end
    }

    /**
     * Allocate raw native bytes (for payloads, point buffers...). The address
     * type follows the target's convention (cpp pointer, js Int, cs Float);
     * use the Bytes* helpers below to read/write portably.
     */
    public static function allocBytes(size:Int):#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end {
        #if cpp
        return cast cpp.Stdlib.nativeMalloc(size);
        #elseif js
        return imguijs.ImGuiJs.M._malloc(size);
        #elseif cs
        return imguics.ImGuiCs.addr(imguics.DCImGui.Alloc(size));
        #else
        return 0;
        #end
    }

    public static function setU8(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int, value:Int):Void {
        #if cpp
        untyped __cpp__('*(unsigned char*)({0} + {1}) = (unsigned char){2}', buffer, offset, value);
        #elseif js
        imguijs.ImGuiJs.setU8(buffer + offset, value);
        #elseif cs
        imguics.ImGuiCs.setU8(buffer + offset, value);
        #end
    }

    public static function getU8(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int):Int {
        #if cpp
        return untyped __cpp__('(int)(*(unsigned char*)({0} + {1}))', buffer, offset);
        #elseif js
        return imguijs.ImGuiJs.getU8(buffer + offset);
        #elseif cs
        return imguics.ImGuiCs.getU8(buffer + offset);
        #else
        return 0;
        #end
    }

    public static function setI32(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int, value:Int):Void {
        #if cpp
        untyped __cpp__('*(int*)({0} + {1}) = {2}', buffer, offset, value);
        #elseif js
        imguijs.ImGuiJs.setI32(buffer + offset, value);
        #elseif cs
        imguics.ImGuiCs.setI32(buffer + offset, value);
        #end
    }

    public static function getI32(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int):Int {
        #if cpp
        return untyped __cpp__('*(int*)({0} + {1})', buffer, offset);
        #elseif js
        return imguijs.ImGuiJs.getI32(buffer + offset);
        #elseif cs
        return imguics.ImGuiCs.getI32(buffer + offset);
        #else
        return 0;
        #end
    }


    public static function setI16(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int, value:Int):Void {
        #if cpp
        untyped __cpp__('*(short*)({0} + {1}) = (short){2}', buffer, offset, value);
        #elseif js
        imguijs.ImGuiJs.setU8(buffer + offset, value & 0xFF);
        imguijs.ImGuiJs.setU8(buffer + offset + 1, (value >> 8) & 0xFF);
        #elseif cs
        imguics.ImGuiCs.setU8(buffer + offset, value & 0xFF);
        imguics.ImGuiCs.setU8(buffer + offset + 1, (value >> 8) & 0xFF);
        #end
    }

    public static function getI16(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int):Int {
        #if cpp
        return untyped __cpp__('*(short*)({0} + {1})', buffer, offset);
        #elseif js
        var v = imguijs.ImGuiJs.getU8(buffer + offset) | (imguijs.ImGuiJs.getU8(buffer + offset + 1) << 8);
        return v >= 0x8000 ? v - 0x10000 : v;
        #elseif cs
        var v = imguics.ImGuiCs.getU8(buffer + offset) | (imguics.ImGuiCs.getU8(buffer + offset + 1) << 8);
        return v >= 0x8000 ? v - 0x10000 : v;
        #else
        return 0;
        #end
    }

    /** 64-bit integers cross as Haxe Float (53-bit precision, fine for UI demo values). */
    public static function setI64(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int, value:Float):Void {
        #if cpp
        untyped __cpp__('*(long long*)({0} + {1}) = (long long){2}', buffer, offset, value);
        #elseif js
        var lo = Std.int(value % 4294967296.0);
        if (lo < 0) lo += untyped 4294967296;
        imguijs.ImGuiJs.setU32(buffer + offset, lo);
        imguijs.ImGuiJs.setI32(buffer + offset + 4, Math.floor(value / 4294967296.0));
        #elseif cs
        untyped __cs__('global::System.Runtime.InteropServices.Marshal.WriteInt64((global::System.IntPtr)(long)(double)({0} + {1}), (long){2})', buffer, offset, value);
        #end
    }

    public static function getI64(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int):Float {
        #if cpp
        return untyped __cpp__('(double)(*(long long*)({0} + {1}))', buffer, offset);
        #elseif js
        return imguijs.ImGuiJs.getU32(buffer + offset) + imguijs.ImGuiJs.getI32(buffer + offset + 4) * 4294967296.0;
        #elseif cs
        return untyped __cs__('(double)global::System.Runtime.InteropServices.Marshal.ReadInt64((global::System.IntPtr)(long)(double)({0} + {1}))', buffer, offset);
        #else
        return 0;
        #end
    }

    public static function setF64(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int, value:Float):Void {
        #if cpp
        untyped __cpp__('*(double*)({0} + {1}) = {2}', buffer, offset, value);
        #elseif js
        imguijs.ImGuiJs.setF64(buffer + offset, value);
        #elseif cs
        imguics.ImGuiCs.setF64(buffer + offset, value);
        #end
    }

    public static function getF64(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int):Float {
        #if cpp
        return untyped __cpp__('*(double*)({0} + {1})', buffer, offset);
        #elseif js
        return imguijs.ImGuiJs.getF64(buffer + offset);
        #elseif cs
        return imguics.ImGuiCs.getF64(buffer + offset);
        #else
        return 0;
        #end
    }

    public static function setF32(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int, value:Float):Void {
        #if cpp
        untyped __cpp__('*(float*)({0} + {1}) = (float){2}', buffer, offset, value);
        #elseif js
        imguijs.ImGuiJs.setF32(buffer + offset, value);
        #elseif cs
        imguics.ImGuiCs.setF32(buffer + offset, value);
        #end
    }

    public static function getF32(buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end, offset:Int):Float {
        #if cpp
        return untyped __cpp__('*(float*)({0} + {1})', buffer, offset);
        #elseif js
        return imguijs.ImGuiJs.getF32(buffer + offset);
        #elseif cs
        return imguics.ImGuiCs.getF32(buffer + offset);
        #else
        return 0;
        #end
    }

}
