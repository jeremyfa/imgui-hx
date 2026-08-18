package imgui.demo;

import imgui.ImGui;
import imgui.ImGuiCallbacks;
import imgui.ImGuiTextFilterHx;

/**
 * Example: Console (imgui_demo.cpp port), including TAB completion and
 * Up/Down history browsing through the cross-target InputText callback
 * trampolines (imgui.ImGuiCallbacks).
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoAppConsole {

    static var inputBuf:String = '';
    static var items:Array<String> = [];
    static var commands:Array<String> = ['HELP', 'HISTORY', 'CLEAR', 'CLASSIFY'];
    static var history:Array<String> = [];
    static var historyPos:Int = -1; // -1: new line, 0..history.length-1 browsing history.
    static var filter:ImGuiTextFilterHx = new ImGuiTextFilterHx();
    static var autoScroll:Bool = true;
    static var scrollToBottom:Bool = false;
    static var inited:Bool = false;

    static function clearLog():Void {
        items.resize(0);
    }

    static function addLog(line:String):Void {
        items.push(line);
    }

    public static function show():Void {

        if (!inited) {
            inited = true;
            addLog('Welcome to Dear ImGui!');
        }

        ImGui.setNextWindowSize(ImVec2.make(520, 600), ImGuiCond.FirstUseEver);
        if (!ImGui.begin('Example: Console', ImGuiDemo.showAppConsole)) {
            ImGui.end();
            return;
        }

        if (ImGui.beginPopupContextItem()) {
            if (ImGui.menuItem('Close Console'))
                ImGuiDemo.showAppConsole = false;
            ImGui.endPopup();
        }

        ImGui.textWrapped(
            'This example implements a console with basic coloring, completion (TAB key) and history (Up/Down keys). A more elaborate '
            + 'implementation may want to store entries along with extra data such as timestamp, emitter, etc.');
        ImGui.textWrapped('Enter \'HELP\' for help.');

        if (ImGui.smallButton('Add Debug Text')) { addLog(items.length + ' some text'); addLog('some more text'); addLog('display very important message here!'); }
        ImGui.sameLine();
        if (ImGui.smallButton('Add Debug Error')) { addLog('[error] something went wrong'); }
        ImGui.sameLine();
        if (ImGui.smallButton('Clear')) { clearLog(); }
        ImGui.sameLine();
        var copyToClipboard = ImGui.smallButton('Copy');

        ImGui.separator();

        if (ImGui.beginPopup('Options')) {
            ImGui.checkbox('Auto-scroll', autoScroll);
            ImGui.endPopup();
        }

        ImGui.setNextItemShortcut(ImGuiKey.ImGuiMod_Ctrl | ImGuiKey.O, ImGuiInputFlags.Tooltip);
        if (ImGui.button('Options'))
            ImGui.openPopup('Options');
        ImGui.sameLine();
        filter.draw('Filter ("incl,-excl") ("error")', 180);
        ImGui.separator();

        var style = ImGui.getStyle();
        var itemSpacing = style.itemSpacing;
        var footerHeightToReserve = style.separatorSize + itemSpacing.y + ImGui.getFrameHeightWithSpacing();
        if (ImGui.beginChild('ScrollingRegion', ImVec2.make(0, -footerHeightToReserve), ImGuiChildFlags.NavFlattened, ImGuiWindowFlags.HorizontalScrollbar)) {
            if (ImGui.beginPopupContextWindow()) {
                if (ImGui.selectableEx('Clear', false, 0, ImVec2.make(0, 0))) clearLog();
                ImGui.endPopup();
            }

            ImGui.pushStyleVarImVec2(ImGuiStyleVar.ItemSpacing, ImVec2.make(4, 1)); // Tighten spacing
            if (copyToClipboard)
                ImGui.logToClipboard();
            for (item in items) {
                if (!filter.passFilter(item))
                    continue;

                var hasColor = false;
                if (item.indexOf('[error]') >= 0) { ImGui.pushStyleColorImVec4(ImGuiCol.Text, ImVec4.make(1.0, 0.4, 0.4, 1.0)); hasColor = true; }
                else if (StringTools.startsWith(item, '# ')) { ImGui.pushStyleColorImVec4(ImGuiCol.Text, ImVec4.make(1.0, 0.8, 0.6, 1.0)); hasColor = true; }
                ImGui.textUnformatted(item);
                if (hasColor)
                    ImGui.popStyleColor();
            }
            if (copyToClipboard)
                ImGui.logFinish();

            if (scrollToBottom || (autoScroll && ImGui.getScrollY() >= ImGui.getScrollMaxY()))
                ImGui.setScrollHereY(1.0);
            scrollToBottom = false;

            ImGui.popStyleVar();
        }
        ImGui.endChild();
        ImGui.separator();

        var reclaimFocus = false;
        var inputTextFlags = ImGuiInputTextFlags.EnterReturnsTrue | ImGuiInputTextFlags.EscapeClearsAll | ImGuiInputTextFlags.CallbackCompletion | ImGuiInputTextFlags.CallbackHistory;
        var callback = ImGuiCallbacks.inputText(textEditCallback);
        if (ImGui.inputTextEx('Input', inputBuf, 256, inputTextFlags, callback)) {
            var s = StringTools.trim(inputBuf);
            if (s.length > 0)
                execCommand(s);
            inputBuf = '';
            reclaimFocus = true;
        }

        ImGui.setItemDefaultFocus();
        if (reclaimFocus)
            ImGui.setKeyboardFocusHereEx(-1); // Auto focus previous widget

        ImGui.end();

    }

    static function execCommand(commandLine:String):Void {

        addLog('# ' + commandLine);

        // Insert into history. First find match and delete it so it can be pushed to the back.
        historyPos = -1;
        var i = history.length - 1;
        while (i >= 0) {
            if (history[i].toUpperCase() == commandLine.toUpperCase()) {
                history.splice(i, 1);
                break;
            }
            i--;
        }
        history.push(commandLine);

        var upper = commandLine.toUpperCase();
        if (upper == 'CLEAR') {
            clearLog();
        }
        else if (upper == 'HELP') {
            addLog('Commands:');
            for (cmd in commands)
                addLog('- ' + cmd);
        }
        else if (upper == 'HISTORY') {
            var first = history.length - 10;
            for (n in (first > 0 ? first : 0)...history.length)
                addLog(StringTools.lpad('' + n, ' ', 3) + ': ' + history[n]);
        }
        else {
            addLog('Unknown command: \'' + commandLine + '\'');
        }

        scrollToBottom = true;

    }

    /** Read one byte of the live InputText buffer (target-typed access). */
    static inline function dataByte(data:ImGuiInputTextCallbackDataPtr, i:Int):Int {
        #if cpp
        return untyped __cpp__('(int)(unsigned char)({0}->Buf[{1}])', data, i);
        #elseif js
        return imguijs.ImGuiJs.getU8((data:ImGuiInputTextCallbackData).buf + i);
        #elseif cs
        return imguics.ImGuiCs.getU8((data:ImGuiInputTextCallbackData).buf + i);
        #else
        return 0;
        #end
    }

    /** ExampleAppConsole::TextEditCallback port (fired through ImGuiCallbacks.inputText). */
    static function textEditCallback(data:ImGuiInputTextCallbackDataPtr):Int {

        var eventFlag = data.eventFlag;
        if (eventFlag == ImGuiInputTextFlags.CallbackCompletion) {
            // Locate beginning of current word
            var wordEnd = data.cursorPos;
            var wordStart = wordEnd;
            while (wordStart > 0) {
                var c = dataByte(data, wordStart - 1);
                if (c == ' '.code || c == '\t'.code || c == ','.code || c == ';'.code)
                    break;
                wordStart--;
            }
            var wordBuf = new StringBuf();
            for (i in wordStart...wordEnd)
                wordBuf.addChar(dataByte(data, i));
            var word = wordBuf.toString();

            // Build a list of candidates
            var candidates:Array<String> = [];
            for (cmd in commands)
                if (cmd.substr(0, word.length).toUpperCase() == word.toUpperCase())
                    candidates.push(cmd);

            if (candidates.length == 0) {
                // No match
                addLog('No match for "' + word + '"!');
            }
            else if (candidates.length == 1) {
                // Single match. Delete the beginning of the word and replace it entirely so we've got nice casing.
                ImGuiInputTextCallbackData.deleteChars(data, wordStart, wordEnd - wordStart);
                ImGuiInputTextCallbackData.insertChars(data, data.cursorPos, candidates[0]);
                ImGuiInputTextCallbackData.insertChars(data, data.cursorPos, ' ');
            }
            else {
                // Multiple matches. Complete as much as we can..
                var matchLen = word.length;
                while (true) {
                    var c = -1;
                    var allCandidatesMatches = true;
                    for (i in 0...candidates.length) {
                        if (matchLen >= candidates[i].length) { allCandidatesMatches = false; break; }
                        var cc = candidates[i].toUpperCase().charCodeAt(matchLen);
                        if (i == 0) c = cc;
                        else if (c != cc) { allCandidatesMatches = false; break; }
                    }
                    if (!allCandidatesMatches)
                        break;
                    matchLen++;
                }

                if (matchLen > 0) {
                    ImGuiInputTextCallbackData.deleteChars(data, wordStart, wordEnd - wordStart);
                    ImGuiInputTextCallbackData.insertChars(data, data.cursorPos, candidates[0].substr(0, matchLen));
                }

                // List matches
                addLog('Possible matches:');
                for (c in candidates)
                    addLog('- ' + c);
            }
        }
        else if (eventFlag == ImGuiInputTextFlags.CallbackHistory) {
            var prevHistoryPos = historyPos;
            if (data.eventKey == ImGuiKey.UpArrow) {
                if (historyPos == -1)
                    historyPos = history.length - 1;
                else if (historyPos > 0)
                    historyPos--;
            }
            else if (data.eventKey == ImGuiKey.DownArrow) {
                if (historyPos != -1) {
                    historyPos++;
                    if (historyPos >= history.length)
                        historyPos = -1;
                }
            }

            // A better implementation would preserve the data on the current input line along with cursor position.
            if (prevHistoryPos != historyPos) {
                var historyStr = (historyPos >= 0) ? history[historyPos] : '';
                ImGuiInputTextCallbackData.deleteChars(data, 0, data.bufTextLen);
                ImGuiInputTextCallbackData.insertChars(data, 0, historyStr);
            }
        }
        return 0;

    }

}
