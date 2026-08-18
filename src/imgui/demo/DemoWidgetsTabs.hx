package imgui.demo;

import imgui.ImGui;

/** Widgets > Tabs + Vertical Sliders + Text Filter (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsTabs {

    static var advTabBarFlags:Int = ImGuiTabBarFlags.Reorderable;
    static final advNames:Array<String> = ['Artichoke', 'Beetroot', 'Celery', 'Daikon'];
    static var advOpened:Array<Bool> = [true, true, true, true];
    static var activeTabs:Array<Int> = [];
    static var nextTabId:Int = 0;
    static var showLeadingButton:Bool = true;
    static var showTrailingButton:Bool = true;
    static var buttonsTabBarFlags:Int = ImGuiTabBarFlags.AutoSelectNewTabs | ImGuiTabBarFlags.Reorderable | ImGuiTabBarFlags.FittingPolicyShrink;

    public static function show():Void {

        if (!ImGui.treeNode('Tabs'))
            return;

        if (ImGui.treeNode('Basic')) {
            var tabBarFlags = ImGuiTabBarFlags.None;
            if (ImGui.beginTabBar('MyTabBar', tabBarFlags)) {
                if (ImGui.beginTabItem('Avocado')) {
                    ImGui.text('This is the Avocado tab!\nblah blah blah blah blah');
                    ImGui.endTabItem();
                }
                if (ImGui.beginTabItem('Broccoli')) {
                    ImGui.text('This is the Broccoli tab!\nblah blah blah blah blah');
                    ImGui.endTabItem();
                }
                if (ImGui.beginTabItem('Cucumber')) {
                    ImGui.text('This is the Cucumber tab!\nblah blah blah blah blah');
                    ImGui.endTabItem();
                }
                ImGui.endTabBar();
            }
            ImGui.separator();
            ImGui.treePop();
        }

        if (ImGui.treeNode('Advanced & Close Button')) {
            ImGui.checkboxFlagsIntPtr('ImGuiTabBarFlags_Reorderable', advTabBarFlags, ImGuiTabBarFlags.Reorderable);
            ImGui.checkboxFlagsIntPtr('ImGuiTabBarFlags_AutoSelectNewTabs', advTabBarFlags, ImGuiTabBarFlags.AutoSelectNewTabs);
            ImGui.checkboxFlagsIntPtr('ImGuiTabBarFlags_TabListPopupButton', advTabBarFlags, ImGuiTabBarFlags.TabListPopupButton);
            ImGui.checkboxFlagsIntPtr('ImGuiTabBarFlags_NoCloseWithMiddleMouseButton', advTabBarFlags, ImGuiTabBarFlags.NoCloseWithMiddleMouseButton);
            ImGui.checkboxFlagsIntPtr('ImGuiTabBarFlags_DrawSelectedOverline', advTabBarFlags, ImGuiTabBarFlags.DrawSelectedOverline);
            advTabBarFlags = editTabBarFittingPolicyFlags(advTabBarFlags);

            ImGui.alignTextToFramePadding();
            ImGui.text('Opened:');
            for (n in 0...advOpened.length) {
                ImGui.sameLine();
                ImGui.checkbox(advNames[n], advOpened[n]);
            }

            if (ImGui.beginTabBar('MyTabBar', advTabBarFlags)) {
                for (n in 0...advOpened.length)
                    if (advOpened[n] && ImGui.beginTabItem(advNames[n], advOpened[n], ImGuiTabItemFlags.None)) {
                        ImGui.text('This is the ' + advNames[n] + ' tab!');
                        if (n & 1 != 0)
                            ImGui.text('I am an odd tab.');
                        ImGui.endTabItem();
                    }
                ImGui.endTabBar();
            }
            ImGui.separator();
            ImGui.treePop();
        }

        if (ImGui.treeNode('TabItemButton & Leading/Trailing flags')) {
            if (nextTabId == 0) // Initialize with some default tabs
                for (_ in 0...3)
                    activeTabs.push(nextTabId++);

            ImGui.checkbox('Show Leading TabItemButton()', showLeadingButton);
            ImGui.checkbox('Show Trailing TabItemButton()', showTrailingButton);

            buttonsTabBarFlags = editTabBarFittingPolicyFlags(buttonsTabBarFlags);

            if (ImGui.beginTabBar('MyTabBar', buttonsTabBarFlags)) {
                if (showLeadingButton)
                    if (ImGui.tabItemButton('?', ImGuiTabItemFlags.Leading | ImGuiTabItemFlags.NoTooltip))
                        ImGui.openPopup('MyHelpMenu');
                if (ImGui.beginPopup('MyHelpMenu')) {
                    ImGui.selectable('Hello!');
                    ImGui.endPopup();
                }

                if (showTrailingButton)
                    if (ImGui.tabItemButton('+', ImGuiTabItemFlags.Trailing | ImGuiTabItemFlags.NoTooltip))
                        activeTabs.push(nextTabId++); // Add new tab

                // Submit our regular tabs
                var n = 0;
                while (n < activeTabs.length) {
                    var tabOpen = true;
                    var name = StringTools.lpad('' + activeTabs[n], '0', 4);
                    if (ImGui.beginTabItem(name, tabOpen, ImGuiTabItemFlags.None)) {
                        ImGui.text('This is the ' + name + ' tab!');
                        ImGui.endTabItem();
                    }

                    if (!tabOpen)
                        activeTabs.splice(n, 1);
                    else
                        n++;
                }

                ImGui.endTabBar();
            }
            ImGui.separator();
            ImGui.treePop();
        }

        ImGui.treePop();

    }

    static function editTabBarFittingPolicyFlags(flags:Int):Int {

        var fittingPolicyMask = ImGuiTabBarFlags.FittingPolicyMixed | ImGuiTabBarFlags.FittingPolicyShrink | ImGuiTabBarFlags.FittingPolicyScroll;
        if ((flags & fittingPolicyMask) == 0)
            flags |= ImGuiTabBarFlags.FittingPolicyMixed; // Default
        if (ImGui.checkboxFlagsIntPtr('ImGuiTabBarFlags_FittingPolicyMixed', flags, ImGuiTabBarFlags.FittingPolicyMixed))
            flags &= ~(fittingPolicyMask ^ ImGuiTabBarFlags.FittingPolicyMixed);
        if (ImGui.checkboxFlagsIntPtr('ImGuiTabBarFlags_FittingPolicyShrink', flags, ImGuiTabBarFlags.FittingPolicyShrink))
            flags &= ~(fittingPolicyMask ^ ImGuiTabBarFlags.FittingPolicyShrink);
        if (ImGui.checkboxFlagsIntPtr('ImGuiTabBarFlags_FittingPolicyScroll', flags, ImGuiTabBarFlags.FittingPolicyScroll))
            flags &= ~(fittingPolicyMask ^ ImGuiTabBarFlags.FittingPolicyScroll);
        return flags;

    }

}
