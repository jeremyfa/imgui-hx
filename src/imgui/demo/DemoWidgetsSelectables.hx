package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/** Widgets > Selectables (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsSelectables {

    static var selection:Array<Bool> = [false, true, false, false, false];
    static var selectedLine:Array<Bool> = [false, false, false];
    static var checked:Array<Bool> = [false, false, false, false, false];
    static var selectedN:Int = 0;
    static var selectedTable:Array<Bool> = [for (_ in 0...10) false];
    static var selectedGrid:Array<Int> = [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1];
    static var selectedAlign:Array<Bool> = [true, false, true, false, true, false, true, false, true];

    public static function show():Void {

        if (!ImGui.treeNode('Selectables'))
            return;

        if (ImGui.treeNode('Basic')) {
            ImGui.selectableBoolPtr('1. I am selectable', selection[0]);
            ImGui.selectableBoolPtr('2. I am selectable', selection[1]);
            ImGui.selectableBoolPtr('3. I am selectable', selection[2]);
            if (ImGui.selectableEx('4. I am double clickable', selection[3], ImGuiSelectableFlags.AllowDoubleClick, ImVec2.make(0, 0)))
                if (ImGui.isMouseDoubleClicked(0))
                    selection[3] = !selection[3];
            ImGui.treePop();
        }

        if (ImGui.treeNode('Multiple items on the same line')) {
            {
                ImGui.setNextItemAllowOverlap(); ImGui.selectableBoolPtr('main.c', selectedLine[0]); ImGui.sameLine(); ImGui.smallButton('Link 1');
                ImGui.setNextItemAllowOverlap(); ImGui.selectableBoolPtr('hello.cpp', selectedLine[1]); ImGui.sameLine(); ImGui.smallButton('Link 2');
                ImGui.setNextItemAllowOverlap(); ImGui.selectableBoolPtr('hello.h', selectedLine[2]); ImGui.sameLine(); ImGui.smallButton('Link 3');
            }

            ImGui.spacing();
            {
                var textSize = ImGui.calcTextSize('x');
                var colorMarkerW = textSize.x;
                for (n in 0...5) {
                    ImGui.pushIDInt(n);
                    ImGui.alignTextToFramePadding();
                    if (ImGui.selectableEx('##selectable', selectedN == n, ImGuiSelectableFlags.AllowOverlap, ImVec2.make(0, 0)))
                        selectedN = n;
                    ImGui.sameLineEx(0, 0);
                    ImGui.checkbox('##check', checked[n]);
                    ImGui.sameLine();
                    var color = ImVec4.make((n & 1) != 0 ? 1.0 : 0.2, (n & 2) != 0 ? 1.0 : 0.2, 0.2, 1.0);
                    ImGui.colorButtonEx('##color', color, ImGuiColorEditFlags.NoTooltip, ImVec2.make(colorMarkerW, 0));
                    ImGui.sameLine();
                    ImGui.text('Some label');
                    ImGui.popID();
                }
            }

            ImGui.treePop();
        }

        if (ImGui.treeNode('In Tables')) {
            if (ImGui.beginTable('split1', 3, ImGuiTableFlags.Resizable | ImGuiTableFlags.NoSavedSettings | ImGuiTableFlags.Borders)) {
                for (i in 0...10) {
                    ImGui.tableNextColumn();
                    ImGui.selectableBoolPtr('Item ' + i, selectedTable[i]);
                }
                ImGui.endTable();
            }
            ImGui.spacing();
            if (ImGui.beginTable('split2', 3, ImGuiTableFlags.Resizable | ImGuiTableFlags.NoSavedSettings | ImGuiTableFlags.Borders)) {
                for (i in 0...10) {
                    ImGui.tableNextRow();
                    ImGui.tableNextColumn();
                    ImGui.selectableBoolPtrEx('Item ' + i, selectedTable[i], ImGuiSelectableFlags.SpanAllColumns, ImVec2.make(0, 0));
                    ImGui.tableNextColumn();
                    ImGui.text('Some other contents');
                    ImGui.tableNextColumn();
                    ImGui.text('123456');
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        if (ImGui.treeNode('Grid')) {
            var time = ImGui.getTime();
            var winningState = true; // If all cells are selected...
            for (v in selectedGrid) if (v == 0) { winningState = false; break; }
            if (winningState)
                ImGui.pushStyleVarImVec2(ImGuiStyleVar.SelectableTextAlign,
                    ImVec2.make(0.5 + 0.5 * Math.cos(time * 2.0), 0.5 + 0.5 * Math.sin(time * 3.0)));

            var sailorSize = ImGui.calcTextSize('Sailor');
            var size = sailorSize.x;
            for (y in 0...4) {
                for (x in 0...4) {
                    if (x > 0)
                        ImGui.sameLine();
                    ImGui.pushIDInt(y * 4 + x);
                    if (ImGui.selectableEx('Sailor', selectedGrid[y * 4 + x] != 0, 0, ImVec2.make(size, size))) {
                        selectedGrid[y * 4 + x] ^= 1;
                        if (x > 0) selectedGrid[y * 4 + x - 1] ^= 1;
                        if (x < 3) selectedGrid[y * 4 + x + 1] ^= 1;
                        if (y > 0) selectedGrid[(y - 1) * 4 + x] ^= 1;
                        if (y < 3) selectedGrid[(y + 1) * 4 + x] ^= 1;
                    }
                    ImGui.popID();
                }
            }

            if (winningState)
                ImGui.popStyleVar();
            ImGui.treePop();
        }

        if (ImGui.treeNode('Alignment')) {
            helpMarker(
                'By default, Selectables uses style.SelectableTextAlign but it can be overridden on a per-item '
                + 'basis using PushStyleVar(). You\'ll probably want to always keep your default situation to '
                + 'left-align otherwise it becomes difficult to layout multiple items on a same line');

            var alignTextSize = ImGui.calcTextSize('(1.0,1.0)');
            var size = alignTextSize.x;
            for (y in 0...3) {
                for (x in 0...3) {
                    var ax = x / 2.0;
                    var ay = y / 2.0;
                    var name = '(' + ax + ',' + ay + ')';
                    if (x > 0) ImGui.sameLine();
                    ImGui.pushStyleVarImVec2(ImGuiStyleVar.SelectableTextAlign, ImVec2.make(ax, ay));
                    ImGui.selectableBoolPtrEx(name, selectedAlign[3 * y + x], ImGuiSelectableFlags.None, ImVec2.make(size, size));
                    ImGui.popStyleVar();
                }
            }
            ImGui.treePop();
        }

        ImGui.treePop();

    }

}
