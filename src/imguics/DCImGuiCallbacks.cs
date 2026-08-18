// Hand-written companion to the GENERATED DCImGui.cs: native-callable
// trampolines for Dear ImGui C callbacks. Each bridge forwards to the Haxe
// class imgui.ImGuiCallbacks (compiled to C# alongside this file).
//
// MonoPInvokeCallback (through the AOT namespace) is required for IL2CPP;
// it is guarded so this file also compiles outside Unity.

using System;
using System.Runtime.InteropServices;

public static class DCImGuiCallbacks {

    // ---- InputText: int (*)(ImGuiInputTextCallbackData*) ----

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate int InputTextCallbackDelegate(IntPtr data);

#if ENABLE_IL2CPP
    [AOT.MonoPInvokeCallback(typeof(InputTextCallbackDelegate))]
#endif
    static int InputTextBridge(IntPtr data) {
        return global::imgui.ImGuiCallbacks.dispatchInputText((double)data.ToInt64());
    }

    static InputTextCallbackDelegate _inputTextDel = InputTextBridge; // Keep a reference so the GC never collects it
    static IntPtr _inputTextPtr = IntPtr.Zero;

    public static double GetInputTextCallbackPtr() {
        if (_inputTextPtr == IntPtr.Zero)
            _inputTextPtr = Marshal.GetFunctionPointerForDelegate(_inputTextDel);
        return (double)_inputTextPtr.ToInt64();
    }

    // ---- SetNextWindowSizeConstraints: void (*)(ImGuiSizeCallbackData*) ----

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void SizeCallbackDelegate(IntPtr data);

#if ENABLE_IL2CPP
    [AOT.MonoPInvokeCallback(typeof(SizeCallbackDelegate))]
#endif
    static void SizeCallbackBridge(IntPtr data) {
        global::imgui.ImGuiCallbacks.dispatchSizeCallback((double)data.ToInt64());
    }

    static SizeCallbackDelegate _sizeDel = SizeCallbackBridge;
    static IntPtr _sizePtr = IntPtr.Zero;

    public static double GetSizeCallbackPtr() {
        if (_sizePtr == IntPtr.Zero)
            _sizePtr = Marshal.GetFunctionPointerForDelegate(_sizeDel);
        return (double)_sizePtr.ToInt64();
    }

    // ---- Combo/ListBox items getter: const char* (*)(void* user_data, int idx) ----

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate IntPtr ComboGetterDelegate(IntPtr userData, int idx);

#if ENABLE_IL2CPP
    [AOT.MonoPInvokeCallback(typeof(ComboGetterDelegate))]
#endif
    static IntPtr ComboGetterBridge(IntPtr userData, int idx) {
        double addr = global::imgui.ImGuiCallbacks.dispatchComboGetter((double)userData.ToInt64(), idx);
        return new IntPtr((long)addr);
    }

    static ComboGetterDelegate _comboGetterDel = ComboGetterBridge;
    static IntPtr _comboGetterPtr = IntPtr.Zero;

    public static double GetComboGetterPtr() {
        if (_comboGetterPtr == IntPtr.Zero)
            _comboGetterPtr = Marshal.GetFunctionPointerForDelegate(_comboGetterDel);
        return (double)_comboGetterPtr.ToInt64();
    }

    // ---- ImGuiSelectionBasicStorage adapter: ImGuiID (*)(ImGuiSelectionBasicStorage*, int) ----

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate uint SelectionAdapterDelegate(IntPtr storage, int idx);

#if ENABLE_IL2CPP
    [AOT.MonoPInvokeCallback(typeof(SelectionAdapterDelegate))]
#endif
    static uint SelectionAdapterBridge(IntPtr storage, int idx) {
        return (uint)global::imgui.ImGuiCallbacks.dispatchSelectionAdapter((double)storage.ToInt64(), idx);
    }

    static SelectionAdapterDelegate _selectionDel = SelectionAdapterBridge;
    static IntPtr _selectionPtr = IntPtr.Zero;

    public static double GetSelectionAdapterPtr() {
        if (_selectionPtr == IntPtr.Zero)
            _selectionPtr = Marshal.GetFunctionPointerForDelegate(_selectionDel);
        return (double)_selectionPtr.ToInt64();
    }

}
