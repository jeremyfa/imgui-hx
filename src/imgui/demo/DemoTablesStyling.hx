package imgui.demo;

import imgui.ImGui;
import imgui.demo.DemoWindowTables.applyOpenAction;
import imgui.demo.DemoWindowTables.popStyleCompact;
import imgui.demo.DemoWindowTables.pushStyleCompact;
import imgui.demo.ImGuiDemo.helpMarker;

private class DemoFileNode {
    public var name:String;
    public var type:String;
    public var size:Int;
    public var childIdx:Int;
    public var childCount:Int;
    public function new(name:String, type:String, size:Int, childIdx:Int, childCount:Int) {
        this.name = name;
        this.type = type;
        this.size = size;
        this.childIdx = childIdx;
        this.childCount = childCount;
    }
}

/**
 * Tables: Background color, Tree view, Item width, Custom headers,
 * Angled headers, Context menus, Synced instances (imgui_demo.cpp port).
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoTablesStyling {

    // Background color
    static var bgFlags:Int = ImGuiTableFlags.RowBg;
    static var rowBgType:Int = 1;
    static var rowBgTarget:Int = 1;
    static var cellBgType:Int = 1;

    // Tree view
    static var treeTableFlags:Int = ImGuiTableFlags.BordersV | ImGuiTableFlags.BordersOuterH | ImGuiTableFlags.Resizable | ImGuiTableFlags.RowBg | ImGuiTableFlags.NoBordersInBody;
    static var treeNodeFlagsBase:Int = ImGuiTreeNodeFlags.SpanAllColumns | ImGuiTreeNodeFlags.DefaultOpen | ImGuiTreeNodeFlags.DrawLinesFull;
    static var treeNodes:Array<DemoFileNode> = [
        new DemoFileNode('Root with Long Name',           'Folder',      -1,     1,  3),  // 0
        new DemoFileNode('Music',                         'Folder',      -1,     4,  2),  // 1
        new DemoFileNode('Textures',                      'Folder',      -1,     6,  3),  // 2
        new DemoFileNode('desktop.ini',                   'System file', 1024,   -1, -1), // 3
        new DemoFileNode('File1_a.wav',                   'Audio file',  123000, -1, -1), // 4
        new DemoFileNode('File1_b.wav',                   'Audio file',  456000, -1, -1), // 5
        new DemoFileNode('Image001.png',                  'Image file',  203128, -1, -1), // 6
        new DemoFileNode('Copy of Image001.png',          'Image file',  203256, -1, -1), // 7
        new DemoFileNode('Copy of Image001 (Final2).png', 'Image file',  203512, -1, -1)  // 8
    ];

    // Item width
    static var itemWidthDummyF:Float = 0.0;

    // Custom headers
    static var columnSelected:Array<Bool> = [false, false, false];

    // Angled headers
    static var angledColumnNames:Array<String> = ['Track', 'cabasa', 'ride', 'smash', 'tom-hi', 'tom-mid', 'tom-low', 'hihat-o', 'hihat-c', 'snare-s', 'snare-c', 'clap', 'rim', 'kick'];
    static inline var ANGLED_ROWS_COUNT:Int = 12;
    static var angledTableFlags:Int = ImGuiTableFlags.SizingFixedFit | ImGuiTableFlags.ScrollX | ImGuiTableFlags.ScrollY | ImGuiTableFlags.BordersOuter | ImGuiTableFlags.BordersInnerH | ImGuiTableFlags.Hideable | ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.HighlightHoveredColumn;
    static var angledColumnFlags:Int = ImGuiTableColumnFlags.AngledHeader | ImGuiTableColumnFlags.WidthFixed;
    static var angledBools:Array<Bool> = [for (_ in 0...(14 * ANGLED_ROWS_COUNT)) false]; // Dummy storage selection storage
    static var frozenCols:Int = 1;
    static var frozenRows:Int = 2;
    static var angledTextAlign:Array<Float> = [0.0, 0.0];

    // Context menus
    static var ctxFlags1:Int = ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable | ImGuiTableFlags.Borders | ImGuiTableFlags.ContextMenuInBody;

    // Synced instances
    static var syncedFlags:Int = ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable | ImGuiTableFlags.Borders | ImGuiTableFlags.SizingFixedFit | ImGuiTableFlags.NoSavedSettings;

    public static function show(openAction:Int):Void {

        var textBaseWidth = DemoWindowTables.textBaseWidth;
        var textBaseHeight = DemoWindowTables.textBaseHeight;

        applyOpenAction(openAction);
        if (ImGui.treeNode('Background color')) {

            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Borders', bgFlags, ImGuiTableFlags.Borders);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_RowBg', bgFlags, ImGuiTableFlags.RowBg);
            ImGui.sameLine(); helpMarker('ImGuiTableFlags_RowBg automatically sets RowBg0 to alternative colors pulled from the Style.');
            ImGui.combo('row bg type', rowBgType, 'None\x00Red\x00Gradient\x00');
            ImGui.combo('row bg target', rowBgTarget, 'RowBg0\x00RowBg1\x00'); ImGui.sameLine(); helpMarker('Target RowBg0 to override the alternating odd/even colors,\nTarget RowBg1 to blend with them.');
            ImGui.combo('cell bg type', cellBgType, 'None\x00Blue\x00'); ImGui.sameLine(); helpMarker('We are colorizing cells to B1->C2 here.');
            popStyleCompact();

            if (ImGui.beginTable('table1', 5, bgFlags)) {
                for (row in 0...6) {
                    ImGui.tableNextRow();

                    if (rowBgType != 0) {
                        var rowBgColor = ImGui.getColorU32ImVec4(rowBgType == 1 ? ImVec4.make(0.7, 0.3, 0.3, 0.65) : ImVec4.make(0.2 + row * 0.1, 0.2, 0.2, 0.65)); // Flat or Gradient?
                        ImGui.tableSetBgColor(ImGuiTableBgTarget.RowBg0 + rowBgTarget, rowBgColor);
                    }

                    for (column in 0...5) {
                        ImGui.tableSetColumnIndex(column);
                        ImGui.text(std.String.fromCharCode('A'.code + row) + std.String.fromCharCode('0'.code + column));

                        if (row >= 1 && row <= 2 && column >= 1 && column <= 2 && cellBgType == 1) {
                            var cellBgColor = ImGui.getColorU32ImVec4(ImVec4.make(0.3, 0.3, 0.7, 0.65));
                            ImGui.tableSetBgColor(ImGuiTableBgTarget.CellBg, cellBgColor);
                        }
                    }
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Tree view')) {

            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_SpanFullWidth', treeNodeFlagsBase, ImGuiTreeNodeFlags.SpanFullWidth);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_SpanLabelWidth', treeNodeFlagsBase, ImGuiTreeNodeFlags.SpanLabelWidth);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_SpanAllColumns', treeNodeFlagsBase, ImGuiTreeNodeFlags.SpanAllColumns);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_LabelSpanAllColumns', treeNodeFlagsBase, ImGuiTreeNodeFlags.LabelSpanAllColumns);
            ImGui.sameLine(); helpMarker('Useful if you know that you aren\'t displaying contents in other columns');

            helpMarker('See "Columns flags" section to configure how indentation is applied to individual columns.');
            if (ImGui.beginTable('3ways', 3, treeTableFlags)) {
                ImGui.tableSetupColumn('Name', ImGuiTableColumnFlags.NoHide);
                ImGui.tableSetupColumnEx('Size', ImGuiTableColumnFlags.WidthFixed, textBaseWidth * 12.0);
                ImGui.tableSetupColumnEx('Type', ImGuiTableColumnFlags.WidthFixed, textBaseWidth * 18.0);
                ImGui.tableHeadersRow();

                displayFileNode(0);

                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Item width')) {

            helpMarker(
                'Showcase using PushItemWidth() and how it is preserved on a per-column basis.\n\n'
                + 'Note that on auto-resizing non-resizable fixed columns, querying the content width for '
                + 'e.g. right-alignment doesn\'t make sense.');
            if (ImGui.beginTable('table_item_width', 3, ImGuiTableFlags.Borders)) {
                ImGui.tableSetupColumn('small');
                ImGui.tableSetupColumn('half');
                ImGui.tableSetupColumn('right-align');
                ImGui.tableHeadersRow();

                for (row in 0...3) {
                    ImGui.tableNextRow();
                    if (row == 0) {
                        ImGui.tableSetColumnIndex(0);
                        ImGui.pushItemWidth(textBaseWidth * 3.0); // Small
                        ImGui.tableSetColumnIndex(1);
                        var avail = ImGui.getContentRegionAvail();
                        ImGui.pushItemWidth(-avail.x * 0.5);
                        ImGui.tableSetColumnIndex(2);
                        ImGui.pushItemWidth(-1.175494351e-38); // Right-aligned
                    }

                    ImGui.pushIDInt(row);
                    ImGui.tableSetColumnIndex(0);
                    ImGui.sliderFloat('float0', itemWidthDummyF, 0.0, 1.0);
                    ImGui.tableSetColumnIndex(1);
                    ImGui.sliderFloat('float1', itemWidthDummyF, 0.0, 1.0);
                    ImGui.tableSetColumnIndex(2);
                    ImGui.sliderFloat('##float2', itemWidthDummyF, 0.0, 1.0); // No visible label since right-aligned
                    ImGui.popID();
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Custom headers')) {

            var columnsCount = 3;
            if (ImGui.beginTable('table_custom_headers', columnsCount, ImGuiTableFlags.Borders | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable)) {
                ImGui.tableSetupColumn('Apricot');
                ImGui.tableSetupColumn('Banana');
                ImGui.tableSetupColumn('Cherry');

                ImGui.tableNextRowEx(ImGuiTableRowFlags.Headers);
                for (column in 0...columnsCount) {
                    ImGui.tableSetColumnIndex(column);
                    var columnName = ImGui.tableGetColumnName(column); // Retrieve name passed to TableSetupColumn()
                    ImGui.pushIDInt(column);
                    ImGui.pushStyleVarImVec2(ImGuiStyleVar.FramePadding, ImVec2.make(0, 0));
                    ImGui.checkbox('##checkall', columnSelected[column]);
                    ImGui.popStyleVar();
                    var style = ImGui.getStyle();
                    var innerSpacing = style.itemInnerSpacing;
                    ImGui.sameLineEx(0.0, innerSpacing.x);
                    ImGui.tableHeader(columnName);
                    ImGui.popID();
                }

                for (row in 0...5) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        var buf = 'Cell ' + column + ',' + row;
                        ImGui.tableSetColumnIndex(column);
                        ImGui.selectableEx(buf, columnSelected[column], 0, ImVec2.make(0, 0));
                    }
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Angled headers')) {

            var columnsCount = angledColumnNames.length;

            ImGui.checkboxFlagsIntPtr('_ScrollX', angledTableFlags, ImGuiTableFlags.ScrollX);
            ImGui.checkboxFlagsIntPtr('_ScrollY', angledTableFlags, ImGuiTableFlags.ScrollY);
            ImGui.checkboxFlagsIntPtr('_Resizable', angledTableFlags, ImGuiTableFlags.Resizable);
            ImGui.checkboxFlagsIntPtr('_Sortable', angledTableFlags, ImGuiTableFlags.Sortable);
            ImGui.checkboxFlagsIntPtr('_NoBordersInBody', angledTableFlags, ImGuiTableFlags.NoBordersInBody);
            ImGui.checkboxFlagsIntPtr('_HighlightHoveredColumn', angledTableFlags, ImGuiTableFlags.HighlightHoveredColumn);
            ImGui.setNextItemWidth(ImGui.getFontSize() * 8);
            ImGui.sliderInt('Frozen columns', frozenCols, 0, 2);
            ImGui.setNextItemWidth(ImGui.getFontSize() * 8);
            ImGui.sliderInt('Frozen rows', frozenRows, 0, 2);
            ImGui.checkboxFlagsIntPtr('Disable header contributing to column width', angledColumnFlags, ImGuiTableColumnFlags.NoHeaderWidth);

            if (ImGui.treeNode('Style settings')) {
                ImGui.sameLine();
                helpMarker('Giving access to some ImGuiStyle value in this demo for convenience.');
                var style = ImGui.getStyle();
                ImGui.setNextItemWidth(ImGui.getFontSize() * 8);
                var angle:Float = style.tableAngledHeadersAngle;
                if (ImGui.sliderAngleEx('style.TableAngledHeadersAngle', angle, -50.0, 50.0))
                    style.tableAngledHeadersAngle = angle;
                ImGui.setNextItemWidth(ImGui.getFontSize() * 8);
                var textAlign = style.tableAngledHeadersTextAlign;
                angledTextAlign[0] = textAlign.x;
                angledTextAlign[1] = textAlign.y;
                if (ImGui.sliderFloat2Ex('style.TableAngledHeadersTextAlign', angledTextAlign, 0.0, 1.0, '%.2f'))
                    style.tableAngledHeadersTextAlign = ImVec2.make(angledTextAlign[0], angledTextAlign[1]);
                ImGui.treePop();
            }

            if (ImGui.beginTableEx('table_angled_headers', columnsCount, angledTableFlags, ImVec2.make(0.0, textBaseHeight * 12))) {
                ImGui.tableSetupColumn(angledColumnNames[0], ImGuiTableColumnFlags.NoHide | ImGuiTableColumnFlags.NoReorder);
                for (n in 1...columnsCount)
                    ImGui.tableSetupColumn(angledColumnNames[n], angledColumnFlags);
                ImGui.tableSetupScrollFreeze(frozenCols, frozenRows);

                ImGui.tableAngledHeadersRow(); // Draw angled headers for all columns with the ImGuiTableColumnFlags_AngledHeader flag.
                ImGui.tableHeadersRow();       // Draw remaining headers and allow access to context-menu and other functions.
                for (row in 0...ANGLED_ROWS_COUNT) {
                    ImGui.pushIDInt(row);
                    ImGui.tableNextRow();
                    ImGui.tableSetColumnIndex(0);
                    ImGui.alignTextToFramePadding();
                    ImGui.text('Track ' + row);
                    for (column in 1...columnsCount)
                        if (ImGui.tableSetColumnIndex(column)) {
                            ImGui.pushIDInt(column);
                            ImGui.checkbox('', angledBools[row * columnsCount + column]);
                            ImGui.popID();
                        }
                    ImGui.popID();
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Context menus')) {

            helpMarker(
                'By default, right-clicking over a TableHeadersRow()/TableHeader() line will open the default context-menu.\n'
                + 'Using ImGuiTableFlags_ContextMenuInBody we also allow right-clicking over columns body.');

            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_ContextMenuInBody', ctxFlags1, ImGuiTableFlags.ContextMenuInBody);
            popStyleCompact();

            var columnsCount = 3;
            if (ImGui.beginTable('table_context_menu', columnsCount, ctxFlags1)) {
                ImGui.tableSetupColumn('One');
                ImGui.tableSetupColumn('Two');
                ImGui.tableSetupColumn('Three');

                ImGui.tableHeadersRow();

                for (row in 0...4) {
                    ImGui.tableNextRow();
                    for (column in 0...columnsCount) {
                        ImGui.tableSetColumnIndex(column);
                        ImGui.text('Cell ' + column + ',' + row);
                    }
                }
                ImGui.endTable();
            }

            helpMarker(
                'Demonstrate mixing table context menu (over header), item context button (over button) '
                + 'and custom per-column context menu (over column body).');
            var flags2 = ImGuiTableFlags.Resizable | ImGuiTableFlags.SizingFixedFit | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable | ImGuiTableFlags.Borders;
            if (ImGui.beginTable('table_context_menu_2', columnsCount, flags2)) {
                ImGui.tableSetupColumn('One');
                ImGui.tableSetupColumn('Two');
                ImGui.tableSetupColumn('Three');

                ImGui.tableHeadersRow();
                for (row in 0...4) {
                    ImGui.tableNextRow();
                    for (column in 0...columnsCount) {
                        ImGui.tableSetColumnIndex(column);
                        ImGui.text('Cell ' + column + ',' + row);
                        ImGui.sameLine();

                        ImGui.pushIDInt(row * columnsCount + column);
                        ImGui.smallButton('..');
                        if (ImGui.beginPopupContextItem()) {
                            ImGui.text('This is the popup for Button("..") in Cell ' + column + ',' + row);
                            if (ImGui.button('Close'))
                                ImGui.closeCurrentPopup();
                            ImGui.endPopup();
                        }
                        ImGui.popID();
                    }
                }

                var hoveredColumn = -1;
                for (column in 0...(columnsCount + 1)) {
                    ImGui.pushIDInt(column);
                    if ((ImGui.tableGetColumnFlags(column) & ImGuiTableColumnFlags.IsHovered) != 0)
                        hoveredColumn = column;
                    if (hoveredColumn == column && !ImGui.isAnyItemHovered() && ImGui.isMouseReleased(1))
                        ImGui.openPopup('MyPopup');
                    if (ImGui.beginPopup('MyPopup')) {
                        if (column == columnsCount)
                            ImGui.text('This is a custom popup for unused space after the last column.');
                        else
                            ImGui.text('This is a custom popup for Column ' + column);
                        if (ImGui.button('Close'))
                            ImGui.closeCurrentPopup();
                        ImGui.endPopup();
                    }
                    ImGui.popID();
                }

                ImGui.endTable();
                ImGui.text('Hovered column: ' + hoveredColumn);
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Synced instances')) {

            helpMarker('Multiple tables with the same identifier will share their settings, width, visibility, order etc.');

            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Resizable', syncedFlags, ImGuiTableFlags.Resizable);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_ScrollY', syncedFlags, ImGuiTableFlags.ScrollY);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_SizingFixedFit', syncedFlags, ImGuiTableFlags.SizingFixedFit);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_HighlightHoveredColumn', syncedFlags, ImGuiTableFlags.HighlightHoveredColumn);
            for (n in 0...3) {
                var buf = 'Synced Table ' + n;
                var open = ImGui.collapsingHeader(buf, ImGuiTreeNodeFlags.DefaultOpen);
                if (open && ImGui.beginTableEx('Table', 3, syncedFlags, ImVec2.make(0.0, ImGui.getTextLineHeightWithSpacing() * 5))) {
                    ImGui.tableSetupColumn('One');
                    ImGui.tableSetupColumn('Two');
                    ImGui.tableSetupColumn('Three');
                    ImGui.tableHeadersRow();
                    var cellCount = (n == 1) ? 27 : 9; // Make second table have a scrollbar to verify that additional decoration is not affecting column positions.
                    for (cell in 0...cellCount) {
                        ImGui.tableNextColumn();
                        ImGui.text('this cell ' + cell);
                    }
                    ImGui.endTable();
                }
            }
            ImGui.treePop();
        }

    }

    /** Recursive tree-view node display (MyTreeNode::DisplayNode port). */
    static function displayFileNode(nodeIdx:Int):Void {
        var node = treeNodes[nodeIdx];
        ImGui.tableNextRow();
        ImGui.tableNextColumn();
        var isFolder = (node.childCount > 0);

        var nodeFlags = treeNodeFlagsBase;
        if (nodeIdx != 0)
            nodeFlags &= ~ImGuiTreeNodeFlags.LabelSpanAllColumns; // Only demonstrate this on the root node.

        if (isFolder) {
            var open = ImGui.treeNodeEx(node.name, nodeFlags);
            if ((nodeFlags & ImGuiTreeNodeFlags.LabelSpanAllColumns) == 0) {
                ImGui.tableNextColumn();
                ImGui.textDisabled('--');
                ImGui.tableNextColumn();
                ImGui.textUnformatted(node.type);
            }
            if (open) {
                for (childN in 0...node.childCount)
                    displayFileNode(node.childIdx + childN);
                ImGui.treePop();
            }
        }
        else {
            ImGui.treeNodeEx(node.name, nodeFlags | ImGuiTreeNodeFlags.Leaf | ImGuiTreeNodeFlags.Bullet | ImGuiTreeNodeFlags.NoTreePushOnOpen);
            ImGui.tableNextColumn();
            ImGui.text('' + node.size);
            ImGui.tableNextColumn();
            ImGui.textUnformatted(node.type);
        }
    }

}
