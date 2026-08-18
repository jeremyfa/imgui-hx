package imgui.demo;

import imgui.ImGui;
import imgui.ImGuiCallbacks;
import imgui.NativeStructs;
import imgui.ImGuiTextFilterHx;
import imgui.demo.ImGuiDemo.helpMarker;

/** Widgets > Combo (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsCombos {

    static var flags:Int = 0;
    static final items:Array<String> = ['AAAA', 'BBBB', 'CCCC', 'DDDD', 'EEEE', 'FFFF', 'GGGG', 'HHHH', 'IIII', 'JJJJ', 'KKKK', 'LLLLLLL', 'MMMM', 'OOOOOOO'];
    static var itemSelectedIdx:Int = 0;
    static var filter:ImGuiTextFilterHx = new ImGuiTextFilterHx();
    static var itemCurrent2:Int = 0;
    static var itemCurrent3:Int = -1;

    static inline function heightMask():Int {
        return ImGuiComboFlags.HeightSmall | ImGuiComboFlags.HeightRegular | ImGuiComboFlags.HeightLarge | ImGuiComboFlags.HeightLargest;
    }

    public static function show():Void {

        if (!ImGui.treeNode('Combo'))
            return;

        // Expose flags as checkbox for the demo
        ImGui.checkboxFlagsIntPtr('ImGuiComboFlags_PopupAlignLeft', flags, ImGuiComboFlags.PopupAlignLeft);
        ImGui.sameLine(); helpMarker('Only makes a difference if the popup is larger than the combo');
        if (ImGui.checkboxFlagsIntPtr('ImGuiComboFlags_NoArrowButton', flags, ImGuiComboFlags.NoArrowButton))
            flags &= ~ImGuiComboFlags.NoPreview; // Clear incompatible flags
        if (ImGui.checkboxFlagsIntPtr('ImGuiComboFlags_NoPreview', flags, ImGuiComboFlags.NoPreview))
            flags &= ~(ImGuiComboFlags.NoArrowButton | ImGuiComboFlags.WidthFitPreview);
        if (ImGui.checkboxFlagsIntPtr('ImGuiComboFlags_WidthFitPreview', flags, ImGuiComboFlags.WidthFitPreview))
            flags &= ~ImGuiComboFlags.NoPreview;

        // Override default popup height
        if (ImGui.checkboxFlagsIntPtr('ImGuiComboFlags_HeightSmall', flags, ImGuiComboFlags.HeightSmall))
            flags &= ~(heightMask() & ~ImGuiComboFlags.HeightSmall);
        if (ImGui.checkboxFlagsIntPtr('ImGuiComboFlags_HeightRegular', flags, ImGuiComboFlags.HeightRegular))
            flags &= ~(heightMask() & ~ImGuiComboFlags.HeightRegular);
        if (ImGui.checkboxFlagsIntPtr('ImGuiComboFlags_HeightLargest', flags, ImGuiComboFlags.HeightLargest))
            flags &= ~(heightMask() & ~ImGuiComboFlags.HeightLargest);

        // Generic BeginCombo() API: full control over the combo contents
        var comboPreviewValue = items[itemSelectedIdx >= 0 && itemSelectedIdx < items.length ? itemSelectedIdx : 0];
        if (ImGui.beginCombo('combo 1', comboPreviewValue, flags)) {
            for (n in 0...items.length) {
                var isSelected = (itemSelectedIdx == n);
                if (ImGui.selectableEx(items[n], isSelected, 0, ImVec2.make(0, 0)))
                    itemSelectedIdx = n;

                // Set the initial focus when opening the combo
                if (isSelected)
                    ImGui.setItemDefaultFocus();
            }
            ImGui.endCombo();
        }

        // Embedding a filter inside combo contents (ImGuiTextFilterHx, pure Haxe)
        if (ImGui.beginCombo('combo 2 (w/ filter)', comboPreviewValue, flags)) {
            if (ImGui.isWindowAppearing()) {
                ImGui.setKeyboardFocusHere();
                filter.clear();
            }
            ImGui.setNextItemShortcut(ImGuiKey.ImGuiMod_Ctrl | ImGuiKey.F);
            filter.draw('##Filter', -3.40282346e38);

            for (n in 0...items.length) {
                var isSelected = (itemSelectedIdx == n);
                if (filter.passFilter(items[n]))
                    if (ImGui.selectableEx(items[n], isSelected, 0, ImVec2.make(0, 0)))
                        itemSelectedIdx = n;
            }
            ImGui.endCombo();
        }

        ImGui.spacing();
        ImGui.separatorText('One-liner variants');
        helpMarker('The Combo() function is not greatly useful apart from cases were you want to embed all options in a single strings.\nFlags above don\'t apply to this section.');

        // Simplified one-liner Combo() API, using values packed in a single constant string
        ImGui.combo('combo 3 (one-liner)', itemCurrent2, 'aaaa\x00bbbb\x00cccc\x00dddd\x00eeee\x00\x00');

        // Simplified one-liner Combo() using an array (adapted: zero-separated packing)
        ImGui.combo('combo 4 (array)', itemCurrent3, items.join('\x00') + '\x00');

        // Simplified one-liner Combo() using an item getter through the
        // cross-target callback trampolines (int* current item via scratch)
        NativeStructs.setI32(DemoUtils.buffer, 0, itemCurrent4);
        #if cpp
        ImGui.comboCallback('combo 5 (function)', untyped __cpp__('(int*){0}', DemoUtils.ptr(0)), ImGuiCallbacks.comboGetter(comboItemGetter), DemoUtils.noPtr(), items.length);
        #else
        ImGui.comboCallback('combo 5 (function)', DemoUtils.ptr(0), ImGuiCallbacks.comboGetter(comboItemGetter), DemoUtils.noPtr(), items.length);
        #end
        itemCurrent4 = NativeStructs.getI32(DemoUtils.buffer, 0);

        ImGui.treePop();

    }


    static var itemCurrent4:Int = 0;

    /** combo 5 items getter (fired through ImGuiCallbacks.comboGetter). */
    static function comboItemGetter(idx:Int):String {
        return items[idx];
    }

}
