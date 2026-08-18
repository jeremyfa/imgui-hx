package imgui.demo;

import imgui.ImGui;
import imgui.NativeStructs;
import imgui.demo.DemoTablesSorting.DemoTableItem;
import imgui.demo.DemoWindowTables.applyOpenAction;
import imgui.demo.DemoWindowTables.editTableSizingFlags;
import imgui.demo.DemoWindowTables.popStyleCompact;
import imgui.demo.DemoWindowTables.pushStyleCompact;
import imgui.demo.ImGuiDemo.helpMarker;

/** Tables: Advanced (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoTablesAdvanced {

    static var flags:Int =
        ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable
        | ImGuiTableFlags.Sortable | ImGuiTableFlags.SortMulti
        | ImGuiTableFlags.RowBg | ImGuiTableFlags.Borders | ImGuiTableFlags.NoBordersInBody
        | ImGuiTableFlags.ScrollX | ImGuiTableFlags.ScrollY
        | ImGuiTableFlags.SizingFixedFit;
    static var columnsBaseFlags:Int = ImGuiTableColumnFlags.None;

    static inline var CT_TEXT:Int = 0;
    static inline var CT_BUTTON:Int = 1;
    static inline var CT_SMALL_BUTTON:Int = 2;
    static inline var CT_FILL_BUTTON:Int = 3;
    static inline var CT_SELECTABLE:Int = 4;
    static inline var CT_SELECTABLE_SPAN_ROW:Int = 5;

    static var contentsType:Int = CT_SELECTABLE_SPAN_ROW;
    static var freezeCols:Int = 1;
    static var freezeRows:Int = 1;
    static var itemsCount:Int = 15 * 2; // IM_COUNTOF(template_items_names) * 2
    static var outerSizeValue:Array<Float> = null; // [x, y], y initialized on first frame (needs TEXT_BASE_HEIGHT)
    static var rowMinHeight:Float = 0.0; // Auto
    static var innerWidthWithScroll:Float = 0.0; // Auto-extend
    static var outerSizeEnabled:Bool = true;
    static var showHeaders:Bool = true;
    static var showWrappedText:Bool = false;
    static var showDebugDetails:Bool = false;

    static var items:Array<DemoTableItem> = [];
    static var selection:Array<Int> = [];
    static var itemsNeedSort:Bool = false;

    static var clipper:#if cpp cpp.Star<ImGuiListClipper> #else ImGuiListClipper #end;
    static var clipperInited:Bool = false;

    public static function show(openAction:Int):Void {

        var textBaseWidth = DemoWindowTables.textBaseWidth;
        var textBaseHeight = DemoWindowTables.textBaseHeight;

        applyOpenAction(openAction);
        if (!ImGui.treeNode('Advanced'))
            return;

        if (outerSizeValue == null)
            outerSizeValue = [0.0, textBaseHeight * 12];

        if (ImGui.treeNode('Options')) {
            pushStyleCompact();
            ImGui.pushItemWidth(textBaseWidth * 28.0);

            if (ImGui.treeNodeEx('Features:', ImGuiTreeNodeFlags.DefaultOpen)) {
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Resizable', flags, ImGuiTableFlags.Resizable);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Reorderable', flags, ImGuiTableFlags.Reorderable);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Hideable', flags, ImGuiTableFlags.Hideable);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_Sortable', flags, ImGuiTableFlags.Sortable);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoSavedSettings', flags, ImGuiTableFlags.NoSavedSettings);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_ContextMenuInBody', flags, ImGuiTableFlags.ContextMenuInBody);
                ImGui.treePop();
            }

            if (ImGui.treeNodeEx('Decorations:', ImGuiTreeNodeFlags.DefaultOpen)) {
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_RowBg', flags, ImGuiTableFlags.RowBg);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersV', flags, ImGuiTableFlags.BordersV);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersOuterV', flags, ImGuiTableFlags.BordersOuterV);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersInnerV', flags, ImGuiTableFlags.BordersInnerV);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersH', flags, ImGuiTableFlags.BordersH);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersOuterH', flags, ImGuiTableFlags.BordersOuterH);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_BordersInnerH', flags, ImGuiTableFlags.BordersInnerH);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoBordersInBody', flags, ImGuiTableFlags.NoBordersInBody); ImGui.sameLine(); helpMarker('Disable vertical borders in columns Body (borders will always appear in Headers)');
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoBordersInBodyUntilResize', flags, ImGuiTableFlags.NoBordersInBodyUntilResize); ImGui.sameLine(); helpMarker('Disable vertical borders in columns Body until hovered for resize (borders will always appear in Headers)');
                ImGui.treePop();
            }

            if (ImGui.treeNodeEx('Sizing:', ImGuiTreeNodeFlags.DefaultOpen)) {
                flags = editTableSizingFlags(flags);
                ImGui.sameLine(); helpMarker('In the Advanced demo we override the policy of each column so those table-wide settings have less effect that typical.');
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoHostExtendX', flags, ImGuiTableFlags.NoHostExtendX);
                ImGui.sameLine(); helpMarker('Make outer width auto-fit to columns, overriding outer_size.x value.\n\nOnly available when ScrollX/ScrollY are disabled and Stretch columns are not used.');
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoHostExtendY', flags, ImGuiTableFlags.NoHostExtendY);
                ImGui.sameLine(); helpMarker('Make outer height stop exactly at outer_size.y (prevent auto-extending table past the limit).\n\nOnly available when ScrollX/ScrollY are disabled. Data below the limit will be clipped and not visible.');
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoKeepColumnsVisible', flags, ImGuiTableFlags.NoKeepColumnsVisible);
                ImGui.sameLine(); helpMarker('Only available if ScrollX is disabled.');
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_PreciseWidths', flags, ImGuiTableFlags.PreciseWidths);
                ImGui.sameLine(); helpMarker('Disable distributing remainder width to stretched columns (width allocation on a 100-wide table with 3 columns: Without this flag: 33,33,34. With this flag: 33,33,33). With larger number of columns, resizing will appear to be less smooth.');
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoClip', flags, ImGuiTableFlags.NoClip);
                ImGui.sameLine(); helpMarker('Disable clipping rectangle for every individual columns (reduce draw command count, items will be able to overflow into other columns). Generally incompatible with ScrollFreeze options.');
                ImGui.treePop();
            }

            if (ImGui.treeNodeEx('Padding:', ImGuiTreeNodeFlags.DefaultOpen)) {
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_PadOuterX', flags, ImGuiTableFlags.PadOuterX);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoPadOuterX', flags, ImGuiTableFlags.NoPadOuterX);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_NoPadInnerX', flags, ImGuiTableFlags.NoPadInnerX);
                ImGui.treePop();
            }

            if (ImGui.treeNodeEx('Scrolling:', ImGuiTreeNodeFlags.DefaultOpen)) {
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_ScrollX', flags, ImGuiTableFlags.ScrollX);
                ImGui.sameLine();
                ImGui.setNextItemWidth(ImGui.getFrameHeight());
                ImGui.dragIntEx('freeze_cols', freezeCols, 0.2, 0, 9, null, ImGuiSliderFlags.NoInput);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_ScrollY', flags, ImGuiTableFlags.ScrollY);
                ImGui.sameLine();
                ImGui.setNextItemWidth(ImGui.getFrameHeight());
                ImGui.dragIntEx('freeze_rows', freezeRows, 0.2, 0, 9, null, ImGuiSliderFlags.NoInput);
                ImGui.treePop();
            }

            if (ImGui.treeNodeEx('Sorting:', ImGuiTreeNodeFlags.DefaultOpen)) {
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_SortMulti', flags, ImGuiTableFlags.SortMulti);
                ImGui.sameLine(); helpMarker('When sorting is enabled: hold shift when clicking headers to sort on multiple column. TableGetSortSpecs() may return specs where (SpecsCount > 1).');
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_SortTristate', flags, ImGuiTableFlags.SortTristate);
                ImGui.sameLine(); helpMarker('When sorting is enabled: allow no sorting, disable default sorting. TableGetSortSpecs() may return specs where (SpecsCount == 0).');
                ImGui.treePop();
            }

            if (ImGui.treeNodeEx('Headers:', ImGuiTreeNodeFlags.DefaultOpen)) {
                ImGui.checkbox('show_headers', showHeaders);
                ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_HighlightHoveredColumn', flags, ImGuiTableFlags.HighlightHoveredColumn);
                ImGui.checkboxFlagsIntPtr('ImGuiTableColumnFlags_AngledHeader', columnsBaseFlags, ImGuiTableColumnFlags.AngledHeader);
                ImGui.sameLine(); helpMarker('Enable AngledHeader on all columns. Best enabled on selected narrow columns (see "Angled headers" section of the demo).');
                ImGui.treePop();
            }

            if (ImGui.treeNodeEx('Other:', ImGuiTreeNodeFlags.DefaultOpen)) {
                ImGui.checkbox('show_wrapped_text', showWrappedText);

                ImGui.dragFloat2('##OuterSize', outerSizeValue);
                var style = ImGui.getStyle();
                var innerSpacing = style.itemInnerSpacing;
                ImGui.sameLineEx(0.0, innerSpacing.x);
                ImGui.checkbox('outer_size', outerSizeEnabled);
                ImGui.sameLine();
                helpMarker('If scrolling is disabled (ScrollX and ScrollY not set):\n'
                    + '- The table is output directly in the parent window.\n'
                    + '- OuterSize.x < 0.0f will right-align the table.\n'
                    + '- OuterSize.x = 0.0f will narrow fit the table unless there are any Stretch columns.\n'
                    + '- OuterSize.y then becomes the minimum size for the table, which will extend vertically if there are more rows (unless NoHostExtendY is set).');

                ImGui.dragFloatEx('inner_width (when ScrollX active)', innerWidthWithScroll, 1.0, 0.0, 3.402823466e38);

                ImGui.dragFloatEx('row_min_height', rowMinHeight, 1.0, 0.0, 3.402823466e38);
                ImGui.sameLine(); helpMarker('Specify height of the Selectable item.');

                ImGui.dragIntEx('items_count', itemsCount, 0.1, 0, 9999);
                ImGui.combo('items_type (first column)', contentsType, 'Text\x00Button\x00SmallButton\x00FillButton\x00Selectable\x00Selectable (span row)\x00');
                ImGui.treePop();
            }

            ImGui.popItemWidth();
            popStyleCompact();
            ImGui.spacing();
            ImGui.treePop();
        }

        var templateItemsNames = DemoTablesSorting.templateItemsNames;
        if (items.length != itemsCount) {
            items.resize(0);
            for (n in 0...itemsCount) {
                var templateN = n % templateItemsNames.length;
                items.push(new DemoTableItem(
                    n,
                    templateItemsNames[templateN],
                    (templateN == 3) ? 10 : (templateN == 4) ? 20 : 0 // Assign default quantities
                ));
            }
        }

        var parentDrawList = ImGui.getWindowDrawList();
        var parentDrawListCmdBuffer = parentDrawList.cmdBuffer;
        var parentDrawListDrawCmdCount = parentDrawListCmdBuffer.size;
        var tableScrollCurX = 0.0, tableScrollCurY = 0.0, tableScrollMaxX = 0.0, tableScrollMaxY = 0.0; // For debug display
        var tableDrawList:#if cpp cpp.Star<ImDrawList> #else ImDrawList #end = #if cpp null #else cast 0 #end;
        var hasTableDrawList = false;

        var innerWidthToUse = (flags & ImGuiTableFlags.ScrollX) != 0 ? innerWidthWithScroll : 0.0;
        if (ImGui.beginTableEx('table_advanced', 6, flags, outerSizeEnabled ? ImVec2.make(outerSizeValue[0], outerSizeValue[1]) : ImVec2.make(0, 0), innerWidthToUse)) {
            ImGui.tableSetupColumnEx('ID', columnsBaseFlags | ImGuiTableColumnFlags.DefaultSort | ImGuiTableColumnFlags.WidthFixed | ImGuiTableColumnFlags.NoHide, 0.0, DemoTablesSorting.COLUMN_ID_ID);
            ImGui.tableSetupColumnEx('Name', columnsBaseFlags | ImGuiTableColumnFlags.WidthFixed, 0.0, DemoTablesSorting.COLUMN_ID_NAME);
            ImGui.tableSetupColumnEx('Action', columnsBaseFlags | ImGuiTableColumnFlags.NoSort | ImGuiTableColumnFlags.WidthFixed, 0.0, DemoTablesSorting.COLUMN_ID_ACTION);
            ImGui.tableSetupColumnEx('Quantity', columnsBaseFlags | ImGuiTableColumnFlags.PreferSortDescending, 0.0, DemoTablesSorting.COLUMN_ID_QUANTITY);
            ImGui.tableSetupColumnEx('Description', columnsBaseFlags | ((flags & ImGuiTableFlags.NoHostExtendX) != 0 ? 0 : ImGuiTableColumnFlags.WidthStretch), 0.0, DemoTablesSorting.COLUMN_ID_DESCRIPTION);
            ImGui.tableSetupColumn('Hidden', columnsBaseFlags | ImGuiTableColumnFlags.DefaultHide | ImGuiTableColumnFlags.NoSort);
            ImGui.tableSetupScrollFreeze(freezeCols, freezeRows);

            var sortSpecs = ImGui.tableGetSortSpecs();
            var hasSpecs = DemoTablesSorting.hasSortSpecs(sortSpecs);
            if (hasSpecs && sortSpecs.specsDirty)
                itemsNeedSort = true;
            if (hasSpecs && itemsNeedSort && items.length > 1) {
                DemoTablesSorting.sortItemsWithSortSpecs(sortSpecs, items);
                sortSpecs.specsDirty = false;
            }
            itemsNeedSort = false;

            var sortsSpecsUsingQuantity = (ImGui.tableGetColumnFlags(3) & ImGuiTableColumnFlags.IsSorted) != 0;

            if (showHeaders && (columnsBaseFlags & ImGuiTableColumnFlags.AngledHeader) != 0)
                ImGui.tableAngledHeadersRow();
            if (showHeaders)
                ImGui.tableHeadersRow();

            if (!clipperInited) {
                clipperInited = true;
                clipper = NativeStructs.createListClipper();
            }
            ImGuiListClipper.begin(clipper, items.length);
            while (ImGuiListClipper.step(clipper)) {
                for (rowN in clipper.displayStart...clipper.displayEnd) {
                    var item = items[rowN];

                    var itemIsSelected = selection.contains(item.id);
                    ImGui.pushIDInt(item.id);
                    ImGui.tableNextRowEx(ImGuiTableRowFlags.None, rowMinHeight);

                    ImGui.tableSetColumnIndex(0);
                    var label = StringTools.lpad('' + item.id, '0', 4);
                    if (contentsType == CT_TEXT)
                        ImGui.textUnformatted(label);
                    else if (contentsType == CT_BUTTON)
                        ImGui.button(label);
                    else if (contentsType == CT_SMALL_BUTTON)
                        ImGui.smallButton(label);
                    else if (contentsType == CT_FILL_BUTTON)
                        ImGui.buttonEx(label, ImVec2.make(-1.175494351e-38, 0.0));
                    else if (contentsType == CT_SELECTABLE || contentsType == CT_SELECTABLE_SPAN_ROW) {
                        var selectableFlags = (contentsType == CT_SELECTABLE_SPAN_ROW) ? ImGuiSelectableFlags.SpanAllColumns | ImGuiSelectableFlags.AllowOverlap : ImGuiSelectableFlags.None;
                        if (ImGui.selectableEx(label, itemIsSelected, selectableFlags, ImVec2.make(0, rowMinHeight))) {
                            var io = ImGui.getIO();
                            if (io.keyCtrl) {
                                if (itemIsSelected)
                                    selection.remove(item.id);
                                else
                                    selection.push(item.id);
                            }
                            else {
                                selection.resize(0);
                                selection.push(item.id);
                            }
                        }
                    }

                    if (ImGui.tableSetColumnIndex(1))
                        ImGui.textUnformatted(item.name);

                    if (ImGui.tableSetColumnIndex(2)) {
                        if (ImGui.smallButton('Chop')) { item.quantity += 1; }
                        if (sortsSpecsUsingQuantity && ImGui.isItemDeactivated()) { itemsNeedSort = true; }
                        ImGui.sameLine();
                        if (ImGui.smallButton('Eat')) { item.quantity -= 1; }
                        if (sortsSpecsUsingQuantity && ImGui.isItemDeactivated()) { itemsNeedSort = true; }
                    }

                    if (ImGui.tableSetColumnIndex(3))
                        ImGui.text('' + item.quantity);

                    ImGui.tableSetColumnIndex(4);
                    if (showWrappedText)
                        ImGui.textWrapped('Lorem ipsum dolor sit amet');
                    else
                        ImGui.text('Lorem ipsum dolor sit amet');

                    if (ImGui.tableSetColumnIndex(5))
                        ImGui.text('1234');

                    ImGui.popID();
                }
            }

            tableScrollCurX = ImGui.getScrollX();
            tableScrollCurY = ImGui.getScrollY();
            tableScrollMaxX = ImGui.getScrollMaxX();
            tableScrollMaxY = ImGui.getScrollMaxY();
            tableDrawList = ImGui.getWindowDrawList();
            hasTableDrawList = true;
            ImGui.endTable();
        }
        ImGui.checkbox('Debug details', showDebugDetails);
        if (showDebugDetails && hasTableDrawList) {
            ImGui.sameLineEx(0.0, 0.0);
            var tableCmdBuffer = tableDrawList.cmdBuffer;
            var tableDrawListDrawCmdCount = tableCmdBuffer.size;
            if (tableDrawList == parentDrawList)
                ImGui.text(': DrawCmd: +' + (tableDrawListDrawCmdCount - parentDrawListDrawCmdCount) + ' (in same window)');
            else
                ImGui.text(': DrawCmd: +' + (tableDrawListDrawCmdCount - 1) + ' (in child window), Scroll: ('
                    + Std.int(tableScrollCurX) + '/' + Std.int(tableScrollMaxX) + ') ('
                    + Std.int(tableScrollCurY) + '/' + Std.int(tableScrollMaxY) + ')');
        }
        ImGui.treePop();

    }

}
