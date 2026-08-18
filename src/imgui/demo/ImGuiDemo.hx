package imgui.demo;

import imgui.ImGui;

/**
 * FULL HAXE port of Dear ImGui's official demo (imgui_demo.cpp, docking
 * branch), driven entirely through the portable `imgui.ImGui` facade: the
 * exact same code runs on hxcpp (desktop/mobile), js/wasm and C#/Unity.
 *
 * Usage mirrors the original:
 *
 *     imgui.demo.ImGuiDemo.showDemoWindow();
 *
 * The window is titled "Dear ImGui Demo (Haxe)" so it can be shown side by
 * side with the native `ImGui.showDemoWindow()` for comparison.
 *
 * Port conventions:
 * - sections follow imgui_demo.cpp order, same labels and default values;
 * - C++ function-local `static` state becomes static fields of the section
 *   classes (no per-frame allocation);
 * - the few features requiring C callbacks (console completion/history,
 *   custom resize constraints...) are adapted or visibly marked as TODO
 *   until cross-target callback support lands.
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class ImGuiDemo {

    /** Show the Haxe demo window (call between newFrame and render). */
    public static var open:Bool = true;

    // Examples menu toggles (ImGuiDemoWindowData equivalent)
    public static var showMainMenuBar:Bool = false;
    public static var showAppAssetsBrowser:Bool = false;
    public static var showAppConsole:Bool = false;
    public static var showAppCustomRendering:Bool = false;
    public static var showAppDocuments:Bool = false;
    public static var showAppDockSpace:Bool = false;
    public static var showAppImageViewer:Bool = false;
    public static var showAppLog:Bool = false;
    public static var showAppPropertyEditor:Bool = false;
    public static var showAppLayout:Bool = false;
    public static var showAppSimpleOverlay:Bool = false;
    public static var showAppAutoResize:Bool = false;
    public static var showAppConstrainedResize:Bool = false;
    public static var showAppFullscreen:Bool = false;
    public static var showAppLongText:Bool = false;
    public static var showAppWindowTitles:Bool = false;

    // Tools menu toggles
    public static var showMetrics:Bool = false;
    public static var showDebugLog:Bool = false;
    public static var showIDStackTool:Bool = false;
    public static var showAbout:Bool = false;
    public static var showStyleEditor:Bool = false;

    // Window options
    static var noTitlebar:Bool = false;
    static var noScrollbar:Bool = false;
    static var noMenu:Bool = false;
    static var noMove:Bool = false;
    static var noResize:Bool = false;
    static var noCollapse:Bool = false;
    static var noClose:Bool = false;
    static var noNav:Bool = false;
    static var noBackground:Bool = false;
    static var noBringToFront:Bool = false;
    static var noDocking:Bool = false;
    static var unsavedDocument:Bool = false;

    public static function showDemoWindow():Void {

        // Examples apps (accessible from the "Examples" menu).
        // Docking app first (explicit DockSpace() nodes must be submitted early).
        if (showMainMenuBar) DemoApps.showExampleAppMainMenuBar();
        if (showAppDockSpace) DemoApps.showExampleAppDockSpace();
        if (showAppDocuments) DemoApps.showExampleAppDocuments();
        if (showAppAssetsBrowser) DemoApps.showExampleAppAssetsBrowser();
        if (showAppConsole) DemoApps.showExampleAppConsole();
        if (showAppCustomRendering) DemoApps.showExampleAppCustomRendering();
        if (showAppImageViewer) DemoApps.showExampleAppImageViewer();
        if (showAppLog) DemoApps.showExampleAppLog();
        if (showAppLayout) DemoApps.showExampleAppLayout();
        if (showAppPropertyEditor) DemoApps.showExampleAppPropertyEditor();
        if (showAppSimpleOverlay) DemoApps.showExampleAppSimpleOverlay();
        if (showAppAutoResize) DemoApps.showExampleAppAutoResize();
        if (showAppConstrainedResize) DemoApps.showExampleAppConstrainedResize();
        if (showAppFullscreen) DemoApps.showExampleAppFullscreen();
        if (showAppLongText) DemoApps.showExampleAppLongText();
        if (showAppWindowTitles) DemoApps.showExampleAppWindowTitles();

        // Dear ImGui tools (native windows, already bound)
        if (showMetrics) ImGui.showMetricsWindow(showMetrics);
        if (showDebugLog) ImGui.showDebugLogWindow(showDebugLog);
        if (showIDStackTool) ImGui.showIDStackToolWindowEx(showIDStackTool);
        if (showAbout) ImGui.showAboutWindow(showAbout);
        if (showStyleEditor) {
            ImGui.begin('Dear ImGui Style Editor (Haxe)', showStyleEditor);
            DemoStyleEditor.showStyleEditor();
            ImGui.end();
        }

        var windowFlags:ImGuiWindowFlags = 0;
        if (noTitlebar) windowFlags |= ImGuiWindowFlags.NoTitleBar;
        if (noScrollbar) windowFlags |= ImGuiWindowFlags.NoScrollbar;
        if (!noMenu) windowFlags |= ImGuiWindowFlags.MenuBar;
        if (noMove) windowFlags |= ImGuiWindowFlags.NoMove;
        if (noResize) windowFlags |= ImGuiWindowFlags.NoResize;
        if (noCollapse) windowFlags |= ImGuiWindowFlags.NoCollapse;
        if (noNav) windowFlags |= ImGuiWindowFlags.NoNav;
        if (noBackground) windowFlags |= ImGuiWindowFlags.NoBackground;
        if (noBringToFront) windowFlags |= ImGuiWindowFlags.NoBringToFrontOnFocus;
        if (noDocking) windowFlags |= ImGuiWindowFlags.NoDocking;
        if (unsavedDocument) windowFlags |= ImGuiWindowFlags.UnsavedDocument;

        // Default position/size for first use (offset from the native demo)
        var mainViewport = ImGui.getMainViewport();
        ImGui.setNextWindowPos(ImVec2.make(mainViewport.workPos.x + 650, mainViewport.workPos.y + 20), ImGuiCond.FirstUseEver);
        ImGui.setNextWindowSize(ImVec2.make(550, 680), ImGuiCond.FirstUseEver);

        var began = noClose
            ? ImGui.begin('Dear ImGui Demo (Haxe)', null, windowFlags)
            : ImGui.begin('Dear ImGui Demo (Haxe)', open, windowFlags);
        if (!began) {
            // Early out if the window is collapsed, as an optimization.
            ImGui.end();
            return;
        }

        // Most framed widgets share a common width settings
        var labelWidthBase = ImGui.getFontSize() * 12;
        var avail = ImGui.getContentRegionAvail();
        var labelWidthMax = avail.x * 0.40;
        var labelWidth = Math.min(labelWidthBase, labelWidthMax);
        ImGui.pushItemWidth(-labelWidth);

        // Menu bar
        menuBar();

        ImGui.text('dear imgui says hello! (' + ImGui.getVersion() + ') [Haxe port]');
        ImGui.spacing();

        if (ImGui.collapsingHeader('Help')) {
            ImGui.separatorText('ABOUT THIS DEMO:');
            ImGui.bulletText('Sections below are demonstrating many aspects of the library.');
            ImGui.bulletText('The "Examples" menu above leads to more demo contents.');
            ImGui.bulletText('The "Tools" menu above gives access to: About Box, Style Editor,\nand Metrics/Debugger (general purpose Dear ImGui debugging tool).');
            ImGui.bulletText('This is the HAXE PORT of imgui_demo.cpp, driven through the\nportable imgui.ImGui facade (same code on hxcpp, js/wasm, C#).');

            ImGui.separatorText('PROGRAMMER GUIDE:');
            ImGui.bulletText('See the showDemoWindow() code in imgui/demo/. <- you are here!');
            ImGui.bulletText('See comments in imgui.cpp.');
            ImGui.bulletText('See example applications in the examples/ folder.');
            ImGui.bulletText('Read the FAQ at ');
            ImGui.sameLineEx(0, 0);
            ImGui.textLinkOpenURL('https://www.dearimgui.com/faq/');
            ImGui.bulletText('Set \'io.ConfigFlags |= NavEnableKeyboard\' for keyboard controls.');
            ImGui.bulletText('Set \'io.ConfigFlags |= NavEnableGamepad\' for gamepad controls.');

            ImGui.separatorText('USER GUIDE:');
            ImGui.showUserGuide();
        }

        if (ImGui.collapsingHeader('Configuration')) {
            var io = ImGui.getIO();

            if (ImGui.treeNode('Configuration##2')) {
                ImGui.separatorText('General');
                ImGui.checkboxFlagsIntPtr('io.ConfigFlags: NavEnableKeyboard', io.configFlags, ImGuiConfigFlags.NavEnableKeyboard);
                ImGui.sameLine(); helpMarker('Enable keyboard controls.');
                ImGui.checkboxFlagsIntPtr('io.ConfigFlags: NavEnableGamepad', io.configFlags, ImGuiConfigFlags.NavEnableGamepad);
                ImGui.sameLine(); helpMarker('Enable gamepad controls. Require backend to set io.BackendFlags |= ImGuiBackendFlags_HasGamepad.\n\nRead instructions in imgui.cpp for details.');
                ImGui.checkboxFlagsIntPtr('io.ConfigFlags: NoMouse', io.configFlags, ImGuiConfigFlags.NoMouse);
                ImGui.sameLine(); helpMarker('Instruct dear imgui to disable mouse inputs and interactions.');

                // The "NoMouse" option can get us stuck with a disabled mouse! Provide a way out:
                if ((io.configFlags & ImGuiConfigFlags.NoMouse) != 0) {
                    if (ImGui.getTime() % 0.40 < 0.20) {
                        ImGui.sameLine();
                        ImGui.text('<<PRESS SPACE TO DISABLE>>');
                    }
                    if (ImGui.isKeyPressed(ImGuiKey.Space) || (io.configFlags & ImGuiConfigFlags.NoKeyboard) != 0)
                        io.configFlags = io.configFlags & ~ImGuiConfigFlags.NoMouse;
                }

                ImGui.checkboxFlagsIntPtr('io.ConfigFlags: NoMouseCursorChange', io.configFlags, ImGuiConfigFlags.NoMouseCursorChange);
                ImGui.sameLine(); helpMarker('Instruct backend to not alter mouse cursor shape and visibility.');
                ImGui.checkboxFlagsIntPtr('io.ConfigFlags: NoKeyboard', io.configFlags, ImGuiConfigFlags.NoKeyboard);
                ImGui.sameLine(); helpMarker('Instruct dear imgui to disable keyboard inputs and interactions.');

                ImGui.checkbox('io.ConfigInputTrickleEventQueue', io.configInputTrickleEventQueue);
                ImGui.sameLine(); helpMarker('Enable input queue trickling: some types of events submitted during the same frame (e.g. button down + up) will be spread over multiple frames, improving interactions with low framerates.');
                ImGui.checkbox('io.MouseDrawCursor', io.mouseDrawCursor);
                ImGui.sameLine(); helpMarker('Instruct Dear ImGui to render a mouse cursor itself.');

                ImGui.separatorText('Keyboard/Gamepad Navigation');
                ImGui.checkbox('io.ConfigNavSwapGamepadButtons', io.configNavSwapGamepadButtons);
                ImGui.checkbox('io.ConfigNavMoveSetMousePos', io.configNavMoveSetMousePos);
                ImGui.sameLine(); helpMarker('Directional/tabbing navigation teleports the mouse cursor.');
                ImGui.checkbox('io.ConfigNavCaptureKeyboard', io.configNavCaptureKeyboard);
                ImGui.checkbox('io.ConfigNavEscapeClearFocusItem', io.configNavEscapeClearFocusItem);
                ImGui.sameLine(); helpMarker('Pressing Escape clears focused item.');
                ImGui.checkbox('io.ConfigNavEscapeClearFocusWindow', io.configNavEscapeClearFocusWindow);
                ImGui.sameLine(); helpMarker('Pressing Escape clears focused window.');
                ImGui.checkbox('io.ConfigNavCursorVisibleAuto', io.configNavCursorVisibleAuto);
                ImGui.sameLine(); helpMarker('Using directional navigation key makes the cursor visible. Mouse click hides the cursor.');
                ImGui.checkbox('io.ConfigNavCursorVisibleAlways', io.configNavCursorVisibleAlways);
                ImGui.sameLine(); helpMarker('Navigation cursor is always visible.');

                ImGui.separatorText('Docking');
                ImGui.checkboxFlagsIntPtr('io.ConfigFlags: DockingEnable', io.configFlags, ImGuiConfigFlags.DockingEnable);
                ImGui.sameLine();
                if (io.configDockingWithShift)
                    helpMarker('Drag from window title bar or their tab to dock/undock. Hold SHIFT to enable docking.\n\nDrag from window menu button (upper-left button) to undock an entire node (all windows).');
                else
                    helpMarker('Drag from window title bar or their tab to dock/undock. Hold SHIFT to disable docking.\n\nDrag from window menu button (upper-left button) to undock an entire node (all windows).');
                if ((io.configFlags & ImGuiConfigFlags.DockingEnable) != 0) {
                    ImGui.indent();
                    ImGui.checkbox('io.ConfigDockingNoSplit', io.configDockingNoSplit);
                    ImGui.sameLine(); helpMarker('Simplified docking mode: disable window splitting.');
                    ImGui.checkbox('io.ConfigDockingNoDockingOver', io.configDockingNoDockingOver);
                    ImGui.sameLine(); helpMarker('Simplified docking mode: disable window merging into a same tab-bar.');
                    ImGui.checkbox('io.ConfigDockingWithShift', io.configDockingWithShift);
                    ImGui.sameLine(); helpMarker('Enable docking when holding Shift only.');
                    ImGui.checkbox('io.ConfigDockingAlwaysTabBar', io.configDockingAlwaysTabBar);
                    ImGui.sameLine(); helpMarker('Create a docking node and tab-bar on single floating windows.');
                    ImGui.checkbox('io.ConfigDockingTransparentPayload', io.configDockingTransparentPayload);
                    ImGui.sameLine(); helpMarker('Make window or viewport transparent when docking.');
                    ImGui.unindent();
                }

                ImGui.separatorText('Windows');
                ImGui.checkbox('io.ConfigWindowsResizeFromEdges', io.configWindowsResizeFromEdges);
                ImGui.sameLine(); helpMarker('Enable resizing of windows from their edges and from the lower-left corner.');
                ImGui.checkbox('io.ConfigWindowsMoveFromTitleBarOnly', io.configWindowsMoveFromTitleBarOnly);
                ImGui.checkbox('io.ConfigWindowsCopyContentsWithCtrlC', io.configWindowsCopyContentsWithCtrlC);
                ImGui.sameLine(); helpMarker('*EXPERIMENTAL* Ctrl+C copy the contents of focused window into the clipboard.');
                ImGui.checkbox('io.ConfigScrollbarScrollByPage', io.configScrollbarScrollByPage);
                ImGui.sameLine(); helpMarker('Enable scrolling page by page when clicking outside the scrollbar grab.');

                ImGui.separatorText('Widgets');
                ImGui.checkbox('io.ConfigInputTextCursorBlink', io.configInputTextCursorBlink);
                ImGui.sameLine(); helpMarker('Enable blinking cursor.');
                ImGui.checkbox('io.ConfigInputTextEnterKeepActive', io.configInputTextEnterKeepActive);
                ImGui.sameLine(); helpMarker('Pressing Enter will reactivate item and select all text (single-line only).');
                ImGui.checkbox('io.ConfigDragClickToInputText', io.configDragClickToInputText);
                ImGui.sameLine(); helpMarker('Enable turning DragXXX widgets into text input with a simple mouse click-release (without moving).');
                ImGui.checkbox('io.ConfigMacOSXBehaviors', io.configMacOSXBehaviors);
                ImGui.sameLine(); helpMarker('Swap Cmd<>Ctrl keys, enable various MacOS style behaviors.');
                ImGui.text('Also see Style->Rendering for rendering options.');

                ImGui.separatorText('Error Handling');
                ImGui.checkbox('io.ConfigErrorRecovery', io.configErrorRecovery);
                ImGui.sameLine(); helpMarker('Options to configure how we handle recoverable errors.');
                ImGui.checkbox('io.ConfigErrorRecoveryEnableAssert', io.configErrorRecoveryEnableAssert);
                ImGui.checkbox('io.ConfigErrorRecoveryEnableDebugLog', io.configErrorRecoveryEnableDebugLog);
                ImGui.checkbox('io.ConfigErrorRecoveryEnableTooltip', io.configErrorRecoveryEnableTooltip);
                if (!io.configErrorRecoveryEnableAssert && !io.configErrorRecoveryEnableDebugLog && !io.configErrorRecoveryEnableTooltip) {
                    io.configErrorRecoveryEnableAssert = true;
                    io.configErrorRecoveryEnableDebugLog = true;
                    io.configErrorRecoveryEnableTooltip = true;
                }

                ImGui.separatorText('Debug');
                ImGui.checkbox('io.ConfigDebugIsDebuggerPresent', io.configDebugIsDebuggerPresent);
                ImGui.sameLine(); helpMarker('Enable various tools calling IM_DEBUG_BREAK().\n\nRequires a debugger being attached.');
                ImGui.checkbox('io.ConfigDebugHighlightIdConflicts', io.configDebugHighlightIdConflicts);
                ImGui.sameLine(); helpMarker('Highlight and show an error message when multiple items have conflicting identifiers.');
                ImGui.beginDisabled();
                ImGui.checkbox('io.ConfigDebugBeginReturnValueOnce', io.configDebugBeginReturnValueOnce);
                ImGui.endDisabled();
                ImGui.sameLine(); helpMarker('First calls to Begin()/BeginChild() will return false.\n\nTHIS OPTION IS DISABLED because it needs to be set at application boot-time.');
                ImGui.checkbox('io.ConfigDebugBeginReturnValueLoop', io.configDebugBeginReturnValueLoop);
                ImGui.sameLine(); helpMarker('Some calls to Begin()/BeginChild() will return false.\n\nWindows should be flickering while running.');
                ImGui.checkbox('io.ConfigDebugIgnoreFocusLoss', io.configDebugIgnoreFocusLoss);
                ImGui.sameLine(); helpMarker('Option to deactivate io.AddFocusEvent(false) handling.');
                ImGui.checkbox('io.ConfigDebugIniSettings', io.configDebugIniSettings);
                ImGui.sameLine(); helpMarker('Option to save .ini data with extra comments.');

                ImGui.treePop();
                ImGui.spacing();
            }

            if (ImGui.treeNode('Backend Flags')) {
                helpMarker('Those flags are set by the backends to specify their capabilities.\nHere we expose them as read-only fields to avoid breaking interactions with your backend.');

                ImGui.beginDisabled();
                ImGui.checkboxFlagsIntPtr('io.BackendFlags: HasGamepad', io.backendFlags, ImGuiBackendFlags.HasGamepad);
                ImGui.checkboxFlagsIntPtr('io.BackendFlags: HasMouseCursors', io.backendFlags, ImGuiBackendFlags.HasMouseCursors);
                ImGui.checkboxFlagsIntPtr('io.BackendFlags: HasSetMousePos', io.backendFlags, ImGuiBackendFlags.HasSetMousePos);
                ImGui.checkboxFlagsIntPtr('io.BackendFlags: PlatformHasViewports', io.backendFlags, ImGuiBackendFlags.PlatformHasViewports);
                ImGui.checkboxFlagsIntPtr('io.BackendFlags: HasMouseHoveredViewport', io.backendFlags, ImGuiBackendFlags.HasMouseHoveredViewport);
                ImGui.checkboxFlagsIntPtr('io.BackendFlags: RendererHasVtxOffset', io.backendFlags, ImGuiBackendFlags.RendererHasVtxOffset);
                ImGui.checkboxFlagsIntPtr('io.BackendFlags: RendererHasTextures', io.backendFlags, ImGuiBackendFlags.RendererHasTextures);
                ImGui.checkboxFlagsIntPtr('io.BackendFlags: RendererHasViewports', io.backendFlags, ImGuiBackendFlags.RendererHasViewports);
                ImGui.endDisabled();

                ImGui.treePop();
                ImGui.spacing();
            }

            if (ImGui.treeNode('Style, Fonts')) {
                ImGui.checkbox('Style Editor', showStyleEditor);
                ImGui.sameLine();
                helpMarker('The same contents can be accessed in \'Tools->Style Editor\'.');
                ImGui.treePop();
                ImGui.spacing();
            }

            if (ImGui.treeNode('Capture/Logging')) {
                helpMarker('The logging API redirects all text output so you can easily capture the content of a window or a block. Tree nodes can be automatically expanded.\nTry opening any of the contents below in this window and then click one of the "Log To" button.');
                ImGui.logButtons();

                helpMarker('You can also call ImGui.logText() to output directly to the log without a visual output.');
                if (ImGui.button('Copy "Hello, world!" to clipboard')) {
                    ImGui.logToClipboard();
                    ImGui.logText('Hello, world!');
                    ImGui.logFinish();
                }
                ImGui.treePop();
            }
        }

        if (ImGui.collapsingHeader('Window options')) {
            if (ImGui.beginTable('split', 3)) {
                ImGui.tableNextColumn(); ImGui.checkbox('No titlebar', noTitlebar);
                ImGui.tableNextColumn(); ImGui.checkbox('No scrollbar', noScrollbar);
                ImGui.tableNextColumn(); ImGui.checkbox('No menu', noMenu);
                ImGui.tableNextColumn(); ImGui.checkbox('No move', noMove);
                ImGui.tableNextColumn(); ImGui.checkbox('No resize', noResize);
                ImGui.tableNextColumn(); ImGui.checkbox('No collapse', noCollapse);
                ImGui.tableNextColumn(); ImGui.checkbox('No close', noClose);
                ImGui.tableNextColumn(); ImGui.checkbox('No nav', noNav);
                ImGui.tableNextColumn(); ImGui.checkbox('No background', noBackground);
                ImGui.tableNextColumn(); ImGui.checkbox('No bring to front', noBringToFront);
                ImGui.tableNextColumn(); ImGui.checkbox('No docking', noDocking);
                ImGui.tableNextColumn(); ImGui.checkbox('Unsaved document', unsavedDocument);
                ImGui.endTable();
            }
        }

        // All demo contents
        DemoWindowWidgets.show();
        DemoWindowLayout.show();
        DemoWindowPopups.show();
        DemoWindowTables.show();
        DemoWindowColumns.show();
        DemoWindowInputs.show();

        ImGui.popItemWidth();
        ImGui.end();

    }

    // =========================================================================
    // Menu bar
    // =========================================================================

    static function menuBar():Void {

        if (ImGui.beginMenuBar()) {
            if (ImGui.beginMenu('Menu')) {
                showExampleMenuFile();
                ImGui.endMenu();
            }
            if (ImGui.beginMenu('Examples')) {
                ImGui.menuItemBoolPtr('Main menu bar', null, showMainMenuBar);

                ImGui.separatorText('Mini apps');
                ImGui.menuItemBoolPtr('Assets Browser', null, showAppAssetsBrowser);
                ImGui.menuItemBoolPtr('Console', null, showAppConsole);
                ImGui.menuItemBoolPtr('Custom rendering', null, showAppCustomRendering);
                ImGui.menuItemBoolPtr('Documents', null, showAppDocuments);
                ImGui.menuItemBoolPtr('Dockspace', null, showAppDockSpace);
                ImGui.menuItemBoolPtr('Image Viewer', null, showAppImageViewer);
                ImGui.menuItemBoolPtr('Log', null, showAppLog);
                ImGui.menuItemBoolPtr('Property editor', null, showAppPropertyEditor);
                ImGui.menuItemBoolPtr('Simple layout', null, showAppLayout);
                ImGui.menuItemBoolPtr('Simple overlay', null, showAppSimpleOverlay);

                ImGui.separatorText('Concepts');
                ImGui.menuItemBoolPtr('Auto-resizing window', null, showAppAutoResize);
                ImGui.menuItemBoolPtr('Constrained-resizing window', null, showAppConstrainedResize);
                ImGui.menuItemBoolPtr('Fullscreen window', null, showAppFullscreen);
                ImGui.menuItemBoolPtr('Long text display', null, showAppLongText);
                ImGui.menuItemBoolPtr('Manipulating window titles', null, showAppWindowTitles);

                ImGui.endMenu();
            }
            if (ImGui.beginMenu('Tools')) {
                var io = ImGui.getIO();
                var hasDebugTools = true;
                ImGui.menuItemBoolPtr('Metrics/Debugger', null, showMetrics, hasDebugTools);
                if (ImGui.beginMenu('Debug Options')) {
                    ImGui.beginDisabled(!hasDebugTools);
                    ImGui.checkbox('Highlight ID Conflicts', io.configDebugHighlightIdConflicts);
                    ImGui.endDisabled();
                    ImGui.checkbox('Assert on error recovery', io.configErrorRecoveryEnableAssert);
                    ImGui.textDisabled('(see Demo->Configuration for more)');
                    ImGui.endMenu();
                }
                ImGui.menuItemBoolPtr('Debug Log', null, showDebugLog, hasDebugTools);
                ImGui.menuItemBoolPtr('ID Stack Tool', null, showIDStackTool, hasDebugTools);
                var isDebuggerPresent = io.configDebugIsDebuggerPresent;
                if (ImGui.menuItemEx('Item Picker', null, false, hasDebugTools))
                    ImGui.debugStartItemPicker();
                if (!isDebuggerPresent)
                    ImGui.setItemTooltip('Requires io.ConfigDebugIsDebuggerPresent=true to be set.\n\nWe otherwise disable some extra features to avoid casual users crashing the application.');
                ImGui.menuItemBoolPtr('Style Editor', null, showStyleEditor);
                ImGui.menuItemBoolPtr('About Dear ImGui', null, showAbout);

                ImGui.endMenu();
            }
            ImGui.endMenuBar();
        }

    }

    // Menu/File contents (recursive)
    static var menuFileEnabled:Bool = true;
    static var menuFileF:Float = 0.5;
    static var menuFileN:Int = 0;
    static var menuFileB:Bool = true;

    public static function showExampleMenuFile():Void {

        ImGui.menuItemEx('(demo menu)', null, false, false);
        if (ImGui.menuItem('New')) {}
        if (ImGui.menuItemEx('Open', 'Ctrl+O')) {}
        if (ImGui.beginMenu('Open Recent')) {
            ImGui.menuItem('fish_hat.c');
            ImGui.menuItem('fish_hat.inl');
            ImGui.menuItem('fish_hat.h');
            if (ImGui.beginMenu('More..')) {
                ImGui.menuItem('Hello');
                ImGui.menuItem('Sailor');
                if (ImGui.beginMenu('Recurse..')) {
                    showExampleMenuFile();
                    ImGui.endMenu();
                }
                ImGui.endMenu();
            }
            ImGui.endMenu();
        }
        if (ImGui.menuItemEx('Save', 'Ctrl+S')) {}
        if (ImGui.menuItem('Save As..')) {}

        ImGui.separator();
        if (ImGui.beginMenu('Options')) {
            ImGui.menuItemBoolPtr('Enabled', '', menuFileEnabled);
            ImGui.beginChild('child', ImVec2.make(0, ImGui.getTextLineHeightWithSpacing() * 5.0), ImGuiChildFlags.Borders);
            for (i in 0...10)
                ImGui.text('Scrolling Text ' + i);
            ImGui.endChild();
            ImGui.sliderFloat('Value', menuFileF, 0.0, 1.0);
            ImGui.inputFloatEx('Input', menuFileF, 0.1);
            ImGui.combo('Combo', menuFileN, 'Yes\x00No\x00Maybe\x00\x00');
            ImGui.endMenu();
        }

        if (ImGui.beginMenu('Colors')) {
            var sz = ImGui.getTextLineHeight();
            var drawList = ImGui.getWindowDrawList();
            for (i in 0...(ImGuiCol.COUNT:Int)) {
                var name = ImGui.getStyleColorName(i);
                var p = ImGui.getCursorScreenPos();
                ImDrawList.addRectFilled(drawList, p, ImVec2.make(p.x + sz, p.y + sz), ImGui.getColorU32(i));
                ImGui.dummy(ImVec2.make(sz, sz));
                ImGui.sameLine();
                ImGui.menuItem(name);
            }
            ImGui.endMenu();
        }

        // Appending to the "Options" menu created above
        if (ImGui.beginMenu('Options')) {
            ImGui.checkbox('SomeOption', menuFileB);
            ImGui.endMenu();
        }

        if (ImGui.beginMenuEx('Disabled', false)) {
            // never reached
            ImGui.endMenu();
        }
        if (ImGui.menuItemEx('Checked', null, true)) {}
        ImGui.separator();
        if (ImGui.menuItemEx('Quit', 'Alt+F4')) {}

    }

    // =========================================================================
    // Shared helpers
    // =========================================================================

    /** "(?)" marker with a tooltip (HelpMarker in imgui_demo.cpp). */
    public static function helpMarker(desc:String):Void {

        ImGui.textDisabled('(?)');
        if (ImGui.beginItemTooltip()) {
            ImGui.pushTextWrapPos(ImGui.getFontSize() * 35.0);
            ImGui.text(desc);
            ImGui.popTextWrapPos();
            ImGui.endTooltip();
        }

    }

    public static function showDockingDisabledMessage():Void {

        var io = ImGui.getIO();
        ImGui.text('ERROR: Docking is not enabled! See Demo > Configuration.');
        ImGui.text('Set io.ConfigFlags |= ImGuiConfigFlags_DockingEnable in your code, or ');
        ImGui.sameLineEx(0.0, 0.0);
        if (ImGui.smallButton('click here'))
            io.configFlags = io.configFlags | ImGuiConfigFlags.DockingEnable;

    }

}
