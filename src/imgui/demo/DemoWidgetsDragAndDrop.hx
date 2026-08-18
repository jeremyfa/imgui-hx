package imgui.demo;

import imgui.ImGui;
import imgui.NativeStructs;
import imgui.demo.ImGuiDemo.helpMarker;

/** Widgets > Drag and Drop (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsDragAndDrop {

    static var col1:Array<Float> = [1.0, 0.0, 0.2];
    static var col2:Array<Float> = [0.4, 0.7, 0.0, 0.5];
    static var mode:Int = 0;
    static var names:Array<String> = [
        'Bobby', 'Beatrice', 'Betty',
        'Brianna', 'Barry', 'Bernard',
        'Bibi', 'Blaine', 'Bryn'
    ];
    static var itemNames:Array<String> = ['Item One', 'Item Two', 'Item Three', 'Item Four', 'Item Five'];

    public static function show():Void {

        if (!ImGui.treeNode('Drag and Drop'))
            return;

        if (ImGui.treeNode('Drag and drop in standard widgets')) {
            // ColorEdit widgets automatically act as drag source and drag target.
            helpMarker('You can drag from the color squares.');
            ImGui.colorEdit3('color 1', col1);
            ImGui.colorEdit4('color 2', col2);
            ImGui.treePop();
        }

        if (ImGui.treeNode('Drag and drop to copy/swap items')) {
            final MODE_COPY = 0;
            final MODE_MOVE = 1;
            final MODE_SWAP = 2;
            if (ImGui.radioButton('Copy', mode == MODE_COPY)) mode = MODE_COPY; ImGui.sameLine();
            if (ImGui.radioButton('Move', mode == MODE_MOVE)) mode = MODE_MOVE; ImGui.sameLine();
            if (ImGui.radioButton('Swap', mode == MODE_SWAP)) mode = MODE_SWAP;

            for (n in 0...names.length) {
                ImGui.pushIDInt(n);
                if ((n % 3) != 0)
                    ImGui.sameLine();
                ImGui.buttonEx(names[n], ImVec2.make(60, 60));

                // Our buttons are both drag sources and drag targets here!
                if (ImGui.beginDragDropSource(ImGuiDragDropFlags.None)) {
                    // Payload carries the index of our item (through the native scratch)
                    NativeStructs.setI32(DemoUtils.buffer, 0, n);
                    ImGui.setDragDropPayload('DND_DEMO_CELL', DemoUtils.ptr(0), 4);

                    if (mode == MODE_COPY) ImGui.text('Copy ' + names[n]);
                    if (mode == MODE_MOVE) ImGui.text('Move ' + names[n]);
                    if (mode == MODE_SWAP) ImGui.text('Swap ' + names[n]);
                    ImGui.endDragDropSource();
                }
                if (ImGui.beginDragDropTarget()) {
                    var payload = ImGui.acceptDragDropPayload('DND_DEMO_CELL');
                    if (DemoUtils.hasPayload(payload)) {
                        var payloadN = DemoUtils.payloadI32(payload, 0);
                        if (mode == MODE_COPY) {
                            names[n] = names[payloadN];
                        }
                        if (mode == MODE_MOVE) {
                            names[n] = names[payloadN];
                            names[payloadN] = '';
                        }
                        if (mode == MODE_SWAP) {
                            var tmp = names[n];
                            names[n] = names[payloadN];
                            names[payloadN] = tmp;
                        }
                    }
                    ImGui.endDragDropTarget();
                }
                ImGui.popID();
            }
            ImGui.treePop();
        }

        if (ImGui.treeNode('Drag to reorder items (simple)')) {
            ImGui.pushItemFlag(ImGuiItemFlags.AllowDuplicateId, true);

            // Simple reordering (no drag and drop api at all here!)
            helpMarker(
                'We don\'t use the drag and drop api at all here! '
                + 'Instead we query when the item is held but not hovered, and order items accordingly.');
            for (n in 0...itemNames.length) {
                var item = itemNames[n];
                ImGui.selectable(item);

                if (ImGui.isItemActive() && !ImGui.isItemHovered()) {
                    var dragDelta = ImGui.getMouseDragDelta(0);
                    var nNext = n + (dragDelta.y < 0 ? -1 : 1);
                    if (nNext >= 0 && nNext < itemNames.length) {
                        itemNames[n] = itemNames[nNext];
                        itemNames[nNext] = item;
                        ImGui.resetMouseDragDelta();
                    }
                }
            }

            ImGui.popItemFlag();
            ImGui.treePop();
        }

        if (ImGui.treeNode('Tooltip at target location')) {
            for (n in 0...2) {
                // Drop targets
                ImGui.button(n != 0 ? 'drop here##1' : 'drop here##0');
                if (ImGui.beginDragDropTarget()) {
                    var dropTargetFlags = ImGuiDragDropFlags.AcceptBeforeDelivery | ImGuiDragDropFlags.AcceptNoPreviewTooltip;
                    var payload = ImGui.acceptDragDropPayload('_COL4F', dropTargetFlags);
                    if (DemoUtils.hasPayload(payload)) {
                        ImGui.setMouseCursor(ImGuiMouseCursor.NotAllowed);
                        ImGui.setTooltip('Cannot drop here!');
                    }
                    ImGui.endDragDropTarget();
                }

                // Drop source
                if (n == 0)
                    ImGui.colorButton('drag me', ImVec4.make(1.0, 0.0, 0.2, 1.0));
            }
            ImGui.treePop();
        }

        ImGui.treePop();

    }

}
