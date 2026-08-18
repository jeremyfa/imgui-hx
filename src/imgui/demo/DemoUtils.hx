package imgui.demo;

import imgui.ImGui;
import imgui.NativeStructs;

/**
 * Small portable helpers shared by the demo port (pointer null checks and
 * drag and drop payload access, which cross targets as different address
 * types: cpp pointers, js Int, cs Float).
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoUtils {

    /** Whether an accepted drag and drop payload is present. */
    public static inline function hasPayload(p:#if cpp cpp.Star<ImGuiPayload> #else ImGuiPayload #end):Bool {
        #if cpp
        return p != null;
        #elseif js
        return (p:Int) != 0;
        #elseif cs
        return (p:Float) != 0;
        #else
        return false;
        #end
    }

    /** Read the Nth float of a payload's data. */
    public static inline function payloadF32(p:#if cpp cpp.Star<ImGuiPayload> #else ImGuiPayload #end, index:Int):Float {
        #if cpp
        return untyped __cpp__('((float*)({0}->Data))[{1}]', p, index);
        #elseif js
        return imguijs.ImGuiJs.getF32((p:ImGuiPayload).data + (index << 2));
        #elseif cs
        return imguics.ImGuiCs.getF32((p:ImGuiPayload).data + (index << 2));
        #else
        return 0;
        #end
    }

    /** Read the Nth int32 of a payload's data. */
    public static inline function payloadI32(p:#if cpp cpp.Star<ImGuiPayload> #else ImGuiPayload #end, index:Int):Int {
        #if cpp
        return untyped __cpp__('((int*)({0}->Data))[{1}]', p, index);
        #elseif js
        return imguijs.ImGuiJs.getI32((p:ImGuiPayload).data + (index << 2));
        #elseif cs
        return imguics.ImGuiCs.getI32((p:ImGuiPayload).data + (index << 2));
        #else
        return 0;
        #end
    }

    /**
     * A persistent 64-byte native buffer to build small payloads (or float
     * ref colors) portably; write with NativeStructs.setF32/setI32 and pass
     * with `bufferPtr()`.
     */
    public static var buffer(get, never):#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end;
    static var _buffer:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end = #if cpp null #else 0 #end;
    static var _bufferInited:Bool = false;
    static function get_buffer():#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end {
        if (!_bufferInited) {
            _bufferInited = true;
            _buffer = NativeStructs.allocBytes(64);
        }
        return _buffer;
    }


    /** Address (target-typed void pointer) of `buffer` + byte offset. */
    public static inline function ptr(offset:Int):#if cpp cpp.RawPointer<cpp.Void> #elseif cs Float #else Int #end {
        #if cpp
        return untyped __cpp__('(void*)((unsigned char*){0} + {1})', buffer, offset);
        #else
        return buffer + offset;
        #end
    }

    /** The target-typed NULL pointer value. */
    public static inline function noPtr():#if cpp cpp.RawPointer<cpp.Void> #elseif cs Float #else Int #end {
        #if cpp
        return null;
        #else
        return 0;
        #end
    }


    /** Target-typed "no viewport" value for dockSpaceOverViewportEx and friends. */
    public static inline function noViewport():#if cpp cpp.Star<ImGuiViewport> #else ImGuiViewport #end {
        #if cpp
        return null;
        #else
        return cast 0;
        #end
    }

    /** Target-typed "no font" value for pushFont/pushFontFloat. */
    public static inline function noFont():#if cpp cpp.Star<ImFont> #else ImFont #end {
        #if cpp
        return null;
        #else
        return cast 0;
        #end
    }

}
