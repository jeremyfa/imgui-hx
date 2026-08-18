package imgui.demo;

import imgui.ImGui;

/** Widgets > Multi-component Widgets (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsMultiComponents {

    static var vec4f:Array<Float> = [0.10, 0.20, 0.30, 0.44];
    static var vec4i:Array<Int> = [1, 5, 100, 255];
    static var flags:Int = 0;
    static var begin:Float = 10;
    static var end:Float = 90;
    static var beginI:Int = 100;
    static var endI:Int = 1000;

    public static function show():Void {

        if (!ImGui.treeNode('Multi-component Widgets'))
            return;

        ImGui.checkboxFlagsIntPtr('ImGuiSliderFlags_ColorMarkers', flags, ImGuiSliderFlags.ColorMarkers);

        ImGui.separatorText('2-wide');
        ImGui.inputFloat2('input float2', vec4f);
        ImGui.inputInt2('input int2', vec4i);
        ImGui.dragFloat2Ex('drag float2', vec4f, 0.01, 0.0, 1.0, null, flags);
        ImGui.dragInt2Ex('drag int2', vec4i, 1, 0, 255, null, flags);
        ImGui.sliderFloat2Ex('slider float2', vec4f, 0.0, 1.0, null, flags);
        ImGui.sliderInt2Ex('slider int2', vec4i, 0, 255, null, flags);

        ImGui.separatorText('3-wide');
        ImGui.inputFloat3('input float3', vec4f);
        ImGui.inputInt3('input int3', vec4i);
        ImGui.dragFloat3Ex('drag float3', vec4f, 0.01, 0.0, 1.0, null, flags);
        ImGui.dragInt3Ex('drag int3', vec4i, 1, 0, 255, null, flags);
        ImGui.sliderFloat3Ex('slider float3', vec4f, 0.0, 1.0, null, flags);
        ImGui.sliderInt3Ex('slider int3', vec4i, 0, 255, null, flags);

        ImGui.separatorText('4-wide');
        ImGui.inputFloat4('input float4', vec4f);
        ImGui.inputInt4('input int4', vec4i);
        ImGui.dragFloat4Ex('drag float4', vec4f, 0.01, 0.0, 1.0, null, flags);
        ImGui.dragInt4Ex('drag int4', vec4i, 1, 0, 255, null, flags);
        ImGui.sliderFloat4Ex('slider float4', vec4f, 0.0, 1.0, null, flags);
        ImGui.sliderInt4Ex('slider int4', vec4i, 0, 255, null, flags);

        ImGui.separatorText('Ranges');
        ImGui.dragFloatRange2Ex('range float', begin, end, 0.25, 0.0, 100.0, 'Min: %.1f %%', 'Max: %.1f %%', ImGuiSliderFlags.AlwaysClamp);
        ImGui.dragIntRange2Ex('range int', beginI, endI, 5, 0, 1000, 'Min: %d units', 'Max: %d units');
        ImGui.dragIntRange2Ex('range int (no bounds)', beginI, endI, 5, 0, 0, 'Min: %d units', 'Max: %d units');

        ImGui.treePop();

    }

}
