package imgui.demo;

import imgui.ImGui;
import imgui.ImGuiCallbacks;
import imgui.NativeStructs;
import imgui.demo.ImGuiDemo.helpMarker;

/**
 * Widgets > Selection State & Multi-Select (imgui_demo.cpp port).
 *
 * Shows both a manual/simplified selection with plain Haxe state, and the
 * BeginMultiSelect()/EndMultiSelect() API with ImGuiSelectionBasicStorage
 * created through NativeStructs and driven by the cross-target callback
 * trampolines (imgui.ImGuiCallbacks.selectionAdapter).
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsMultiSelect {

    static var selected:Array<Bool> = [for (_ in 0...50) false];
    static var lastClicked:Int = -1;

    public static function show():Void {

        if (!ImGui.treeNode('Selection State & Multi-Select'))
            return;

        helpMarker('The first section is a manual/simplified selection using plain Haxe state. '
            + 'The second one uses the BeginMultiSelect() API through the cross-target callback trampolines.');

        if (ImGui.treeNode('Multiple Selection (adapted)')) {
            ImGui.text('Click to select, Ctrl+Click to toggle, Shift+Click for range.');
            var io = ImGui.getIO();
            var selectedCount = 0;
            for (s in selected) if (s) selectedCount++;
            ImGui.text('Selection size: ' + selectedCount + '/' + selected.length);

            if (ImGui.beginChild('##multisel', ImVec2.make(-1.175494351e-38, ImGui.getFontSize() * 20), ImGuiChildFlags.FrameStyle)) {
                for (n in 0...selected.length) {
                    var label = 'Object ' + StringTools.lpad('' + n, '0', 5);
                    if (ImGui.selectableEx(label, selected[n], 0, ImVec2.make(0, 0))) {
                        if (io.keyShift && lastClicked >= 0) {
                            // Range select from last clicked
                            var from = lastClicked < n ? lastClicked : n;
                            var to = lastClicked < n ? n : lastClicked;
                            for (i in from...to + 1) selected[i] = true;
                        }
                        else if (io.keyCtrl) {
                            selected[n] = !selected[n]; // Toggle
                        }
                        else {
                            for (i in 0...selected.length) selected[i] = false;
                            selected[n] = true; // Single select
                        }
                        lastClicked = n;
                    }
                }
            }
            ImGui.endChild();

            if (ImGui.button('Select all')) for (i in 0...selected.length) selected[i] = true;
            ImGui.sameLine();
            if (ImGui.button('Clear all')) for (i in 0...selected.length) selected[i] = false;

            ImGui.treePop();
        }

        if (ImGui.treeNode('Multi-Select (BeginMultiSelect API)')) {
            ImGui.text('Supported features:');
            ImGui.bulletText('Keyboard navigation (arrows, page up/down, home/end, space).');
            ImGui.bulletText('Ctrl modifier to preserve and toggle selection.');
            ImGui.bulletText('Shift modifier for range selection.');
            ImGui.bulletText('Ctrl+A to select all.');
            ImGui.bulletText('Escape to clear selection.');
            ImGui.bulletText('Click and drag to box-select.');
            ImGui.text('Tip: Use \'Demo->Tools->Debug Log->Selection\' to see selection requests as they happen.');

            var itemsCount = 50;
            if (!msStorageInited) {
                msStorageInited = true;
                msStorage = NativeStructs.createSelectionBasicStorage(ImGuiCallbacks.selectionAdapter(identityAdapter));
            }
            ImGui.text('Selection: ' + msStorage.size + '/' + itemsCount);

            if (ImGui.beginChild('##Basket', ImVec2.make(-1.175494351e-38, ImGui.getFontSize() * 20), ImGuiChildFlags.FrameStyle | ImGuiChildFlags.ResizeY)) {
                // Keep the Haxe adapter handler installed while the storage is in use
                ImGuiCallbacks.selectionAdapter(identityAdapter);
                var msFlags = ImGuiMultiSelectFlags.ClearOnEscape | ImGuiMultiSelectFlags.BoxSelect1d;
                var msIo = ImGui.beginMultiSelectEx(msFlags, msStorage.size, itemsCount);
                ImGuiSelectionBasicStorage.applyRequests(msStorage, msIo);

                for (n in 0...itemsCount) {
                    var label = 'Object ' + StringTools.lpad('' + n, '0', 5) + ': ' + exampleNames[n % exampleNames.length];
                    var itemIsSelected = ImGuiSelectionBasicStorage.contains(msStorage, n);
                    ImGui.setNextItemSelectionUserData(n);
                    ImGui.selectableEx(label, itemIsSelected, 0, ImVec2.make(0, 0));
                }

                msIo = ImGui.endMultiSelect();
                ImGuiSelectionBasicStorage.applyRequests(msStorage, msIo);
            }
            ImGui.endChild();
            ImGui.treePop();
        }

        ImGui.treePop();

    }

    static var msStorage:#if cpp cpp.Star<ImGuiSelectionBasicStorage> #else ImGuiSelectionBasicStorage #end;
    static var msStorageInited:Bool = false;

    static var exampleNames:Array<String> = [
        'Artichoke', 'Arugula', 'Asparagus', 'Avocado', 'Bamboo Shoots', 'Bean Sprouts', 'Beans', 'Beet', 'Belgian Endive', 'Bell Pepper',
        'Bitter Gourd', 'Bok Choy', 'Broccoli', 'Brussels Sprouts', 'Burdock Root', 'Cabbage', 'Calabash', 'Capers', 'Carrot', 'Cassava',
        'Cauliflower', 'Celery', 'Celery Root', 'Celcuce', 'Chayote', 'Chinese Broccoli', 'Corn', 'Cucumber'
    ];

    /** Index == storage id in this demo. */
    static function identityAdapter(storage:ImGuiSelectionBasicStoragePtr, idx:Int):Int {
        return idx;
    }

}
