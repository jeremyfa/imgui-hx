package imgui.demo;

import imgui.ImGui;
import imgui.ImGuiCallbacks;
import imgui.NativeStructs;
import imgui.demo.ImGuiDemo.helpMarker;

/** Standalone example windows (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoApps {

    // =========================================================================
    // Main menu bar
    // =========================================================================

    public static function showExampleAppMainMenuBar():Void {
        if (ImGui.beginMainMenuBar()) {
            if (ImGui.beginMenu('File')) {
                ImGuiDemo.showExampleMenuFile();
                ImGui.endMenu();
            }
            if (ImGui.beginMenu('Edit')) {
                if (ImGui.menuItemEx('Undo', 'Ctrl+Z')) {}
                if (ImGui.menuItemEx('Redo', 'Ctrl+Y', false, false)) {} // Disabled item
                ImGui.separator();
                if (ImGui.menuItemEx('Cut', 'Ctrl+X')) {}
                if (ImGui.menuItemEx('Copy', 'Ctrl+C')) {}
                if (ImGui.menuItemEx('Paste', 'Ctrl+V')) {}
                ImGui.endMenu();
            }
            ImGui.endMainMenuBar();
        }
    }

    // =========================================================================
    // Dock space / documents / assets browser / console / custom rendering
    // (delegated to their own classes)
    // =========================================================================

    public static function showExampleAppDockSpace():Void {
        DemoAppDockSpace.show();
    }

    public static function showExampleAppDocuments():Void {
        DemoAppDocuments.show();
    }

    public static function showExampleAppAssetsBrowser():Void {
        DemoAppAssetsBrowser.show();
    }

    public static function showExampleAppConsole():Void {
        DemoAppConsole.show();
    }

    public static function showExampleAppCustomRendering():Void {
        DemoAppCustomRendering.show();
    }

    public static function showExampleAppImageViewer():Void {
        DemoAppImageViewer.show();
    }

    public static function showExampleAppLog():Void {
        DemoAppLog.show();
    }

    public static function showExampleAppPropertyEditor():Void {
        DemoAppPropertyEditor.show();
    }

    // =========================================================================
    // Simple layout
    // =========================================================================

    static var layoutSelected:Int = 0;

    public static function showExampleAppLayout():Void {
        ImGui.setNextWindowSize(ImVec2.make(500, 440), ImGuiCond.FirstUseEver);
        if (ImGui.begin('Example: Simple layout', ImGuiDemo.showAppLayout, ImGuiWindowFlags.MenuBar)) {
            if (ImGui.beginMenuBar()) {
                if (ImGui.beginMenu('File')) {
                    if (ImGui.menuItemEx('Close', 'Ctrl+W')) ImGuiDemo.showAppLayout = false;
                    ImGui.endMenu();
                }
                ImGui.endMenuBar();
            }

            {
                ImGui.beginChild('left pane', ImVec2.make(150, 0), ImGuiChildFlags.Borders | ImGuiChildFlags.ResizeX, 0);
                for (i in 0...100) {
                    var label = 'MyObject ' + i;
                    if (ImGui.selectableEx(label, layoutSelected == i, ImGuiSelectableFlags.SelectOnNav, ImVec2.make(0, 0)))
                        layoutSelected = i;
                }
                ImGui.endChild();
            }
            ImGui.sameLine();

            {
                ImGui.beginGroup();
                ImGui.beginChild('item view', ImVec2.make(0, -ImGui.getFrameHeightWithSpacing()), 0, 0); // Leave room for 1 line below us
                ImGui.text('MyObject: ' + layoutSelected);
                ImGui.separator();
                if (ImGui.beginTabBar('##Tabs', ImGuiTabBarFlags.None)) {
                    if (ImGui.beginTabItem('Description')) {
                        ImGui.textWrapped('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ');
                        ImGui.endTabItem();
                    }
                    if (ImGui.beginTabItem('Details')) {
                        ImGui.text('ID: 0123456789');
                        ImGui.endTabItem();
                    }
                    ImGui.endTabBar();
                }
                ImGui.endChild();
                if (ImGui.button('Revert')) {}
                ImGui.sameLine();
                if (ImGui.button('Save')) {}
                ImGui.endGroup();
            }
        }
        ImGui.end();
    }

    // =========================================================================
    // Simple overlay
    // =========================================================================

    static var overlayLocation:Int = 0;

    public static function showExampleAppSimpleOverlay():Void {
        var io = ImGui.getIO();
        var windowFlags = ImGuiWindowFlags.NoDecoration | ImGuiWindowFlags.NoDocking | ImGuiWindowFlags.AlwaysAutoResize | ImGuiWindowFlags.NoSavedSettings | ImGuiWindowFlags.NoFocusOnAppearing | ImGuiWindowFlags.NoNav;
        if (overlayLocation >= 0) {
            var pad = 10.0;
            var viewport = ImGui.getMainViewport();
            var workPos = viewport.workPos; // Use work area to avoid menu-bar/task-bar, if any!
            var workSize = viewport.workSize;
            var windowPos = ImVec2.make(
                (overlayLocation & 1) != 0 ? (workPos.x + workSize.x - pad) : (workPos.x + pad),
                (overlayLocation & 2) != 0 ? (workPos.y + workSize.y - pad) : (workPos.y + pad));
            var windowPosPivot = ImVec2.make(
                (overlayLocation & 1) != 0 ? 1.0 : 0.0,
                (overlayLocation & 2) != 0 ? 1.0 : 0.0);
            ImGui.setNextWindowPosEx(windowPos, ImGuiCond.Always, windowPosPivot);
            ImGui.setNextWindowViewport(viewport.id);
            windowFlags |= ImGuiWindowFlags.NoMove;
        }
        else if (overlayLocation == -2) {
            var viewport = ImGui.getMainViewport();
            var vpPos = viewport.pos;
            var vpSize = viewport.size;
            ImGui.setNextWindowPosEx(ImVec2.make(vpPos.x + vpSize.x * 0.5, vpPos.y + vpSize.y * 0.5), ImGuiCond.Always, ImVec2.make(0.5, 0.5));
            windowFlags |= ImGuiWindowFlags.NoMove;
        }
        ImGui.setNextWindowBgAlpha(0.35); // Transparent background
        if (ImGui.begin('Example: Simple overlay', ImGuiDemo.showAppSimpleOverlay, windowFlags)) {
            ImGui.text('Simple overlay\n(right-click to change position)');
            ImGui.separator();
            if (ImGui.isMousePosValid()) {
                var mousePos = io.mousePos;
                ImGui.text('Mouse Position: (' + fmt1(mousePos.x) + ',' + fmt1(mousePos.y) + ')');
            }
            else {
                ImGui.text('Mouse Position: <invalid>');
            }
            if (ImGui.beginPopupContextWindow()) {
                if (ImGui.menuItemEx('Custom', null, overlayLocation == -1)) overlayLocation = -1;
                if (ImGui.menuItemEx('Center', null, overlayLocation == -2)) overlayLocation = -2;
                if (ImGui.menuItemEx('Top-left', null, overlayLocation == 0)) overlayLocation = 0;
                if (ImGui.menuItemEx('Top-right', null, overlayLocation == 1)) overlayLocation = 1;
                if (ImGui.menuItemEx('Bottom-left', null, overlayLocation == 2)) overlayLocation = 2;
                if (ImGui.menuItemEx('Bottom-right', null, overlayLocation == 3)) overlayLocation = 3;
                if (ImGui.menuItem('Close')) ImGuiDemo.showAppSimpleOverlay = false;
                ImGui.endPopup();
            }
        }
        ImGui.end();
    }

    // =========================================================================
    // Auto-resizing window
    // =========================================================================

    static var autoResizeLines:Int = 10;

    public static function showExampleAppAutoResize():Void {
        if (!ImGui.begin('Example: Auto-resizing window', ImGuiDemo.showAppAutoResize, ImGuiWindowFlags.AlwaysAutoResize)) {
            ImGui.end();
            return;
        }

        ImGui.textUnformatted(
            'Window will resize every-frame to the size of its content.\n'
            + 'Note that you probably don\'t want to query the window size to\n'
            + 'output your content because that would create a feedback loop.');
        ImGui.sliderInt('Number of lines', autoResizeLines, 1, 20);
        for (i in 0...autoResizeLines)
            ImGui.text(StringTools.rpad('', ' ', i * 4) + 'This is line ' + i); // Pad with space to extend size horizontally
        ImGui.end();
    }

    // =========================================================================
    // Constrained-resizing window
    // =========================================================================

    static var constrainedTestDesc:Array<String> = [
        'Between 100x100 and 500x500',
        'At least 100x100',
        'Resize vertical + lock current width',
        'Resize horizontal + lock current height',
        'Width Between 400 and 500',
        'Height at least 400',
        'Custom: Aspect Ratio 16:9',
        'Custom: Always Square',
        'Custom: Fixed Steps (100)'
    ];
    static var constrainedAutoResize:Bool = false;
    static var constrainedWindowPadding:Bool = true;
    static var constrainedType:Int = 6; // Aspect Ratio
    static var constrainedDisplayLines:Int = 10;

    // CustomConstraints::AspectRatio port (through ImGuiCallbacks.sizeConstraints)
    static function constraintAspectRatio(data:ImGuiSizeCallbackDataPtr):Void {
        var aspectRatio = 16.0 / 9.0;
        var desired = data.desiredSize;
        data.desiredSize = ImVec2.make(desired.x, Std.int(desired.x / aspectRatio));
    }

    // CustomConstraints::Square port
    static function constraintSquare(data:ImGuiSizeCallbackDataPtr):Void {
        var desired = data.desiredSize;
        var m = desired.x > desired.y ? desired.x : desired.y;
        data.desiredSize = ImVec2.make(m, m);
    }

    // CustomConstraints::Step port
    static function constraintStep(data:ImGuiSizeCallbackDataPtr):Void {
        var step = 100.0;
        var desired = data.desiredSize;
        data.desiredSize = ImVec2.make(
            Std.int(desired.x / step + 0.5) * step,
            Std.int(desired.y / step + 0.5) * step);
    }

    public static function showExampleAppConstrainedResize():Void {

        var fltMax = 3.402823466e38;
        if (constrainedType == 0) ImGui.setNextWindowSizeConstraints(ImVec2.make(100, 100), ImVec2.make(500, 500));       // Between 100x100 and 500x500
        if (constrainedType == 1) ImGui.setNextWindowSizeConstraints(ImVec2.make(100, 100), ImVec2.make(fltMax, fltMax)); // Width > 100, Height > 100
        if (constrainedType == 2) ImGui.setNextWindowSizeConstraints(ImVec2.make(-1, 0), ImVec2.make(-1, fltMax));        // Resize vertical + lock current width
        if (constrainedType == 3) ImGui.setNextWindowSizeConstraints(ImVec2.make(0, -1), ImVec2.make(fltMax, -1));        // Resize horizontal + lock current height
        if (constrainedType == 4) ImGui.setNextWindowSizeConstraints(ImVec2.make(400, -1), ImVec2.make(500, -1));         // Width Between and 400 and 500
        if (constrainedType == 5) ImGui.setNextWindowSizeConstraints(ImVec2.make(-1, 400), ImVec2.make(-1, fltMax));      // Height at least 400
        if (constrainedType == 6) ImGui.setNextWindowSizeConstraints(ImVec2.make(0, 0), ImVec2.make(fltMax, fltMax), ImGuiCallbacks.sizeConstraints(constraintAspectRatio)); // Aspect ratio
        if (constrainedType == 7) ImGui.setNextWindowSizeConstraints(ImVec2.make(0, 0), ImVec2.make(fltMax, fltMax), ImGuiCallbacks.sizeConstraints(constraintSquare));      // Always Square
        if (constrainedType == 8) ImGui.setNextWindowSizeConstraints(ImVec2.make(0, 0), ImVec2.make(fltMax, fltMax), ImGuiCallbacks.sizeConstraints(constraintStep));        // Fixed Step

        if (!constrainedWindowPadding)
            ImGui.pushStyleVarImVec2(ImGuiStyleVar.WindowPadding, ImVec2.make(0.0, 0.0));
        var windowFlags = constrainedAutoResize ? ImGuiWindowFlags.AlwaysAutoResize : 0;
        var windowOpen = ImGui.begin('Example: Constrained Resize', ImGuiDemo.showAppConstrainedResize, windowFlags);
        if (!constrainedWindowPadding)
            ImGui.popStyleVar();
        if (windowOpen) {
            var io = ImGui.getIO();
            if (io.keyShift) {
                var availSize = ImGui.getContentRegionAvail();
                var pos = ImGui.getCursorScreenPos();
                ImGui.colorButtonEx('viewport', ImVec4.make(0.5, 0.2, 0.5, 1.0), ImGuiColorEditFlags.NoTooltip | ImGuiColorEditFlags.NoDragDrop, availSize);
                ImGui.setCursorScreenPos(ImVec2.make(pos.x + 10, pos.y + 10));
                ImGui.text(fmt2(availSize.x) + ' x ' + fmt2(availSize.y));
            }
            else {
                ImGui.text('(Hold Shift to display a dummy viewport)');
                if (ImGui.isWindowDocked())
                    ImGui.text('Warning: Sizing Constraints won\'t work if the window is docked!');
                if (ImGui.button('Set 200x200')) { ImGui.setWindowSize(ImVec2.make(200, 200)); } ImGui.sameLine();
                if (ImGui.button('Set 500x500')) { ImGui.setWindowSize(ImVec2.make(500, 500)); } ImGui.sameLine();
                if (ImGui.button('Set 800x200')) { ImGui.setWindowSize(ImVec2.make(800, 200)); }
                ImGui.setNextItemWidth(ImGui.getFontSize() * 20);
                ImGui.combo('Constraint', constrainedType, constrainedTestDesc.join('\x00') + '\x00');
                ImGui.setNextItemWidth(ImGui.getFontSize() * 20);
                ImGui.dragIntEx('Lines', constrainedDisplayLines, 0.2, 1, 100);
                ImGui.checkbox('Auto-resize', constrainedAutoResize);
                ImGui.checkbox('Window padding', constrainedWindowPadding);
                for (i in 0...constrainedDisplayLines)
                    ImGui.text(StringTools.rpad('', ' ', i * 4) + 'Hello, sailor! Making this line long enough for the example.');
            }
        }
        ImGui.end();
    }

    // =========================================================================
    // Fullscreen window
    // =========================================================================

    static var fullscreenUseWorkArea:Bool = true;
    static var fullscreenFlags:Int = ImGuiWindowFlags.NoDecoration | ImGuiWindowFlags.NoMove | ImGuiWindowFlags.NoSavedSettings;

    public static function showExampleAppFullscreen():Void {
        var viewport = ImGui.getMainViewport();
        ImGui.setNextWindowPos(fullscreenUseWorkArea ? viewport.workPos : viewport.pos);
        ImGui.setNextWindowSize(fullscreenUseWorkArea ? viewport.workSize : viewport.size);

        if (ImGui.begin('Example: Fullscreen window', ImGuiDemo.showAppFullscreen, fullscreenFlags)) {
            ImGui.checkbox('Use work area instead of main area', fullscreenUseWorkArea);
            ImGui.sameLine();
            helpMarker('Main Area = entire viewport,\nWork Area = entire viewport minus sections used by the main menu bars, task bars etc.\n\nEnable the main-menu bar in Examples menu to see the difference.');

            ImGui.checkboxFlagsIntPtr('ImGuiWindowFlags_NoBackground', fullscreenFlags, ImGuiWindowFlags.NoBackground);
            ImGui.checkboxFlagsIntPtr('ImGuiWindowFlags_NoDecoration', fullscreenFlags, ImGuiWindowFlags.NoDecoration);
            ImGui.indent();
            ImGui.checkboxFlagsIntPtr('ImGuiWindowFlags_NoTitleBar', fullscreenFlags, ImGuiWindowFlags.NoTitleBar);
            ImGui.checkboxFlagsIntPtr('ImGuiWindowFlags_NoCollapse', fullscreenFlags, ImGuiWindowFlags.NoCollapse);
            ImGui.checkboxFlagsIntPtr('ImGuiWindowFlags_NoScrollbar', fullscreenFlags, ImGuiWindowFlags.NoScrollbar);
            ImGui.unindent();

            if (ImGui.button('Close this window'))
                ImGuiDemo.showAppFullscreen = false;
        }
        ImGui.end();
    }

    // =========================================================================
    // Manipulating window titles
    // =========================================================================

    public static function showExampleAppWindowTitles():Void {
        var viewport = ImGui.getMainViewport();
        var basePos = viewport.pos;

        ImGui.setNextWindowPos(ImVec2.make(basePos.x + 100, basePos.y + 100), ImGuiCond.FirstUseEver);
        ImGui.begin('Same title as another window##1');
        ImGui.text('This is window 1.\nMy title is the same as window 2, but my identifier is unique.');
        ImGui.end();

        ImGui.setNextWindowPos(ImVec2.make(basePos.x + 100, basePos.y + 200), ImGuiCond.FirstUseEver);
        ImGui.begin('Same title as another window##2');
        ImGui.text('This is window 2.\nMy title is the same as window 1, but my identifier is unique.');
        ImGui.end();

        var spinner = '|/-\\'.charAt(Std.int(ImGui.getTime() / 0.25) & 3);
        var buf = 'Animated title ' + spinner + ' ' + ImGui.getFrameCount() + '###AnimatedTitle';
        ImGui.setNextWindowPos(ImVec2.make(basePos.x + 100, basePos.y + 300), ImGuiCond.FirstUseEver);
        ImGui.begin(buf);
        ImGui.text('This window has a changing title.');
        ImGui.end();
    }

    // =========================================================================
    // Long text display
    // =========================================================================

    static var longTextTestType:Int = 0;
    static var longTextLines:Int = 0;
    static var longTextBuf:StringBuf = new StringBuf();
    static var longTextCache:String = '';
    static var longTextCacheDirty:Bool = false;
    static var longTextClipper:#if cpp cpp.Star<ImGuiListClipper> #else ImGuiListClipper #end;
    static var longTextClipperInited:Bool = false;

    public static function showExampleAppLongText():Void {
        ImGui.setNextWindowSize(ImVec2.make(520, 600), ImGuiCond.FirstUseEver);
        if (!ImGui.begin('Example: Long text display', ImGuiDemo.showAppLongText)) {
            ImGui.end();
            return;
        }

        ImGui.text('Printing unusually long amount of text.');
        ImGui.combo('Test type', longTextTestType,
            'Single call to TextUnformatted()\x00'
            + 'Multiple calls to Text(), clipped\x00'
            + 'Multiple calls to Text(), not clipped (slow)\x00');
        ImGui.text('Buffer contents: ' + longTextLines + ' lines, ' + longTextCacheLength() + ' bytes');
        if (ImGui.button('Clear')) { longTextBuf = new StringBuf(); longTextCache = ''; longTextCacheDirty = false; longTextLines = 0; }
        ImGui.sameLine();
        if (ImGui.button('Add 1000 lines')) {
            for (i in 0...1000)
                longTextBuf.add((longTextLines + i) + ' The quick brown fox jumps over the lazy dog\n');
            longTextLines += 1000;
            longTextCacheDirty = true;
        }
        ImGui.beginChild('Log', ImVec2.make(0, 0), 0, 0);
        switch (longTextTestType) {
            case 0:
                if (longTextCacheDirty) {
                    longTextCacheDirty = false;
                    longTextCache = longTextBuf.toString();
                }
                ImGui.textUnformatted(longTextCache);
            case 1:
                ImGui.pushStyleVarImVec2(ImGuiStyleVar.ItemSpacing, ImVec2.make(0, 0));
                if (!longTextClipperInited) {
                    longTextClipperInited = true;
                    longTextClipper = NativeStructs.createListClipper();
                }
                ImGuiListClipper.begin(longTextClipper, longTextLines);
                while (ImGuiListClipper.step(longTextClipper))
                    for (i in longTextClipper.displayStart...longTextClipper.displayEnd)
                        ImGui.text(i + ' The quick brown fox jumps over the lazy dog');
                ImGui.popStyleVar();
            case 2:
                ImGui.pushStyleVarImVec2(ImGuiStyleVar.ItemSpacing, ImVec2.make(0, 0));
                for (i in 0...longTextLines)
                    ImGui.text(i + ' The quick brown fox jumps over the lazy dog');
                ImGui.popStyleVar();
            case _:
        }
        ImGui.endChild();
        ImGui.end();
    }

    static inline function longTextCacheLength():Int {
        return longTextLines * 46; // Approximate bytes (avoid flushing the StringBuf every frame)
    }

    /** Format a float with 1 decimal (printf %.1f equivalent). */
    static function fmt1(v:Float):String {
        return '' + (Math.round(v * 10) / 10);
    }

    /** Format a float with 2 decimals (printf %.2f equivalent). */
    static function fmt2(v:Float):String {
        return '' + (Math.round(v * 100) / 100);
    }

}
