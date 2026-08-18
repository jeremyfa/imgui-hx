package imgui.demo;

import imgui.ImGui;
import imgui.NativeStructs;
import imgui.demo.DemoWindowTables.applyOpenAction;
import imgui.demo.DemoWindowTables.popStyleCompact;
import imgui.demo.DemoWindowTables.pushStyleCompact;
import imgui.demo.ImGuiDemo.helpMarker;

/** MyItem from imgui_demo.cpp (shared with the Advanced section). */
class DemoTableItem {
    public var id:Int;
    public var name:String;
    public var quantity:Int;
    public function new(id:Int, name:String, quantity:Int) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
    }
}

/** Tables: Sorting (imgui_demo.cpp port, sort specs read through the bindings). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoTablesSorting {

    // MyItemColumnID
    public static inline var COLUMN_ID_ID:Int = 0;
    public static inline var COLUMN_ID_NAME:Int = 1;
    public static inline var COLUMN_ID_ACTION:Int = 2;
    public static inline var COLUMN_ID_QUANTITY:Int = 3;
    public static inline var COLUMN_ID_DESCRIPTION:Int = 4;

    public static var templateItemsNames:Array<String> = [
        'Banana', 'Apple', 'Cherry', 'Watermelon', 'Grapefruit', 'Strawberry', 'Mango',
        'Kiwi', 'Orange', 'Pineapple', 'Blueberry', 'Plum', 'Coconut', 'Pear', 'Apricot'
    ];

    static var items:Array<DemoTableItem> = null;

    static var flags:Int =
        ImGuiTableFlags.Resizable | ImGuiTableFlags.Reorderable | ImGuiTableFlags.Hideable | ImGuiTableFlags.Sortable | ImGuiTableFlags.SortMulti
        | ImGuiTableFlags.RowBg | ImGuiTableFlags.BordersOuter | ImGuiTableFlags.BordersV | ImGuiTableFlags.NoBordersInBody
        | ImGuiTableFlags.ScrollY;

    static var clipper:#if cpp cpp.Star<ImGuiListClipper> #else ImGuiListClipper #end;
    static var clipperInited:Bool = false;

    // Snapshot of the current sort specs (columnUserID, sortDirection) used while sorting
    static var sortSpecsUserIDs:Array<Int> = [];
    static var sortSpecsDirections:Array<Int> = [];

    public static function show(openAction:Int):Void {

        var textBaseHeight = DemoWindowTables.textBaseHeight;

        applyOpenAction(openAction);
        if (!ImGui.treeNode('Sorting'))
            return;

        if (items == null) {
            items = [];
            for (n in 0...50) {
                var templateN = n % templateItemsNames.length;
                items.push(new DemoTableItem(n, templateItemsNames[templateN], (n * n - n) % 20)); // Assign default quantities
            }
        }

        pushStyleCompact();
        ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_SortMulti', flags, ImGuiTableFlags.SortMulti);
        ImGui.sameLine(); helpMarker('When sorting is enabled: hold shift when clicking headers to sort on multiple column. TableGetSortSpecs() may return specs where (SpecsCount > 1).');
        ImGui.checkboxFlagsIntPtr('ImGuiTableFlags_SortTristate', flags, ImGuiTableFlags.SortTristate);
        ImGui.sameLine(); helpMarker('When sorting is enabled: allow no sorting, disable default sorting. TableGetSortSpecs() may return specs where (SpecsCount == 0).');
        popStyleCompact();

        if (ImGui.beginTableEx('table_sorting', 4, flags, ImVec2.make(0.0, textBaseHeight * 15), 0.0)) {
            ImGui.tableSetupColumnEx('ID', ImGuiTableColumnFlags.DefaultSort | ImGuiTableColumnFlags.WidthFixed, 0.0, COLUMN_ID_ID);
            ImGui.tableSetupColumnEx('Name', ImGuiTableColumnFlags.WidthFixed, 0.0, COLUMN_ID_NAME);
            ImGui.tableSetupColumnEx('Action', ImGuiTableColumnFlags.NoSort | ImGuiTableColumnFlags.WidthFixed, 0.0, COLUMN_ID_ACTION);
            ImGui.tableSetupColumnEx('Quantity', ImGuiTableColumnFlags.PreferSortDescending | ImGuiTableColumnFlags.WidthStretch, 0.0, COLUMN_ID_QUANTITY);
            ImGui.tableSetupScrollFreeze(0, 1); // Make row always visible
            ImGui.tableHeadersRow();

            var sortSpecs = ImGui.tableGetSortSpecs();
            if (hasSortSpecs(sortSpecs) && sortSpecs.specsDirty) {
                sortItemsWithSortSpecs(sortSpecs, items);
                sortSpecs.specsDirty = false;
            }

            if (!clipperInited) {
                clipperInited = true;
                clipper = NativeStructs.createListClipper();
            }
            ImGuiListClipper.begin(clipper, items.length);
            while (ImGuiListClipper.step(clipper)) {
                for (rowN in clipper.displayStart...clipper.displayEnd) {
                    var item = items[rowN];
                    ImGui.pushIDInt(item.id);
                    ImGui.tableNextRow();
                    ImGui.tableNextColumn();
                    ImGui.text(StringTools.lpad('' + item.id, '0', 4));
                    ImGui.tableNextColumn();
                    ImGui.textUnformatted(item.name);
                    ImGui.tableNextColumn();
                    ImGui.smallButton('None');
                    ImGui.tableNextColumn();
                    ImGui.text('' + item.quantity);
                    ImGui.popID();
                }
            }
            ImGui.endTable();
        }
        ImGui.treePop();

    }

    /** Whether TableGetSortSpecs() returned a non-null pointer (target-typed). */
    public static inline function hasSortSpecs(specs:#if cpp cpp.Star<ImGuiTableSortSpecs> #else ImGuiTableSortSpecs #end):Bool {
        #if cpp
        return specs != null;
        #elseif js
        return (specs:Int) != 0;
        #elseif cs
        return (specs:Float) != 0;
        #else
        return false;
        #end
    }

    /** Address of Specs[n] (pointer arithmetic on cpp, address + stride on js/cs). */
    public static inline function specAt(specs:#if cpp cpp.Star<ImGuiTableSortSpecs> #else ImGuiTableSortSpecs #end, n:Int):#if cpp cpp.Star<ImGuiTableColumnSortSpecs> #else ImGuiTableColumnSortSpecs #end {
        #if cpp
        return untyped __cpp__('(ImGuiTableColumnSortSpecs*)({0}->Specs + {1})', specs, n);
        #elseif js
        return ((specs:ImGuiTableSortSpecs).specs:Int) + n * ImGuiTableColumnSortSpecs.sizeOf();
        #elseif cs
        return ((specs:ImGuiTableSortSpecs).specs:Float) + n * ImGuiTableColumnSortSpecs.sizeOf();
        #else
        return cast null;
        #end
    }

    /** MyItem::SortWithSortSpecs port: snapshot the specs then sort with a plain Haxe compare. */
    public static function sortItemsWithSortSpecs(sortSpecs:#if cpp cpp.Star<ImGuiTableSortSpecs> #else ImGuiTableSortSpecs #end, itemsToSort:Array<DemoTableItem>):Void {

        var count = sortSpecs.specsCount;
        sortSpecsUserIDs.resize(count);
        sortSpecsDirections.resize(count);
        for (n in 0...count) {
            var spec = specAt(sortSpecs, n);
            sortSpecsUserIDs[n] = spec.columnUserID;
            sortSpecsDirections[n] = spec.sortDirection;
        }

        if (itemsToSort.length > 1)
            itemsToSort.sort(compareWithSortSpecs);

    }

    /** MyItem::CompareWithSortSpecs port. */
    static function compareWithSortSpecs(a:DemoTableItem, b:DemoTableItem):Int {
        for (n in 0...sortSpecsUserIDs.length) {
            var delta = 0;
            switch (sortSpecsUserIDs[n]) {
                case COLUMN_ID_ID: delta = a.id - b.id;
                case COLUMN_ID_NAME: delta = (a.name < b.name) ? -1 : (a.name > b.name ? 1 : 0);
                case COLUMN_ID_QUANTITY: delta = a.quantity - b.quantity;
                case COLUMN_ID_DESCRIPTION: delta = (a.name < b.name) ? -1 : (a.name > b.name ? 1 : 0);
                case _:
            }
            if (delta > 0)
                return (sortSpecsDirections[n] == ImGuiSortDirection.Ascending) ? 1 : -1;
            if (delta < 0)
                return (sortSpecsDirections[n] == ImGuiSortDirection.Ascending) ? -1 : 1;
        }

        return a.id - b.id;
    }

}
