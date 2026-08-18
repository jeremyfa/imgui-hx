package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/** Widgets > Querying Item/Window Status (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsQuerying {

    static final itemNames:Array<String> = [
        'Text', 'Button', 'Button (w/ repeat)', 'Checkbox', 'SliderFloat', 'InputText', 'InputTextMultiline', 'InputFloat',
        'InputFloat3', 'ColorEdit4', 'Selectable', 'MenuItem', 'TreeNode', 'TreeNode (w/ double-click)', 'Combo', 'ListBox'
    ];
    static var itemType:Int = 4;
    static var itemDisabled:Bool = false;
    static var b:Bool = false;
    static var col4f:Array<Float> = [1.0, 0.5, 0.0, 1.0];
    static var str:String = '';
    static var comboCurrent:Int = 1;
    static var listboxCurrent:Int = 1;
    static var unused:String = '';
    static var embedAllInsideAChildWindow:Bool = false;
    static var testWindow:Bool = false;

    public static function show():Void {

        itemStatus();
        windowStatus();

    }

    static function itemStatus():Void {

        if (!ImGui.treeNode('Querying Item Status (Edited/Active/Hovered etc.)'))
            return;

        ImGui.comboEx('Item Type', itemType, itemNames.join('\x00') + '\x00', itemNames.length);
        ImGui.sameLine();
        helpMarker('Testing how various types of items are interacting with the IsItemXXX functions. Note that the bool return value of most ImGui function is generally equivalent to calling ImGui::IsItemHovered().');
        ImGui.checkbox('Item Disabled', itemDisabled);

        // Submit selected items so we can query their status in the code following it.
        var ret = false;
        if (itemDisabled)
            ImGui.beginDisabled(true);
        if (itemType == 0) { ImGui.text('ITEM: Text'); }
        if (itemType == 1) { ret = ImGui.button('ITEM: Button'); }
        if (itemType == 2) { ImGui.pushItemFlag(ImGuiItemFlags.ButtonRepeat, true); ret = ImGui.button('ITEM: Button'); ImGui.popItemFlag(); }
        if (itemType == 3) { ret = ImGui.checkbox('ITEM: Checkbox', b); }
        if (itemType == 4) { ret = ImGui.sliderFloat('ITEM: SliderFloat', col4f[0], 0.0, 1.0); }
        if (itemType == 5) { ret = ImGui.inputText('ITEM: InputText', str, 16); }
        if (itemType == 6) { ret = ImGui.inputTextMultiline('ITEM: InputTextMultiline', str, 16); }
        if (itemType == 7) { ret = ImGui.inputFloatEx('ITEM: InputFloat', col4f[0], 1.0); }
        if (itemType == 8) { ret = ImGui.inputFloat3('ITEM: InputFloat3', col4f); }
        if (itemType == 9) { ret = ImGui.colorEdit4('ITEM: ColorEdit4', col4f); }
        if (itemType == 10) { ret = ImGui.selectable('ITEM: Selectable'); }
        if (itemType == 11) { ret = ImGui.menuItem('ITEM: MenuItem'); }
        if (itemType == 12) { ret = ImGui.treeNode('ITEM: TreeNode'); if (ret) ImGui.treePop(); }
        if (itemType == 13) { ret = ImGui.treeNodeEx('ITEM: TreeNode w/ ImGuiTreeNodeFlags_OpenOnDoubleClick', ImGuiTreeNodeFlags.OpenOnDoubleClick | ImGuiTreeNodeFlags.NoTreePushOnOpen); }
        if (itemType == 14) { ret = ImGui.combo('ITEM: Combo', comboCurrent, 'Apple\x00Banana\x00Cherry\x00Kiwi\x00'); }
        if (itemType == 15) {
            // (Simplified ListBox: portable BeginListBox/Selectable pattern)
            var lbItems = ['Apple', 'Banana', 'Cherry', 'Kiwi'];
            var itemsHeight = ImGui.getTextLineHeightWithSpacing() * lbItems.length + ImGui.getStyle().framePadding.y * 2;
            if (ImGui.beginListBox('ITEM: ListBox', ImVec2.make(0, itemsHeight))) {
                for (n in 0...lbItems.length) {
                    if (ImGui.selectableEx(lbItems[n], listboxCurrent == n, 0, ImVec2.make(0, 0))) {
                        listboxCurrent = n;
                        ret = true;
                    }
                }
                ImGui.endListBox();
            }
        }

        var hoveredDelayNone = ImGui.isItemHovered();
        var hoveredDelayStationary = ImGui.isItemHovered(ImGuiHoveredFlags.Stationary);
        var hoveredDelayShort = ImGui.isItemHovered(ImGuiHoveredFlags.DelayShort);
        var hoveredDelayNormal = ImGui.isItemHovered(ImGuiHoveredFlags.DelayNormal);
        var hoveredDelayTooltip = ImGui.isItemHovered(ImGuiHoveredFlags.ForTooltip);

        // Display the values of IsItemHovered() and other common item state functions.
        // Queried in a single bulletText call to avoid affecting the results.
        var rectMin = ImGui.getItemRectMin();
        var rectMax = ImGui.getItemRectMax();
        var rectSize = ImGui.getItemRectSize();
        ImGui.bulletText(
            'Return value = ' + bi(ret) + '\n'
            + 'IsItemFocused() = ' + bi(ImGui.isItemFocused()) + '\n'
            + 'IsItemHovered() = ' + bi(ImGui.isItemHovered()) + '\n'
            + 'IsItemHovered(_AllowWhenBlockedByPopup) = ' + bi(ImGui.isItemHovered(ImGuiHoveredFlags.AllowWhenBlockedByPopup)) + '\n'
            + 'IsItemHovered(_AllowWhenBlockedByActiveItem) = ' + bi(ImGui.isItemHovered(ImGuiHoveredFlags.AllowWhenBlockedByActiveItem)) + '\n'
            + 'IsItemHovered(_AllowWhenOverlappedByItem) = ' + bi(ImGui.isItemHovered(ImGuiHoveredFlags.AllowWhenOverlappedByItem)) + '\n'
            + 'IsItemHovered(_AllowWhenOverlappedByWindow) = ' + bi(ImGui.isItemHovered(ImGuiHoveredFlags.AllowWhenOverlappedByWindow)) + '\n'
            + 'IsItemHovered(_AllowWhenDisabled) = ' + bi(ImGui.isItemHovered(ImGuiHoveredFlags.AllowWhenDisabled)) + '\n'
            + 'IsItemHovered(_RectOnly) = ' + bi(ImGui.isItemHovered(ImGuiHoveredFlags.RectOnly)) + '\n'
            + 'IsItemActive() = ' + bi(ImGui.isItemActive()) + '\n'
            + 'IsItemEdited() = ' + bi(ImGui.isItemEdited()) + '\n'
            + 'IsItemActivated() = ' + bi(ImGui.isItemActivated()) + '\n'
            + 'IsItemDeactivated() = ' + bi(ImGui.isItemDeactivated()) + '\n'
            + 'IsItemDeactivatedAfterEdit() = ' + bi(ImGui.isItemDeactivatedAfterEdit()) + '\n'
            + 'IsItemVisible() = ' + bi(ImGui.isItemVisible()) + '\n'
            + 'IsItemClicked() = ' + bi(ImGui.isItemClicked()) + '\n'
            + 'IsItemToggledOpen() = ' + bi(ImGui.isItemToggledOpen()) + '\n'
            + 'GetItemRectMin() = (' + f1(rectMin.x) + ', ' + f1(rectMin.y) + ')\n'
            + 'GetItemRectMax() = (' + f1(rectMax.x) + ', ' + f1(rectMax.y) + ')\n'
            + 'GetItemRectSize() = (' + f1(rectSize.x) + ', ' + f1(rectSize.y) + ')');
        ImGui.bulletText(
            'with Hovering Delay or Stationary test:\n'
            + 'IsItemHovered() = ' + bi(hoveredDelayNone) + '\n'
            + 'IsItemHovered(_Stationary) = ' + bi(hoveredDelayStationary) + '\n'
            + 'IsItemHovered(_DelayShort) = ' + bi(hoveredDelayShort) + '\n'
            + 'IsItemHovered(_DelayNormal) = ' + bi(hoveredDelayNormal) + '\n'
            + 'IsItemHovered(_Tooltip) = ' + bi(hoveredDelayTooltip));

        if (itemDisabled)
            ImGui.endDisabled();

        ImGui.inputTextEx('unused', unused, 1, ImGuiInputTextFlags.ReadOnly);
        ImGui.sameLine();
        helpMarker('This widget is only here to be able to tab-out of the widgets above and see e.g. Deactivated() status.');

        ImGui.treePop();

    }

    static function windowStatus():Void {

        if (!ImGui.treeNode('Querying Window Status (Focused/Hovered etc.)'))
            return;

        ImGui.checkbox('Embed everything inside a child window for testing _RootWindow flag.', embedAllInsideAChildWindow);
        if (embedAllInsideAChildWindow)
            ImGui.beginChild('outer_child', ImVec2.make(0, ImGui.getFontSize() * 20.0), ImGuiChildFlags.Borders);

        // Testing IsWindowFocused() function with its various flags.
        ImGui.bulletText(
            'IsWindowFocused() = ' + bi(ImGui.isWindowFocused()) + '\n'
            + 'IsWindowFocused(_ChildWindows) = ' + bi(ImGui.isWindowFocused(ImGuiFocusedFlags.ChildWindows)) + '\n'
            + 'IsWindowFocused(_ChildWindows|_NoPopupHierarchy) = ' + bi(ImGui.isWindowFocused(ImGuiFocusedFlags.ChildWindows | ImGuiFocusedFlags.NoPopupHierarchy)) + '\n'
            + 'IsWindowFocused(_ChildWindows|_DockHierarchy) = ' + bi(ImGui.isWindowFocused(ImGuiFocusedFlags.ChildWindows | ImGuiFocusedFlags.DockHierarchy)) + '\n'
            + 'IsWindowFocused(_ChildWindows|_RootWindow) = ' + bi(ImGui.isWindowFocused(ImGuiFocusedFlags.ChildWindows | ImGuiFocusedFlags.RootWindow)) + '\n'
            + 'IsWindowFocused(_ChildWindows|_RootWindow|_NoPopupHierarchy) = ' + bi(ImGui.isWindowFocused(ImGuiFocusedFlags.ChildWindows | ImGuiFocusedFlags.RootWindow | ImGuiFocusedFlags.NoPopupHierarchy)) + '\n'
            + 'IsWindowFocused(_ChildWindows|_RootWindow|_DockHierarchy) = ' + bi(ImGui.isWindowFocused(ImGuiFocusedFlags.ChildWindows | ImGuiFocusedFlags.RootWindow | ImGuiFocusedFlags.DockHierarchy)) + '\n'
            + 'IsWindowFocused(_RootWindow) = ' + bi(ImGui.isWindowFocused(ImGuiFocusedFlags.RootWindow)) + '\n'
            + 'IsWindowFocused(_RootWindow|_NoPopupHierarchy) = ' + bi(ImGui.isWindowFocused(ImGuiFocusedFlags.RootWindow | ImGuiFocusedFlags.NoPopupHierarchy)) + '\n'
            + 'IsWindowFocused(_RootWindow|_DockHierarchy) = ' + bi(ImGui.isWindowFocused(ImGuiFocusedFlags.RootWindow | ImGuiFocusedFlags.DockHierarchy)) + '\n'
            + 'IsWindowFocused(_AnyWindow) = ' + bi(ImGui.isWindowFocused(ImGuiFocusedFlags.AnyWindow)));

        // Testing IsWindowHovered() function with its various flags.
        ImGui.bulletText(
            'IsWindowHovered() = ' + bi(ImGui.isWindowHovered()) + '\n'
            + 'IsWindowHovered(_AllowWhenBlockedByPopup) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.AllowWhenBlockedByPopup)) + '\n'
            + 'IsWindowHovered(_AllowWhenBlockedByActiveItem) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.AllowWhenBlockedByActiveItem)) + '\n'
            + 'IsWindowHovered(_ChildWindows) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.ChildWindows)) + '\n'
            + 'IsWindowHovered(_ChildWindows|_NoPopupHierarchy) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.ChildWindows | ImGuiHoveredFlags.NoPopupHierarchy)) + '\n'
            + 'IsWindowHovered(_ChildWindows|_DockHierarchy) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.ChildWindows | ImGuiHoveredFlags.DockHierarchy)) + '\n'
            + 'IsWindowHovered(_ChildWindows|_RootWindow) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.ChildWindows | ImGuiHoveredFlags.RootWindow)) + '\n'
            + 'IsWindowHovered(_ChildWindows|_RootWindow|_NoPopupHierarchy) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.ChildWindows | ImGuiHoveredFlags.RootWindow | ImGuiHoveredFlags.NoPopupHierarchy)) + '\n'
            + 'IsWindowHovered(_ChildWindows|_RootWindow|_DockHierarchy) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.ChildWindows | ImGuiHoveredFlags.RootWindow | ImGuiHoveredFlags.DockHierarchy)) + '\n'
            + 'IsWindowHovered(_RootWindow) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.RootWindow)) + '\n'
            + 'IsWindowHovered(_RootWindow|_NoPopupHierarchy) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.RootWindow | ImGuiHoveredFlags.NoPopupHierarchy)) + '\n'
            + 'IsWindowHovered(_RootWindow|_DockHierarchy) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.RootWindow | ImGuiHoveredFlags.DockHierarchy)) + '\n'
            + 'IsWindowHovered(_ChildWindows|_AllowWhenBlockedByPopup) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.ChildWindows | ImGuiHoveredFlags.AllowWhenBlockedByPopup)) + '\n'
            + 'IsWindowHovered(_AnyWindow) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.AnyWindow)) + '\n'
            + 'IsWindowHovered(_Stationary) = ' + bi(ImGui.isWindowHovered(ImGuiHoveredFlags.Stationary)));

        ImGui.beginChild('child', ImVec2.make(0, 50), ImGuiChildFlags.Borders);
        ImGui.text('This is another child window for testing the _ChildWindows flag.');
        ImGui.endChild();
        if (embedAllInsideAChildWindow)
            ImGui.endChild();

        // Calling IsItemHovered() after begin returns the hovered status of the title bar.
        ImGui.checkbox('Hovered/Active tests after Begin() for title bar testing', testWindow);
        if (testWindow) {
            ImGui.begin('Title bar Hovered/Active tests', testWindow);
            if (ImGui.beginPopupContextItem()) { // <-- This is using IsItemHovered()
                if (ImGui.menuItem('Close')) testWindow = false;
                ImGui.endPopup();
            }
            ImGui.text(
                'IsItemHovered() after begin = ' + bi(ImGui.isItemHovered()) + ' (== is title bar hovered)\n'
                + 'IsItemActive() after begin = ' + bi(ImGui.isItemActive()) + ' (== is window being clicked/moved)\n');
            ImGui.end();
        }

        ImGui.treePop();

    }

    static inline function bi(v:Bool):Int {
        return v ? 1 : 0;
    }

    static function f1(v:Float):String {
        return '' + (Math.round(v * 10) / 10);
    }

}
