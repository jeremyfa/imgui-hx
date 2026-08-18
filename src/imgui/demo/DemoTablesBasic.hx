package imgui.demo;

import imgui.ImGui;
import imgui.demo.DemoWindowTables.applyOpenAction;
import imgui.demo.DemoWindowTables.popStyleCompact;
import imgui.demo.DemoWindowTables.pushStyleCompact;
import imgui.demo.ImGuiDemo.helpMarker;

/** Tables: Basic, Borders/background, Resizable, Reorderable (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoTablesBasic {

    // Borders, background
    static inline var CT_TEXT:Int = 0;
    static inline var CT_FILL_BUTTON:Int = 1;
    static var bordersFlags:Int = ImGuiTableFlags.Borders | ImGuiTableFlags.RowBg;
    static var displayHeaders:Bool = false;
    static var contentsType:Int = CT_TEXT;

    // Resizable, stretch
    static var stretchFlags:Int = ImGuiTableFlags.SizingStretchSame | ImGuiTableFlags.Resizable | ImGuiTableFlags.BordersOuter | ImGuiTableFlags.BordersV | ImGuiTableFlags.ContextMenuInBody;

    // Resizable, fixed
    static var fixedFlags:Int = ImGuiTableFlags.SizingFixedFit | ImGuiTableFlags.Resizable | ImGuiTableFlags.BordersOuter | ImGuiTableFlags.BordersV | ImGuiTableFlags.ContextMenuInBody;

    // Resizable, mixed
    static var mixedFlags:Int = ImGuiTableFlags.SizingFixedFit | ImGuiTableFlags.RowBg | ImGuiTableFlags.Borders | ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable;

    // Reorderable, hideable, with headers
    static var reorderFlags:Int = ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable | ImGuiTableFlags.BordersOuter | ImGuiTableFlags.BordersV;

    public static function show(openAction:Int):Void {

        applyOpenAction(openAction);
        if (ImGui.treeNode('Basic')) {

            helpMarker('Using TableNextRow() + calling TableSetColumnIndex() _before_ each cell, in a loop.');
            if (ImGui.beginTable('table1', 3)) {
                for (row in 0...4) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        ImGui.tableSetColumnIndex(column);
                        ImGui.text('Row ' + row + ' Column ' + column);
                    }
                }
                ImGui.endTable();
            }

            helpMarker('Using TableNextRow() + calling TableNextColumn() _before_ each cell, manually.');
            if (ImGui.beginTable('table2', 3)) {
                for (row in 0...4) {
                    ImGui.tableNextRow();
                    ImGui.tableNextColumn();
                    ImGui.text('Row ' + row);
                    ImGui.tableNextColumn();
                    ImGui.text('Some contents');
                    ImGui.tableNextColumn();
                    ImGui.text('123.456');
                }
                ImGui.endTable();
            }

            helpMarker(
                'Only using TableNextColumn(), which tends to be convenient for tables where every cell contains '
                + 'the same type of contents.\n This is also more similar to the old NextColumn() function of the '
                + 'Columns API, and provided to facilitate the Columns->Tables API transition.');
            if (ImGui.beginTable('table3', 3)) {
                for (item in 0...14) {
                    ImGui.tableNextColumn();
                    ImGui.text('Item ' + item);
                }
                ImGui.endTable();
            }

            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Borders, background')) {

            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_RowBg', bordersFlags, ImGuiTableFlags.RowBg);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Borders', bordersFlags, ImGuiTableFlags.Borders);
            ImGui.sameLine(); helpMarker('ImGuiTableFlags_Borders\n = ImGuiTableFlags_BordersInnerV\n | ImGuiTableFlags_BordersOuterV\n | ImGuiTableFlags_BordersInnerH\n | ImGuiTableFlags_BordersOuterH');
            ImGui.indent();

            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersH', bordersFlags, ImGuiTableFlags.BordersH);
            ImGui.indent();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersOuterH', bordersFlags, ImGuiTableFlags.BordersOuterH);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersInnerH', bordersFlags, ImGuiTableFlags.BordersInnerH);
            ImGui.unindent();

            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersV', bordersFlags, ImGuiTableFlags.BordersV);
            ImGui.indent();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersOuterV', bordersFlags, ImGuiTableFlags.BordersOuterV);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersInnerV', bordersFlags, ImGuiTableFlags.BordersInnerV);
            ImGui.unindent();

            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersOuter', bordersFlags, ImGuiTableFlags.BordersOuter);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersInner', bordersFlags, ImGuiTableFlags.BordersInner);
            ImGui.unindent();

            ImGui.alignTextToFramePadding(); ImGui.text('Cell contents:');
            ImGui.sameLine(); ImGui.radioButtonIntPtr('Text', contentsType, CT_TEXT);
            ImGui.sameLine(); ImGui.radioButtonIntPtr('FillButton', contentsType, CT_FILL_BUTTON);
            ImGui.checkbox('Display headers', displayHeaders);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoBordersInBody', bordersFlags, ImGuiTableFlags.NoBordersInBody); ImGui.sameLine(); helpMarker('Disable vertical borders in columns Body (borders will always appear in Headers)');
            popStyleCompact();

            if (ImGui.beginTable('table1', 3, bordersFlags)) {
                if (displayHeaders) {
                    ImGui.tableSetupColumn('One');
                    ImGui.tableSetupColumn('Two');
                    ImGui.tableSetupColumn('Three');
                    ImGui.tableHeadersRow();
                }

                for (row in 0...5) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        ImGui.tableSetColumnIndex(column);
                        var buf = 'Hello ' + column + ',' + row;
                        if (contentsType == CT_TEXT)
                            ImGui.textUnformatted(buf);
                        else if (contentsType == CT_FILL_BUTTON)
                            ImGui.buttonEx(buf, ImVec2.make(-1.175494351e-38, 0.0));
                    }
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Resizable, stretch')) {

            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Resizable', stretchFlags, ImGuiTableFlags.Resizable);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersV', stretchFlags, ImGuiTableFlags.BordersV);
            ImGui.sameLine(); helpMarker(
                'Using the _Resizable flag automatically enables the _BordersInnerV flag as well, '
                + 'this is why the resize borders are still showing when unchecking this.');
            popStyleCompact();

            if (ImGui.beginTable('table1', 3, stretchFlags)) {
                for (row in 0...5) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        ImGui.tableSetColumnIndex(column);
                        ImGui.text('Hello ' + column + ',' + row);
                    }
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Resizable, fixed')) {

            helpMarker(
                'Using _Resizable + _SizingFixedFit flags.\n'
                + 'Fixed-width columns generally makes more sense if you want to use horizontal scrolling.\n\n'
                + 'Double-click a column border to auto-fit the column to its contents.');
            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoHostExtendX', fixedFlags, ImGuiTableFlags.NoHostExtendX);
            popStyleCompact();

            if (ImGui.beginTable('table1', 3, fixedFlags)) {
                for (row in 0...5) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        ImGui.tableSetColumnIndex(column);
                        ImGui.text('Hello ' + column + ',' + row);
                    }
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Resizable, mixed')) {

            helpMarker(
                'Using TableSetupColumn() to alter resizing policy on a per-column basis.\n\n'
                + 'When combining Fixed and Stretch columns, generally you only want one, maybe two trailing columns to use _WidthStretch.');

            if (ImGui.beginTable('table1', 3, mixedFlags)) {
                ImGui.tableSetupColumn('AAA', ImGuiTableColumnFlags.WidthFixed);
                ImGui.tableSetupColumn('BBB', ImGuiTableColumnFlags.WidthFixed);
                ImGui.tableSetupColumn('CCC', ImGuiTableColumnFlags.WidthStretch);
                ImGui.tableHeadersRow();
                for (row in 0...5) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        ImGui.tableSetColumnIndex(column);
                        ImGui.text((column == 2 ? 'Stretch' : 'Fixed') + ' ' + column + ',' + row);
                    }
                }
                ImGui.endTable();
            }
            if (ImGui.beginTable('table2', 6, mixedFlags)) {
                ImGui.tableSetupColumn('AAA', ImGuiTableColumnFlags.WidthFixed);
                ImGui.tableSetupColumn('BBB', ImGuiTableColumnFlags.WidthFixed);
                ImGui.tableSetupColumn('CCC', ImGuiTableColumnFlags.WidthFixed | ImGuiTableColumnFlags.DefaultHide);
                ImGui.tableSetupColumn('DDD', ImGuiTableColumnFlags.WidthStretch);
                ImGui.tableSetupColumn('EEE', ImGuiTableColumnFlags.WidthStretch);
                ImGui.tableSetupColumn('FFF', ImGuiTableColumnFlags.WidthStretch | ImGuiTableColumnFlags.DefaultHide);
                ImGui.tableHeadersRow();
                for (row in 0...5) {
                    ImGui.tableNextRow();
                    for (column in 0...6) {
                        ImGui.tableSetColumnIndex(column);
                        ImGui.text((column >= 3 ? 'Stretch' : 'Fixed') + ' ' + column + ',' + row);
                    }
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

        applyOpenAction(openAction);
        if (ImGui.treeNode('Reorderable, hideable, with headers')) {

            helpMarker(
                'Click and drag column headers to reorder columns.\n\n'
                + 'Right-click on a header to open a context menu.');
            pushStyleCompact();
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Resizable', reorderFlags, ImGuiTableFlags.Resizable);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Reorderable', reorderFlags, ImGuiTableFlags.Reorderable);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Hideable', reorderFlags, ImGuiTableFlags.Hideable);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoBordersInBody', reorderFlags, ImGuiTableFlags.NoBordersInBody);
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoBordersInBodyUntilResize', reorderFlags, ImGuiTableFlags.NoBordersInBodyUntilResize); ImGui.sameLine(); helpMarker('Disable vertical borders in columns Body until hovered for resize (borders will always appear in Headers)');
            ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_HighlightHoveredColumn', reorderFlags, ImGuiTableFlags.HighlightHoveredColumn);
            popStyleCompact();

            if (ImGui.beginTable('table1', 3, reorderFlags)) {
                ImGui.tableSetupColumn('One');
                ImGui.tableSetupColumn('Two');
                ImGui.tableSetupColumn('Three');
                ImGui.tableHeadersRow();
                for (row in 0...6) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        ImGui.tableSetColumnIndex(column);
                        ImGui.text('Hello ' + column + ',' + row);
                    }
                }
                ImGui.endTable();
            }

            if (ImGui.beginTableEx('table2', 3, reorderFlags | ImGuiTableFlags.SizingFixedFit, ImVec2.make(0.0, 0.0))) {
                ImGui.tableSetupColumn('One');
                ImGui.tableSetupColumn('Two');
                ImGui.tableSetupColumn('Three');
                ImGui.tableHeadersRow();
                for (row in 0...6) {
                    ImGui.tableNextRow();
                    for (column in 0...3) {
                        ImGui.tableSetColumnIndex(column);
                        ImGui.text('Fixed ' + column + ',' + row);
                    }
                }
                ImGui.endTable();
            }
            ImGui.treePop();
        }

    }

}
