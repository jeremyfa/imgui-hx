package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/** Widgets > Tooltips (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsTooltips {

    static final arr:Array<Float> = [0.6, 0.1, 1.0, 0.5, 0.92, 0.1, 0.2];
    static var alwaysOn:Int = 0;

    public static function show():Void {

        if (!ImGui.treeNode('Tooltips'))
            return;

        ImGui.separatorText('General');

        helpMarker(
            'Tooltip are typically created by using a IsItemHovered() + SetTooltip() sequence.\n\n'
            + 'We provide a helper SetItemTooltip() function to perform the two with standards flags.');

        var sz = ImVec2.make(-1.175494351e-38, 0.0);

        ImGui.buttonEx('Basic', sz);
        ImGui.setItemTooltip('I am a tooltip');

        ImGui.buttonEx('Fancy', sz);
        if (ImGui.beginItemTooltip()) {
            ImGui.text('I am a fancy tooltip');
            ImGui.plotLines('Curve', arr);
            ImGui.text('Sin(time) = ' + Math.sin(ImGui.getTime()));
            ImGui.endTooltip();
        }

        ImGui.separatorText('Always On');

        ImGui.radioButtonIntPtr('Off', alwaysOn, 0);
        ImGui.sameLine();
        ImGui.radioButtonIntPtr('Always On (Simple)', alwaysOn, 1);
        ImGui.sameLine();
        ImGui.radioButtonIntPtr('Always On (Advanced)', alwaysOn, 2);
        if (alwaysOn == 1)
            ImGui.setTooltip('I am following you around.');
        else if (alwaysOn == 2 && ImGui.beginTooltip()) {
            ImGui.progressBar(Math.sin(ImGui.getTime()) * 0.5 + 0.5, ImVec2.make(ImGui.getFontSize() * 25, 0.0));
            ImGui.endTooltip();
        }

        ImGui.separatorText('Custom');

        helpMarker(
            'Passing ImGuiHoveredFlags_ForTooltip to IsItemHovered() is the preferred way to standardize '
            + 'tooltip activation details across your application. You may however decide to use custom '
            + 'flags for a specific tooltip instance.');

        ImGui.buttonEx('Manual', sz);
        if (ImGui.isItemHovered(ImGuiHoveredFlags.ForTooltip))
            ImGui.setTooltip('I am a manually emitted tooltip.');

        ImGui.buttonEx('DelayNone', sz);
        if (ImGui.isItemHovered(ImGuiHoveredFlags.DelayNone))
            ImGui.setTooltip('I am a tooltip with no delay.');

        ImGui.buttonEx('DelayShort', sz);
        if (ImGui.isItemHovered(ImGuiHoveredFlags.DelayShort | ImGuiHoveredFlags.NoSharedDelay))
            ImGui.setTooltip('I am a tooltip with a short delay (' + ImGui.getStyle().hoverDelayShort + ' sec).');

        ImGui.buttonEx('DelayLong', sz);
        if (ImGui.isItemHovered(ImGuiHoveredFlags.DelayNormal | ImGuiHoveredFlags.NoSharedDelay))
            ImGui.setTooltip('I am a tooltip with a long delay (' + ImGui.getStyle().hoverDelayNormal + ' sec).');

        ImGui.buttonEx('Stationary', sz);
        if (ImGui.isItemHovered(ImGuiHoveredFlags.Stationary))
            ImGui.setTooltip('I am a tooltip requiring mouse to be stationary before activating.');

        ImGui.beginDisabled();
        ImGui.buttonEx('Disabled item', sz);
        if (ImGui.isItemHovered(ImGuiHoveredFlags.ForTooltip))
            ImGui.setTooltip('I am a a tooltip for a disabled item.');
        ImGui.endDisabled();

        ImGui.treePop();

    }

}
