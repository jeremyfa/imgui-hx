package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/** Example: Dockspace (imgui_demo.cpp port, Basic + Advanced modes). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoAppDockSpace {

    static var optDemoMode:Int = 0;
    static var optDemoModeChanged:Bool = false;

    // ImGuiDemoDockspaceArgs
    static var argsIsFullscreen:Bool = true;
    static var argsKeepWindowPadding:Bool = false; // Keep WindowPadding to help understand that DockSpace() is a widget inside the window.
    static var argsDockSpaceFlags:Int = ImGuiDockNodeFlags.None;

    static function showAdvanced():Void {

        var dockspaceFlags = argsDockSpaceFlags;

        var windowFlags = ImGuiWindowFlags.NoDocking;
        if (argsIsFullscreen) {
            var viewport = ImGui.getMainViewport();
            ImGui.setNextWindowPos(viewport.workPos);
            ImGui.setNextWindowSize(viewport.workSize);
            ImGui.setNextWindowViewport(viewport.id);
            ImGui.pushStyleVar(ImGuiStyleVar.WindowRounding, 0.0);
            ImGui.pushStyleVar(ImGuiStyleVar.WindowBorderSize, 0.0);
            windowFlags |= ImGuiWindowFlags.NoTitleBar | ImGuiWindowFlags.NoCollapse | ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoMove;
            windowFlags |= ImGuiWindowFlags.NoBringToFrontOnFocus | ImGuiWindowFlags.NoNavFocus;
            windowFlags |= ImGuiWindowFlags.NoBackground;
        }
        else {
            dockspaceFlags &= ~ImGuiDockNodeFlags.PassthruCentralNode;
        }

        if (!argsKeepWindowPadding)
            ImGui.pushStyleVarImVec2(ImGuiStyleVar.WindowPadding, ImVec2.make(0.0, 0.0));
        ImGui.begin('Window with a DockSpace', ImGuiDemo.showAppDockSpace, windowFlags);
        if (!argsKeepWindowPadding)
            ImGui.popStyleVar();

        if (argsIsFullscreen)
            ImGui.popStyleVarEx(2);

        var dockspaceId = ImGui.getID('MyDockSpace');
        ImGui.dockSpaceEx(dockspaceId, ImVec2.make(0.0, 0.0), dockspaceFlags);

        ImGui.end();

    }

    static function showBasic():Void {
        ImGui.dockSpaceOverViewportEx(0, DemoUtils.noViewport(), argsDockSpaceFlags);
    }

    public static function show():Void {

        if (optDemoMode == 0)
            showBasic();
        else
            showAdvanced();

        if (optDemoModeChanged)
            ImGui.setNextWindowFocus();
        ImGui.begin('Examples: Dockspace', ImGuiDemo.showAppDockSpace, ImGuiWindowFlags.MenuBar);
        optDemoModeChanged = false;
        if (ImGui.radioButtonIntPtr('Basic demo mode', optDemoMode, 0)) optDemoModeChanged = true;
        if (ImGui.radioButtonIntPtr('Advanced demo mode', optDemoMode, 1)) optDemoModeChanged = true;

        ImGui.separatorText('Options');

        var io = ImGui.getIO();
        if ((io.configFlags & ImGuiConfigFlags.DockingEnable) == 0) {
            ImGuiDemo.showDockingDisabledMessage();
        }
        else if (optDemoMode == 0) {
            argsDockSpaceFlags &= ImGuiDockNodeFlags.PassthruCentralNode; // Allowed flags
            ImGui.checkboxFlagsIntPtr('Flag: PassthruCentralNode', argsDockSpaceFlags, ImGuiDockNodeFlags.PassthruCentralNode);
        }
        else if (optDemoMode == 1) {
            ImGui.checkbox('Fullscreen', argsIsFullscreen);
            ImGui.checkbox('Keep Window Padding', argsKeepWindowPadding);
            ImGui.sameLine();
            helpMarker('This is mostly exposed to facilitate understanding that a DockSpace() is _inside_ a window.');
            ImGui.beginDisabled(argsIsFullscreen == false);
            ImGui.checkboxFlagsIntPtr('Flag: PassthruCentralNode', argsDockSpaceFlags, ImGuiDockNodeFlags.PassthruCentralNode);
            ImGui.endDisabled();
            ImGui.checkboxFlagsIntPtr('Flag: NoDockingOverCentralNode', argsDockSpaceFlags, ImGuiDockNodeFlags.NoDockingOverCentralNode);
            ImGui.checkboxFlagsIntPtr('Flag: NoDockingSplit', argsDockSpaceFlags, ImGuiDockNodeFlags.NoDockingSplit);
            ImGui.checkboxFlagsIntPtr('Flag: NoUndocking', argsDockSpaceFlags, ImGuiDockNodeFlags.NoUndocking);
            ImGui.checkboxFlagsIntPtr('Flag: NoResize', argsDockSpaceFlags, ImGuiDockNodeFlags.NoResize);
            ImGui.checkboxFlagsIntPtr('Flag: AutoHideTabBar', argsDockSpaceFlags, ImGuiDockNodeFlags.AutoHideTabBar);
        }

        if (ImGui.beginMenuBar()) {
            if (ImGui.beginMenu('Help')) {
                ImGui.textUnformatted(
                    'This demonstrates the use of ImGui::DockSpace() which allows you to manually\ncreate a docking node _within_ another window.\n'
                    + 'The "Basic" version uses the ImGui::DockSpaceOverViewport() helper. Most applications can probably use this.');
                ImGui.separator();
                ImGui.textUnformatted('When docking is enabled, you can ALWAYS dock MOST window into another! Try it now!\n'
                    + '- Drag from window title bar or their tab to dock/undock.\n'
                    + '- Drag from window menu button (upper-left button) to undock an entire node (all windows).\n'
                    + '- Hold SHIFT to disable docking (if io.ConfigDockingWithShift == false, default)\n'
                    + '- Hold SHIFT to enable docking (if io.ConfigDockingWithShift == true)');
                ImGui.separator();
                ImGui.textUnformatted('More details:'); ImGui.bullet(); ImGui.sameLine(); ImGui.textLinkOpenURLEx('Docking Wiki page', 'https://github.com/ocornut/imgui/wiki/Docking');
                ImGui.bulletText('Read comments in ShowExampleAppDockSpace()');
                ImGui.endMenu();
            }
            ImGui.endMenuBar();
        }

        ImGui.end();

    }

}
