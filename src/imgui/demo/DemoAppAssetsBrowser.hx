package imgui.demo;

import imgui.ImGui;
import imgui.NativeStructs;
import imgui.demo.DemoWidgetsText.imCol32;
import imgui.demo.ImGuiDemo.helpMarker;

/** ExampleAsset from imgui_demo.cpp. */
private class ExampleAsset {
    public var id:Int;
    public var type:Int;
    public function new(id:Int, type:Int) {
        this.id = id;
        this.type = type;
    }
}

/**
 * Example: Assets Browser (imgui_demo.cpp port).
 * ADAPTED: the BeginMultiSelect()/ImGuiSelectionBasicStorage machinery needs
 * cross-target callback support (planned follow-up), so the selection is
 * implemented with plain Haxe state (click, Ctrl+Click, Shift+Click); the
 * 2D box-select option is not available. Layout, sorting, clipping, zoom,
 * deletion and drag-and-drop are ported.
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoAppAssetsBrowser {

    static var showTypeOverlay:Bool = true;
    static var allowSorting:Bool = true;
    static var iconSize:Float = 0;
    static var iconSpacing:Int = 10;
    static var iconHitSpacing:Int = 4; // Increase hit-spacing if you want to make it possible to clear or box-select from gaps.
    static var stretchSpacing:Bool = true;
    static var useScrollX:Bool = false; // Debug: submit twice the number of items per line

    static var items:Array<ExampleAsset> = [];
    static var selection:Map<Int, Bool> = new Map(); // Selected item IDs (ADAPTED, manual selection)
    static var selectionSize:Int = 0;
    static var lastClickedIdx:Int = -1;
    static var nextItemId:Int = 0;      // Unique identifier when creating new items
    static var requestDelete:Bool = false; // Deferred deletion request
    static var requestSort:Bool = false;   // Deferred sort request
    static var zoomWheelAccum:Float = 0.0; // Mouse wheel accumulator to handle smooth wheels better

    static var layoutItemSizeX:Float = 0.0;
    static var layoutItemSizeY:Float = 0.0;
    static var layoutItemStepX:Float = 0.0; // == LayoutItemSize + LayoutItemSpacing
    static var layoutItemStepY:Float = 0.0;
    static var layoutItemSpacing:Float = 0.0;
    static var layoutSelectableSpacing:Float = 0.0;
    static var layoutOuterPadding:Float = 0.0;
    static var layoutColumnCount:Int = 0;
    static var layoutLineCount:Int = 0;

    static var inited:Bool = false;
    static var clipper:#if cpp cpp.Star<ImGuiListClipper> #else ImGuiListClipper #end;
    static var clipperInited:Bool = false;

    // Snapshot of the sort specs (columnIndex, sortDirection)
    static var sortSpecsColumns:Array<Int> = [];
    static var sortSpecsDirections:Array<Int> = [];

    static function addItems(count:Int):Void {
        if (items.length == 0)
            nextItemId = 0;
        for (_ in 0...count) {
            items.push(new ExampleAsset(nextItemId, (nextItemId % 20) < 15 ? 0 : (nextItemId % 20) < 18 ? 1 : 2));
            nextItemId++;
        }
        requestSort = true;
    }

    static function clearItems():Void {
        items.resize(0);
        clearSelection();
    }

    static function clearSelection():Void {
        selection.clear();
        selectionSize = 0;
        lastClickedIdx = -1;
    }

    static function setSelected(id:Int, selected:Bool):Void {
        var was = selection.exists(id);
        if (selected && !was) { selection.set(id, true); selectionSize++; }
        else if (!selected && was) { selection.remove(id); selectionSize--; }
    }

    static function updateLayoutSizes(availWidth:Float):Void {
        layoutItemSpacing = iconSpacing;
        if (stretchSpacing == false)
            availWidth += Math.ffloor(layoutItemSpacing * 0.5);

        layoutItemSizeX = Math.ffloor(iconSize);
        layoutItemSizeY = Math.ffloor(iconSize);
        layoutColumnCount = Std.int(availWidth / (layoutItemSizeX + layoutItemSpacing));
        if (layoutColumnCount < 1) layoutColumnCount = 1;

        if (stretchSpacing && layoutColumnCount > 1)
            layoutItemSpacing = Math.ffloor(availWidth - layoutItemSizeX * layoutColumnCount) / layoutColumnCount;

        if (useScrollX)
            layoutColumnCount *= 2;
        layoutLineCount = Std.int((items.length + layoutColumnCount - 1) / layoutColumnCount);

        layoutItemStepX = layoutItemSizeX + layoutItemSpacing;
        layoutItemStepY = layoutItemSizeY + layoutItemSpacing;
        layoutSelectableSpacing = Math.ffloor(layoutItemSpacing) - iconHitSpacing;
        if (layoutSelectableSpacing < 0) layoutSelectableSpacing = 0;
        layoutOuterPadding = Math.ffloor(layoutItemSpacing * 0.5);
    }

    /** ExampleAsset::SortWithSortSpecs port (snapshot the specs, then plain Haxe sort). */
    static function sortWithSortSpecs(sortSpecs:#if cpp cpp.Star<ImGuiTableSortSpecs> #else ImGuiTableSortSpecs #end):Void {
        var count = sortSpecs.specsCount;
        sortSpecsColumns.resize(count);
        sortSpecsDirections.resize(count);
        for (n in 0...count) {
            var spec = DemoTablesSorting.specAt(sortSpecs, n);
            sortSpecsColumns[n] = spec.columnIndex;
            sortSpecsDirections[n] = spec.sortDirection;
        }
        if (items.length > 1)
            items.sort(compareWithSortSpecs);
    }

    static function compareWithSortSpecs(a:ExampleAsset, b:ExampleAsset):Int {
        for (n in 0...sortSpecsColumns.length) {
            var delta = 0;
            if (sortSpecsColumns[n] == 0)
                delta = a.id - b.id;
            else if (sortSpecsColumns[n] == 1)
                delta = a.type - b.type;
            if (delta > 0)
                return (sortSpecsDirections[n] == ImGuiSortDirection.Ascending) ? 1 : -1;
            if (delta < 0)
                return (sortSpecsDirections[n] == ImGuiSortDirection.Ascending) ? -1 : 1;
        }
        return a.id - b.id;
    }

    public static function show():Void {

        if (!inited) {
            inited = true;
            addItems(10000);
        }

        if (iconSize <= 0.0) {
            var textSize = ImGui.calcTextSize('99999');
            iconSize = textSize.x;
        }

        ImGui.setNextWindowSize(ImVec2.make(iconSize * 25, iconSize * 15), ImGuiCond.FirstUseEver);
        if (!ImGui.begin('Example: Assets Browser', ImGuiDemo.showAppAssetsBrowser, ImGuiWindowFlags.MenuBar)) {
            ImGui.end();
            return;
        }

        // Menu bar
        if (ImGui.beginMenuBar()) {
            if (ImGui.beginMenu('File')) {
                if (ImGui.menuItem('Add 10000 items'))
                    addItems(10000);
                if (ImGui.menuItem('Clear items'))
                    clearItems();
                ImGui.separator();
                if (ImGui.menuItem('Close'))
                    ImGuiDemo.showAppAssetsBrowser = false;
                ImGui.endMenu();
            }
            if (ImGui.beginMenu('Edit')) {
                if (ImGui.menuItemEx('Delete', 'Del', false, selectionSize > 0))
                    requestDelete = true;
                ImGui.endMenu();
            }
            if (ImGui.beginMenu('Options')) {
                ImGui.pushItemWidth(ImGui.getFontSize() * 10);

                ImGui.separatorText('Contents');
                ImGui.checkbox('Show Type Overlay', showTypeOverlay);
                ImGui.checkbox('Allow Sorting', allowSorting);

                ImGui.separatorText('Selection Behavior');
                ImGui.textDisabled('(adapted: box-select needs BeginMultiSelect,\nwhich needs cross-target callbacks)');

                ImGui.separatorText('Layout');
                ImGui.sliderFloatEx('Icon Size', iconSize, 16.0, 128.0, '%.0f');
                ImGui.sameLine(); helpMarker('Use Ctrl+Wheel to zoom');
                ImGui.sliderInt('Icon Spacing', iconSpacing, 0, 32);
                ImGui.sliderInt('Icon Hit Spacing', iconHitSpacing, 0, 32);
                ImGui.checkbox('Stretch Spacing', stretchSpacing);
                ImGui.checkbox('Use ScrollX', useScrollX);
                ImGui.popItemWidth();
                ImGui.endMenu();
            }
            ImGui.endMenuBar();
        }

        // Show a table with ONLY one header row to showcase the idea/possibility of using this to provide a sorting UI
        if (allowSorting) {
            ImGui.pushStyleVarImVec2(ImGuiStyleVar.ItemSpacing, ImVec2.make(0, 0));
            var tableFlagsForSortSpecs = ImGuiTableFlags.Sortable | ImGuiTableFlags.SortMulti | ImGuiTableFlags.SizingFixedFit | ImGuiTableFlags.Borders;
            if (ImGui.beginTableEx('for_sort_specs_only', 2, tableFlagsForSortSpecs, ImVec2.make(0.0, ImGui.getFrameHeight()))) {
                ImGui.tableSetupColumn('Index');
                ImGui.tableSetupColumn('Type');
                ImGui.tableHeadersRow();
                var sortSpecs = ImGui.tableGetSortSpecs();
                if (DemoTablesSorting.hasSortSpecs(sortSpecs) && (sortSpecs.specsDirty || requestSort)) {
                    sortWithSortSpecs(sortSpecs);
                    sortSpecs.specsDirty = false;
                    requestSort = false;
                }
                ImGui.endTable();
            }
            ImGui.popStyleVar();
        }

        var io = ImGui.getIO();
        ImGui.setNextWindowContentSize(ImVec2.make(0.0, layoutOuterPadding + layoutLineCount * (layoutItemSizeY + layoutItemSpacing)));
        if (ImGui.beginChild('Assets', ImVec2.make(0.0, -ImGui.getTextLineHeightWithSpacing()), ImGuiChildFlags.Borders, ImGuiWindowFlags.NoMove | ImGuiWindowFlags.HorizontalScrollbar)) {

            var drawList = ImGui.getWindowDrawList();

            var avail = ImGui.getContentRegionAvail();
            var availWidth = avail.x;
            updateLayoutSizes(availWidth);

            var startPosCursor = ImGui.getCursorScreenPos();
            var startPosX = startPosCursor.x + layoutOuterPadding;
            var startPosY = startPosCursor.y + layoutOuterPadding;
            ImGui.setCursorScreenPos(ImVec2.make(startPosX, startPosY));

            // ADAPTED: BeginMultiSelect() replaced by manual selection handling
            var wantDelete = (ImGui.shortcut(ImGuiKey.Delete, ImGuiInputFlags.Repeat) && selectionSize > 0) || requestDelete;
            requestDelete = false;

            ImGui.pushStyleVarImVec2(ImGuiStyleVar.ItemSpacing, ImVec2.make(layoutSelectableSpacing, layoutSelectableSpacing));

            var iconBgColor = ImGui.getColorU32ImU32(imCol32(35, 35, 35, 220));
            var textSize999 = ImGui.calcTextSize('999');
            var displayLabel = (layoutItemSizeX >= textSize999.x);

            var columnCount = layoutColumnCount;
            if (!clipperInited) {
                clipperInited = true;
                clipper = NativeStructs.createListClipper();
            }
            ImGuiListClipper.begin(clipper, layoutLineCount, layoutItemStepY);
            while (ImGuiListClipper.step(clipper)) {
                for (lineIdx in clipper.displayStart...clipper.displayEnd) {
                    var itemMinIdxForCurrentLine = lineIdx * columnCount;
                    var itemMaxIdxForCurrentLine = ((lineIdx + 1) * columnCount) < items.length ? ((lineIdx + 1) * columnCount) : items.length;
                    for (itemIdx in itemMinIdxForCurrentLine...itemMaxIdxForCurrentLine) {
                        var itemData = items[itemIdx];
                        ImGui.pushIDInt(itemData.id);

                        var pos = ImVec2.make(startPosX + (itemIdx % columnCount) * layoutItemStepX, startPosY + lineIdx * layoutItemStepY);
                        ImGui.setCursorScreenPos(pos);

                        var itemIsSelected = selection.exists(itemData.id);
                        var itemIsVisible = ImGui.isRectVisibleBySize(ImVec2.make(layoutItemSizeX, layoutItemSizeY));
                        if (ImGui.selectableEx('', itemIsSelected, ImGuiSelectableFlags.None, ImVec2.make(layoutItemSizeX, layoutItemSizeY))) {
                            // ADAPTED manual selection: click, Ctrl+Click, Shift+Click
                            if (io.keyShift && lastClickedIdx >= 0) {
                                var from = lastClickedIdx < itemIdx ? lastClickedIdx : itemIdx;
                                var to = lastClickedIdx < itemIdx ? itemIdx : lastClickedIdx;
                                for (i in from...(to + 1))
                                    if (i < items.length)
                                        setSelected(items[i].id, true);
                            }
                            else if (io.keyCtrl) {
                                setSelected(itemData.id, !itemIsSelected);
                            }
                            else {
                                clearSelection();
                                setSelected(itemData.id, true);
                            }
                            lastClickedIdx = itemIdx;
                            itemIsSelected = selection.exists(itemData.id);
                        }

                        // Drag and drop (ADAPTED: payload stores the selected count)
                        if (ImGui.beginDragDropSource(ImGuiDragDropFlags.None)) {
                            var payloadCount = itemIsSelected ? selectionSize : 1;
                            NativeStructs.setI32(DemoUtils.buffer, 0, payloadCount);
                            ImGui.setDragDropPayload('ASSETS_BROWSER_ITEMS', DemoUtils.ptr(0), 4);
                            ImGui.text(payloadCount + ' assets');
                            ImGui.endDragDropSource();
                        }

                        // Render icon (a real app would likely display an image/thumbnail here)
                        if (itemIsVisible) {
                            var boxMin = ImVec2.make(pos.x - 1, pos.y - 1);
                            var boxMax = ImVec2.make(boxMin.x + layoutItemSizeX + 2, boxMin.y + layoutItemSizeY + 2); // Dubious
                            ImDrawList.addRectFilled(drawList, boxMin, boxMax, iconBgColor); // Background color
                            if (showTypeOverlay && itemData.type != 0) {
                                var typeCol = itemData.type % 3 == 1 ? imCol32(200, 70, 70, 255) : imCol32(70, 170, 70, 255);
                                ImDrawList.addRectFilled(drawList, ImVec2.make(boxMax.x - 2 - 4.0, boxMin.y + 2), ImVec2.make(boxMax.x - 2, boxMin.y + 2 + 4.0), typeCol);
                            }
                            if (displayLabel) {
                                var labelCol = ImGui.getColorU32(itemIsSelected ? ImGuiCol.Text : ImGuiCol.TextDisabled);
                                ImDrawList.addText(drawList, ImVec2.make(boxMin.x, boxMax.y - ImGui.getFontSize()), labelCol, '' + itemData.id);
                            }
                        }

                        ImGui.popID();
                    }
                }
            }
            if (items.length == 0)
                ImGui.dummy(ImVec2.make(0, 0));
            ImGui.popStyleVar(); // ImGuiStyleVar_ItemSpacing

            // Context menu
            if (ImGui.beginPopupContextWindow()) {
                ImGui.text('Selection: ' + selectionSize + ' items');
                ImGui.separator();
                if (ImGui.menuItemEx('Delete', 'Del', false, selectionSize > 0))
                    requestDelete = true;
                ImGui.endPopup();
            }

            // Apply deletion (ADAPTED: simple filtered rebuild instead of the multi-select deletion helpers)
            if (wantDelete) {
                var kept:Array<ExampleAsset> = [];
                for (item in items)
                    if (!selection.exists(item.id))
                        kept.push(item);
                items = kept;
                clearSelection();
            }

            // Zooming with Ctrl+Wheel
            if (ImGui.isWindowAppearing())
                zoomWheelAccum = 0.0;
            if (ImGui.isWindowHovered() && io.mouseWheel != 0.0 && ImGui.isKeyDown(ImGuiKey.ImGuiMod_Ctrl) && ImGui.isAnyItemActive() == false) {
                zoomWheelAccum += io.mouseWheel;
                if (Math.abs(zoomWheelAccum) >= 1.0) {
                    // Calculate hovered item index from mouse location
                    var mousePos = io.mousePos;
                    var hoveredItemNx = (mousePos.x - startPosX + layoutItemSpacing * 0.5) / layoutItemStepX;
                    var hoveredItemNy = (mousePos.y - startPosY + layoutItemSpacing * 0.5) / layoutItemStepY;
                    var hoveredItemIdx = (Std.int(hoveredItemNy) * layoutColumnCount) + Std.int(hoveredItemNx);

                    // Zoom
                    iconSize *= Math.pow(1.1, Std.int(zoomWheelAccum));
                    iconSize = iconSize < 16.0 ? 16.0 : (iconSize > 128.0 ? 128.0 : iconSize);
                    zoomWheelAccum -= Std.int(zoomWheelAccum);
                    updateLayoutSizes(availWidth);

                    // Manipulate scroll to that we will land at the same Y location of currently hovered item.
                    var hoveredItemRelPosY = (Std.int(hoveredItemIdx / layoutColumnCount) + (hoveredItemNy % 1.0)) * layoutItemStepY;
                    var style = ImGui.getStyle();
                    var windowPadding = style.windowPadding;
                    hoveredItemRelPosY += windowPadding.y;
                    var windowPos = ImGui.getWindowPos();
                    var mouseLocalY = mousePos.y - windowPos.y;
                    ImGui.setScrollY(hoveredItemRelPosY - mouseLocalY);
                }
            }
        }
        ImGui.endChild();

        ImGui.text('Selected: ' + selectionSize + '/' + items.length + ' items');
        ImGui.end();

    }

}
