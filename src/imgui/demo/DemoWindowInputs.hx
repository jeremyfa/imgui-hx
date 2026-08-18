package imgui.demo;

import imgui.ImGui;
import imgui.demo.DemoWidgetsText.imCol32;
import imgui.demo.ImGuiDemo.helpMarker;

/** Inputs & Focus section (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWindowInputs {

    // WantCapture override
    static var captureOverrideMouse:Int = -1;
    static var captureOverrideKeyboard:Int = -1;
    static var captureOverrideDesc:Array<String> = ['None', 'Set to false', 'Set to true'];

    // Shortcuts
    static var routeOptions:Int = ImGuiInputFlags.Repeat;
    static var routeType:Int = ImGuiInputFlags.RouteFocused;
    static var shortcutF:Float = 0.5;

    // Mouse Cursors
    static var mouseCursorsNames:Array<String> = ['Arrow', 'TextInput', 'ResizeAll', 'ResizeNS', 'ResizeEW', 'ResizeNESW', 'ResizeNWSE', 'Hand', 'Wait', 'Progress', 'NotAllowed'];

    // Tabbing
    static var tabbingBuf:String = 'hello';

    // Focus from code
    static var focusBuf:String = 'click on a button to set focus';
    static var focusF3:Array<Float> = [0.0, 0.0, 0.0];

    public static function show():Void {

        if (!ImGui.collapsingHeader('Inputs & Focus'))
            return;

        var io = ImGui.getIO();

        ImGui.setNextItemOpen(true, ImGuiCond.Once);
        var inputsOpened = ImGui.treeNode('Inputs');
        ImGui.sameLine();
        helpMarker(
            'This is a simplified view. See more detailed input state:\n'
            + '- in \'Tools->Metrics/Debugger->Inputs\'.\n'
            + '- in \'Tools->Debug Log->IO\'.');
        if (inputsOpened) {
            if (ImGui.isMousePosValid()) {
                var mousePos = io.mousePos;
                ImGui.text('Mouse pos: (' + mousePos.x + ', ' + mousePos.y + ')');
            }
            else {
                ImGui.text('Mouse pos: <INVALID>');
            }
            var mouseDelta = io.mouseDelta;
            ImGui.text('Mouse delta: (' + mouseDelta.x + ', ' + mouseDelta.y + ')');
            ImGui.text('Mouse down:');
            // (adapted: io.MouseDownDuration[] array is not exposed by the bindings, buttons are listed without duration)
            for (i in 0...5) if (ImGui.isMouseDown(i)) { ImGui.sameLine(); ImGui.text('b' + i); }
            ImGui.text('Mouse wheel: ' + fmt1(io.mouseWheel));
            ImGui.text('Mouse clicked count:');
            for (i in 0...5) {
                var clickedCount = ImGui.getMouseClickedCount(i);
                if (clickedCount > 0) { ImGui.sameLine(); ImGui.text('b' + i + ': ' + clickedCount); }
            }

            ImGui.text('Keys down:');
            var key:Int = ImGuiKey.NamedKey_BEGIN;
            while (key < (ImGuiKey.COUNT:Int)) {
                if (ImGui.isKeyDown(key)) {
                    ImGui.sameLine();
                    ImGui.text('"' + ImGui.getKeyName(key) + '" ' + key);
                }
                key++;
            }
            ImGui.text('Keys mods: '
                + (io.keyCtrl ? 'CTRL ' : '')
                + (io.keyShift ? 'SHIFT ' : '')
                + (io.keyAlt ? 'ALT ' : '')
                + (io.keySuper ? 'SUPER ' : ''));
            ImGui.text('Chars queue:');
            var queue = io.inputQueueCharacters;
            for (i in 0...queue.size) {
                var c = inputQueueCharAt(io, i);
                ImGui.sameLine();
                ImGui.text('\'' + ((c > 32 && c <= 255) ? std.String.fromCharCode(c) : '?') + '\' (0x' + StringTools.hex(c, 4) + ')');
            }

            ImGui.treePop();
        }

        ImGui.setNextItemOpen(true, ImGuiCond.Once);
        var outputsOpened = ImGui.treeNode('Outputs');
        ImGui.sameLine();
        helpMarker(
            'The value of io.WantCaptureMouse and io.WantCaptureKeyboard are normally set by Dear ImGui '
            + 'to instruct your application of how to route inputs. Typically, when a value is true, it means '
            + 'Dear ImGui wants the corresponding inputs and we expect the underlying application to ignore them.\n\n'
            + 'The most typical case is: when hovering a window, Dear ImGui set io.WantCaptureMouse to true, '
            + 'and underlying application should ignore mouse inputs (in practice there are many and more subtle '
            + 'rules leading to how those flags are set).');
        if (outputsOpened) {
            ImGui.text('io.WantCaptureMouse: ' + (io.wantCaptureMouse ? 1 : 0));
            ImGui.text('io.WantCaptureMouseUnlessPopupClose: ' + (io.wantCaptureMouseUnlessPopupClose ? 1 : 0));
            ImGui.text('io.WantCaptureKeyboard: ' + (io.wantCaptureKeyboard ? 1 : 0));
            ImGui.text('io.WantTextInput: ' + (io.wantTextInput ? 1 : 0));
            ImGui.text('io.WantSetMousePos: ' + (io.wantSetMousePos ? 1 : 0));
            ImGui.text('io.NavActive: ' + (io.navActive ? 1 : 0) + ', io.NavVisible: ' + (io.navVisible ? 1 : 0));

            if (ImGui.treeNode('WantCapture override')) {
                helpMarker(
                    'Hovering the colored canvas will override io.WantCaptureXXX fields.\n'
                    + 'Notice how normally (when set to none), the value of io.WantCaptureKeyboard would be false when hovering '
                    + 'and true when clicking.');
                ImGui.setNextItemWidth(ImGui.getFontSize() * 15);
                ImGui.sliderIntEx('SetNextFrameWantCaptureMouse() on hover', captureOverrideMouse, -1, 1, captureOverrideDesc[captureOverrideMouse + 1], ImGuiSliderFlags.AlwaysClamp);
                ImGui.setNextItemWidth(ImGui.getFontSize() * 15);
                ImGui.sliderIntEx('SetNextFrameWantCaptureKeyboard() on hover', captureOverrideKeyboard, -1, 1, captureOverrideDesc[captureOverrideKeyboard + 1], ImGuiSliderFlags.AlwaysClamp);

                ImGui.colorButtonEx('##panel', ImVec4.make(0.7, 0.1, 0.7, 1.0), ImGuiColorEditFlags.NoTooltip | ImGuiColorEditFlags.NoDragDrop, ImVec2.make(128.0, 96.0)); // Dummy item
                if (ImGui.isItemHovered() && captureOverrideMouse != -1)
                    ImGui.setNextFrameWantCaptureMouse(captureOverrideMouse == 1);
                if (ImGui.isItemHovered() && captureOverrideKeyboard != -1)
                    ImGui.setNextFrameWantCaptureKeyboard(captureOverrideKeyboard == 1);

                ImGui.treePop();
            }
            ImGui.treePop();
        }

        if (ImGui.treeNode('Shortcuts')) {
            ImGui.checkboxFlagsIntPtr('ImGuiInputFlags_Repeat', routeOptions, ImGuiInputFlags.Repeat);
            ImGui.radioButtonIntPtr('ImGuiInputFlags_RouteActive', routeType, ImGuiInputFlags.RouteActive);
            ImGui.radioButtonIntPtr('ImGuiInputFlags_RouteFocused (default)', routeType, ImGuiInputFlags.RouteFocused);
            ImGui.indent();
            ImGui.beginDisabled(routeType != ImGuiInputFlags.RouteFocused);
            ImGui.checkboxFlagsIntPtr('ImGuiInputFlags_RouteOverActive##0', routeOptions, ImGuiInputFlags.RouteOverActive);
            ImGui.endDisabled();
            ImGui.unindent();
            ImGui.radioButtonIntPtr('ImGuiInputFlags_RouteGlobal', routeType, ImGuiInputFlags.RouteGlobal);
            ImGui.indent();
            ImGui.beginDisabled(routeType != ImGuiInputFlags.RouteGlobal);
            ImGui.checkboxFlagsIntPtr('ImGuiInputFlags_RouteOverFocused', routeOptions, ImGuiInputFlags.RouteOverFocused);
            ImGui.checkboxFlagsIntPtr('ImGuiInputFlags_RouteOverActive', routeOptions, ImGuiInputFlags.RouteOverActive);
            ImGui.checkboxFlagsIntPtr('ImGuiInputFlags_RouteUnlessBgFocused', routeOptions, ImGuiInputFlags.RouteUnlessBgFocused);
            ImGui.endDisabled();
            ImGui.unindent();
            ImGui.radioButtonIntPtr('ImGuiInputFlags_RouteAlways', routeType, ImGuiInputFlags.RouteAlways);
            var flags = routeType | routeOptions; // Merged flags
            if (routeType != ImGuiInputFlags.RouteGlobal)
                flags &= ~(ImGuiInputFlags.RouteOverFocused | ImGuiInputFlags.RouteOverActive | ImGuiInputFlags.RouteUnlessBgFocused);

            ImGui.separatorText('Using SetNextItemShortcut()');
            ImGui.text('Ctrl+S');
            ImGui.setNextItemShortcut(ImGuiKey.ImGuiMod_Ctrl | ImGuiKey.S, flags | ImGuiInputFlags.Tooltip);
            ImGui.button('Save');
            ImGui.text('Alt+F');
            ImGui.setNextItemShortcut(ImGuiKey.ImGuiMod_Alt | ImGuiKey.F, flags | ImGuiInputFlags.Tooltip);
            ImGui.sliderFloat('Factor', shortcutF, 0.0, 1.0);

            ImGui.separatorText('Using Shortcut()');
            var lineHeight = ImGui.getTextLineHeightWithSpacing();
            var keyChord = ImGuiKey.ImGuiMod_Ctrl | ImGuiKey.A;

            ImGui.text('Ctrl+A');
            ImGui.text('IsWindowFocused: ' + (ImGui.isWindowFocused() ? 1 : 0) + ', Shortcut: ' + (ImGui.shortcut(keyChord, flags) ? 'PRESSED' : '...'));

            ImGui.pushStyleColorImVec4(ImGuiCol.ChildBg, ImVec4.make(1.0, 0.0, 1.0, 0.1));

            ImGui.beginChild('WindowA', ImVec2.make(-1.175494351e-38, lineHeight * 14), ImGuiChildFlags.Borders, 0);
            ImGui.text('Press Ctrl+A and see who receives it!');
            ImGui.separator();

            ImGui.text('(in WindowA)');
            ImGui.text('IsWindowFocused: ' + (ImGui.isWindowFocused() ? 1 : 0) + ', Shortcut: ' + (ImGui.shortcut(keyChord, flags) ? 'PRESSED' : '...'));

            ImGui.beginChild('ChildD', ImVec2.make(-1.175494351e-38, lineHeight * 4), ImGuiChildFlags.Borders, 0);
            ImGui.text('(in ChildD: not using same Shortcut)');
            ImGui.text('IsWindowFocused: ' + (ImGui.isWindowFocused() ? 1 : 0));
            ImGui.endChild();

            ImGui.beginChild('ChildE', ImVec2.make(-1.175494351e-38, lineHeight * 4), ImGuiChildFlags.Borders, 0);
            ImGui.text('(in ChildE: using same Shortcut)');
            ImGui.text('IsWindowFocused: ' + (ImGui.isWindowFocused() ? 1 : 0) + ', Shortcut: ' + (ImGui.shortcut(keyChord, flags) ? 'PRESSED' : '...'));
            ImGui.endChild();

            if (ImGui.button('Open Popup'))
                ImGui.openPopup('PopupF');
            if (ImGui.beginPopup('PopupF')) {
                ImGui.text('(in PopupF)');
                ImGui.text('IsWindowFocused: ' + (ImGui.isWindowFocused() ? 1 : 0) + ', Shortcut: ' + (ImGui.shortcut(keyChord, flags) ? 'PRESSED' : '...'));
                ImGui.endPopup();
            }
            ImGui.endChild();
            ImGui.popStyleColor();

            ImGui.treePop();
        }

        if (ImGui.treeNode('Mouse Cursors')) {
            var current = ImGui.getMouseCursor();
            var cursorName = (current >= (ImGuiMouseCursor.Arrow:Int) && current < (ImGuiMouseCursor.COUNT:Int)) ? mouseCursorsNames[current] : 'N/A';
            ImGui.text('Current mouse cursor = ' + current + ': ' + cursorName);
            ImGui.beginDisabled(true);
            var backendFlags:Int = io.backendFlags;
            ImGui.checkboxFlagsIntPtr('io.BackendFlags: HasMouseCursors', backendFlags, ImGuiBackendFlags.HasMouseCursors);
            ImGui.endDisabled();

            ImGui.text('Hover to see mouse cursors:');
            ImGui.sameLine(); helpMarker(
                'Your application can render a different mouse cursor based on what ImGui::GetMouseCursor() returns. '
                + 'If software cursor rendering (io.MouseDrawCursor) is set ImGui will draw the right cursor for you, '
                + 'otherwise your backend needs to handle it.');
            for (i in 0...(ImGuiMouseCursor.COUNT:Int)) {
                var label = 'Mouse cursor ' + i + ': ' + mouseCursorsNames[i];
                ImGui.bullet(); ImGui.selectableEx(label, false, 0, ImVec2.make(0, 0));
                if (ImGui.isItemHovered())
                    ImGui.setMouseCursor(i);
            }
            ImGui.treePop();
        }

        if (ImGui.treeNode('Tabbing')) {
            ImGui.text('Use Tab/Shift+Tab to cycle through keyboard editable fields.');
            ImGui.inputText('1', tabbingBuf, 32);
            ImGui.inputText('2', tabbingBuf, 32);
            ImGui.inputText('3', tabbingBuf, 32);
            ImGui.pushItemFlag(ImGuiItemFlags.NoTabStop, true);
            ImGui.inputText('4 (tab skip)', tabbingBuf, 32);
            ImGui.sameLine(); helpMarker('Item won\'t be cycled through when using TAB or Shift+Tab.');
            ImGui.popItemFlag();
            ImGui.inputText('5', tabbingBuf, 32);
            ImGui.treePop();
        }

        if (ImGui.treeNode('Focus from code')) {
            var focus1 = ImGui.button('Focus on 1'); ImGui.sameLine();
            var focus2 = ImGui.button('Focus on 2'); ImGui.sameLine();
            var focus3 = ImGui.button('Focus on 3');
            var hasFocus = 0;

            if (focus1) ImGui.setKeyboardFocusHere();
            ImGui.inputText('1', focusBuf, 128);
            if (ImGui.isItemActive()) hasFocus = 1;

            if (focus2) ImGui.setKeyboardFocusHere();
            ImGui.inputText('2', focusBuf, 128);
            if (ImGui.isItemActive()) hasFocus = 2;

            ImGui.pushItemFlag(ImGuiItemFlags.NoTabStop, true);
            if (focus3) ImGui.setKeyboardFocusHere();
            ImGui.inputText('3 (tab skip)', focusBuf, 128);
            if (ImGui.isItemActive()) hasFocus = 3;
            ImGui.sameLine(); helpMarker('Item won\'t be cycled through when using TAB or Shift+Tab.');
            ImGui.popItemFlag();

            if (hasFocus != 0)
                ImGui.text('Item with focus: ' + hasFocus);
            else
                ImGui.text('Item with focus: <none>');

            var focusAhead = -1;
            if (ImGui.button('Focus on X')) { focusAhead = 0; } ImGui.sameLine();
            if (ImGui.button('Focus on Y')) { focusAhead = 1; } ImGui.sameLine();
            if (ImGui.button('Focus on Z')) { focusAhead = 2; }
            if (focusAhead != -1) ImGui.setKeyboardFocusHereEx(focusAhead);
            ImGui.sliderFloat3('Float3', focusF3, 0.0, 1.0);

            ImGui.textWrapped('NB: Cursor & selection are preserved when refocusing last used item in code.');
            ImGui.treePop();
        }

        if (ImGui.treeNode('Dragging')) {
            ImGui.textWrapped('You can use ImGui::GetMouseDragDelta(0) to query for the dragged amount on any widget.');
            for (button in 0...3) {
                ImGui.text('IsMouseDragging(' + button + '):');
                ImGui.text('  w/ default threshold: ' + (ImGui.isMouseDragging(button) ? 1 : 0) + ',');
                ImGui.text('  w/ zero threshold: ' + (ImGui.isMouseDragging(button, 0.0) ? 1 : 0) + ',');
                ImGui.text('  w/ large threshold: ' + (ImGui.isMouseDragging(button, 20.0) ? 1 : 0) + ',');
            }

            ImGui.button('Drag Me');
            if (ImGui.isItemActive()) {
                // (adapted: io.MouseClickedPos[0] is not exposed, recompute it from the raw drag delta)
                var mousePos = io.mousePos;
                var rawDelta = ImGui.getMouseDragDelta(0, 0.0);
                var clickedPos = ImVec2.make(mousePos.x - rawDelta.x, mousePos.y - rawDelta.y);
                var fgDrawList = ImGui.getForegroundDrawList();
                ImDrawList.addLineEx(fgDrawList, clickedPos, mousePos, ImGui.getColorU32(ImGuiCol.Button), 4.0); // Draw a line between the button and the mouse cursor
            }

            var valueRaw = ImGui.getMouseDragDelta(0, 0.0);
            var valueWithLockThreshold = ImGui.getMouseDragDelta(0);
            var mouseDelta = io.mouseDelta;
            ImGui.text('GetMouseDragDelta(0):');
            ImGui.text('  w/ default threshold: (' + fmt1(valueWithLockThreshold.x) + ', ' + fmt1(valueWithLockThreshold.y) + ')');
            ImGui.text('  w/ zero threshold: (' + fmt1(valueRaw.x) + ', ' + fmt1(valueRaw.y) + ')');
            ImGui.text('io.MouseDelta: (' + fmt1(mouseDelta.x) + ', ' + fmt1(mouseDelta.y) + ')');
            ImGui.treePop();
        }

    }

    /** Read io.InputQueueCharacters[i] (16-bit ImWchar, target-typed access). */
    static inline function inputQueueCharAt(io:#if cpp cpp.Star<ImGuiIO> #else ImGuiIO #end, i:Int):Int {
        #if cpp
        return untyped __cpp__('(int)(((ImWchar*)({0}->InputQueueCharacters.Data))[{1}])', io, i);
        #elseif js
        return imguijs.ImGuiJs.getU16((io:ImGuiIO).inputQueueCharacters.data + (i << 1));
        #elseif cs
        return imguics.ImGuiCs.getU16((io:ImGuiIO).inputQueueCharacters.data + (i << 1));
        #else
        return 0;
        #end
    }

    /** Format a float with 1 decimal (printf %.1f equivalent). */
    static function fmt1(v:Float):String {
        return '' + (Math.round(v * 10) / 10);
    }

}
