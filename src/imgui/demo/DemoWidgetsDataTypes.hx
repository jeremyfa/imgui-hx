package imgui.demo;

import imgui.ImGui;
import imgui.NativeStructs;
import imgui.demo.ImGuiDemo.helpMarker;

/**
 * Widgets > Data Types (imgui_demo.cpp port).
 *
 * The generic DragScalar/SliderScalar/InputScalar API passes values by raw
 * pointer: this port routes them through a persistent native scratch buffer
 * (see DemoUtils.buffer), which exercises every ImGuiDataType on every
 * target. 64-bit values live in Haxe Floats (53-bit precision, plenty for
 * interactive demo purposes).
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsDataTypes {

    // State (C++ static locals)
    static var s8v:Float = 127;
    static var u8v:Float = 255;
    static var s16v:Float = 32767;
    static var u16v:Float = 65535;
    static var s32v:Float = -1;
    static var u32v:Float = 4294967295.0;
    static var s64v:Float = -1;
    static var u64v:Float = 9007199254740992.0; // (2^53: Float-exact stand-in for u64 max)
    static var f32v:Float = 0.123;
    static var f64v:Float = 90000.01234567890123456789;

    static var dragClamp:Bool = false;
    static var inputsStep:Bool = true;
    static var inputFlags:Int = ImGuiInputTextFlags.None;

    // Scratch buffer offsets: value @0, min @16, max @32, step @48
    static inline final VAL = 0;
    static inline final MIN = 16;
    static inline final MAX = 32;
    static inline final STEP = 48;

    public static function show():Void {

        if (!ImGui.treeNode('Data Types'))
            return;

        var dragSpeed = 0.2;
        ImGui.separatorText('Drags');
        ImGui.checkbox('Clamp integers to 0..50', dragClamp);
        ImGui.sameLine(); helpMarker(
            'As with every widget in dear imgui, we never modify values unless there is a user interaction.\n'
            + 'You can override the clamping limits by using Ctrl+Click to input a value.');

        s8v = drag('drag s8', ImGuiDataType.S8, s8v, dragSpeed, dragClamp ? 0 : null, dragClamp ? 50 : null, null);
        u8v = drag('drag u8', ImGuiDataType.U8, u8v, dragSpeed, dragClamp ? 0 : null, dragClamp ? 50 : null, '%u ms');
        s16v = drag('drag s16', ImGuiDataType.S16, s16v, dragSpeed, dragClamp ? 0 : null, dragClamp ? 50 : null, null);
        u16v = drag('drag u16', ImGuiDataType.U16, u16v, dragSpeed, dragClamp ? 0 : null, dragClamp ? 50 : null, '%u ms');
        s32v = drag('drag s32', ImGuiDataType.S32, s32v, dragSpeed, dragClamp ? 0 : null, dragClamp ? 50 : null, null);
        s32v = drag('drag s32 hex', ImGuiDataType.S32, s32v, dragSpeed, dragClamp ? 0 : null, dragClamp ? 50 : null, '0x%08X');
        u32v = drag('drag u32', ImGuiDataType.U32, u32v, dragSpeed, dragClamp ? 0 : null, dragClamp ? 50 : null, '%u ms');
        s64v = drag('drag s64', ImGuiDataType.S64, s64v, dragSpeed, dragClamp ? 0 : null, dragClamp ? 50 : null, null);
        u64v = drag('drag u64', ImGuiDataType.U64, u64v, dragSpeed, dragClamp ? 0 : null, dragClamp ? 50 : null, null);
        f32v = drag('drag float', ImGuiDataType.Float, f32v, 0.005, 0, 1, '%f');
        f32v = drag('drag float log', ImGuiDataType.Float, f32v, 0.005, 0, 1, '%f', ImGuiSliderFlags.Logarithmic);
        f64v = drag('drag double', ImGuiDataType.Double, f64v, 0.0005, 0, null, '%.10f grams');
        f64v = drag('drag double log', ImGuiDataType.Double, f64v, 0.0005, 0, 1, '0 < %.10f < 1', ImGuiSliderFlags.Logarithmic);

        ImGui.separatorText('Sliders');
        s8v = slider('slider s8 full', ImGuiDataType.S8, s8v, -128, 127, '%d');
        u8v = slider('slider u8 full', ImGuiDataType.U8, u8v, 0, 255, '%u');
        s16v = slider('slider s16 full', ImGuiDataType.S16, s16v, -32768, 32767, '%d');
        u16v = slider('slider u16 full', ImGuiDataType.U16, u16v, 0, 65535, '%u');
        s32v = slider('slider s32 low', ImGuiDataType.S32, s32v, 0, 50, '%d');
        s32v = slider('slider s32 high', ImGuiDataType.S32, s32v, 1073741723, 1073741823, '%d');
        s32v = slider('slider s32 full', ImGuiDataType.S32, s32v, -1073741824, 1073741823, '%d');
        s32v = slider('slider s32 hex', ImGuiDataType.S32, s32v, 0, 50, '0x%04X');
        u32v = slider('slider u32 low', ImGuiDataType.U32, u32v, 0, 50, '%u');
        u32v = slider('slider u32 high', ImGuiDataType.U32, u32v, 2147483547.0, 2147483647.0, '%u');
        u32v = slider('slider u32 full', ImGuiDataType.U32, u32v, 0, 2147483647.0, '%u');
        s64v = slider('slider s64 low', ImGuiDataType.S64, s64v, 0, 50, null);
        s64v = slider('slider s64 high', ImGuiDataType.S64, s64v, 4503599627370396.0, 4503599627370496.0, null);
        s64v = slider('slider s64 full', ImGuiDataType.S64, s64v, -4503599627370496.0, 4503599627370496.0, null);
        u64v = slider('slider u64 low', ImGuiDataType.U64, u64v, 0, 50, null);
        u64v = slider('slider u64 high', ImGuiDataType.U64, u64v, 4503599627370396.0, 4503599627370496.0, null);
        u64v = slider('slider u64 full', ImGuiDataType.U64, u64v, 0, 4503599627370496.0, null);
        f32v = slider('slider float low', ImGuiDataType.Float, f32v, 0, 1, null);
        f32v = slider('slider float low log', ImGuiDataType.Float, f32v, 0, 1, '%.10f', ImGuiSliderFlags.Logarithmic);
        f32v = slider('slider float high', ImGuiDataType.Float, f32v, -10000000000.0, 10000000000.0, '%e');
        f64v = slider('slider double low', ImGuiDataType.Double, f64v, 0, 1, '%.10f grams');
        f64v = slider('slider double low log', ImGuiDataType.Double, f64v, 0, 1, '%.10f', ImGuiSliderFlags.Logarithmic);
        f64v = slider('slider double high', ImGuiDataType.Double, f64v, -1000000000000000.0, 1000000000000000.0, '%e grams');

        ImGui.separatorText('Sliders (reverse)');
        s8v = slider('slider s8 reverse', ImGuiDataType.S8, s8v, 127, -128, '%d');
        u8v = slider('slider u8 reverse', ImGuiDataType.U8, u8v, 255, 0, '%u');
        s32v = slider('slider s32 reverse', ImGuiDataType.S32, s32v, 50, 0, '%d');
        u32v = slider('slider u32 reverse', ImGuiDataType.U32, u32v, 50, 0, '%u');
        s64v = slider('slider s64 reverse', ImGuiDataType.S64, s64v, 50, 0, null);
        u64v = slider('slider u64 reverse', ImGuiDataType.U64, u64v, 50, 0, null);

        ImGui.separatorText('Inputs');
        ImGui.checkbox('Show step buttons', inputsStep);
        ImGui.checkboxFlagsIntPtr('ImGuiInputTextFlags_ReadOnly', inputFlags, ImGuiInputTextFlags.ReadOnly);
        ImGui.checkboxFlagsIntPtr('ImGuiInputTextFlags_ParseEmptyRefVal', inputFlags, ImGuiInputTextFlags.ParseEmptyRefVal);
        ImGui.checkboxFlagsIntPtr('ImGuiInputTextFlags_DisplayEmptyRefVal', inputFlags, ImGuiInputTextFlags.DisplayEmptyRefVal);
        s8v = input('input s8', ImGuiDataType.S8, s8v, inputsStep ? 1 : null, '%d');
        u8v = input('input u8', ImGuiDataType.U8, u8v, inputsStep ? 1 : null, '%u');
        s16v = input('input s16', ImGuiDataType.S16, s16v, inputsStep ? 1 : null, '%d');
        u16v = input('input u16', ImGuiDataType.U16, u16v, inputsStep ? 1 : null, '%u');
        s32v = input('input s32', ImGuiDataType.S32, s32v, inputsStep ? 1 : null, '%d');
        s32v = input('input s32 hex', ImGuiDataType.S32, s32v, inputsStep ? 1 : null, '%04X');
        u32v = input('input u32', ImGuiDataType.U32, u32v, inputsStep ? 1 : null, '%u');
        u32v = input('input u32 hex', ImGuiDataType.U32, u32v, inputsStep ? 1 : null, '%08X');
        s64v = input('input s64', ImGuiDataType.S64, s64v, inputsStep ? 1 : null, null);
        u64v = input('input u64', ImGuiDataType.U64, u64v, inputsStep ? 1 : null, null);
        f32v = input('input float', ImGuiDataType.Float, f32v, inputsStep ? 1 : null, null);
        f64v = input('input double', ImGuiDataType.Double, f64v, inputsStep ? 1 : null, null);

        ImGui.treePop();

    }

    // =========================================================================
    // Scalar marshaling through the native scratch buffer
    // =========================================================================

    static function write(offset:Int, dataType:ImGuiDataType, value:Float):Void {
        var buf = DemoUtils.buffer;
        if (dataType == ImGuiDataType.S8 || dataType == ImGuiDataType.U8)
            NativeStructs.setI32(buf, offset, Std.int(value) & 0xFF);
        else if (dataType == ImGuiDataType.S16 || dataType == ImGuiDataType.U16)
            NativeStructs.setI16(buf, offset, Std.int(value) & 0xFFFF);
        else if (dataType == ImGuiDataType.S32 || dataType == ImGuiDataType.U32)
            NativeStructs.setI32(buf, offset, value >= 2147483648.0 ? Std.int(value - 4294967296.0) : Std.int(value));
        else if (dataType == ImGuiDataType.S64 || dataType == ImGuiDataType.U64)
            NativeStructs.setI64(buf, offset, value);
        else if (dataType == ImGuiDataType.Float)
            NativeStructs.setF32(buf, offset, value);
        else
            NativeStructs.setF64(buf, offset, value);
    }

    static function read(offset:Int, dataType:ImGuiDataType):Float {
        var buf = DemoUtils.buffer;
        if (dataType == ImGuiDataType.S8) {
            var v = NativeStructs.getI32(buf, offset) & 0xFF;
            return v >= 0x80 ? v - 0x100 : v;
        }
        if (dataType == ImGuiDataType.U8)
            return NativeStructs.getI32(buf, offset) & 0xFF;
        if (dataType == ImGuiDataType.S16)
            return NativeStructs.getI16(buf, offset);
        if (dataType == ImGuiDataType.U16)
            return NativeStructs.getI16(buf, offset) & 0xFFFF;
        if (dataType == ImGuiDataType.S32)
            return NativeStructs.getI32(buf, offset);
        if (dataType == ImGuiDataType.U32) {
            var v:Float = NativeStructs.getI32(buf, offset);
            return v < 0 ? v + 4294967296.0 : v;
        }
        if (dataType == ImGuiDataType.S64 || dataType == ImGuiDataType.U64)
            return NativeStructs.getI64(buf, offset);
        if (dataType == ImGuiDataType.Float)
            return NativeStructs.getF32(buf, offset);
        return NativeStructs.getF64(buf, offset);
    }

    static inline function ptrAt(offset:Int):#if cpp cpp.RawPointer<cpp.Void> #elseif cs Float #else Int #end {
        #if cpp
        return untyped __cpp__('(void*)((unsigned char*){0} + {1})', DemoUtils.buffer, offset);
        #else
        return DemoUtils.buffer + offset;
        #end
    }

    static inline function noPtr():#if cpp cpp.RawPointer<cpp.Void> #elseif cs Float #else Int #end {
        #if cpp
        return null;
        #else
        return 0;
        #end
    }

    static function drag(label:String, dataType:ImGuiDataType, value:Float, speed:Float, min:Null<Float>, max:Null<Float>, format:String, flags:Int = 0):Float {
        write(VAL, dataType, value);
        if (min != null) write(MIN, dataType, min);
        if (max != null) write(MAX, dataType, max);
        ImGui.dragScalarEx(label, dataType, ptrAt(VAL), speed,
            min != null ? ptrAt(MIN) : noPtr(), max != null ? ptrAt(MAX) : noPtr(), format, flags);
        return read(VAL, dataType);
    }

    static function slider(label:String, dataType:ImGuiDataType, value:Float, min:Float, max:Float, format:String, flags:Int = 0):Float {
        write(VAL, dataType, value);
        write(MIN, dataType, min);
        write(MAX, dataType, max);
        ImGui.sliderScalarEx(label, dataType, ptrAt(VAL), ptrAt(MIN), ptrAt(MAX), format, flags);
        return read(VAL, dataType);
    }

    static function input(label:String, dataType:ImGuiDataType, value:Float, step:Null<Float>, format:String):Float {
        write(VAL, dataType, value);
        if (step != null) write(STEP, dataType, step);
        ImGui.inputScalarEx(label, dataType, ptrAt(VAL),
            step != null ? ptrAt(STEP) : noPtr(), noPtr(), format, inputFlags);
        return read(VAL, dataType);
    }

}
