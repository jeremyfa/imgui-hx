package imgui.demo;

import imgui.ImGui;
import imgui.NativeStructs;
import imgui.demo.DemoWindowTables.applyOpenAction;
import imgui.demo.DemoWindowTables.editTableSizingFlags;
import imgui.demo.DemoWindowTables.editTableColumnsFlags;
import imgui.demo.DemoWindowTables.showTableColumnsStatusFlags;
import imgui.demo.DemoWindowTables.popStyleCompact;
import imgui.demo.DemoWindowTables.pushStyleCompact;
import imgui.demo.ImGuiDemo.helpMarker;

/**
 * Tables: Padding, Sizing policies, Scrolling, Columns flags/widths,
 * Nested, Row height, Outer size (imgui_demo.cpp port).
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoTablesLayout {

    // Padding
    static var padFlags1:Int = ImGuiTableFlags.BordersV;
    static var padShowHeaders:Bool = false;
    static var padFlags2:Int = ImGuiTableFlags.Borders | ImGuiTableFlags.RowBg;
    static var cellPadding:Array<Float> = [0.0, 0.0];
    static var showWidgetFrameBg:Bool = true;
    static var padTextBufs:Array<String> = [for (_ in 0...15) 'edit me'];

    // Sizing policies
    static var sizingFlags1:Int = ImGuiTableFlags.BordersV | ImGuiTableFlags.BordersOuterH | ImGuiTableFlags.RowBg | ImGuiTableFlags.ContextMenuInBody;
    static var sizingPolicyFlags:Array<Int> = [ImGuiTableFlags.SizingFixedFit, ImGuiTableFlags.SizingFixedSame, ImGuiTableFlags.SizingStretchProp, ImGuiTableFlags.SizingStretchSame];
    static inline var CT_SHOW_WIDTH:Int = 0;
    static inline var CT_SHORT_TEXT:Int = 1;
    static inline var CT_LONG_TEXT:Int = 2;
    static inline var CT_BUTTON:Int = 3;
    static inline var CT_FILL_BUTTON:Int = 4;
    static inline var CT_INPUT_TEXT:Int = 5;
    static var sizingAdvFlags:Int = ImGuiTableFlags.ScrollY | ImGuiTableFlags.Borders | ImGuiTableFlags.RowBg | ImGuiTableFlags.Resizable;
    static var sizingContentsType:Int = CT_SHOW_WIDTH;
    static var sizingColumnCount:Int = 3;
    static var sizingTextBuf:String = '';

    // Vertical scrolling
    static var vScrollFlags:Int = ImGuiTableFlags.ScrollY | ImGuiTableFlags.RowBg | ImGuiTableFlags.BordersOuter | ImGuiTableFlags.BordersV | ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable;
    static var vScrollClipper:#if cpp cpp.Star<ImGuiListClipper> #else ImGuiListClipper #end;
    static var vScrollClipperInited:Bool = false;

    // Horizontal scrolling
    static var hScrollFlags:Int = ImGuiTableFlags.ScrollX | ImGuiTableFlags.ScrollY | ImGuiTableFlags.RowBg | ImGuiTableFlags.BordersOuter | ImGuiTableFlags.BordersV | ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable;
    static var freezeCols:Int = 1;
    static var freezeRows:Int = 1;
    static var hScrollFlags2:Int = ImGuiTableFlags.SizingStretchSame | ImGuiTableFlags.ScrollX | ImGuiTableFlags.ScrollY | ImGuiTableFlags.BordersOuter | ImGuiTableFlags.RowBg | ImGuiTableFlags.ContextMenuInBody;
    static var innerWidth:Float = 1000.0;

    // Columns flags
    static var columnNames:Array<String> = ['One', 'Two', 'Three'];
    static var columnFlags:Array<Int> = [ImGuiTableColumnFlags.DefaultSort, ImGuiTableColumnFlags.None, ImGuiTableColumnFlags.DefaultHide];
    static var columnFlagsOut:Array<Int> = [0, 0, 0]; // Output from TableGetColumnFlags()

    // Columns widths
    static var colWidthFlags1:Int = ImGuiTableFlags.Borders | ImGuiTableFlags.NoBordersInBodyUntilResize;
    static var colWidthFlags2:Int = ImGuiTableFlags.None;

    // Outer size
    static var outerSizeFlags:Int = ImGuiTableFlags.Borders | ImGuiTableFlags.Resizable | ImGuiTableFlags.ContextMenuInBody | ImGuiTableFlags.RowBg | ImGuiTableFlags.SizingFixedFit | ImGuiTableFlags.NoHostExtendX;

    public static function show(openAction:Int):Void {

        var textBaseWidth = DemoWindowTables.textBaseWidth;
        var textBaseHeight = DemoWindowTables.textBaseHeight;

        applyOpenAction(openAction);
        if (ImGui.treeNode('Padding')) {

            helpMarker(
                'We often want outer padding activated when any using features which makes the edges of a column visible:\n'
                + 'e.g.:\n'
                + '- BorderOuterV\n'
                + '- any form of row selection\n'
                + 'Because of this, activating BorderOuterV sets the default to PadOuterX. '
                + 'Using PadOuterX or NoPadOuterX you can override the default.\n\n'
                + 'Actual padding values are using style.CellPadding.\n\n'
                + 'In this demo we don\'t show horizontal borders to emphasize how they don\'t affect default horizontal padding.');

            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_PadOuterX', padFlags1, ImGuiTableFlags.PadOuterX);
            ImGui.sameLine(); helpMarker('Enable outer-most padding (default if ImGuiTableFlags_BordersOuterV is set)');
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoPadOuterX', padFlags1, ImGuiTableFlags.NoPadOuterX);
            ImGui.sameLine(); helpMarker('Disable outer-most padding (default if ImGuiTableFlags_BordersOuterV is not set)');
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoPadInnerX', padFlags1, ImGuiTableFlags.NoPadInnerX);
            ImGui.sameLine(); helpMarker('Disable inner padding between columns (double inner padding if BordersOuterV is on, single inner padding if BordersOuterV is off)');
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersOuterV', padFlags1, ImGuiTableFlags.BordersOuterV);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersInnerV', padFlags1, ImGuiTableFlags.BordersInnerV);
            ImGui.checkbox('show_headers', padShowHeaders);
            popStyleCompact();

            if (ImGui.beginTable('table_padding', 3, padFlags1)) {
                if (padShowHeaders) {
                    ImGui.tableSetupColumn('One');
                    ImGui.tableSetupColumn('Two');
                    ImGui.tableSetupColumn('Three');
                    ImGui.tableHeadersRow();
                }

                for (row in 0...5) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        ImGui.tableSetColumnIndex(column);
                        if (row == 0) {
                            var avail = ImGui.getContentRegionAvail();
                            ImGui.text('Avail ' + fmt2(avail.x));
                        }
                        else {
                            ImGui.buttonEx('Hello ' + column + ',' + row, ImVec2.make(-1.175494351e-38, 0.0));
                        }
                    }
                }
                ImGui.endTable();
            }

            helpMarker('Setting style.CellPadding to (0,0) or a custom value.');

            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Borders', padFlags2, ImGuiTableFlags.Borders);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersH', padFlags2, ImGuiTableFlags.BordersH);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersV', padFlags2, ImGuiTableFlags.BordersV);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersInner', padFlags2, ImGuiTableFlags.BordersInner);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersOuter', padFlags2, ImGuiTableFlags.BordersOuter);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_RowBg', padFlags2, ImGuiTableFlags.RowBg);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Resizable', padFlags2, ImGuiTableFlags.Resizable);
            ImGui.checkbox('show_widget_frame_bg', showWidgetFrameBg);
            ImGui.sliderFloat2Ex('CellPadding', cellPadding, 0.0, 10.0, '%.0f');
            popStyleCompact();

            ImGui.pushStyleVarImVec2(ImGuiStyleVar.CellPadding, ImVec2.make(cellPadding[0], cellPadding[1]));
            if (ImGui.beginTable('table_padding_2', 3, padFlags2)) {
                if (!showWidgetFrameBg)
                    ImGui.pushStyleColor(ImGuiCol.FrameBg, 0);
                for (cell in 0...(3 * 5)) {
                    ImGui.tableNextColumn();
                    ImGui.setNextItemWidth(-1.175494351e-38);
                    ImGui.pushIDInt(cell);
                    ImGui.inputText('##cell', padTextBufs[cell], 16);
                    ImGui.popID();
                }
                if (!showWidgetFrameBg)
                    ImGui.popStyleColor();
                ImGui.endTable();
            }
            ImGui.popStyleVar();

            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Sizing policies')) {

            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Resizable', sizingFlags1, ImGuiTableFlags.Resizable);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoHostExtendX', sizingFlags1, ImGuiTableFlags.NoHostExtendX);
            popStyleCompact();

            for (tableN in 0...4) {
                ImGui.pushIDInt(tableN);
                ImGui.setNextItemWidth(textBaseWidth * 30);
                sizingPolicyFlags[tableN] = editTableSizingFlags(sizingPolicyFlags[tableN]);

                if (ImGui.beginTable('table1', 3, sizingPolicyFlags[tableN] | sizingFlags1)) {
                    for (row in 0...3) {
                        ImGui.tableNextRow();
                        ImGui.tableNextColumn(); ImGui.text('Oh dear');
                        ImGui.tableNextColumn(); ImGui.text('Oh dear');
                        ImGui.tableNextColumn(); ImGui.text('Oh dear');
                    }
                    ImGui.endTable();
                }
                if (ImGui.beginTable('table2', 3, sizingPolicyFlags[tableN] | sizingFlags1)) {
                    for (row in 0...3) {
                        ImGui.tableNextRow();
                        ImGui.tableNextColumn(); ImGui.text('AAAA');
                        ImGui.tableNextColumn(); ImGui.text('BBBBBBBB');
                        ImGui.tableNextColumn(); ImGui.text('CCCCCCCCCCCC');
                    }
                    ImGui.endTable();
                }
                ImGui.popID();
            }

            ImGui.spacing();
            ImGui.textUnformatted('Advanced');
            ImGui.sameLine();
            helpMarker(
                'This section allows you to interact and see the effect of various sizing policies '
                + 'depending on whether Scroll is enabled and the contents of your columns.');

            pushStyleCompact();
            ImGui.pushID('Advanced');
            ImGui.pushItemWidth(textBaseWidth * 30);
            sizingAdvFlags = editTableSizingFlags(sizingAdvFlags);
            ImGui.combo('Contents', sizingContentsType, 'Show width\x00Short Text\x00Long Text\x00Button\x00Fill Button\x00InputText\x00');
            if (sizingContentsType == CT_FILL_BUTTON) {
                ImGui.sameLine();
                helpMarker(
                    'Be mindful that using right-alignment (e.g. size.x = -FLT_MIN) creates a feedback loop '
                    + 'where contents width can feed into auto-column width can feed into contents width.');
            }
            ImGui.dragIntEx('Columns', sizingColumnCount, 0.1, 1, 64, '%d', ImGuiSliderFlags.AlwaysClamp);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Resizable', sizingAdvFlags, ImGuiTableFlags.Resizable);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_PreciseWidths', sizingAdvFlags, ImGuiTableFlags.PreciseWidths);
            ImGui.sameLine(); helpMarker('Disable distributing remainder width to stretched columns (width allocation on a 100-wide table with 3 columns: Without this flag: 33,33,34. With this flag: 33,33,33). With larger number of columns, resizing will appear to be less smooth.');
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_ScrollX', sizingAdvFlags, ImGuiTableFlags.ScrollX);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_ScrollY', sizingAdvFlags, ImGuiTableFlags.ScrollY);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoClip', sizingAdvFlags, ImGuiTableFlags.NoClip);
            ImGui.popItemWidth();
            ImGui.popID();
            popStyleCompact();

            if (ImGui.beginTableEx('table2', sizingColumnCount, sizingAdvFlags, ImVec2.make(0.0, textBaseHeight * 7))) {
                for (cell in 0...(10 * sizingColumnCount)) {
                    ImGui.tableNextColumn();
                    var column = ImGui.tableGetColumnIndex();
                    var row = ImGui.tableGetRowIndex();

                    ImGui.pushIDInt(cell);
                    var label = 'Hello ' + column + ',' + row;
                    switch (sizingContentsType) {
                        case CT_SHORT_TEXT: ImGui.textUnformatted(label);
                        case CT_LONG_TEXT: ImGui.text('Some ' + (column == 0 ? 'long' : 'longeeer') + ' text ' + column + ',' + row + '\nOver two lines..');
                        case CT_SHOW_WIDTH:
                            var avail = ImGui.getContentRegionAvail();
                            ImGui.text('W: ' + fmt1(avail.x));
                        case CT_BUTTON: ImGui.button(label);
                        case CT_FILL_BUTTON: ImGui.buttonEx(label, ImVec2.make(-1.175494351e-38, 0.0));
                        case CT_INPUT_TEXT:
                            ImGui.setNextItemWidth(-1.175494351e-38);
                            ImGui.inputText('##', sizingTextBuf, 32);
                        case _:
                    }
                    ImGui.popID();
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Vertical scrolling, with clipping')) {

            helpMarker(
                'Here we activate ScrollY, which will create a child window container to allow hosting scrollable contents.\n\n'
                + 'We also demonstrate using ImGuiListClipper to virtualize the submission of many items.');

            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_ScrollY', vScrollFlags, ImGuiTableFlags.ScrollY);
            popStyleCompact();

            var outerSize = ImVec2.make(0.0, textBaseHeight * 8);
            if (ImGui.beginTableEx('table_scrolly', 3, vScrollFlags, outerSize)) {
                ImGui.tableSetupScrollFreeze(0, 1); // Make top row always visible
                ImGui.tableSetupColumn('One', ImGuiTableColumnFlags.None);
                ImGui.tableSetupColumn('Two', ImGuiTableColumnFlags.None);
                ImGui.tableSetupColumn('Three', ImGuiTableColumnFlags.None);
                ImGui.tableHeadersRow();

                if (!vScrollClipperInited) {
                    vScrollClipperInited = true;
                    vScrollClipper = NativeStructs.createListClipper();
                }
                ImGuiListClipper.begin(vScrollClipper, 1000);
                while (ImGuiListClipper.step(vScrollClipper)) {
                    for (row in vScrollClipper.displayStart...vScrollClipper.displayEnd) {
                        ImGui.tableNextRow();
                        for (column in 0...3) {
                            ImGui.tableSetColumnIndex(column);
                            ImGui.text('Hello ' + column + ',' + row);
                        }
                    }
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Horizontal scrolling')) {

            helpMarker(
                'When ScrollX is enabled, the default sizing policy becomes ImGuiTableFlags_SizingFixedFit, '
                + 'as automatically stretching columns doesn\'t make much sense with horizontal scrolling.\n\n'
                + 'Also note that as of the current version, you will almost always want to enable ScrollY along with ScrollX, '
                + 'because the container window won\'t automatically extend vertically to fix contents '
                + '(this may be improved in future versions).');

            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Resizable', hScrollFlags, ImGuiTableFlags.Resizable);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_ScrollX', hScrollFlags, ImGuiTableFlags.ScrollX);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_ScrollY', hScrollFlags, ImGuiTableFlags.ScrollY);
            ImGui.setNextItemWidth(ImGui.getFrameHeight());
            ImGui.dragIntEx('freeze_cols', freezeCols, 0.2, 0, 9, null, ImGuiSliderFlags.NoInput);
            ImGui.setNextItemWidth(ImGui.getFrameHeight());
            ImGui.dragIntEx('freeze_rows', freezeRows, 0.2, 0, 9, null, ImGuiSliderFlags.NoInput);
            popStyleCompact();

            var outerSize = ImVec2.make(0.0, textBaseHeight * 8);
            if (ImGui.beginTableEx('table_scrollx', 7, hScrollFlags, outerSize)) {
                ImGui.tableSetupScrollFreeze(freezeCols, freezeRows);
                ImGui.tableSetupColumn('Line #', ImGuiTableColumnFlags.NoHide); // Make the first column not hideable to match our use of TableSetupScrollFreeze()
                ImGui.tableSetupColumn('One');
                ImGui.tableSetupColumn('Two');
                ImGui.tableSetupColumn('Three');
                ImGui.tableSetupColumn('Four');
                ImGui.tableSetupColumn('Five');
                ImGui.tableSetupColumn('Six');
                ImGui.tableHeadersRow();
                for (row in 0...20) {
                    ImGui.tableNextRow();
                    for (column in 0...7) {
                        if (!ImGui.tableSetColumnIndex(column) && column > 0)
                            continue;
                        if (column == 0)
                            ImGui.text('Line ' + row);
                        else
                            ImGui.text('Hello world ' + column + ',' + row);
                    }
                }
                ImGui.endTable();
            }

            ImGui.spacing();
            ImGui.textUnformatted('Stretch + ScrollX');
            ImGui.sameLine();
            helpMarker(
                'Showcase using Stretch columns + ScrollX together: '
                + 'this is rather unusual and only makes sense when specifying an \'inner_width\' for the table!\n'
                + 'Without an explicit value, inner_width is == outer_size.x and therefore using Stretch columns '
                + 'along with ScrollX doesn\'t make sense.');
            pushStyleCompact();
            ImGui.pushID('flags3');
            ImGui.pushItemWidth(textBaseWidth * 30);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_ScrollX', hScrollFlags2, ImGuiTableFlags.ScrollX);
            ImGui.dragFloatEx('inner_width', innerWidth, 1.0, 0.0, 3.402823466e38, '%.1f');
            ImGui.popItemWidth();
            ImGui.popID();
            popStyleCompact();
            if (ImGui.beginTableEx('table2', 7, hScrollFlags2, outerSize, innerWidth)) {
                for (cell in 0...(20 * 7)) {
                    ImGui.tableNextColumn();
                    ImGui.text('Hello world ' + ImGui.tableGetColumnIndex() + ',' + ImGui.tableGetRowIndex());
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Columns flags')) {

            var columnCount = 3;
            if (ImGui.beginTable('table_columns_flags_checkboxes', columnCount, ImGuiTableFlags.None)) {
                pushStyleCompact();
                for (column in 0...columnCount) {
                    ImGui.tableNextColumn();
                    ImGui.pushIDInt(column);
                    ImGui.alignTextToFramePadding(); // FIXME-TABLE: Workaround for wrong text baseline propagation across columns
                    ImGui.text('\'' + columnNames[column] + '\'');
                    ImGui.spacing();
                    ImGui.text('Input flags:');
                    columnFlags[column] = editTableColumnsFlags(columnFlags[column]);
                    ImGui.spacing();
                    ImGui.text('Output flags:');
                    ImGui.beginDisabled();
                    showTableColumnsStatusFlags(columnFlagsOut[column]);
                    ImGui.endDisabled();
                    ImGui.popID();
                }
                popStyleCompact();
                ImGui.endTable();
            }

            var flags = ImGuiTableFlags.SizingFixedFit | ImGuiTableFlags.ScrollX | ImGuiTableFlags.ScrollY
                | ImGuiTableFlags.RowBg | ImGuiTableFlags.BordersOuter | ImGuiTableFlags.BordersV
                | ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable | ImGuiTableFlags.Sortable;
            var outerSize = ImVec2.make(0.0, textBaseHeight * 9);
            if (ImGui.beginTableEx('table_columns_flags', columnCount, flags, outerSize)) {
                var hasAngledHeader = false;
                for (column in 0...columnCount) {
                    hasAngledHeader = hasAngledHeader || ((columnFlags[column] & ImGuiTableColumnFlags.AngledHeader) != 0);
                    ImGui.tableSetupColumn(columnNames[column], columnFlags[column]);
                }
                if (hasAngledHeader)
                    ImGui.tableAngledHeadersRow();
                ImGui.tableHeadersRow();
                for (column in 0...columnCount)
                    columnFlagsOut[column] = ImGui.tableGetColumnFlags(column);
                var indentStep:Float = Std.int(textBaseWidth / 2);
                for (row in 0...8) {
                    ImGui.indentEx(indentStep);
                    ImGui.tableNextRow();
                    for (column in 0...columnCount) {
                        ImGui.tableSetColumnIndex(column);
                        ImGui.text((column == 0 ? 'Indented' : 'Hello') + ' ' + ImGui.tableGetColumnName(column));
                    }
                }
                ImGui.unindentEx(indentStep * 8.0);

                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Columns widths')) {

            helpMarker('Using TableSetupColumn() to setup default width.');

            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Resizable', colWidthFlags1, ImGuiTableFlags.Resizable);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoBordersInBodyUntilResize', colWidthFlags1, ImGuiTableFlags.NoBordersInBodyUntilResize);
            popStyleCompact();
            if (ImGui.beginTable('table1', 3, colWidthFlags1)) {
                ImGui.tableSetupColumnEx('one', ImGuiTableColumnFlags.WidthFixed, 100.0); // Default to 100.0f
                ImGui.tableSetupColumnEx('two', ImGuiTableColumnFlags.WidthFixed, 200.0); // Default to 200.0f
                ImGui.tableSetupColumn('three', ImGuiTableColumnFlags.WidthFixed);        // Default to auto
                ImGui.tableHeadersRow();
                for (row in 0...4) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        ImGui.tableSetColumnIndex(column);
                        if (row == 0) {
                            var avail = ImGui.getContentRegionAvail();
                            ImGui.text('(w: ' + fmt1(avail.x) + ')');
                        }
                        else {
                            ImGui.text('Hello ' + column + ',' + row);
                        }
                    }
                }
                ImGui.endTable();
            }

            helpMarker(
                'Using TableSetupColumn() to setup explicit width.\n\nUnless _NoKeepColumnsVisible is set, '
                + 'fixed columns with set width may still be shrunk down if there\'s not enough space in the host.');

            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoKeepColumnsVisible', colWidthFlags2, ImGuiTableFlags.NoKeepColumnsVisible);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersInnerV', colWidthFlags2, ImGuiTableFlags.BordersInnerV);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersOuterV', colWidthFlags2, ImGuiTableFlags.BordersOuterV);
            popStyleCompact();
            if (ImGui.beginTable('table2', 4, colWidthFlags2)) {
                ImGui.tableSetupColumnEx('', ImGuiTableColumnFlags.WidthFixed, 100.0);
                ImGui.tableSetupColumnEx('', ImGuiTableColumnFlags.WidthFixed, textBaseWidth * 15.0);
                ImGui.tableSetupColumnEx('', ImGuiTableColumnFlags.WidthFixed, textBaseWidth * 30.0);
                ImGui.tableSetupColumnEx('', ImGuiTableColumnFlags.WidthFixed, textBaseWidth * 15.0);
                for (row in 0...5) {
                    ImGui.tableNextRow();
                    for (column in 0...4) {
                        ImGui.tableSetColumnIndex(column);
                        if (row == 0) {
                            var avail = ImGui.getContentRegionAvail();
                            ImGui.text('(w: ' + fmt1(avail.x) + ')');
                        }
                        else {
                            ImGui.text('Hello ' + column + ',' + row);
                        }
                    }
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Nested tables')) {

            helpMarker('This demonstrates embedding a table into another table cell.');

            if (ImGui.beginTable('table_nested1', 2, ImGuiTableFlags.Borders | ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable)) {
                ImGui.tableSetupColumn('A0');
                ImGui.tableSetupColumn('A1');
                ImGui.tableHeadersRow();

                ImGui.tableNextColumn();
                ImGui.text('A0 Row 0');
                {
                    var style = ImGui.getStyle();
                    var stylePadding = style.cellPadding;
                    var rowsHeight = (textBaseHeight * 2.0) + (stylePadding.y * 2.0);
                    if (ImGui.beginTable('table_nested2', 2, ImGuiTableFlags.Borders | ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable)) {
                        ImGui.tableSetupColumn('B0');
                        ImGui.tableSetupColumn('B1');
                        ImGui.tableHeadersRow();

                        ImGui.tableNextRowEx(ImGuiTableRowFlags.None, rowsHeight);
                        ImGui.tableNextColumn();
                        ImGui.text('B0 Row 0');
                        ImGui.tableNextColumn();
                        ImGui.text('B1 Row 0');
                        ImGui.tableNextRowEx(ImGuiTableRowFlags.None, rowsHeight);
                        ImGui.tableNextColumn();
                        ImGui.text('B0 Row 1');
                        ImGui.tableNextColumn();
                        ImGui.text('B1 Row 1');

                        ImGui.endTable();
                    }
                }
                ImGui.tableNextColumn(); ImGui.text('A1 Row 0');
                ImGui.tableNextColumn(); ImGui.text('A0 Row 1');
                ImGui.tableNextColumn(); ImGui.text('A1 Row 1');
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Row height')) {

            helpMarker(
                'You can pass a \'min_row_height\' to TableNextRow().\n\nRows are padded with \'style.CellPadding.y\' on top and bottom, '
                + 'so effectively the minimum row height will always be >= \'style.CellPadding.y * 2.0f\'.\n\n'
                + 'We cannot honor a _maximum_ row height as that would require a unique clipping rectangle per row.');
            if (ImGui.beginTable('table_row_height', 1, ImGuiTableFlags.Borders)) {
                var style = ImGui.getStyle();
                var stylePadding = style.cellPadding;
                for (row in 0...8) {
                    var minRowHeight:Float = Std.int(textBaseHeight * 0.30 * row + stylePadding.y * 2.0);
                    ImGui.tableNextRowEx(ImGuiTableRowFlags.None, minRowHeight);
                    ImGui.tableNextColumn();
                    ImGui.text('min_row_height = ' + fmt2(minRowHeight));
                }
                ImGui.endTable();
            }

            helpMarker(
                'Showcase using SameLine(0,0) to share Current Line Height between cells.\n\n'
                + 'Please note that Tables Row Height is not the same thing as Current Line Height, '
                + 'as a table cell may contains multiple lines.');
            if (ImGui.beginTable('table_share_lineheight', 2, ImGuiTableFlags.Borders)) {
                ImGui.tableNextRow();
                ImGui.tableNextColumn();
                ImGui.colorButtonEx('##1', ImVec4.make(0.13, 0.26, 0.40, 1.0), ImGuiColorEditFlags.None, ImVec2.make(40, 40));
                ImGui.tableNextColumn();
                ImGui.text('Line 1');
                ImGui.text('Line 2');

                ImGui.tableNextRow();
                ImGui.tableNextColumn();
                ImGui.colorButtonEx('##2', ImVec4.make(0.13, 0.26, 0.40, 1.0), ImGuiColorEditFlags.None, ImVec2.make(40, 40));
                ImGui.tableNextColumn();
                ImGui.sameLineEx(0.0, 0.0); // Reuse line height from previous column
                ImGui.text('Line 1, with SameLine(0,0)');
                ImGui.text('Line 2');

                ImGui.endTable();
            }

            helpMarker('Showcase altering CellPadding.y between rows. Note that CellPadding.x is locked for the entire table.');
            if (ImGui.beginTable('table_changing_cellpadding_y', 1, ImGuiTableFlags.Borders)) {
                var style = ImGui.getStyle();
                for (row in 0...8) {
                    if ((row % 3) == 2)
                        ImGui.pushStyleVarY(ImGuiStyleVar.CellPadding, 20.0);
                    ImGui.tableNextRow();
                    ImGui.tableNextColumn();
                    var stylePadding = style.cellPadding;
                    ImGui.text('CellPadding.y = ' + fmt2(stylePadding.y));
                    if ((row % 3) == 2)
                        ImGui.popStyleVar();
                }
                ImGui.endTable();
            }

            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Outer size')) {

            ImGui.text('Using NoHostExtendX and NoHostExtendY:');
            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoHostExtendX', outerSizeFlags, ImGuiTableFlags.NoHostExtendX);
            ImGui.sameLine(); helpMarker('Make outer width auto-fit to columns, overriding outer_size.x value.\n\nOnly available when ScrollX/ScrollY are disabled and Stretch columns are not used.');
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoHostExtendY', outerSizeFlags, ImGuiTableFlags.NoHostExtendY);
            ImGui.sameLine(); helpMarker('Make outer height stop exactly at outer_size.y (prevent auto-extending table past the limit).\n\nOnly available when ScrollX/ScrollY are disabled. Data below the limit will be clipped and not visible.');
            popStyleCompact();

            var outerSize = ImVec2.make(0.0, textBaseHeight * 5.5);
            if (ImGui.beginTableEx('table1', 3, outerSizeFlags, outerSize)) {
                for (row in 0...10) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        ImGui.tableNextColumn();
                        ImGui.text('Cell ' + column + ',' + row);
                    }
                }
                ImGui.endTable();
            }
            ImGui.sameLine();
            ImGui.text('Hello!');

            ImGui.spacing();

            ImGui.text('Using explicit size:');
            if (ImGui.beginTableEx('table2', 3, ImGuiTableFlags.Borders | ImGuiTableFlags.RowBg, ImVec2.make(textBaseWidth * 30, 0.0))) {
                for (row in 0...5) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        ImGui.tableNextColumn();
                        ImGui.text('Cell ' + column + ',' + row);
                    }
                }
                ImGui.endTable();
            }
            ImGui.sameLine();
            if (ImGui.beginTableEx('table3', 3, ImGuiTableFlags.Borders | ImGuiTableFlags.RowBg, ImVec2.make(textBaseWidth * 30, 0.0))) {
                var style = ImGui.getStyle();
                var stylePadding = style.cellPadding;
                var rowsHeight = textBaseHeight * 1.5 + stylePadding.y * 2.0;
                for (row in 0...3) {
                    ImGui.tableNextRowEx(0, rowsHeight);
                    for (column in 0...3) {
                        ImGui.tableNextColumn();
                        ImGui.text('Cell ' + column + ',' + row);
                    }
                }
                ImGui.endTable();
            }

            ImGui.treePop();
        }

    }

    /** Format a float with 1 decimal (printf %.1f equivalent). */
    static function fmt1(v:Float):String {
        return '' + (Math.round(v * 10) / 10);
    }

    /** Format a float with 2 decimals (printf %.2f equivalent). */
    static function fmt2(v:Float):String {
        return '' + (Math.round(v * 100) / 100);
    }

}
