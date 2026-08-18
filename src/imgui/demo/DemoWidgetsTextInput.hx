package imgui.demo;

import imgui.ImGui;
import imgui.ImGuiCallbacks;
import imgui.demo.ImGuiDemo.helpMarker;

/** Widgets > Text Input (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsTextInput {

    static var text:String =
        '/*\n'
        + ' The Pentium F00F bug, shorthand for F0 0F C7 C8,\n'
        + ' the hexadecimal encoding of one offending instruction,\n'
        + ' more formally, the invalid operand with locked CMPXCHG8B\n'
        + ' instruction bug, is a design flaw in the majority of\n'
        + ' Intel Pentium, Pentium MMX, and Pentium OverDrive\n'
        + ' processors (all in the P5 microarchitecture).\n'
        + '*/\n\n'
        + 'label:\n'
        + '\tlock cmpxchg8b eax\n';
    static var multilineFlags:Int = ImGuiInputTextFlags.AllowTabInput;
    static var buf1:String = '';
    static var buf2:String = '';
    static var buf3:String = '';
    static var buf4:String = '';
    static var buf5:String = '';
    static var buf6:String = '';
    static var buf7:String = '';
    static var password:String = 'password123';
    static var cbBuf1:String = '';
    static var cbBuf2:String = '';
    static var cbBuf3:String = '';
    static var editCount:Int = 0;
    static var elidingBuf:String = '/path/to/some/folder/with/long/filename.cpp';
    static var elidingFlags:Int = ImGuiInputTextFlags.ElideLeft;
    static var miscBuf:String = '';
    static var miscFlags:Int = ImGuiInputTextFlags.EscapeClearsAll;

    /** TextFilters::FilterCasingSwap port (CharFilter callback). */
    static function filterCasingSwap(data:ImGuiInputTextCallbackDataPtr):Int {
        var c = data.eventChar;
        if (c >= 'a'.code && c <= 'z'.code) data.eventChar = c - ('a'.code - 'A'.code); // Lowercase becomes uppercase
        else if (c >= 'A'.code && c <= 'Z'.code) data.eventChar = c + ('a'.code - 'A'.code); // Uppercase becomes lowercase
        return 0;
    }

    /** TextFilters::FilterImGuiLetters port (CharFilter callback). */
    static function filterImGuiLetters(data:ImGuiInputTextCallbackDataPtr):Int {
        var c = data.eventChar;
        if (c < 256 && 'imgui'.indexOf(std.String.fromCharCode(c)) >= 0)
            return 0;
        return 1;
    }

    /** Funcs::MyCallback port (Completion / History / Edit callbacks). */
    static function myCallback(data:ImGuiInputTextCallbackDataPtr):Int {
        var eventFlag = data.eventFlag;
        if (eventFlag == ImGuiInputTextFlags.CallbackCompletion) {
            ImGuiInputTextCallbackData.insertChars(data, data.cursorPos, '..');
        }
        else if (eventFlag == ImGuiInputTextFlags.CallbackHistory) {
            if (data.eventKey == ImGuiKey.UpArrow) {
                ImGuiInputTextCallbackData.deleteChars(data, 0, data.bufTextLen);
                ImGuiInputTextCallbackData.insertChars(data, 0, 'Pressed Up!');
                ImGuiInputTextCallbackData.selectAll(data);
            }
            else if (data.eventKey == ImGuiKey.DownArrow) {
                ImGuiInputTextCallbackData.deleteChars(data, 0, data.bufTextLen);
                ImGuiInputTextCallbackData.insertChars(data, 0, 'Pressed Down!');
                ImGuiInputTextCallbackData.selectAll(data);
            }
        }
        else if (eventFlag == ImGuiInputTextFlags.CallbackEdit) {
            // Toggle casing of first character
            var c = bufByte(data, 0);
            if ((c >= 'a'.code && c <= 'z'.code) || (c >= 'A'.code && c <= 'Z'.code))
                setBufByte(data, 0, c ^ 32);
            data.bufDirty = true;
            editCount++;
        }
        return 0;
    }

    /** Read one byte of the live InputText buffer (target-typed access). */
    static inline function bufByte(data:ImGuiInputTextCallbackDataPtr, i:Int):Int {
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

    /** Write one byte of the live InputText buffer (target-typed access). */
    static inline function setBufByte(data:ImGuiInputTextCallbackDataPtr, i:Int, v:Int):Void {
        #if cpp
        untyped __cpp__('{0}->Buf[{1}] = (char){2}', data, i, v);
        #elseif js
        imguijs.ImGuiJs.setU8((data:ImGuiInputTextCallbackData).buf + i, v);
        #elseif cs
        imguics.ImGuiCs.setU8((data:ImGuiInputTextCallbackData).buf + i, v);
        #end
    }

    public static function show():Void {

        if (!ImGui.treeNode('Text Input'))
            return;

        if (ImGui.treeNode('Multi-line Text Input')) {
            helpMarker('You can use the ImGuiInputTextFlags_CallbackResize facility if you need to wire InputTextMultiline() to a dynamic string type. (Callbacks are not ported yet: they need cross-target callback support.)');
            ImGui.checkboxFlagsIntPtr('ImGuiInputTextFlags_ReadOnly', multilineFlags, ImGuiInputTextFlags.ReadOnly);
            ImGui.checkboxFlagsIntPtr('ImGuiInputTextFlags_WordWrap', multilineFlags, ImGuiInputTextFlags.WordWrap);
            ImGui.sameLine(); helpMarker('Feature is currently in Beta. Please read comments in imgui.h');
            ImGui.checkboxFlagsIntPtr('ImGuiInputTextFlags_AllowTabInput', multilineFlags, ImGuiInputTextFlags.AllowTabInput);
            ImGui.sameLine(); helpMarker('When _AllowTabInput is set, passing through the widget with Tabbing doesn\'t automatically activate it, in order to also cycling through subsequent widgets.');
            ImGui.checkboxFlagsIntPtr('ImGuiInputTextFlags_CtrlEnterForNewLine', multilineFlags, ImGuiInputTextFlags.CtrlEnterForNewLine);
            ImGui.inputTextMultilineEx('##source', text, 16384, ImVec2.make(-1.175494351e-38, ImGui.getTextLineHeight() * 16), multilineFlags);
            ImGui.treePop();
        }

        if (ImGui.treeNode('Filtered Text Input')) {
            ImGui.inputText('default', buf1, 32);
            ImGui.inputTextEx('decimal', buf2, 32, ImGuiInputTextFlags.CharsDecimal);
            ImGui.inputTextEx('hexadecimal', buf3, 32, ImGuiInputTextFlags.CharsHexadecimal | ImGuiInputTextFlags.CharsUppercase);
            ImGui.inputTextEx('uppercase', buf4, 32, ImGuiInputTextFlags.CharsUppercase);
            ImGui.inputTextEx('no blank', buf5, 32, ImGuiInputTextFlags.CharsNoBlank);
            ImGui.inputTextEx('casing swap', buf6, 32, ImGuiInputTextFlags.CallbackCharFilter, ImGuiCallbacks.inputText(filterCasingSwap)); // Use CharFilter callback to replace characters.
            ImGui.inputTextEx('"imgui"', buf7, 32, ImGuiInputTextFlags.CallbackCharFilter, ImGuiCallbacks.inputText(filterImGuiLetters)); // Use CharFilter callback to disable some characters.
            ImGui.treePop();
        }

        if (ImGui.treeNode('Password Input')) {
            ImGui.inputTextEx('password', password, 64, ImGuiInputTextFlags.Password);
            ImGui.sameLine(); helpMarker('Display all characters as \'*\'.\nDisable clipboard cut and copy.\nDisable logging.\n');
            ImGui.inputTextWithHintEx('password (w/ hint)', '<password>', password, 64, ImGuiInputTextFlags.Password);
            ImGui.inputText('password (clear)', password, 64);
            ImGui.treePop();
        }

        if (ImGui.treeNode('Completion, History, Edit Callbacks')) {
            ImGui.inputTextEx('Completion', cbBuf1, 64, ImGuiInputTextFlags.CallbackCompletion, ImGuiCallbacks.inputText(myCallback));
            ImGui.sameLine(); helpMarker(
                'Here we append ".." each time Tab is pressed. '
                + 'See \'Examples>Console\' for a more meaningful demonstration of using this callback.');

            ImGui.inputTextEx('History', cbBuf2, 64, ImGuiInputTextFlags.CallbackHistory, ImGuiCallbacks.inputText(myCallback));
            ImGui.sameLine(); helpMarker(
                'Here we replace and select text each time Up/Down are pressed. '
                + 'See \'Examples>Console\' for a more meaningful demonstration of using this callback.');

            ImGui.inputTextEx('Edit', cbBuf3, 64, ImGuiInputTextFlags.CallbackEdit, ImGuiCallbacks.inputText(myCallback));
            ImGui.sameLine(); helpMarker(
                'Here we toggle the casing of the first character on every edit + count edits.');
            ImGui.sameLine(); ImGui.text('(' + editCount + ')');

            ImGui.treePop();
        }

        if (ImGui.treeNode('Resize Callback')) {
            ImGui.textDisabled('(not needed in Haxe: strings resize naturally through the portable facade)');
            ImGui.treePop();
        }

        if (ImGui.treeNode('Eliding, Alignment')) {
            ImGui.checkboxFlagsIntPtr('ImGuiInputTextFlags_ElideLeft', elidingFlags, ImGuiInputTextFlags.ElideLeft);
            ImGui.inputTextEx('Path', elidingBuf, 128, elidingFlags);
            ImGui.treePop();
        }

        if (ImGui.treeNode('Miscellaneous')) {
            ImGui.checkboxFlagsIntPtr('ImGuiInputTextFlags_EscapeClearsAll', miscFlags, ImGuiInputTextFlags.EscapeClearsAll);
            ImGui.checkboxFlagsIntPtr('ImGuiInputTextFlags_ReadOnly', miscFlags, ImGuiInputTextFlags.ReadOnly);
            ImGui.checkboxFlagsIntPtr('ImGuiInputTextFlags_NoUndoRedo', miscFlags, ImGuiInputTextFlags.NoUndoRedo);
            ImGui.inputTextEx('Hello', miscBuf, 16, miscFlags);
            ImGui.treePop();
        }

        ImGui.treePop();

    }

}
