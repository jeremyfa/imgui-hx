package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/** Widgets > List Boxes (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsListBoxes {

    static final items:Array<String> = ['AAAA', 'BBBB', 'CCCC', 'DDDD', 'EEEE', 'FFFF', 'GGGG', 'HHHH', 'IIII', 'JJJJ', 'KKKK', 'LLLLLLL', 'MMMM', 'OOOOOOO'];
    static var itemSelectedIdx:Int = 0;
    static var itemHighlight:Bool = false;

    public static function show():Void {

        if (!ImGui.treeNode('List Boxes'))
            return;

        var itemHighlightedIdx = -1;
        ImGui.checkbox('Highlight hovered item in second listbox', itemHighlight);

        if (ImGui.beginListBox('listbox 1', ImVec2.make(0, 0))) {
            for (n in 0...items.length) {
                var isSelected = (itemSelectedIdx == n);
                if (ImGui.selectableEx(items[n], isSelected, 0, ImVec2.make(0, 0)))
                    itemSelectedIdx = n;

                if (itemHighlight && ImGui.isItemHovered())
                    itemHighlightedIdx = n;

                if (isSelected)
                    ImGui.setItemDefaultFocus();
            }
            ImGui.endListBox();
        }
        ImGui.sameLine(); helpMarker('Here we are sharing selection state between both boxes.');

        // Custom size: use all width, 5 items tall
        ImGui.text('Full-width:');
        if (ImGui.beginListBox('##listbox 2', ImVec2.make(-1.175494351e-38, 5 * ImGui.getTextLineHeightWithSpacing()))) {
            for (n in 0...items.length) {
                var isSelected = (itemSelectedIdx == n);
                var flags = (itemHighlightedIdx == n) ? ImGuiSelectableFlags.Highlight : 0;
                if (ImGui.selectableEx(items[n], isSelected, flags, ImVec2.make(0, 0)))
                    itemSelectedIdx = n;

                if (isSelected)
                    ImGui.setItemDefaultFocus();
            }
            ImGui.endListBox();
        }

        ImGui.treePop();

    }

}
