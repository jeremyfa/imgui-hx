package imgui.demo;

import imgui.ImGui;
import imgui.NativeStructs;
import imgui.demo.ImGuiDemo.helpMarker;

/** Legacy Columns API section (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWindowColumns {

    static var basicSelected:Int = -1;
    static var basicNames:Array<String> = ['One', 'Two', 'Three'];
    static var basicPaths:Array<String> = ['/path/one', '/path/two', '/path/three'];

    static var hBorders:Bool = true;
    static var vBorders:Bool = true;
    static var columnsCount:Int = 4;

    static var mixedFoo:Float = 1.0;
    static var mixedBar:Float = 1.0;

    static var clipper:#if cpp cpp.Star<ImGuiListClipper> #else ImGuiListClipper #end;
    static var clipperInited:Bool = false;

    public static function show():Void {

        var open = ImGui.treeNode('Legacy Columns API');
        ImGui.sameLine();
        helpMarker('Columns() is an old API! Prefer using the more flexible and powerful BeginTable() API!');
        if (!open)
            return;

        if (ImGui.treeNode('Basic')) {
            ImGui.text('Without border:');
            ImGui.columnsEx(3, 'mycolumns3', false); // 3-ways, no border
            ImGui.separator();
            for (n in 0...14) {
                var label = 'Item ' + n;
                if (ImGui.selectableEx(label, false, 0, ImVec2.make(0, 0))) {}
                ImGui.nextColumn();
            }
            ImGui.columnsEx(1);
            ImGui.separator();

            ImGui.text('With border:');
            ImGui.columnsEx(4, 'mycolumns'); // 4-ways, with border
            ImGui.separator();
            ImGui.text('ID'); ImGui.nextColumn();
            ImGui.text('Name'); ImGui.nextColumn();
            ImGui.text('Path'); ImGui.nextColumn();
            ImGui.text('Hovered'); ImGui.nextColumn();
            ImGui.separator();
            for (i in 0...3) {
                var label = StringTools.lpad('' + i, '0', 4);
                if (ImGui.selectableEx(label, basicSelected == i, ImGuiSelectableFlags.SpanAllColumns, ImVec2.make(0, 0)))
                    basicSelected = i;
                var hovered = ImGui.isItemHovered();
                ImGui.nextColumn();
                ImGui.text(basicNames[i]); ImGui.nextColumn();
                ImGui.text(basicPaths[i]); ImGui.nextColumn();
                ImGui.text('' + (hovered ? 1 : 0)); ImGui.nextColumn();
            }
            ImGui.columnsEx(1);
            ImGui.separator();
            ImGui.treePop();
        }

        if (ImGui.treeNode('Borders')) {
            var linesCount = 3;
            ImGui.setNextItemWidth(ImGui.getFontSize() * 8);
            ImGui.dragIntEx('##columns_count', columnsCount, 0.1, 2, 10, '%d columns');
            if (columnsCount < 2)
                columnsCount = 2;
            ImGui.sameLine();
            ImGui.checkbox('horizontal', hBorders);
            ImGui.sameLine();
            ImGui.checkbox('vertical', vBorders);
            ImGui.columnsEx(columnsCount, null, vBorders);
            for (i in 0...(columnsCount * linesCount)) {
                if (hBorders && ImGui.getColumnIndex() == 0)
                    ImGui.separator();
                ImGui.pushIDInt(i);
                var c = std.String.fromCharCode('a'.code + i);
                ImGui.text(c + c + c);
                ImGui.text('Width ' + fmt2(ImGui.getColumnWidth()));
                var avail = ImGui.getContentRegionAvail();
                ImGui.text('Avail ' + fmt2(avail.x));
                ImGui.text('Offset ' + fmt2(ImGui.getColumnOffset()));
                ImGui.text('Long text that is likely to clip');
                ImGui.buttonEx('Button', ImVec2.make(-1.175494351e-38, 0.0));
                ImGui.popID();
                ImGui.nextColumn();
            }
            ImGui.columnsEx(1);
            if (hBorders)
                ImGui.separator();
            ImGui.treePop();
        }

        if (ImGui.treeNode('Mixed items')) {
            ImGui.columnsEx(3, 'mixed');
            ImGui.separator();

            ImGui.text('Hello');
            ImGui.button('Banana');
            ImGui.nextColumn();

            ImGui.text('ImGui');
            ImGui.button('Apple');
            ImGui.inputFloatEx('red', mixedFoo, 0.05, 0, '%.3f');
            ImGui.text('An extra line here.');
            ImGui.nextColumn();

            ImGui.text('Sailor');
            ImGui.button('Corniflower');
            ImGui.inputFloatEx('blue', mixedBar, 0.05, 0, '%.3f');
            ImGui.nextColumn();

            if (ImGui.collapsingHeader('Category A')) { ImGui.text('Blah blah blah'); } ImGui.nextColumn();
            if (ImGui.collapsingHeader('Category B')) { ImGui.text('Blah blah blah'); } ImGui.nextColumn();
            if (ImGui.collapsingHeader('Category C')) { ImGui.text('Blah blah blah'); } ImGui.nextColumn();
            ImGui.columnsEx(1);
            ImGui.separator();
            ImGui.treePop();
        }

        if (ImGui.treeNode('Word-wrapping')) {
            ImGui.columnsEx(2, 'word-wrapping');
            ImGui.separator();
            ImGui.textWrapped('The quick brown fox jumps over the lazy dog.');
            ImGui.textWrapped('Hello Left');
            ImGui.nextColumn();
            ImGui.textWrapped('The quick brown fox jumps over the lazy dog.');
            ImGui.textWrapped('Hello Right');
            ImGui.columnsEx(1);
            ImGui.separator();
            ImGui.treePop();
        }

        if (ImGui.treeNode('Horizontal Scrolling')) {
            ImGui.setNextWindowContentSize(ImVec2.make(1500.0, 0.0));
            var childSize = ImVec2.make(0, ImGui.getFontSize() * 20.0);
            ImGui.beginChild('##ScrollingRegion', childSize, ImGuiChildFlags.None, ImGuiWindowFlags.HorizontalScrollbar);
            ImGui.columnsEx(10);

            var itemsCount = 2000;
            if (!clipperInited) {
                clipperInited = true;
                clipper = NativeStructs.createListClipper();
            }
            ImGuiListClipper.begin(clipper, itemsCount);
            while (ImGuiListClipper.step(clipper)) {
                for (i in clipper.displayStart...clipper.displayEnd)
                    for (j in 0...10) {
                        ImGui.text('Line ' + i + ' Column ' + j + '...');
                        ImGui.nextColumn();
                    }
            }
            ImGui.columnsEx(1);
            ImGui.endChild();
            ImGui.treePop();
        }

        if (ImGui.treeNode('Tree')) {
            ImGui.columnsEx(2, 'tree', true);
            for (x in 0...3) {
                var open1 = ImGui.treeNodeStr('node' + x, 'Node' + x);
                ImGui.nextColumn();
                ImGui.text('Node contents');
                ImGui.nextColumn();
                if (open1) {
                    for (y in 0...3) {
                        var open2 = ImGui.treeNodeStr('node' + x + '.' + y, 'Node' + x + '.' + y);
                        ImGui.nextColumn();
                        ImGui.text('Node contents');
                        if (open2) {
                            ImGui.text('Even more contents');
                            if (ImGui.treeNode('Tree in column')) {
                                ImGui.text('The quick brown fox jumps over the lazy dog');
                                ImGui.treePop();
                            }
                        }
                        ImGui.nextColumn();
                        if (open2)
                            ImGui.treePop();
                    }
                    ImGui.treePop();
                }
            }
            ImGui.columnsEx(1);
            ImGui.treePop();
        }

        ImGui.treePop();

    }

    /** Format a float with 2 decimals (printf %.2f equivalent). */
    static function fmt2(v:Float):String {
        return '' + (Math.round(v * 100) / 100);
    }

}
