package imgui;

/**
 * Route ImGui's clipboard (SetClipboardText/GetClipboardText, and copy/paste
 * inside InputText widgets) through the host application.
 *
 * ImGui's own defaults only reach the OS clipboard on targets where it has a
 * platform backend; on js/wasm its default is an internal buffer that never
 * touches the system clipboard. The host usually has a better channel (a game
 * engine's clipboard API, Electron's `clipboard` module...): install it here.
 *
 * Per target:
 * - hxcpp: GC-rooted closures through linc (`ImGuiNative.setClipboardHandlers`);
 * - js/wasm: `Module.addFunction` trampolines over `dcx_SetClipboardHandlers`
 *   (the getter's string lives in a persistent wasm-side buffer);
 * - C#/Unity: not wired (Unity's `GUIUtility.systemCopyBuffer` integration
 *   would belong in a DCImGuiClipboard.cs companion; ImGui's internal
 *   clipboard is used until then).
 *
 * Must be called with a current ImGui context (after `createContext`).
 */
class ImGuiClipboard {

    public static function setHandlers(get:Void->String, set:String->Void):Void {

        #if cpp

        imguicpp.ImGuiNative.setClipboardHandlers(get, set);

        #elseif js

        getHandler = get;
        setHandler = set;
        final M = imguijs.ImGuiJs.M;
        if (_getPtr == 0) {
            // cast: successive calls on the Dynamic module would otherwise
            // unify both bridges to the first one's function type
            _getPtr = M.addFunction((getBridge:Dynamic), 'i');
            _setPtr = M.addFunction((setBridge:Dynamic), 'vi');
        }
        M._dcx_SetClipboardHandlers(_getPtr, _setPtr);

        #end

    }

    #if js

    static var getHandler:Void->String = null;

    static var setHandler:String->Void = null;

    static var _getPtr:Int = 0;

    static var _setPtr:Int = 0;

    /** Persistent wasm buffer holding the last returned clipboard text:
        ImGui reads the pointer after the trampoline returned. */
    static var _bufPtr:Int = 0;

    static var _bufCap:Int = 0;

    static function getBridge():Int {

        final M = imguijs.ImGuiJs.M;
        final s = getHandler != null ? getHandler() : null;
        if (s == null) return 0;
        final needed:Int = (M.lengthBytesUTF8(s):Int) + 1;
        if (needed > _bufCap) {
            if (_bufPtr != 0) M._free(_bufPtr);
            _bufCap = needed < 256 ? 256 : needed;
            _bufPtr = M._malloc(_bufCap);
        }
        M.stringToUTF8(s, _bufPtr, _bufCap);
        return _bufPtr;

    }

    static function setBridge(textAddr:Int):Void {

        if (setHandler == null) return;
        final M = imguijs.ImGuiJs.M;
        setHandler(textAddr != 0 ? (M.UTF8ToString(textAddr):String) : '');

    }

    #end

}
