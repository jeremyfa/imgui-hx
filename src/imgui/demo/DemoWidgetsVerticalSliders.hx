package imgui.demo;

import imgui.ImGui;

/** Widgets > Vertical Sliders (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsVerticalSliders {

    static var intValue:Int = 0;
    static var values:Array<Float> = [0.0, 0.60, 0.35, 0.9, 0.70, 0.20, 0.0];
    static var values2:Array<Float> = [0.20, 0.80, 0.40, 0.25];

    public static function show():Void {

        if (!ImGui.treeNode('Vertical Sliders'))
            return;

        var spacing = 4.0;
        ImGui.pushStyleVarImVec2(ImGuiStyleVar.ItemSpacing, ImVec2.make(spacing, spacing));

        ImGui.vSliderInt('##int', ImVec2.make(18, 160), intValue, 0, 5);
        ImGui.sameLine();

        ImGui.pushID('set1');
        for (i in 0...7) {
            if (i > 0) ImGui.sameLine();
            ImGui.pushIDInt(i);
            ImGui.pushStyleColorImVec4(ImGuiCol.FrameBg, hsv(i / 7.0, 0.5, 0.5));
            ImGui.pushStyleColorImVec4(ImGuiCol.FrameBgHovered, hsv(i / 7.0, 0.6, 0.5));
            ImGui.pushStyleColorImVec4(ImGuiCol.FrameBgActive, hsv(i / 7.0, 0.7, 0.5));
            ImGui.pushStyleColorImVec4(ImGuiCol.SliderGrab, hsv(i / 7.0, 0.9, 0.9));
            ImGui.vSliderFloatEx('##v', ImVec2.make(18, 160), values[i], 0.0, 1.0, '');
            if (ImGui.isItemActive() || ImGui.isItemHovered())
                ImGui.setTooltip('' + values[i]);
            ImGui.popStyleColorEx(4);
            ImGui.popID();
        }
        ImGui.popID();

        ImGui.sameLine();
        ImGui.pushID('set2');
        var rows = 3;
        var smallSliderSize = ImVec2.make(18, Std.int((160.0 - (rows - 1) * spacing) / rows));
        for (nx in 0...4) {
            if (nx > 0) ImGui.sameLine();
            ImGui.beginGroup();
            for (ny in 0...rows) {
                ImGui.pushIDInt(nx * rows + ny);
                ImGui.vSliderFloatEx('##v', smallSliderSize, values2[nx], 0.0, 1.0, '');
                if (ImGui.isItemActive() || ImGui.isItemHovered())
                    ImGui.setTooltip('' + values2[nx]);
                ImGui.popID();
            }
            ImGui.endGroup();
        }
        ImGui.popID();

        ImGui.sameLine();
        ImGui.pushID('set3');
        for (i in 0...4) {
            if (i > 0) ImGui.sameLine();
            ImGui.pushIDInt(i);
            ImGui.pushStyleVar(ImGuiStyleVar.GrabMinSize, 40);
            ImGui.vSliderFloatEx('##v', ImVec2.make(40, 160), values[i], 0.0, 1.0, '%.2f\nsec');
            ImGui.popStyleVar();
            ImGui.popID();
        }
        ImGui.popID();
        ImGui.popStyleVar();

        ImGui.treePop();

    }

    static function hsv(h:Float, s:Float, v:Float):ImVec4 {
        var r:Float = 0;
        var g:Float = 0;
        var b:Float = 0;
        ImGui.colorConvertHSVtoRGB(h, s, v, r, g, b);
        return ImVec4.make(r, g, b, 1.0);
    }

}
