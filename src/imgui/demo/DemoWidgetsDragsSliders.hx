package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/** Widgets > Drag/Slider Flags (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsDragsSliders {

    static inline final FLT_MAX = 3.402823466e38;

    static var flags:Int = ImGuiSliderFlags.None;
    static var dragF:Float = 0.5;
    static var dragF4:Array<Float> = [0, 0, 0, 0];
    static var dragI:Int = 50;
    static var sliderF:Float = 0.5;
    static var sliderF4:Array<Float> = [0, 0, 0, 0];
    static var sliderI:Int = 50;

    public static function show():Void {

        if (!ImGui.treeNode('Drag/Slider Flags'))
            return;

        // Advanced flags for DragXXX and SliderXXX functions (same flags!)
        ImGui.checkboxFlagsIntPtr('ImGuiSliderFlags_AlwaysClamp', flags, ImGuiSliderFlags.AlwaysClamp);
        ImGui.checkboxFlagsIntPtr('ImGuiSliderFlags_ClampOnInput', flags, ImGuiSliderFlags.ClampOnInput);
        ImGui.sameLine(); helpMarker('Clamp value to min/max bounds when input manually with Ctrl+Click. By default Ctrl+Click allows going out of bounds.');
        ImGui.checkboxFlagsIntPtr('ImGuiSliderFlags_ClampZeroRange', flags, ImGuiSliderFlags.ClampZeroRange);
        ImGui.sameLine(); helpMarker('Clamp even if min==max==0.0f. Otherwise DragXXX functions don\'t clamp.');
        ImGui.checkboxFlagsIntPtr('ImGuiSliderFlags_Logarithmic', flags, ImGuiSliderFlags.Logarithmic);
        ImGui.sameLine(); helpMarker('Enable logarithmic editing (more precision for small values).');
        ImGui.checkboxFlagsIntPtr('ImGuiSliderFlags_NoRoundToFormat', flags, ImGuiSliderFlags.NoRoundToFormat);
        ImGui.sameLine(); helpMarker('Disable rounding underlying value to match precision of the format string (e.g. %.3f values are rounded to those 3 digits).');
        ImGui.checkboxFlagsIntPtr('ImGuiSliderFlags_NoInput', flags, ImGuiSliderFlags.NoInput);
        ImGui.sameLine(); helpMarker('Disable Ctrl+Click or Enter key allowing to input text directly into the widget.');
        ImGui.checkboxFlagsIntPtr('ImGuiSliderFlags_NoSpeedTweaks', flags, ImGuiSliderFlags.NoSpeedTweaks);
        ImGui.sameLine(); helpMarker('Disable keyboard modifiers altering tweak speed. Useful if you want to alter tweak speed yourself based on your own logic.');
        ImGui.checkboxFlagsIntPtr('ImGuiSliderFlags_WrapAround', flags, ImGuiSliderFlags.WrapAround);
        ImGui.sameLine(); helpMarker('Enable wrapping around from max to min and from min to max (only supported by DragXXX() functions)');
        ImGui.checkboxFlagsIntPtr('ImGuiSliderFlags_ColorMarkers', flags, ImGuiSliderFlags.ColorMarkers);

        // Drags
        ImGui.text('Underlying float value: ' + dragF);
        ImGui.dragFloatEx('DragFloat (0 -> 1)', dragF, 0.005, 0.0, 1.0, '%.3f', flags);
        ImGui.dragFloatEx('DragFloat (0 -> +inf)', dragF, 0.005, 0.0, FLT_MAX, '%.3f', flags);
        ImGui.dragFloatEx('DragFloat (-inf -> 1)', dragF, 0.005, -FLT_MAX, 1.0, '%.3f', flags);
        ImGui.dragFloatEx('DragFloat (-inf -> +inf)', dragF, 0.005, -FLT_MAX, FLT_MAX, '%.3f', flags);
        ImGui.dragIntEx('DragInt (0 -> 100)', dragI, 0.5, 0, 100, '%d', flags);
        ImGui.dragFloat4Ex('DragFloat4 (0 -> 1)', dragF4, 0.005, 0.0, 1.0, '%.3f', flags);

        // Sliders
        var flagsForSliders = flags & ~ImGuiSliderFlags.WrapAround;
        ImGui.text('Underlying float value: ' + sliderF);
        ImGui.sliderFloatEx('SliderFloat (0 -> 1)', sliderF, 0.0, 1.0, '%.3f', flagsForSliders);
        ImGui.sliderIntEx('SliderInt (0 -> 100)', sliderI, 0, 100, '%d', flagsForSliders);
        ImGui.sliderFloat4Ex('SliderFloat4 (0 -> 1)', sliderF4, 0.0, 1.0, '%.3f', flags);

        ImGui.treePop();

    }

}
