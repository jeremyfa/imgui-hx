// =============================================================================
// GENERATED FILE - do not edit by hand (see gen/Gen.hx in imgui-hx).
// C# P/Invoke shim over the dcimgui native library (built by build/build-*.sh).
// =============================================================================

using System.Runtime.InteropServices;

[StructLayout(LayoutKind.Sequential)]
public struct ImVec2 {
    public float x;
    public float y;
    public ImVec2(float x, float y) { this.x = x; this.y = y; }
}

[StructLayout(LayoutKind.Sequential)]
public struct ImVec4 {
    public float x;
    public float y;
    public float z;
    public float w;
    public ImVec4(float x, float y, float z, float w) { this.x = x; this.y = y; this.z = z; this.w = w; }
}

[StructLayout(LayoutKind.Sequential)]
public struct ImTextureRef {
    public System.IntPtr _TexData;
    public ulong _TexID;
    public ImTextureRef(System.IntPtr texData, ulong texID) { this._TexData = texData; this._TexID = texID; }
}

public static class DCImGui {

#if UNITY_IOS && !UNITY_EDITOR
    const string LIB = "__Internal";
#else
    const string LIB = "dcimgui";
#endif

    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ulong ImTextureRef_GetTexID(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_CreateContext(System.IntPtr shared_font_atlas);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_DestroyContext(System.IntPtr ctx);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetCurrentContext();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetCurrentContext(System.IntPtr ctx);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetIO();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetPlatformIO();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetStyle();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_NewFrame();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndFrame();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_Render();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetDrawData();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ShowDemoWindow(System.IntPtr p_open);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ShowMetricsWindow(System.IntPtr p_open);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ShowDebugLogWindow(System.IntPtr p_open);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ShowIDStackToolWindowEx(System.IntPtr p_open);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ShowIDStackToolWindow();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ShowAboutWindow(System.IntPtr p_open);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ShowStyleEditor(System.IntPtr @ref);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ShowStyleSelector([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ShowFontSelector([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ShowUserGuide();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetVersion();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_StyleColorsDark(System.IntPtr dst);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_StyleColorsLight(System.IntPtr dst);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_StyleColorsClassic(System.IntPtr dst);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_Begin([MarshalAs(UnmanagedType.LPUTF8Str)] string name, System.IntPtr p_open, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_End();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginChild([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, ImVec2 size, int child_flags, int window_flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginChildID(uint id, ImVec2 size, int child_flags, int window_flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndChild();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsWindowAppearing();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsWindowCollapsed();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsWindowFocused(int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsWindowHovered(int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetWindowDrawList();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetWindowDpiScale();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetWindowPos();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetWindowSize();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetWindowWidth();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetWindowHeight();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetWindowViewport();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowPosEx(ImVec2 pos, int cond, ImVec2 pivot);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowPos(ImVec2 pos, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowSize(ImVec2 size, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowSizeConstraints(ImVec2 size_min, ImVec2 size_max, System.IntPtr custom_callback, System.IntPtr custom_callback_data);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowContentSize(ImVec2 size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowCollapsed([MarshalAs(UnmanagedType.I1)] bool collapsed, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowFocus();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowScroll(ImVec2 scroll);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowBgAlpha(float alpha);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowViewport(uint viewport_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetWindowPos(ImVec2 pos, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetWindowSize(ImVec2 size, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetWindowCollapsed([MarshalAs(UnmanagedType.I1)] bool collapsed, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetWindowFocus();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetWindowPosStr([MarshalAs(UnmanagedType.LPUTF8Str)] string name, ImVec2 pos, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetWindowSizeStr([MarshalAs(UnmanagedType.LPUTF8Str)] string name, ImVec2 size, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetWindowCollapsedStr([MarshalAs(UnmanagedType.LPUTF8Str)] string name, [MarshalAs(UnmanagedType.I1)] bool collapsed, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetWindowFocusStr([MarshalAs(UnmanagedType.LPUTF8Str)] string name);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetScrollX();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetScrollY();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetScrollX(float scroll_x);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetScrollY(float scroll_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetScrollMaxX();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetScrollMaxY();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetScrollHereX(float center_x_ratio);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetScrollHereY(float center_y_ratio);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetScrollFromPosX(float local_x, float center_x_ratio);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetScrollFromPosY(float local_y, float center_y_ratio);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushFontFloat(System.IntPtr font, float font_size_base_unscaled);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PopFont();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetFont();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetFontSize();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetFontBaked();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushStyleColor(int idx, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushStyleColorImVec4(int idx, ImVec4 col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PopStyleColorEx(int count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PopStyleColor();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushStyleVar(int idx, float val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushStyleVarImVec2(int idx, ImVec2 val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushStyleVarX(int idx, float val_x);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushStyleVarY(int idx, float val_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PopStyleVarEx(int count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PopStyleVar();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushItemFlag(int option, [MarshalAs(UnmanagedType.I1)] bool enabled);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PopItemFlag();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushItemWidth(float item_width);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PopItemWidth();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextItemWidth(float item_width);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_CalcItemWidth();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushTextWrapPos(float wrap_local_pos_x);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PopTextWrapPos();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetFontTexUvWhitePixel();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_GetColorU32Ex(int idx, float alpha_mul);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_GetColorU32(int idx);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_GetColorU32ImVec4(ImVec4 col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_GetColorU32ImU32Ex(uint col, float alpha_mul);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_GetColorU32ImU32(uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetStyleColorVec4(int idx);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetCursorScreenPos();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetCursorScreenPos(ImVec2 pos);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetContentRegionAvail();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetCursorPos();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetCursorPosX();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetCursorPosY();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetCursorPos(ImVec2 local_pos);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetCursorPosX(float local_x);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetCursorPosY(float local_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetCursorStartPos();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_Separator();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SameLineEx(float offset_from_start_x, float spacing);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SameLine();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_NewLine();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_Spacing();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_Dummy(ImVec2 size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_IndentEx(float indent_w);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_Indent();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_UnindentEx(float indent_w);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_Unindent();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_BeginGroup();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndGroup();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_AlignTextToFramePadding();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetTextLineHeight();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetTextLineHeightWithSpacing();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetFrameHeight();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetFrameHeightWithSpacing();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushID([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushIDStr([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id_begin, [MarshalAs(UnmanagedType.LPUTF8Str)] string str_id_end);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushIDPtr(System.IntPtr ptr_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushIDInt(int int_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PopID();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_GetID([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_GetIDStr([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id_begin, [MarshalAs(UnmanagedType.LPUTF8Str)] string str_id_end);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_GetIDPtr(System.IntPtr ptr_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_GetIDInt(int int_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TextUnformattedEx([MarshalAs(UnmanagedType.LPUTF8Str)] string text, [MarshalAs(UnmanagedType.LPUTF8Str)] string text_end);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TextUnformatted([MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TextColoredUnformatted(ImVec4 col, [MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TextDisabledUnformatted([MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TextWrappedUnformatted([MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_LabelTextUnformatted([MarshalAs(UnmanagedType.LPUTF8Str)] string label, [MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_BulletTextUnformatted([MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SeparatorText([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ButtonEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, ImVec2 size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_Button([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SmallButton([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InvisibleButton([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, ImVec2 size, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ArrowButton([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int dir);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_Checkbox([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_CheckboxFlagsIntPtr([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr flags, int flags_value);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_CheckboxFlagsUintPtr([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr flags, uint flags_value);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_RadioButton([MarshalAs(UnmanagedType.LPUTF8Str)] string label, [MarshalAs(UnmanagedType.I1)] bool active);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_RadioButtonIntPtr([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int v_button);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ProgressBar(float fraction, ImVec2 size_arg, [MarshalAs(UnmanagedType.LPUTF8Str)] string overlay);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_Bullet();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TextLink([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TextLinkOpenURLEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, [MarshalAs(UnmanagedType.LPUTF8Str)] string url);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TextLinkOpenURL([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ImageEx(ImTextureRef tex_ref, ImVec2 image_size, ImVec2 uv0, ImVec2 uv1);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_Image(ImTextureRef tex_ref, ImVec2 image_size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ImageWithBgEx(ImTextureRef tex_ref, ImVec2 image_size, ImVec2 uv0, ImVec2 uv1, ImVec4 bg_col, ImVec4 tint_col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ImageWithBg(ImTextureRef tex_ref, ImVec2 image_size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ImageButtonEx([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, ImTextureRef tex_ref, ImVec2 image_size, ImVec2 uv0, ImVec2 uv1, ImVec4 bg_col, ImVec4 tint_col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ImageButton([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, ImTextureRef tex_ref, ImVec2 image_size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginCombo([MarshalAs(UnmanagedType.LPUTF8Str)] string label, [MarshalAs(UnmanagedType.LPUTF8Str)] string preview_value, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndCombo();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ComboCharEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr current_item, System.IntPtr items, int items_count, int popup_max_height_in_items);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ComboChar([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr current_item, System.IntPtr items, int items_count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ComboEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr current_item, [MarshalAs(UnmanagedType.LPUTF8Str)] string items_separated_by_zeros, int popup_max_height_in_items);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_Combo([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr current_item, [MarshalAs(UnmanagedType.LPUTF8Str)] string items_separated_by_zeros);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ComboCallbackEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr current_item, System.IntPtr getter, System.IntPtr user_data, int items_count, int popup_max_height_in_items);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ComboCallback([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr current_item, System.IntPtr getter, System.IntPtr user_data, int items_count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragFloatEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_speed, float v_min, float v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragFloat([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragFloat2Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_speed, float v_min, float v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragFloat2([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragFloat3Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_speed, float v_min, float v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragFloat3([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragFloat4Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_speed, float v_min, float v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragFloat4([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragFloatRange2Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v_current_min, System.IntPtr v_current_max, float v_speed, float v_min, float v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, [MarshalAs(UnmanagedType.LPUTF8Str)] string format_max, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragFloatRange2([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v_current_min, System.IntPtr v_current_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragIntEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_speed, int v_min, int v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragInt([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragInt2Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_speed, int v_min, int v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragInt2([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragInt3Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_speed, int v_min, int v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragInt3([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragInt4Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_speed, int v_min, int v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragInt4([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragIntRange2Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v_current_min, System.IntPtr v_current_max, float v_speed, int v_min, int v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, [MarshalAs(UnmanagedType.LPUTF8Str)] string format_max, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragIntRange2([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v_current_min, System.IntPtr v_current_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragScalarEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data, float v_speed, System.IntPtr p_min, System.IntPtr p_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragScalar([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragScalarNEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data, int components, float v_speed, System.IntPtr p_min, System.IntPtr p_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DragScalarN([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data, int components);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderFloatEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_min, float v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderFloat([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_min, float v_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderFloat2Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_min, float v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderFloat2([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_min, float v_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderFloat3Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_min, float v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderFloat3([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_min, float v_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderFloat4Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_min, float v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderFloat4([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float v_min, float v_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderAngleEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v_rad, float v_degrees_min, float v_degrees_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderAngle([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v_rad);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderIntEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int v_min, int v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderInt([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int v_min, int v_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderInt2Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int v_min, int v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderInt2([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int v_min, int v_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderInt3Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int v_min, int v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderInt3([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int v_min, int v_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderInt4Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int v_min, int v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderInt4([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int v_min, int v_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderScalarEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data, System.IntPtr p_min, System.IntPtr p_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderScalar([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data, System.IntPtr p_min, System.IntPtr p_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderScalarNEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data, int components, System.IntPtr p_min, System.IntPtr p_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SliderScalarN([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data, int components, System.IntPtr p_min, System.IntPtr p_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_VSliderFloatEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, ImVec2 size, System.IntPtr v, float v_min, float v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_VSliderFloat([MarshalAs(UnmanagedType.LPUTF8Str)] string label, ImVec2 size, System.IntPtr v, float v_min, float v_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_VSliderIntEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, ImVec2 size, System.IntPtr v, int v_min, int v_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_VSliderInt([MarshalAs(UnmanagedType.LPUTF8Str)] string label, ImVec2 size, System.IntPtr v, int v_min, int v_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_VSliderScalarEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, ImVec2 size, int data_type, System.IntPtr p_data, System.IntPtr p_min, System.IntPtr p_max, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_VSliderScalar([MarshalAs(UnmanagedType.LPUTF8Str)] string label, ImVec2 size, int data_type, System.IntPtr p_data, System.IntPtr p_min, System.IntPtr p_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputTextEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr buf, System.IntPtr buf_size, int flags, System.IntPtr callback, System.IntPtr user_data);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputText([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr buf, System.IntPtr buf_size, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputTextMultilineEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr buf, System.IntPtr buf_size, ImVec2 size, int flags, System.IntPtr callback, System.IntPtr user_data);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputTextMultiline([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr buf, System.IntPtr buf_size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputTextWithHintEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, [MarshalAs(UnmanagedType.LPUTF8Str)] string hint, System.IntPtr buf, System.IntPtr buf_size, int flags, System.IntPtr callback, System.IntPtr user_data);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputTextWithHint([MarshalAs(UnmanagedType.LPUTF8Str)] string label, [MarshalAs(UnmanagedType.LPUTF8Str)] string hint, System.IntPtr buf, System.IntPtr buf_size, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputFloatEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, float step, float step_fast, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputFloat([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputFloat2Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputFloat2([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputFloat3Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputFloat3([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputFloat4Ex([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputFloat4([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputIntEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int step, int step_fast, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputInt([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputInt2([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputInt3([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputInt4([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputDoubleEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v, double step, double step_fast, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputDouble([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputScalarEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data, System.IntPtr p_step, System.IntPtr p_step_fast, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputScalar([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputScalarNEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data, int components, System.IntPtr p_step, System.IntPtr p_step_fast, [MarshalAs(UnmanagedType.LPUTF8Str)] string format, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_InputScalarN([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int data_type, System.IntPtr p_data, int components);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ColorEdit3([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr col, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ColorEdit4([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr col, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ColorPicker3([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr col, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ColorPicker4([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr col, int flags, System.IntPtr ref_col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ColorButtonEx([MarshalAs(UnmanagedType.LPUTF8Str)] string desc_id, ImVec4 col, int flags, ImVec2 size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ColorButton([MarshalAs(UnmanagedType.LPUTF8Str)] string desc_id, ImVec4 col, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetColorEditOptions(int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TreeNode([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TreeNodeStrUnformatted([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, [MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TreeNodePtrUnformatted(System.IntPtr ptr_id, [MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TreeNodeEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TreeNodeExStrUnformatted([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int flags, [MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TreeNodeExPtrUnformatted(System.IntPtr ptr_id, int flags, [MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TreePush([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TreePushPtr(System.IntPtr ptr_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TreePop();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetTreeNodeToLabelSpacing();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_CollapsingHeader([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_CollapsingHeaderBoolPtr([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr p_visible, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextItemOpen([MarshalAs(UnmanagedType.I1)] bool is_open, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextItemStorageID(uint storage_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TreeNodeGetOpen(uint storage_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SelectableEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, [MarshalAs(UnmanagedType.I1)] bool selected, int flags, ImVec2 size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_Selectable([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SelectableBoolPtrEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr p_selected, int flags, ImVec2 size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SelectableBoolPtr([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr p_selected, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_BeginMultiSelectEx(int flags, int selection_size, int items_count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_BeginMultiSelect(int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_EndMultiSelect();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextItemSelectionUserData(long selection_user_data);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemToggledSelection();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginListBox([MarshalAs(UnmanagedType.LPUTF8Str)] string label, ImVec2 size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndListBox();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ListBox([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr current_item, System.IntPtr items, int items_count, int height_in_items);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ListBoxCallbackEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr current_item, System.IntPtr getter, System.IntPtr user_data, int items_count, int height_in_items);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_ListBoxCallback([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr current_item, System.IntPtr getter, System.IntPtr user_data, int items_count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PlotLinesEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr values, int values_count, int values_offset, [MarshalAs(UnmanagedType.LPUTF8Str)] string overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PlotLines([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr values, int values_count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PlotLinesCallbackEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr values_getter, System.IntPtr data, int values_count, int values_offset, [MarshalAs(UnmanagedType.LPUTF8Str)] string overlay_text, float scale_min, float scale_max, ImVec2 graph_size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PlotLinesCallback([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr values_getter, System.IntPtr data, int values_count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PlotHistogramEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr values, int values_count, int values_offset, [MarshalAs(UnmanagedType.LPUTF8Str)] string overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PlotHistogram([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr values, int values_count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PlotHistogramCallbackEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr values_getter, System.IntPtr data, int values_count, int values_offset, [MarshalAs(UnmanagedType.LPUTF8Str)] string overlay_text, float scale_min, float scale_max, ImVec2 graph_size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PlotHistogramCallback([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr values_getter, System.IntPtr data, int values_count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginMenuBar();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndMenuBar();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginMainMenuBar();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndMainMenuBar();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginMenuEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, [MarshalAs(UnmanagedType.I1)] bool enabled);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginMenu([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndMenu();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_MenuItemEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, [MarshalAs(UnmanagedType.LPUTF8Str)] string shortcut, [MarshalAs(UnmanagedType.I1)] bool selected, [MarshalAs(UnmanagedType.I1)] bool enabled);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_MenuItem([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_MenuItemBoolPtr([MarshalAs(UnmanagedType.LPUTF8Str)] string label, [MarshalAs(UnmanagedType.LPUTF8Str)] string shortcut, System.IntPtr p_selected, [MarshalAs(UnmanagedType.I1)] bool enabled);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginTooltip();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndTooltip();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetTooltipUnformatted([MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginItemTooltip();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetItemTooltipUnformatted([MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginPopup([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginPopupModal([MarshalAs(UnmanagedType.LPUTF8Str)] string name, System.IntPtr p_open, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndPopup();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_OpenPopup([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int popup_flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_OpenPopupID(uint id, int popup_flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_OpenPopupOnItemClick([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int popup_flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_CloseCurrentPopup();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginPopupContextItemEx([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int popup_flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginPopupContextItem();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginPopupContextWindowEx([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int popup_flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginPopupContextWindow();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginPopupContextVoidEx([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int popup_flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginPopupContextVoid();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsPopupOpen([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginTableEx([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int columns, int flags, ImVec2 outer_size, float inner_width);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginTable([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int columns, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndTable();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TableNextRowEx(int row_flags, float min_row_height);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TableNextRow();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TableNextColumn();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TableSetColumnIndex(int column_n);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TableSetupColumnEx([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int flags, float init_width_or_weight, uint user_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TableSetupColumn([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TableSetupScrollFreeze(int cols, int rows);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TableHeader([MarshalAs(UnmanagedType.LPUTF8Str)] string label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TableHeadersRow();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TableAngledHeadersRow();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_TableGetSortSpecs();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_TableGetColumnCount();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_TableGetColumnIndex();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_TableGetRowIndex();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_TableGetColumnName(int column_n);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_TableGetColumnFlags(int column_n);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TableSetColumnEnabled(int column_n, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_TableGetHoveredColumn();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_TableSetBgColor(int target, uint color, int column_n);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ColumnsEx(int count, [MarshalAs(UnmanagedType.LPUTF8Str)] string id, [MarshalAs(UnmanagedType.I1)] bool borders);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_Columns();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_NextColumn();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_GetColumnIndex();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetColumnWidth(int column_index);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetColumnWidth(int column_index, float width);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGui_GetColumnOffset(int column_index);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetColumnOffset(int column_index, float offset_x);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_GetColumnsCount();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginTabBar([MarshalAs(UnmanagedType.LPUTF8Str)] string str_id, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndTabBar();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginTabItem([MarshalAs(UnmanagedType.LPUTF8Str)] string label, System.IntPtr p_open, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndTabItem();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_TabItemButton([MarshalAs(UnmanagedType.LPUTF8Str)] string label, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetTabItemClosed([MarshalAs(UnmanagedType.LPUTF8Str)] string tab_or_docked_window_label);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_DockSpaceEx(uint dockspace_id, ImVec2 size, int flags, System.IntPtr window_class);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_DockSpace(uint dockspace_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_DockSpaceOverViewportEx(uint dockspace_id, System.IntPtr viewport, int flags, System.IntPtr window_class);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_DockSpaceOverViewport();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowDockID(uint dock_id, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextWindowClass(System.IntPtr window_class);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_GetWindowDockID();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsWindowDocked();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_LogToTTY(int auto_open_depth);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_LogToFile(int auto_open_depth, [MarshalAs(UnmanagedType.LPUTF8Str)] string filename);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_LogToClipboard(int auto_open_depth);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_LogFinish();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_LogButtons();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_LogTextUnformatted([MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginDragDropSource(int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SetDragDropPayload([MarshalAs(UnmanagedType.LPUTF8Str)] string type, System.IntPtr data, System.IntPtr sz, int cond);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndDragDropSource();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_BeginDragDropTarget();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_AcceptDragDropPayload([MarshalAs(UnmanagedType.LPUTF8Str)] string type, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndDragDropTarget();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetDragDropPayload();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_BeginDisabled([MarshalAs(UnmanagedType.I1)] bool disabled);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_EndDisabled();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PushClipRect(ImVec2 clip_rect_min, ImVec2 clip_rect_max, [MarshalAs(UnmanagedType.I1)] bool intersect_with_current_clip_rect);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_PopClipRect();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetItemDefaultFocus();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetKeyboardFocusHereEx(int offset);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetKeyboardFocusHere();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNavCursorVisible([MarshalAs(UnmanagedType.I1)] bool visible);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextItemAllowOverlap();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemHovered(int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemActive();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemFocused();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemClickedEx(int mouse_button);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemClicked();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemVisible();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemEdited();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemActivated();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemDeactivated();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemDeactivatedAfterEdit();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsItemToggledOpen();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsAnyItemHovered();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsAnyItemActive();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsAnyItemFocused();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_GetItemID();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetItemRectMin();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetItemRectMax();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetItemRectSize();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_GetItemFlags();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetMainViewport();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetBackgroundDrawListEx(System.IntPtr viewport);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetBackgroundDrawList();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetForegroundDrawListEx(System.IntPtr viewport);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetForegroundDrawList();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsRectVisibleBySize(ImVec2 size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsRectVisible(ImVec2 rect_min, ImVec2 rect_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern double ImGui_GetTime();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_GetFrameCount();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetDrawListSharedData();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetStyleColorName(int idx);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetStateStorage(System.IntPtr storage);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetStateStorage();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_CalcTextSizeEx([MarshalAs(UnmanagedType.LPUTF8Str)] string text, [MarshalAs(UnmanagedType.LPUTF8Str)] string text_end, [MarshalAs(UnmanagedType.I1)] bool hide_text_after_double_hash, float wrap_width);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_CalcTextSize([MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec4 ImGui_ColorConvertU32ToFloat4(uint @in);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGui_ColorConvertFloat4ToU32(ImVec4 @in);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ColorConvertRGBtoHSV(float r, float g, float b, System.IntPtr out_h, System.IntPtr out_s, System.IntPtr out_v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ColorConvertHSVtoRGB(float h, float s, float v, System.IntPtr out_r, System.IntPtr out_g, System.IntPtr out_b);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsKeyDown(int key);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsKeyPressedEx(int key, [MarshalAs(UnmanagedType.I1)] bool repeat);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsKeyPressed(int key);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsKeyReleased(int key);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsKeyChordPressed(int key_chord);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_GetKeyPressedAmount(int key, float repeat_delay, float rate);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetKeyName(int key);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextFrameWantCaptureKeyboard([MarshalAs(UnmanagedType.I1)] bool want_capture_keyboard);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_Shortcut(int key_chord, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextItemShortcut(int key_chord, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_SetItemKeyOwner(int key);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsMouseDown(int button);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsMouseClickedEx(int button, [MarshalAs(UnmanagedType.I1)] bool repeat);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsMouseClicked(int button);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsMouseReleased(int button);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsMouseDoubleClicked(int button);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsMouseReleasedWithDelay(int button, float delay);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_GetMouseClickedCount(int button);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsMouseHoveringRectEx(ImVec2 r_min, ImVec2 r_max, [MarshalAs(UnmanagedType.I1)] bool clip);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsMouseHoveringRect(ImVec2 r_min, ImVec2 r_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsMousePosValid(System.IntPtr mouse_pos);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsAnyMouseDown();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetMousePos();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetMousePosOnOpeningCurrentPopup();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_IsMouseDragging(int button, float lock_threshold);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGui_GetMouseDragDelta(int button, float lock_threshold);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ResetMouseDragDeltaEx(int button);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_ResetMouseDragDelta();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGui_GetMouseCursor();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetMouseCursor(int cursor_type);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetNextFrameWantCaptureMouse([MarshalAs(UnmanagedType.I1)] bool want_capture_mouse);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_GetClipboardText();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetClipboardText([MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_LoadIniSettingsFromDisk([MarshalAs(UnmanagedType.LPUTF8Str)] string ini_filename);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_LoadIniSettingsFromMemory([MarshalAs(UnmanagedType.LPUTF8Str)] string ini_data, System.IntPtr ini_size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SaveIniSettingsToDisk([MarshalAs(UnmanagedType.LPUTF8Str)] string ini_filename);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_SaveIniSettingsToMemory(System.IntPtr out_ini_size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_DebugTextEncoding([MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_DebugFlashStyleColor(int idx);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_DebugStartItemPicker();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGui_DebugCheckVersionAndDataLayout([MarshalAs(UnmanagedType.LPUTF8Str)] string version_str, System.IntPtr sz_io, System.IntPtr sz_style, System.IntPtr sz_vec2, System.IntPtr sz_vec4, System.IntPtr sz_drawvert, System.IntPtr sz_drawidx);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_DebugLogUnformatted([MarshalAs(UnmanagedType.LPUTF8Str)] string text);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_SetAllocatorFunctions(System.IntPtr alloc_func, System.IntPtr free_func, System.IntPtr user_data);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_GetAllocatorFunctions(System.IntPtr p_alloc_func, System.IntPtr p_free_func, System.IntPtr p_user_data);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_MemAlloc(System.IntPtr size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_MemFree(System.IntPtr ptr);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_UpdatePlatformWindows();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_RenderPlatformWindowsDefaultEx(System.IntPtr platform_render_arg, System.IntPtr renderer_render_arg);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_RenderPlatformWindowsDefault();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGui_DestroyPlatformWindows();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_FindViewportByID(uint viewport_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGui_FindViewportByPlatformHandle(System.IntPtr platform_handle);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImVector_Construct(System.IntPtr vector);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImVector_Destruct(System.IntPtr vector);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiPlatformIO_SetPlatform_GetWindowWorkAreaInsets(System.IntPtr getWindowWorkAreaInsetsFunc);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiPlatformIO_SetPlatform_GetWindowFramebufferScale(System.IntPtr getWindowFramebufferScaleFunc);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiPlatformIO_SetPlatform_GetWindowPos(System.IntPtr getWindowPosFunc);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiPlatformIO_SetPlatform_GetWindowSize(System.IntPtr getWindowSizeFunc);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiStyle_ScaleAllSizes(System.IntPtr self, float scale_factor);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_AddKeyEvent(System.IntPtr self, int key, [MarshalAs(UnmanagedType.I1)] bool down);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_AddKeyAnalogEvent(System.IntPtr self, int key, [MarshalAs(UnmanagedType.I1)] bool down, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_AddMousePosEvent(System.IntPtr self, float x, float y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_AddMouseButtonEvent(System.IntPtr self, int button, [MarshalAs(UnmanagedType.I1)] bool down);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_AddMouseWheelEvent(System.IntPtr self, float wheel_x, float wheel_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_AddMouseSourceEvent(System.IntPtr self, int source);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_AddMouseViewportEvent(System.IntPtr self, uint id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_AddFocusEvent(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool focused);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_AddInputCharacter(System.IntPtr self, uint c);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_AddInputCharacterUTF16(System.IntPtr self, ushort c);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_AddInputCharactersUTF8(System.IntPtr self, [MarshalAs(UnmanagedType.LPUTF8Str)] string str);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_SetKeyEventNativeDataEx(System.IntPtr self, int key, int native_keycode, int native_scancode, int native_legacy_index);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_SetKeyEventNativeData(System.IntPtr self, int key, int native_keycode, int native_scancode);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_SetAppAcceptingEvents(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool accepting_events);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_ClearEventsQueue(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_ClearInputKeys(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiIO_ClearInputMouse(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiInputTextCallbackData_DeleteChars(System.IntPtr self, int pos, int bytes_count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiInputTextCallbackData_InsertChars(System.IntPtr self, int pos, [MarshalAs(UnmanagedType.LPUTF8Str)] string text, [MarshalAs(UnmanagedType.LPUTF8Str)] string text_end);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiInputTextCallbackData_SelectAll(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiInputTextCallbackData_SetSelection(System.IntPtr self, int s, int e);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiInputTextCallbackData_ClearSelection(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGuiInputTextCallbackData_HasSelection(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiPayload_Clear(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGuiPayload_IsDataType(System.IntPtr self, [MarshalAs(UnmanagedType.LPUTF8Str)] string type);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGuiPayload_IsPreview(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGuiPayload_IsDelivery(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGuiTextBuffer_begin(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGuiTextBuffer_end(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGuiTextBuffer_size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGuiTextBuffer_empty(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiTextBuffer_clear(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiTextBuffer_resize(System.IntPtr self, int size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiTextBuffer_reserve(System.IntPtr self, int capacity);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGuiTextBuffer_c_str(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiTextBuffer_append(System.IntPtr self, [MarshalAs(UnmanagedType.LPUTF8Str)] string str, [MarshalAs(UnmanagedType.LPUTF8Str)] string str_end);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiStorage_Clear(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImGuiStorage_GetInt(System.IntPtr self, uint key, int default_val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiStorage_SetInt(System.IntPtr self, uint key, int val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGuiStorage_GetBool(System.IntPtr self, uint key, [MarshalAs(UnmanagedType.I1)] bool default_val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiStorage_SetBool(System.IntPtr self, uint key, [MarshalAs(UnmanagedType.I1)] bool val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImGuiStorage_GetFloat(System.IntPtr self, uint key, float default_val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiStorage_SetFloat(System.IntPtr self, uint key, float val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGuiStorage_GetVoidPtr(System.IntPtr self, uint key);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiStorage_SetVoidPtr(System.IntPtr self, uint key, System.IntPtr val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGuiStorage_GetIntRef(System.IntPtr self, uint key, int default_val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGuiStorage_GetBoolRef(System.IntPtr self, uint key, [MarshalAs(UnmanagedType.I1)] bool default_val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGuiStorage_GetFloatRef(System.IntPtr self, uint key, float default_val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGuiStorage_GetVoidPtrRef(System.IntPtr self, uint key, System.IntPtr default_val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiStorage_BuildSortByKey(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiStorage_SetAllInt(System.IntPtr self, int val);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiListClipper_Begin(System.IntPtr self, int items_count, float items_height);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiListClipper_End(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGuiListClipper_Step(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiListClipper_IncludeItemByIndex(System.IntPtr self, int item_index);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiListClipper_IncludeItemsByIndex(System.IntPtr self, int item_begin, int item_end);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiListClipper_SeekCursorForItem(System.IntPtr self, int item_index);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImColor_SetHSV(System.IntPtr self, float h, float s, float v, float a);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiSelectionBasicStorage_ApplyRequests(System.IntPtr self, System.IntPtr ms_io);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGuiSelectionBasicStorage_Contains(System.IntPtr self, uint id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiSelectionBasicStorage_Clear(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiSelectionBasicStorage_Swap(System.IntPtr self, System.IntPtr r);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiSelectionBasicStorage_SetItemSelected(System.IntPtr self, uint id, [MarshalAs(UnmanagedType.I1)] bool selected);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImGuiSelectionBasicStorage_GetNextSelectedItem(System.IntPtr self, System.IntPtr opaque_it, System.IntPtr out_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint ImGuiSelectionBasicStorage_GetStorageIdFromIndex(System.IntPtr self, int idx);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiSelectionExternalStorage_ApplyRequests(System.IntPtr self, System.IntPtr ms_io);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ulong ImDrawCmd_GetTexID(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawListSplitter_Clear(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawListSplitter_ClearFreeMemory(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawListSplitter_Split(System.IntPtr self, System.IntPtr draw_list, int count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawListSplitter_Merge(System.IntPtr self, System.IntPtr draw_list);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawListSplitter_SetCurrentChannel(System.IntPtr self, System.IntPtr draw_list, int channel_idx);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PushClipRect(System.IntPtr self, ImVec2 clip_rect_min, ImVec2 clip_rect_max, [MarshalAs(UnmanagedType.I1)] bool intersect_with_current_clip_rect);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PushClipRectFullScreen(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PopClipRect(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PushTexture(System.IntPtr self, ImTextureRef tex_ref);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PopTexture(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImDrawList_GetClipRectMin(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImDrawList_GetClipRectMax(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddLineEx(System.IntPtr self, ImVec2 p1, ImVec2 p2, uint col, float thickness);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddLine(System.IntPtr self, ImVec2 p1, ImVec2 p2, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddLineHEx(System.IntPtr self, float min_x, float max_x, float y, uint col, float thickness);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddLineH(System.IntPtr self, float min_x, float max_x, float y, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddLineVEx(System.IntPtr self, float x, float min_y, float max_y, uint col, float thickness);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddLineV(System.IntPtr self, float x, float min_y, float max_y, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddRectEx(System.IntPtr self, ImVec2 p_min, ImVec2 p_max, uint col, float rounding, float thickness, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddRect(System.IntPtr self, ImVec2 p_min, ImVec2 p_max, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddRectFilledEx(System.IntPtr self, ImVec2 p_min, ImVec2 p_max, uint col, float rounding, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddRectFilled(System.IntPtr self, ImVec2 p_min, ImVec2 p_max, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddRectFilledMultiColor(System.IntPtr self, ImVec2 p_min, ImVec2 p_max, uint col_upr_left, uint col_upr_right, uint col_bot_right, uint col_bot_left);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddQuadEx(System.IntPtr self, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImVec2 p4, uint col, float thickness);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddQuad(System.IntPtr self, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImVec2 p4, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddQuadFilled(System.IntPtr self, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImVec2 p4, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddTriangleEx(System.IntPtr self, ImVec2 p1, ImVec2 p2, ImVec2 p3, uint col, float thickness);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddTriangle(System.IntPtr self, ImVec2 p1, ImVec2 p2, ImVec2 p3, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddTriangleFilled(System.IntPtr self, ImVec2 p1, ImVec2 p2, ImVec2 p3, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddCircleEx(System.IntPtr self, ImVec2 center, float radius, uint col, int num_segments, float thickness);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddCircle(System.IntPtr self, ImVec2 center, float radius, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddCircleFilled(System.IntPtr self, ImVec2 center, float radius, uint col, int num_segments);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddNgonEx(System.IntPtr self, ImVec2 center, float radius, uint col, int num_segments, float thickness);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddNgon(System.IntPtr self, ImVec2 center, float radius, uint col, int num_segments);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddNgonFilled(System.IntPtr self, ImVec2 center, float radius, uint col, int num_segments);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddEllipseEx(System.IntPtr self, ImVec2 center, ImVec2 radius, uint col, float rot, int num_segments, float thickness);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddEllipse(System.IntPtr self, ImVec2 center, ImVec2 radius, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddEllipseFilledEx(System.IntPtr self, ImVec2 center, ImVec2 radius, uint col, float rot, int num_segments);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddEllipseFilled(System.IntPtr self, ImVec2 center, ImVec2 radius, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddTextEx(System.IntPtr self, ImVec2 pos, uint col, [MarshalAs(UnmanagedType.LPUTF8Str)] string text_begin, [MarshalAs(UnmanagedType.LPUTF8Str)] string text_end);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddText(System.IntPtr self, ImVec2 pos, uint col, [MarshalAs(UnmanagedType.LPUTF8Str)] string text_begin);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddTextImFontPtrEx(System.IntPtr self, System.IntPtr font, float font_size, ImVec2 pos, uint col, [MarshalAs(UnmanagedType.LPUTF8Str)] string text_begin, [MarshalAs(UnmanagedType.LPUTF8Str)] string text_end, float wrap_width, System.IntPtr cpu_fine_clip_rect);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddTextImFontPtr(System.IntPtr self, System.IntPtr font, float font_size, ImVec2 pos, uint col, [MarshalAs(UnmanagedType.LPUTF8Str)] string text_begin);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddBezierCubic(System.IntPtr self, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImVec2 p4, uint col, float thickness, int num_segments);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddBezierQuadratic(System.IntPtr self, ImVec2 p1, ImVec2 p2, ImVec2 p3, uint col, float thickness, int num_segments);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddPolyline(System.IntPtr self, System.IntPtr points, int num_points, uint col, float thickness, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddConvexPolyFilled(System.IntPtr self, System.IntPtr points, int num_points, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddConcavePolyFilled(System.IntPtr self, System.IntPtr points, int num_points, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddImageEx(System.IntPtr self, ImTextureRef tex_ref, ImVec2 p_min, ImVec2 p_max, ImVec2 uv_min, ImVec2 uv_max, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddImage(System.IntPtr self, ImTextureRef tex_ref, ImVec2 p_min, ImVec2 p_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddImageQuadEx(System.IntPtr self, ImTextureRef tex_ref, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImVec2 p4, ImVec2 uv1, ImVec2 uv2, ImVec2 uv3, ImVec2 uv4, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddImageQuad(System.IntPtr self, ImTextureRef tex_ref, ImVec2 p1, ImVec2 p2, ImVec2 p3, ImVec2 p4);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddImageRounded(System.IntPtr self, ImTextureRef tex_ref, ImVec2 p_min, ImVec2 p_max, ImVec2 uv_min, ImVec2 uv_max, uint col, float rounding, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathClear(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathLineTo(System.IntPtr self, ImVec2 pos);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathLineToMergeDuplicate(System.IntPtr self, ImVec2 pos);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathFillConvex(System.IntPtr self, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathFillConcave(System.IntPtr self, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathStroke(System.IntPtr self, uint col, float thickness, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathArcTo(System.IntPtr self, ImVec2 center, float radius, float a_min, float a_max, int num_segments);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathArcToFast(System.IntPtr self, ImVec2 center, float radius, int a_min_of_12, int a_max_of_12);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathEllipticalArcToEx(System.IntPtr self, ImVec2 center, ImVec2 radius, float rot, float a_min, float a_max, int num_segments);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathEllipticalArcTo(System.IntPtr self, ImVec2 center, ImVec2 radius, float rot, float a_min, float a_max);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathBezierCubicCurveTo(System.IntPtr self, ImVec2 p2, ImVec2 p3, ImVec2 p4, int num_segments);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathBezierQuadraticCurveTo(System.IntPtr self, ImVec2 p2, ImVec2 p3, int num_segments);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PathRect(System.IntPtr self, ImVec2 rect_min, ImVec2 rect_max, float rounding, int flags);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddCallbackEx(System.IntPtr self, System.IntPtr callback, System.IntPtr userdata, System.IntPtr userdata_size);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddCallback(System.IntPtr self, System.IntPtr callback);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_AddDrawCmd(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImDrawList_CloneOutput(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_ChannelsSplit(System.IntPtr self, int count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_ChannelsMerge(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_ChannelsSetCurrent(System.IntPtr self, int n);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PrimReserve(System.IntPtr self, int idx_count, int vtx_count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PrimUnreserve(System.IntPtr self, int idx_count, int vtx_count);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PrimRect(System.IntPtr self, ImVec2 a, ImVec2 b, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PrimRectUV(System.IntPtr self, ImVec2 a, ImVec2 b, ImVec2 uv_a, ImVec2 uv_b, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PrimQuadUV(System.IntPtr self, ImVec2 a, ImVec2 b, ImVec2 c, ImVec2 d, ImVec2 uv_a, ImVec2 uv_b, ImVec2 uv_c, ImVec2 uv_d, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PrimWriteVtx(System.IntPtr self, ImVec2 pos, ImVec2 uv, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PrimWriteIdx(System.IntPtr self, ushort idx);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList_PrimVtx(System.IntPtr self, ImVec2 pos, ImVec2 uv, uint col);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList__SetDrawListSharedData(System.IntPtr self, System.IntPtr data);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList__ResetForNewFrame(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList__ClearFreeMemory(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList__PopUnusedDrawCmd(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList__TryMergeDrawCmds(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList__OnChangedClipRect(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList__OnChangedTexture(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList__OnChangedVtxOffset(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList__SetTexture(System.IntPtr self, ImTextureRef tex_ref);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImDrawList__CalcCircleAutoSegmentCount(System.IntPtr self, float radius);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList__PathArcToFastEx(System.IntPtr self, ImVec2 center, float radius, int a_min_sample, int a_max_sample, int a_step);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawList__PathArcToN(System.IntPtr self, ImVec2 center, float radius, float a_min, float a_max, int num_segments);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawData_Clear(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawData_AddDrawList(System.IntPtr self, System.IntPtr draw_list);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawData_DeIndexAllBuffers(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImDrawData_ScaleClipRects(System.IntPtr self, ImVec2 fb_scale);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImTextureData_Create(System.IntPtr self, int format, int w, int h);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImTextureData_DestroyPixels(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImTextureData_GetPixels(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImTextureData_GetPixelsAt(System.IntPtr self, int x, int y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImTextureData_GetSizeInBytes(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImTextureData_GetPitch(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImTextureRef ImTextureData_GetTexRef(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ulong ImTextureData_GetTexID(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImTextureData_SetTexID(System.IntPtr self, ulong tex_id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImTextureData_SetStatus(System.IntPtr self, int status);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontGlyphRangesBuilder_Clear(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImFontGlyphRangesBuilder_GetBit(System.IntPtr self, System.IntPtr n);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontGlyphRangesBuilder_SetBit(System.IntPtr self, System.IntPtr n);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontGlyphRangesBuilder_AddChar(System.IntPtr self, ushort c);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontGlyphRangesBuilder_AddText(System.IntPtr self, [MarshalAs(UnmanagedType.LPUTF8Str)] string text, [MarshalAs(UnmanagedType.LPUTF8Str)] string text_end);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontGlyphRangesBuilder_AddRanges(System.IntPtr self, System.IntPtr ranges);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontGlyphRangesBuilder_BuildRanges(System.IntPtr self, System.IntPtr out_ranges);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImFontAtlas_AddFont(System.IntPtr self, System.IntPtr font_cfg);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImFontAtlas_AddFontDefault(System.IntPtr self, System.IntPtr font_cfg);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImFontAtlas_AddFontDefaultVector(System.IntPtr self, System.IntPtr font_cfg);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImFontAtlas_AddFontDefaultBitmap(System.IntPtr self, System.IntPtr font_cfg);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImFontAtlas_AddFontFromFileTTF(System.IntPtr self, [MarshalAs(UnmanagedType.LPUTF8Str)] string filename, float size_pixels, System.IntPtr font_cfg, System.IntPtr glyph_ranges);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImFontAtlas_AddFontFromMemoryTTF(System.IntPtr self, System.IntPtr font_data, int font_data_size, float size_pixels, System.IntPtr font_cfg, System.IntPtr glyph_ranges);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImFontAtlas_AddFontFromMemoryCompressedTTF(System.IntPtr self, System.IntPtr compressed_font_data, int compressed_font_data_size, float size_pixels, System.IntPtr font_cfg, System.IntPtr glyph_ranges);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(System.IntPtr self, [MarshalAs(UnmanagedType.LPUTF8Str)] string compressed_font_data_base85, float size_pixels, System.IntPtr font_cfg, System.IntPtr glyph_ranges);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontAtlas_RemoveFont(System.IntPtr self, System.IntPtr font);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontAtlas_Clear(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontAtlas_ClearFonts(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontAtlas_CompactCache(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontAtlas_SetFontLoader(System.IntPtr self, System.IntPtr font_loader);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontAtlas_ClearInputData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontAtlas_ClearTexData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImFontAtlas_GetGlyphRangesDefault(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int ImFontAtlas_AddCustomRect(System.IntPtr self, int width, int height, System.IntPtr out_r);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontAtlas_RemoveCustomRect(System.IntPtr self, int id);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImFontAtlas_GetCustomRect(System.IntPtr self, int id, System.IntPtr out_r);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImFontBaked_ClearOutputData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImFontBaked_FindGlyph(System.IntPtr self, ushort c);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImFontBaked_FindGlyphNoFallback(System.IntPtr self, ushort c);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float ImFontBaked_GetCharAdvance(System.IntPtr self, ushort c);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool ImFontBaked_IsGlyphLoaded(System.IntPtr self, ushort c);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGuiViewport_GetCenter(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ImVec2 ImGuiViewport_GetWorkCenter(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr ImGuiViewport_GetDebugName(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiPlatformIO_ClearPlatformHandlers(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void ImGuiPlatformIO_ClearRendererHandlers(System.IntPtr self);

    // ---- native memory helpers (no unsafe required) ----

    public static float GetF32(System.IntPtr a) { return System.BitConverter.Int32BitsToSingle(Marshal.ReadInt32(a)); }
    public static void SetF32(System.IntPtr a, float v) { Marshal.WriteInt32(a, System.BitConverter.SingleToInt32Bits(v)); }
    public static double GetF64(System.IntPtr a) { return System.BitConverter.Int64BitsToDouble(Marshal.ReadInt64(a)); }
    public static void SetF64(System.IntPtr a, double v) { Marshal.WriteInt64(a, System.BitConverter.DoubleToInt64Bits(v)); }
    public static int GetI32(System.IntPtr a) { return Marshal.ReadInt32(a); }
    public static void SetI32(System.IntPtr a, int v) { Marshal.WriteInt32(a, v); }
    public static int GetU16(System.IntPtr a) { return Marshal.ReadInt16(a) & 0xFFFF; }
    public static int GetU8(System.IntPtr a) { return Marshal.ReadByte(a); }
    public static void SetU8(System.IntPtr a, int v) { Marshal.WriteByte(a, (byte)v); }
    public static System.IntPtr Alloc(int size) { return Marshal.AllocHGlobal(size); }
    public static string ReadUTF8(System.IntPtr p) { return p == System.IntPtr.Zero ? null : Marshal.PtrToStringUTF8(p); }
    public static int WriteUTF8(string s, System.IntPtr buf, int maxBytes) {
        if (s == null) s = "";
        var bytes = System.Text.Encoding.UTF8.GetBytes(s);
        int n = bytes.Length;
        if (n > maxBytes - 1) { n = maxBytes - 1; while (n > 0 && (bytes[n] & 0xC0) == 0x80) n--; }
        Marshal.Copy(bytes, 0, buf, n);
        Marshal.WriteByte(buf, n, 0);
        return n;
    }

    // ---- struct field accessors, sizes ----

    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiTableSortSpecs_get_Specs(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiTableSortSpecs_set_Specs(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiTableSortSpecs_get_SpecsCount(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiTableSortSpecs_set_SpecsCount(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiTableSortSpecs_get_SpecsDirty(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiTableSortSpecs_set_SpecsDirty(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiTableSortSpecs();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImGuiTableColumnSortSpecs_get_ColumnUserID(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiTableColumnSortSpecs_set_ColumnUserID(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern short dcjs_ImGuiTableColumnSortSpecs_get_ColumnIndex(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiTableColumnSortSpecs_set_ColumnIndex(System.IntPtr self, short v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern short dcjs_ImGuiTableColumnSortSpecs_get_SortOrder(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiTableColumnSortSpecs_set_SortOrder(System.IntPtr self, short v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern byte dcjs_ImGuiTableColumnSortSpecs_get_SortDirection(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiTableColumnSortSpecs_set_SortDirection(System.IntPtr self, byte v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiTableColumnSortSpecs();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImGuiTextRange_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiTextRange_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImGuiTextRange_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiTextRange_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImGuiTextRange_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiTextRange_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImGuiTextRange();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_char_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_char_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_char_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_char_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_char_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_char_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_char();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImGuiStoragePair_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiStoragePair_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImGuiStoragePair_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiStoragePair_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImGuiStoragePair_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiStoragePair_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImGuiStoragePair();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImGuiSelectionRequest_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiSelectionRequest_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImGuiSelectionRequest_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiSelectionRequest_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImGuiSelectionRequest_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiSelectionRequest_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImGuiSelectionRequest();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawChannel_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawChannel_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawChannel_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawChannel_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImDrawChannel_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawChannel_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImDrawChannel();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawCmd_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawCmd_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawCmd_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawCmd_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImDrawCmd_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawCmd_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImDrawCmd();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawIdx_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawIdx_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawIdx_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawIdx_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImDrawIdx_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawIdx_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImDrawIdx();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawVert_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawVert_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawVert_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawVert_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImDrawVert_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawVert_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImDrawVert();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImVec2_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImVec2_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImVec2_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImVec2_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImVec2_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImVec2_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImVec2();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImVec4_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImVec4_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImVec4_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImVec4_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImVec4_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImVec4_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImVec4();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImTextureRef_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImTextureRef_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImTextureRef_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImTextureRef_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImTextureRef_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImTextureRef_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImTextureRef();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImU8_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImU8_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImU8_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImU8_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImU8_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImU8_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImU8();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawListPtr_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawListPtr_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawListPtr_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawListPtr_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImDrawListPtr_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawListPtr_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImDrawListPtr();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImTextureRect_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImTextureRect_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImTextureRect_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImTextureRect_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImTextureRect_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImTextureRect_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImTextureRect();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImU32_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImU32_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImU32_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImU32_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImU32_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImU32_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImU32();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImWchar_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImWchar_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImWchar_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImWchar_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImWchar_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImWchar_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImWchar();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImFontPtr_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontPtr_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImFontPtr_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontPtr_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImFontPtr_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontPtr_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImFontPtr();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImFontConfig_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontConfig_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImFontConfig_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontConfig_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImFontConfig_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontConfig_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImFontConfig();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawListSharedDataPtr_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawListSharedDataPtr_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImDrawListSharedDataPtr_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawListSharedDataPtr_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImDrawListSharedDataPtr_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImDrawListSharedDataPtr_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImDrawListSharedDataPtr();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_float_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_float_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_float_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_float_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_float_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_float_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_float();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImU16_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImU16_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImU16_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImU16_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImU16_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImU16_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImU16();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImFontGlyph_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontGlyph_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImFontGlyph_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontGlyph_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImFontGlyph_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontGlyph_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImFontGlyph();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImFontConfigPtr_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontConfigPtr_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImFontConfigPtr_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontConfigPtr_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImFontConfigPtr_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImFontConfigPtr_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImFontConfigPtr();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImGuiPlatformMonitor_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiPlatformMonitor_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImGuiPlatformMonitor_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiPlatformMonitor_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImGuiPlatformMonitor_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiPlatformMonitor_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImGuiPlatformMonitor();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImTextureDataPtr_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImTextureDataPtr_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImTextureDataPtr_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImTextureDataPtr_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImTextureDataPtr_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImTextureDataPtr_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImTextureDataPtr();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImGuiViewportPtr_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiViewportPtr_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImVector_ImGuiViewportPtr_get_Capacity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiViewportPtr_set_Capacity(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImVector_ImGuiViewportPtr_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImVector_ImGuiViewportPtr_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImVector_ImGuiViewportPtr();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_FontSizeBase(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_FontSizeBase(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_FontScaleMain(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_FontScaleMain(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_FontScaleDpi(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_FontScaleDpi(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_Alpha(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_Alpha(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_DisabledAlpha(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_DisabledAlpha(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_WindowPadding(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_WindowPadding(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_WindowRounding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_WindowRounding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_WindowBorderSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_WindowBorderSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_WindowBorderHoverPadding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_WindowBorderHoverPadding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_WindowMinSize(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_WindowMinSize(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_WindowTitleAlign(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_WindowTitleAlign(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiStyle_get_WindowMenuButtonPosition(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_WindowMenuButtonPosition(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_ChildRounding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ChildRounding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_ChildBorderSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ChildBorderSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_PopupRounding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_PopupRounding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_PopupBorderSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_PopupBorderSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_FramePadding(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_FramePadding(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_FrameRounding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_FrameRounding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_FrameBorderSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_FrameBorderSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_ItemSpacing(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ItemSpacing(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_ItemInnerSpacing(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ItemInnerSpacing(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_CellPadding(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_CellPadding(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_TouchExtraPadding(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TouchExtraPadding(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_IndentSpacing(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_IndentSpacing(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_ColumnsMinSpacing(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ColumnsMinSpacing(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_ScrollbarSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ScrollbarSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_ScrollbarRounding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ScrollbarRounding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_ScrollbarPadding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ScrollbarPadding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_GrabMinSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_GrabMinSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_GrabRounding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_GrabRounding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_LogSliderDeadzone(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_LogSliderDeadzone(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_ImageRounding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ImageRounding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_ImageBorderSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ImageBorderSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_TabRounding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TabRounding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_TabBorderSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TabBorderSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_TabMinWidthBase(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TabMinWidthBase(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_TabMinWidthShrink(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TabMinWidthShrink(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_TabCloseButtonMinWidthSelected(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TabCloseButtonMinWidthSelected(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_TabCloseButtonMinWidthUnselected(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TabCloseButtonMinWidthUnselected(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_TabBarBorderSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TabBarBorderSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_TabBarOverlineSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TabBarOverlineSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_TableAngledHeadersAngle(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TableAngledHeadersAngle(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_TableAngledHeadersTextAlign(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TableAngledHeadersTextAlign(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiStyle_get_TreeLinesFlags(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TreeLinesFlags(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_TreeLinesSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TreeLinesSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_TreeLinesRounding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_TreeLinesRounding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_DragDropTargetRounding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_DragDropTargetRounding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_DragDropTargetBorderSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_DragDropTargetBorderSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_DragDropTargetPadding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_DragDropTargetPadding(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_ColorMarkerSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ColorMarkerSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiStyle_get_ColorButtonPosition(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ColorButtonPosition(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_ButtonTextAlign(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_ButtonTextAlign(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_SelectableTextAlign(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_SelectableTextAlign(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_SeparatorSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_SeparatorSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_SeparatorTextBorderSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_SeparatorTextBorderSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_SeparatorTextAlign(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_SeparatorTextAlign(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_SeparatorTextPadding(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_SeparatorTextPadding(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_DisplayWindowPadding(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_DisplayWindowPadding(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_get_DisplaySafeAreaPadding(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_DisplaySafeAreaPadding(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiStyle_get_DockingNodeHasCloseButton(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_DockingNodeHasCloseButton(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_DockingSeparatorSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_DockingSeparatorSize(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_MouseCursorScale(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_MouseCursorScale(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiStyle_get_AntiAliasedLines(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_AntiAliasedLines(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiStyle_get_AntiAliasedLinesUseTex(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_AntiAliasedLinesUseTex(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiStyle_get_AntiAliasedFill(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_AntiAliasedFill(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_CurveTessellationTol(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_CurveTessellationTol(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_CircleTessellationMaxError(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_CircleTessellationMaxError(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_HoverStationaryDelay(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_HoverStationaryDelay(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_HoverDelayShort(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_HoverDelayShort(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiStyle_get_HoverDelayNormal(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_HoverDelayNormal(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiStyle_get_HoverFlagsForTooltipMouse(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_HoverFlagsForTooltipMouse(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiStyle_get_HoverFlagsForTooltipNav(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiStyle_set_HoverFlagsForTooltipNav(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiStyle();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiIO_get_ConfigFlags(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigFlags(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiIO_get_BackendFlags(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_BackendFlags(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_get_DisplaySize(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_DisplaySize(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_get_DisplayFramebufferScale(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_DisplayFramebufferScale(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_DeltaTime(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_DeltaTime(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_IniSavingRate(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_IniSavingRate(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_get_IniFilename(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_IniFilename(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_get_LogFilename(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_LogFilename(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_get_UserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_UserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_get_Fonts(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_Fonts(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_get_FontDefault(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_FontDefault(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_FontAllowUserScaling(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_FontAllowUserScaling(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigNavSwapGamepadButtons(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigNavSwapGamepadButtons(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigNavMoveSetMousePos(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigNavMoveSetMousePos(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigNavCaptureKeyboard(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigNavCaptureKeyboard(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigNavEscapeClearFocusItem(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigNavEscapeClearFocusItem(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigNavEscapeClearFocusWindow(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigNavEscapeClearFocusWindow(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigNavCursorVisibleAuto(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigNavCursorVisibleAuto(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigNavCursorVisibleAlways(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigNavCursorVisibleAlways(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDockingNoSplit(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDockingNoSplit(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDockingNoDockingOver(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDockingNoDockingOver(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDockingWithShift(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDockingWithShift(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDockingAlwaysTabBar(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDockingAlwaysTabBar(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDockingTransparentPayload(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDockingTransparentPayload(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigViewportsNoAutoMerge(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigViewportsNoAutoMerge(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigViewportsNoTaskBarIcon(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigViewportsNoTaskBarIcon(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigViewportsNoDecoration(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigViewportsNoDecoration(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigViewportsNoDefaultParent(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigViewportsNoDefaultParent(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigViewportsPlatformFocusSetsImGuiFocus(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigViewportsPlatformFocusSetsImGuiFocus(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDpiScaleFonts(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDpiScaleFonts(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDpiScaleViewports(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDpiScaleViewports(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_MouseDrawCursor(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MouseDrawCursor(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigMacOSXBehaviors(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigMacOSXBehaviors(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigInputTrickleEventQueue(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigInputTrickleEventQueue(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigInputTextCursorBlink(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigInputTextCursorBlink(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigInputTextEnterKeepActive(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigInputTextEnterKeepActive(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDragClickToInputText(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDragClickToInputText(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigWindowsResizeFromEdges(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigWindowsResizeFromEdges(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigWindowsMoveFromTitleBarOnly(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigWindowsMoveFromTitleBarOnly(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigWindowsCopyContentsWithCtrlC(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigWindowsCopyContentsWithCtrlC(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigScrollbarScrollByPage(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigScrollbarScrollByPage(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_ConfigMemoryCompactTimer(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigMemoryCompactTimer(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_MouseDoubleClickTime(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MouseDoubleClickTime(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_MouseDoubleClickMaxDist(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MouseDoubleClickMaxDist(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_MouseDragThreshold(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MouseDragThreshold(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_KeyRepeatDelay(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_KeyRepeatDelay(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_KeyRepeatRate(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_KeyRepeatRate(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigErrorRecovery(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigErrorRecovery(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableAssert(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableAssert(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableDebugLog(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableDebugLog(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableTooltip(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableTooltip(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDebugIsDebuggerPresent(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDebugIsDebuggerPresent(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDebugHighlightIdConflicts(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDebugHighlightIdConflicts(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDebugHighlightIdConflictsShowItemPicker(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDebugHighlightIdConflictsShowItemPicker(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDebugBeginReturnValueOnce(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDebugBeginReturnValueOnce(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDebugBeginReturnValueLoop(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDebugBeginReturnValueLoop(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDebugIgnoreFocusLoss(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDebugIgnoreFocusLoss(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_ConfigDebugIniSettings(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_ConfigDebugIniSettings(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_get_BackendPlatformName(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_BackendPlatformName(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_get_BackendRendererName(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_BackendRendererName(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_get_BackendPlatformUserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_BackendPlatformUserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_get_BackendRendererUserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_BackendRendererUserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_get_BackendLanguageUserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_BackendLanguageUserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_WantCaptureMouse(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_WantCaptureMouse(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_WantCaptureKeyboard(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_WantCaptureKeyboard(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_WantTextInput(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_WantTextInput(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_WantSetMousePos(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_WantSetMousePos(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_WantSaveIniSettings(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_WantSaveIniSettings(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_NavActive(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_NavActive(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_NavVisible(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_NavVisible(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_Framerate(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_Framerate(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiIO_get_MetricsRenderVertices(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MetricsRenderVertices(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiIO_get_MetricsRenderIndices(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MetricsRenderIndices(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiIO_get_MetricsRenderWindows(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MetricsRenderWindows(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiIO_get_MetricsActiveWindows(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MetricsActiveWindows(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_get_MouseDelta(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MouseDelta(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_get_Ctx(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_Ctx(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_get_MousePos(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MousePos(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_MouseWheel(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MouseWheel(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_MouseWheelH(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MouseWheelH(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiIO_get_MouseSource(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MouseSource(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImGuiIO_get_MouseHoveredViewport(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MouseHoveredViewport(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_KeyCtrl(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_KeyCtrl(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_KeyShift(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_KeyShift(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_KeyAlt(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_KeyAlt(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_KeySuper(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_KeySuper(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiIO_get_KeyMods(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_KeyMods(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_WantCaptureMouseUnlessPopupClose(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_WantCaptureMouseUnlessPopupClose(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_get_MousePosPrev(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MousePosPrev(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_MouseWheelRequestAxisSwap(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MouseWheelRequestAxisSwap(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_MouseCtrlLeftAsRightClick(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_MouseCtrlLeftAsRightClick(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiIO_get_PenPressure(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_PenPressure(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_AppFocusLost(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_AppFocusLost(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiIO_get_AppAcceptingEvents(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_AppAcceptingEvents(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImGuiIO_get_InputQueueSurrogate(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiIO_set_InputQueueSurrogate(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiIO_ptr_InputQueueCharacters(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiIO();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiInputTextCallbackData_get_Ctx(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_Ctx(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiInputTextCallbackData_get_EventFlag(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_EventFlag(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiInputTextCallbackData_get_Flags(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_Flags(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiInputTextCallbackData_get_UserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_UserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImGuiInputTextCallbackData_get_ID(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_ID(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiInputTextCallbackData_get_EventKey(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_EventKey(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImGuiInputTextCallbackData_get_EventChar(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_EventChar(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiInputTextCallbackData_get_EventActivated(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_EventActivated(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiInputTextCallbackData_get_BufDirty(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_BufDirty(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiInputTextCallbackData_get_Buf(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_Buf(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiInputTextCallbackData_get_BufTextLen(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_BufTextLen(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiInputTextCallbackData_get_BufSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_BufSize(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiInputTextCallbackData_get_CursorPos(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_CursorPos(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiInputTextCallbackData_get_SelectionStart(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_SelectionStart(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiInputTextCallbackData_get_SelectionEnd(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiInputTextCallbackData_set_SelectionEnd(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiInputTextCallbackData();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiSizeCallbackData_get_UserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSizeCallbackData_set_UserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSizeCallbackData_get_Pos(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSizeCallbackData_set_Pos(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSizeCallbackData_get_CurrentSize(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSizeCallbackData_set_CurrentSize(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSizeCallbackData_get_DesiredSize(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSizeCallbackData_set_DesiredSize(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiSizeCallbackData();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImGuiWindowClass_get_ClassId(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiWindowClass_set_ClassId(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImGuiWindowClass_get_ParentViewportId(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiWindowClass_set_ParentViewportId(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImGuiWindowClass_get_FocusRouteParentWindowId(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiWindowClass_set_FocusRouteParentWindowId(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiWindowClass_get_ViewportFlagsOverrideSet(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiWindowClass_set_ViewportFlagsOverrideSet(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiWindowClass_get_ViewportFlagsOverrideClear(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiWindowClass_set_ViewportFlagsOverrideClear(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiWindowClass_get_TabItemFlagsOverrideSet(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiWindowClass_set_TabItemFlagsOverrideSet(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiWindowClass_get_DockNodeFlagsOverrideSet(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiWindowClass_set_DockNodeFlagsOverrideSet(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiWindowClass_get_DockingAlwaysTabBar(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiWindowClass_set_DockingAlwaysTabBar(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiWindowClass_get_DockingAllowUnclassed(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiWindowClass_set_DockingAllowUnclassed(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiWindowClass_get_PlatformIconData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiWindowClass_set_PlatformIconData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiWindowClass();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPayload_get_Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPayload_set_Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiPayload_get_DataSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPayload_set_DataSize(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiPayload();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiTextBuffer_ptr_Buf(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiTextBuffer();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiStorage();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiListClipper_get_DisplayStart(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiListClipper_set_DisplayStart(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiListClipper_get_DisplayEnd(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiListClipper_set_DisplayEnd(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiListClipper_get_UserIndex(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiListClipper_set_UserIndex(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiListClipper_get_ItemsCount(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiListClipper_set_ItemsCount(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiListClipper_get_ItemsHeight(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiListClipper_set_ItemsHeight(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiListClipper_get_Flags(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiListClipper_set_Flags(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern double dcjs_ImGuiListClipper_get_StartPosY(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiListClipper_set_StartPosY(System.IntPtr self, double v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern double dcjs_ImGuiListClipper_get_StartSeekOffsetY(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiListClipper_set_StartSeekOffsetY(System.IntPtr self, double v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiListClipper_get_Ctx(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiListClipper_set_Ctx(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiListClipper_get_TempData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiListClipper_set_TempData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiListClipper();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImColor_get_Value(System.IntPtr self, out ImVec4 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImColor_set_Value(System.IntPtr self, float v_x, float v_y, float v_z, float v_w);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImColor();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiMultiSelectIO_ptr_Requests(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern long dcjs_ImGuiMultiSelectIO_get_RangeSrcItem(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiMultiSelectIO_set_RangeSrcItem(System.IntPtr self, long v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern long dcjs_ImGuiMultiSelectIO_get_NavIdItem(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiMultiSelectIO_set_NavIdItem(System.IntPtr self, long v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiMultiSelectIO_get_NavIdSelected(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiMultiSelectIO_set_NavIdSelected(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiMultiSelectIO_get_RangeSrcReset(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiMultiSelectIO_set_RangeSrcReset(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiMultiSelectIO_get_ItemsCount(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiMultiSelectIO_set_ItemsCount(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiMultiSelectIO();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiSelectionRequest_get_Type(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSelectionRequest_set_Type(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiSelectionRequest_get_Selected(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSelectionRequest_set_Selected(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern sbyte dcjs_ImGuiSelectionRequest_get_RangeDirection(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSelectionRequest_set_RangeDirection(System.IntPtr self, sbyte v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern long dcjs_ImGuiSelectionRequest_get_RangeFirstItem(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSelectionRequest_set_RangeFirstItem(System.IntPtr self, long v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern long dcjs_ImGuiSelectionRequest_get_RangeLastItem(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSelectionRequest_set_RangeLastItem(System.IntPtr self, long v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiSelectionRequest();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiSelectionBasicStorage_get_Size(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSelectionBasicStorage_set_Size(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiSelectionBasicStorage_get_PreserveOrder(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSelectionBasicStorage_set_PreserveOrder(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiSelectionBasicStorage_get_UserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSelectionBasicStorage_set_UserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiSelectionBasicStorage_getp_AdapterIndexToStorageId(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiSelectionBasicStorage_get__SelectionOrder(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSelectionBasicStorage_set__SelectionOrder(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiSelectionBasicStorage_ptr__Storage(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiSelectionBasicStorage();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiSelectionExternalStorage_get_UserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiSelectionExternalStorage_set_UserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiSelectionExternalStorage_getp_AdapterSetItemSelected(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiSelectionExternalStorage();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawCmd_get_ClipRect(System.IntPtr self, out ImVec4 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawCmd_set_ClipRect(System.IntPtr self, float v_x, float v_y, float v_z, float v_w);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawCmd_get_TexRef(System.IntPtr self, out ImTextureRef v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawCmd_set_TexRef(System.IntPtr self, System.IntPtr v__TexData, ulong v__TexID);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImDrawCmd_get_VtxOffset(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawCmd_set_VtxOffset(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImDrawCmd_get_IdxOffset(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawCmd_set_IdxOffset(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImDrawCmd_get_ElemCount(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawCmd_set_ElemCount(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawCmd_get_UserCallback(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawCmd_set_UserCallback(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawCmd_get_UserCallbackData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawCmd_set_UserCallbackData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImDrawCmd_get_UserCallbackDataSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawCmd_set_UserCallbackDataSize(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImDrawCmd_get_UserCallbackDataOffset(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawCmd_set_UserCallbackDataOffset(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImDrawCmd();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawVert_get_pos(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawVert_set_pos(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawVert_get_uv(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawVert_set_uv(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImDrawVert_get_col(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawVert_set_col(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImDrawVert();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImDrawListSplitter_get__Current(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawListSplitter_set__Current(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImDrawListSplitter_get__Count(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawListSplitter_set__Count(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawListSplitter_ptr__Channels(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImDrawListSplitter();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_ptr_CmdBuffer(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_ptr_IdxBuffer(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_ptr_VtxBuffer(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImDrawList_get_Flags(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawList_set_Flags(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImDrawList_get__VtxCurrentIdx(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawList_set__VtxCurrentIdx(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_get__Data(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawList_set__Data(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_get__VtxWritePtr(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawList_set__VtxWritePtr(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_get__IdxWritePtr(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawList_set__IdxWritePtr(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_ptr__Path(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_ptr__Splitter(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_ptr__ClipRectStack(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_ptr__TextureStack(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_ptr__CallbacksDataBuf(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImDrawList_get__FringeScale(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawList_set__FringeScale(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawList_get__OwnerName(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawList_set__OwnerName(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImDrawList();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImDrawData_get_Valid(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_set_Valid(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImDrawData_get_CmdListsCount(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_set_CmdListsCount(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImDrawData_get_TotalIdxCount(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_set_TotalIdxCount(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImDrawData_get_TotalVtxCount(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_set_TotalVtxCount(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawData_ptr_CmdLists(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_get_DisplayPos(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_set_DisplayPos(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_get_DisplaySize(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_set_DisplaySize(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_get_FramebufferScale(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_set_FramebufferScale(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawData_get_OwnerViewport(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_set_OwnerViewport(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImDrawData_get_Textures(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImDrawData_set_Textures(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImDrawData();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImTextureRect_get_x(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureRect_set_x(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImTextureRect_get_y(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureRect_set_y(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImTextureRect_get_w(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureRect_set_w(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImTextureRect_get_h(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureRect_set_h(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImTextureRect();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImTextureData_get_UniqueID(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_UniqueID(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImTextureData_get_Status(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_Status(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImTextureData_get_BackendUserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_BackendUserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ulong dcjs_ImTextureData_get_TexID(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_TexID(System.IntPtr self, ulong v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImTextureData_get_Format(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_Format(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImTextureData_get_Width(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_Width(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImTextureData_get_Height(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_Height(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImTextureData_get_BytesPerPixel(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_BytesPerPixel(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImTextureData_get_Pixels(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_Pixels(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImTextureData_ptr_UsedRect(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImTextureData_ptr_UpdateRect(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImTextureData_ptr_Updates(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImTextureData_get_UnusedFrames(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_UnusedFrames(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImTextureData_get_RefCount(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_RefCount(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImTextureData_get_UseColors(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_UseColors(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImTextureData_get_WantDestroyNextFrame(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImTextureData_set_WantDestroyNextFrame(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImTextureData();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImFontConfig_get_FontData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_FontData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImFontConfig_get_FontDataSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_FontDataSize(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImFontConfig_get_FontDataOwnedByAtlas(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_FontDataOwnedByAtlas(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImFontConfig_get_MergeMode(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_MergeMode(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImFontConfig_get_PixelSnapH(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_PixelSnapH(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern sbyte dcjs_ImFontConfig_get_OversampleH(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_OversampleH(System.IntPtr self, sbyte v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern sbyte dcjs_ImFontConfig_get_OversampleV(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_OversampleV(System.IntPtr self, sbyte v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImFontConfig_get_EllipsisChar(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_EllipsisChar(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontConfig_get_SizePixels(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_SizePixels(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImFontConfig_get_GlyphRanges(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_GlyphRanges(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImFontConfig_get_GlyphExcludeRanges(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_GlyphExcludeRanges(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_get_GlyphOffset(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_GlyphOffset(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontConfig_get_GlyphMinAdvanceX(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_GlyphMinAdvanceX(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontConfig_get_GlyphMaxAdvanceX(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_GlyphMaxAdvanceX(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontConfig_get_GlyphExtraAdvanceX(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_GlyphExtraAdvanceX(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImFontConfig_get_FontNo(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_FontNo(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImFontConfig_get_FontLoaderFlags(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_FontLoaderFlags(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontConfig_get_RasterizerMultiply(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_RasterizerMultiply(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontConfig_get_RasterizerDensity(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_RasterizerDensity(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontConfig_get_ExtraSizeScale(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontConfig_set_ExtraSizeScale(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImFontConfig();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImFontGlyph_get_Colored(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_Colored(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImFontGlyph_get_Visible(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_Visible(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImFontGlyph_get_SourceIdx(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_SourceIdx(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImFontGlyph_get_Codepoint(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_Codepoint(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontGlyph_get_AdvanceX(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_AdvanceX(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontGlyph_get_X0(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_X0(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontGlyph_get_Y0(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_Y0(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontGlyph_get_X1(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_X1(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontGlyph_get_Y1(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_Y1(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontGlyph_get_U0(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_U0(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontGlyph_get_V0(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_V0(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontGlyph_get_U1(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_U1(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImFontGlyph_get_V1(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_V1(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImFontGlyph_get_PackId(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontGlyph_set_PackId(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImFontGlyph();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImFontGlyphRangesBuilder_ptr_UsedChars(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImFontGlyphRangesBuilder();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImFontAtlasRect_get_x(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlasRect_set_x(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImFontAtlasRect_get_y(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlasRect_set_y(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImFontAtlasRect_get_w(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlasRect_set_w(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImFontAtlasRect_get_h(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlasRect_set_h(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlasRect_get_uv0(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlasRect_set_uv0(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlasRect_get_uv1(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlasRect_set_uv1(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImFontAtlasRect();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImFontAtlas_get_Flags(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlas_set_Flags(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImFontAtlas_get_TexDesiredFormat(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlas_set_TexDesiredFormat(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImFontAtlas_get_TexGlyphPadding(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlas_set_TexGlyphPadding(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImFontAtlas_get_TexMinWidth(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlas_set_TexMinWidth(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImFontAtlas_get_TexMinHeight(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlas_set_TexMinHeight(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImFontAtlas_get_TexMaxWidth(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlas_set_TexMaxWidth(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImFontAtlas_get_TexMaxHeight(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlas_set_TexMaxHeight(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImFontAtlas_get_UserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlas_set_UserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlas_get_TexRef(System.IntPtr self, out ImTextureRef v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlas_set_TexRef(System.IntPtr self, System.IntPtr v__TexData, ulong v__TexID);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImFontAtlas_get_TexData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImFontAtlas_set_TexData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImFontAtlas();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImFontBaked();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImFont();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImGuiViewport_get_ID(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_ID(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiViewport_get_Flags(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_Flags(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_get_Pos(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_Pos(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_get_Size(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_Size(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_get_FramebufferScale(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_FramebufferScale(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_get_WorkPos(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_WorkPos(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_get_WorkSize(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_WorkSize(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiViewport_get_DpiScale(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_DpiScale(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImGuiViewport_get_ParentViewportId(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_ParentViewportId(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiViewport_get_ParentViewport(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_ParentViewport(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiViewport_get_DrawData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_DrawData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiViewport_get_RendererUserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_RendererUserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiViewport_get_PlatformUserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_PlatformUserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiViewport_get_PlatformIconData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_PlatformIconData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiViewport_get_PlatformHandle(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_PlatformHandle(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiViewport_get_PlatformHandleRaw(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_PlatformHandleRaw(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiViewport_get_PlatformWindowCreated(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_PlatformWindowCreated(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiViewport_get_PlatformRequestMove(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_PlatformRequestMove(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiViewport_get_PlatformRequestResize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_PlatformRequestResize(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiViewport_get_PlatformRequestClose(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiViewport_set_PlatformRequestClose(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiViewport();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_GetClipboardTextFn(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_SetClipboardTextFn(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_get_Platform_ClipboardUserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformIO_set_Platform_ClipboardUserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_OpenInShellFn(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_get_Platform_OpenInShellUserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformIO_set_Platform_OpenInShellUserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_SetImeDataFn(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_get_Platform_ImeUserData(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformIO_set_Platform_ImeUserData(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern ushort dcjs_ImGuiPlatformIO_get_Platform_LocaleDecimalPoint(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformIO_set_Platform_LocaleDecimalPoint(System.IntPtr self, ushort v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiPlatformIO_get_Renderer_TextureMaxWidth(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformIO_set_Renderer_TextureMaxWidth(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_ImGuiPlatformIO_get_Renderer_TextureMaxHeight(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformIO_set_Renderer_TextureMaxHeight(System.IntPtr self, int v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_get_Renderer_RenderState(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformIO_set_Renderer_RenderState(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_get_DrawCallback_ResetRenderState(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformIO_set_DrawCallback_ResetRenderState(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_get_DrawCallback_SetSamplerLinear(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformIO_set_DrawCallback_SetSamplerLinear(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_get_DrawCallback_SetSamplerNearest(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformIO_set_DrawCallback_SetSamplerNearest(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_CreateWindow(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_DestroyWindow(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_ShowWindow(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_SetWindowPos(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_GetWindowPos(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_SetWindowSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_GetWindowSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_GetWindowFramebufferScale(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_SetWindowFocus(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_GetWindowFocus(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_GetWindowMinimized(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_SetWindowTitle(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_SetWindowAlpha(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_UpdateWindow(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_RenderWindow(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_SwapBuffers(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_GetWindowDpiScale(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_OnChangedViewport(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_GetWindowWorkAreaInsets(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Platform_CreateVkSurface(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Renderer_CreateWindow(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Renderer_DestroyWindow(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Renderer_SetWindowSize(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Renderer_RenderWindow(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_getp_Renderer_SwapBuffers(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_ptr_Monitors(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_ptr_Textures(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformIO_ptr_Viewports(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiPlatformIO();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformMonitor_get_MainPos(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformMonitor_set_MainPos(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformMonitor_get_MainSize(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformMonitor_set_MainSize(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformMonitor_get_WorkPos(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformMonitor_set_WorkPos(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformMonitor_get_WorkSize(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformMonitor_set_WorkSize(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiPlatformMonitor_get_DpiScale(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformMonitor_set_DpiScale(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern System.IntPtr dcjs_ImGuiPlatformMonitor_get_PlatformHandle(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformMonitor_set_PlatformHandle(System.IntPtr self, System.IntPtr v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiPlatformMonitor();
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiPlatformImeData_get_WantVisible(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformImeData_set_WantVisible(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.I1)]
    public static extern bool dcjs_ImGuiPlatformImeData_get_WantTextInput(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformImeData_set_WantTextInput(System.IntPtr self, [MarshalAs(UnmanagedType.I1)] bool v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformImeData_get_InputPos(System.IntPtr self, out ImVec2 v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformImeData_set_InputPos(System.IntPtr self, float v_x, float v_y);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern float dcjs_ImGuiPlatformImeData_get_InputLineHeight(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformImeData_set_InputLineHeight(System.IntPtr self, float v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcjs_ImGuiPlatformImeData_get_ViewportId(System.IntPtr self);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcjs_ImGuiPlatformImeData_set_ViewportId(System.IntPtr self, uint v);
    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcjs_sizeof_ImGuiPlatformImeData();

}
