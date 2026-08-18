package imgui;

import imgui.ImGui;

#if cpp
typedef ImGuiInputTextCallbackDataPtr = cpp.Star<ImGuiInputTextCallbackData>;
typedef ImGuiSizeCallbackDataPtr = cpp.Star<ImGuiSizeCallbackData>;
typedef ImGuiSelectionBasicStoragePtr = cpp.Star<ImGuiSelectionBasicStorage>;
typedef ImGuiCallbackPtr = cpp.RawPointer<cpp.Void>;
#elseif js
typedef ImGuiInputTextCallbackDataPtr = ImGuiInputTextCallbackData;
typedef ImGuiSizeCallbackDataPtr = ImGuiSizeCallbackData;
typedef ImGuiSelectionBasicStoragePtr = ImGuiSelectionBasicStorage;
typedef ImGuiCallbackPtr = Int;
#elseif cs
typedef ImGuiInputTextCallbackDataPtr = ImGuiInputTextCallbackData;
typedef ImGuiSizeCallbackDataPtr = ImGuiSizeCallbackData;
typedef ImGuiSelectionBasicStoragePtr = ImGuiSelectionBasicStorage;
typedef ImGuiCallbackPtr = Float;
#end

/**
 * Cross-target C callback trampolines (hand-written, never regenerated).
 *
 * DESIGN CONTRACT: there is ONE static handler slot per callback kind, and
 * one shared C trampoline dispatching to it. This is deliberate (no Map, no
 * garbage, no hidden state): correctness comes from installing the handler
 * SYNCHRONOUSLY, right before the call that fires it. Concretely:
 *
 * - `inputText` / `comboGetter`: the callback fires DURING the widget call
 *   itself. Install just before each widget call (cheap, one static
 *   assignment); any number of widgets with different handlers is safe.
 * - `sizeConstraints`: the callback fires during the NEXT `begin()`. Keep
 *   `setNextWindowSizeConstraints(...)` and its `begin()` back to back,
 *   without installing another size handler in between.
 * - `selectionAdapter`: the trampoline pointer is STORED in the
 *   `ImGuiSelectionBasicStorage` struct and fires during
 *   `beginMultiSelect` / `applyRequests` / `endMultiSelect`. Reinstall YOUR
 *   handler right before each such block (every frame): with several
 *   storages using different index-to-id mappings, the last installed
 *   handler is the one that runs.
 *
 * Typical usage:
 *
 * ```haxe
 * var cb = ImGuiCallbacks.inputText(myHandler);
 * ImGui.inputTextEx('Input', buf, 256, flags, cb);
 * ```
 *
 * Per target:
 * - hxcpp: cpp.Callable.fromStaticFunction (a real C function pointer);
 * - js/wasm: Module.addFunction (requires the wasm built with
 *   -sALLOW_TABLE_GROWTH, done by build/build-web.sh);
 * - C#/Unity: static delegate + Marshal.GetFunctionPointerForDelegate in the
 *   DCImGuiCallbacks.cs companion (MonoPInvokeCallback for IL2CPP).
 */
class ImGuiCallbacks {

    // =========================================================================
    // InputText callback: int (*)(ImGuiInputTextCallbackData*)
    // =========================================================================

    /** The currently installed InputText handler. */
    public static var inputTextHandler:(data:ImGuiInputTextCallbackDataPtr)->Int = null;

    /** Install `handler` and return the trampoline pointer to pass as `callback`. */
    public static function inputText(handler:(data:ImGuiInputTextCallbackDataPtr)->Int):ImGuiCallbackPtr {
        inputTextHandler = handler;
        #if cpp
        var cb:cpp.Callable<(data:cpp.Star<ImGuiInputTextCallbackData>)->Int> = cpp.Callable.fromStaticFunction(inputTextBridge);
        return untyped __cpp__('(void*)({0})', cb);
        #elseif js
        if (_inputTextPtr == 0)
            _inputTextPtr = imguijs.ImGuiJs.M.addFunction(inputTextBridge, 'ii');
        return _inputTextPtr;
        #elseif cs
        return imguics.DCImGuiCallbacks.GetInputTextCallbackPtr();
        #else
        return cast null;
        #end
    }

    #if cpp
    static function inputTextBridge(data:cpp.Star<ImGuiInputTextCallbackData>):Int {
        return inputTextHandler != null ? inputTextHandler(data) : 0;
    }
    #elseif js
    static var _inputTextPtr:Int = 0;
    static function inputTextBridge(dataAddr:Int):Int {
        return inputTextHandler != null ? inputTextHandler(dataAddr) : 0;
    }
    #elseif cs
    /** Called by the DCImGuiCallbacks.cs bridge. */
    @:keep public static function dispatchInputText(dataAddr:Float):Int {
        return inputTextHandler != null ? inputTextHandler(dataAddr) : 0;
    }
    #end

    // =========================================================================
    // SetNextWindowSizeConstraints callback: void (*)(ImGuiSizeCallbackData*)
    // =========================================================================

    /** The currently installed size-constraints handler. */
    public static var sizeConstraintsHandler:(data:ImGuiSizeCallbackDataPtr)->Void = null;

    /** Install `handler` and return the trampoline pointer to pass as `customCallback`. */
    public static function sizeConstraints(handler:(data:ImGuiSizeCallbackDataPtr)->Void):ImGuiCallbackPtr {
        sizeConstraintsHandler = handler;
        #if cpp
        var cb:cpp.Callable<(data:cpp.Star<ImGuiSizeCallbackData>)->Void> = cpp.Callable.fromStaticFunction(sizeConstraintsBridge);
        return untyped __cpp__('(void*)({0})', cb);
        #elseif js
        if (_sizeConstraintsPtr == 0)
            _sizeConstraintsPtr = imguijs.ImGuiJs.M.addFunction(sizeConstraintsBridge, 'vi');
        return _sizeConstraintsPtr;
        #elseif cs
        return imguics.DCImGuiCallbacks.GetSizeCallbackPtr();
        #else
        return cast null;
        #end
    }

    #if cpp
    static function sizeConstraintsBridge(data:cpp.Star<ImGuiSizeCallbackData>):Void {
        if (sizeConstraintsHandler != null) sizeConstraintsHandler(data);
    }
    #elseif js
    static var _sizeConstraintsPtr:Int = 0;
    static function sizeConstraintsBridge(dataAddr:Int):Void {
        if (sizeConstraintsHandler != null) sizeConstraintsHandler(dataAddr);
    }
    #elseif cs
    /** Called by the DCImGuiCallbacks.cs bridge. */
    @:keep public static function dispatchSizeCallback(dataAddr:Float):Void {
        if (sizeConstraintsHandler != null) sizeConstraintsHandler(dataAddr);
    }
    #end

    // =========================================================================
    // Combo/ListBox items getter: const char* (*)(void* user_data, int idx)
    // =========================================================================

    /** The currently installed combo items getter. */
    public static var comboGetterHandler:(idx:Int)->String = null;

    // Persistent native scratch holding the last returned string (UTF-8 + NUL)
    static var comboScratch:#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end = #if cpp null #else 0 #end;
    static inline var COMBO_SCRATCH_CAP:Int = 512;

    /** Install `handler` and return the trampoline pointer to pass as `getter`. */
    public static function comboGetter(handler:(idx:Int)->String):ImGuiCallbackPtr {
        comboGetterHandler = handler;
        #if cpp
        var cb:cpp.Callable<(userData:cpp.RawPointer<cpp.Void>, idx:Int)->cpp.ConstCharStar> = cpp.Callable.fromStaticFunction(comboGetterBridge);
        return untyped __cpp__('(void*)({0})', cb);
        #elseif js
        if (_comboGetterPtr == 0)
            _comboGetterPtr = imguijs.ImGuiJs.M.addFunction(comboGetterBridge, 'iii');
        return _comboGetterPtr;
        #elseif cs
        return imguics.DCImGuiCallbacks.GetComboGetterPtr();
        #else
        return cast null;
        #end
    }

    /** Copy `s` (clamped UTF-8) into the persistent scratch and return its address. */
    static function comboScratchWrite(s:String):#if cpp cpp.RawPointer<cpp.UInt8> #elseif cs Float #else Int #end {
        #if (cpp || js || cs)
        if (#if cpp comboScratch == null #else comboScratch == 0 #end)
            comboScratch = NativeStructs.allocBytes(COMBO_SCRATCH_CAP);
        var bytes = haxe.io.Bytes.ofString(s);
        var len = bytes.length < COMBO_SCRATCH_CAP - 1 ? bytes.length : COMBO_SCRATCH_CAP - 1;
        for (i in 0...len)
            NativeStructs.setU8(comboScratch, i, bytes.get(i));
        NativeStructs.setU8(comboScratch, len, 0);
        #end
        return comboScratch;
    }

    #if cpp
    static function comboGetterBridge(userData:cpp.RawPointer<cpp.Void>, idx:Int):cpp.ConstCharStar {
        var s = comboGetterHandler != null ? comboGetterHandler(idx) : '';
        return untyped __cpp__('(const char*){0}', comboScratchWrite(s));
    }
    #elseif js
    static var _comboGetterPtr:Int = 0;
    static function comboGetterBridge(userData:Int, idx:Int):Int {
        var s = comboGetterHandler != null ? comboGetterHandler(idx) : '';
        return comboScratchWrite(s);
    }
    #elseif cs
    /** Called by the DCImGuiCallbacks.cs bridge. */
    @:keep public static function dispatchComboGetter(userData:Float, idx:Int):Float {
        var s = comboGetterHandler != null ? comboGetterHandler(idx) : '';
        return comboScratchWrite(s);
    }
    #end

    // =========================================================================
    // ImGuiSelectionBasicStorage adapter: ImGuiID (*)(ImGuiSelectionBasicStorage*, int idx)
    // =========================================================================

    /** The currently installed index-to-storage-id adapter. */
    public static var selectionAdapterHandler:(storage:ImGuiSelectionBasicStoragePtr, idx:Int)->Int = null;

    /**
     * Install `handler` and return the trampoline pointer to store in
     * `storage.adapterIndexToStorageId`. Unlike widget callbacks, the adapter
     * fires during beginMultiSelect/applyRequests/endMultiSelect: REINSTALL
     * your handler right before each such block (see the class doc contract).
     * With a single storage or identity mappings, installing once is enough.
     */
    public static function selectionAdapter(handler:(storage:ImGuiSelectionBasicStoragePtr, idx:Int)->Int):ImGuiCallbackPtr {
        selectionAdapterHandler = handler;
        #if cpp
        var cb:cpp.Callable<(storage:cpp.Star<ImGuiSelectionBasicStorage>, idx:Int)->cpp.UInt32> = cpp.Callable.fromStaticFunction(selectionAdapterBridge);
        return untyped __cpp__('(void*)({0})', cb);
        #elseif js
        if (_selectionAdapterPtr == 0)
            _selectionAdapterPtr = imguijs.ImGuiJs.M.addFunction(selectionAdapterBridge, 'iii');
        return _selectionAdapterPtr;
        #elseif cs
        return imguics.DCImGuiCallbacks.GetSelectionAdapterPtr();
        #else
        return cast null;
        #end
    }

    #if cpp
    static function selectionAdapterBridge(storage:cpp.Star<ImGuiSelectionBasicStorage>, idx:Int):cpp.UInt32 {
        return selectionAdapterHandler != null ? cast selectionAdapterHandler(storage, idx) : cast idx;
    }
    #elseif js
    static var _selectionAdapterPtr:Int = 0;
    static function selectionAdapterBridge(storageAddr:Int, idx:Int):Int {
        return selectionAdapterHandler != null ? selectionAdapterHandler(storageAddr, idx) : idx;
    }
    #elseif cs
    /** Called by the DCImGuiCallbacks.cs bridge. */
    @:keep public static function dispatchSelectionAdapter(storageAddr:Float, idx:Int):Int {
        return selectionAdapterHandler != null ? selectionAdapterHandler(storageAddr, idx) : idx;
    }
    #end

}
