// =============================================================================
// GENERATED FILE - do not edit by hand (see gen/Gen.hx).
// JS/wasm glue over the dcimgui C API: by-value structs flattened to scalars
// (wasm C ABI passes structs indirectly - not callable from JS otherwise),
// by-value returns written through an out pointer, plus field accessors for
// every bindable struct field. Compiled by build/build-web.sh.
// =============================================================================

#ifdef __EMSCRIPTEN__
#include <emscripten.h>
#define DCGLUE_EXPORT EMSCRIPTEN_KEEPALIVE
#elif defined(_WIN32)
#define DCGLUE_EXPORT __declspec(dllexport)
#else
#define DCGLUE_EXPORT __attribute__((visibility("default")))
#endif
#include "dcimgui.h"

extern "C" {

DCGLUE_EXPORT ImTextureID dcjs_ImTextureRef_GetTexID(const ImTextureRef* self) {
    return ImTextureRef_GetTexID(self);
}
DCGLUE_EXPORT ImGuiContext* dcjs_ImGui_CreateContext(ImFontAtlas* shared_font_atlas) {
    return ImGui_CreateContext(shared_font_atlas);
}
DCGLUE_EXPORT void dcjs_ImGui_DestroyContext(ImGuiContext* ctx) {
    ImGui_DestroyContext(ctx);
}
DCGLUE_EXPORT ImGuiContext* dcjs_ImGui_GetCurrentContext() {
    return ImGui_GetCurrentContext();
}
DCGLUE_EXPORT void dcjs_ImGui_SetCurrentContext(ImGuiContext* ctx) {
    ImGui_SetCurrentContext(ctx);
}
DCGLUE_EXPORT ImGuiIO* dcjs_ImGui_GetIO() {
    return ImGui_GetIO();
}
DCGLUE_EXPORT ImGuiPlatformIO* dcjs_ImGui_GetPlatformIO() {
    return ImGui_GetPlatformIO();
}
DCGLUE_EXPORT ImGuiStyle* dcjs_ImGui_GetStyle() {
    return ImGui_GetStyle();
}
DCGLUE_EXPORT void dcjs_ImGui_NewFrame() {
    ImGui_NewFrame();
}
DCGLUE_EXPORT void dcjs_ImGui_EndFrame() {
    ImGui_EndFrame();
}
DCGLUE_EXPORT void dcjs_ImGui_Render() {
    ImGui_Render();
}
DCGLUE_EXPORT ImDrawData* dcjs_ImGui_GetDrawData() {
    return ImGui_GetDrawData();
}
DCGLUE_EXPORT void dcjs_ImGui_ShowDemoWindow(bool* p_open) {
    ImGui_ShowDemoWindow(p_open);
}
DCGLUE_EXPORT void dcjs_ImGui_ShowMetricsWindow(bool* p_open) {
    ImGui_ShowMetricsWindow(p_open);
}
DCGLUE_EXPORT void dcjs_ImGui_ShowDebugLogWindow(bool* p_open) {
    ImGui_ShowDebugLogWindow(p_open);
}
DCGLUE_EXPORT void dcjs_ImGui_ShowIDStackToolWindowEx(bool* p_open) {
    ImGui_ShowIDStackToolWindowEx(p_open);
}
DCGLUE_EXPORT void dcjs_ImGui_ShowIDStackToolWindow() {
    ImGui_ShowIDStackToolWindow();
}
DCGLUE_EXPORT void dcjs_ImGui_ShowAboutWindow(bool* p_open) {
    ImGui_ShowAboutWindow(p_open);
}
DCGLUE_EXPORT void dcjs_ImGui_ShowStyleEditor(ImGuiStyle* ref) {
    ImGui_ShowStyleEditor(ref);
}
DCGLUE_EXPORT bool dcjs_ImGui_ShowStyleSelector(const char* label) {
    return ImGui_ShowStyleSelector(label);
}
DCGLUE_EXPORT void dcjs_ImGui_ShowFontSelector(const char* label) {
    ImGui_ShowFontSelector(label);
}
DCGLUE_EXPORT void dcjs_ImGui_ShowUserGuide() {
    ImGui_ShowUserGuide();
}
DCGLUE_EXPORT const char* dcjs_ImGui_GetVersion() {
    return ImGui_GetVersion();
}
DCGLUE_EXPORT void dcjs_ImGui_StyleColorsDark(ImGuiStyle* dst) {
    ImGui_StyleColorsDark(dst);
}
DCGLUE_EXPORT void dcjs_ImGui_StyleColorsLight(ImGuiStyle* dst) {
    ImGui_StyleColorsLight(dst);
}
DCGLUE_EXPORT void dcjs_ImGui_StyleColorsClassic(ImGuiStyle* dst) {
    ImGui_StyleColorsClassic(dst);
}
DCGLUE_EXPORT bool dcjs_ImGui_Begin(const char* name, bool* p_open, ImGuiWindowFlags flags) {
    return ImGui_Begin(name, p_open, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_End() {
    ImGui_End();
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginChild(const char* str_id, float size_x, float size_y, ImGuiChildFlags child_flags, ImGuiWindowFlags window_flags) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_BeginChild(str_id, _s1, child_flags, window_flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginChildID(ImGuiID id, float size_x, float size_y, ImGuiChildFlags child_flags, ImGuiWindowFlags window_flags) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_BeginChildID(id, _s1, child_flags, window_flags);
}
DCGLUE_EXPORT void dcjs_ImGui_EndChild() {
    ImGui_EndChild();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsWindowAppearing() {
    return ImGui_IsWindowAppearing();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsWindowCollapsed() {
    return ImGui_IsWindowCollapsed();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsWindowFocused(ImGuiFocusedFlags flags) {
    return ImGui_IsWindowFocused(flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsWindowHovered(ImGuiHoveredFlags flags) {
    return ImGui_IsWindowHovered(flags);
}
DCGLUE_EXPORT ImDrawList* dcjs_ImGui_GetWindowDrawList() {
    return ImGui_GetWindowDrawList();
}
DCGLUE_EXPORT float dcjs_ImGui_GetWindowDpiScale() {
    return ImGui_GetWindowDpiScale();
}
DCGLUE_EXPORT void dcjs_ImGui_GetWindowPos(ImVec2* _out) {
    *_out = ImGui_GetWindowPos();
}
DCGLUE_EXPORT void dcjs_ImGui_GetWindowSize(ImVec2* _out) {
    *_out = ImGui_GetWindowSize();
}
DCGLUE_EXPORT float dcjs_ImGui_GetWindowWidth() {
    return ImGui_GetWindowWidth();
}
DCGLUE_EXPORT float dcjs_ImGui_GetWindowHeight() {
    return ImGui_GetWindowHeight();
}
DCGLUE_EXPORT ImGuiViewport* dcjs_ImGui_GetWindowViewport() {
    return ImGui_GetWindowViewport();
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowPosEx(float pos_x, float pos_y, ImGuiCond cond, float pivot_x, float pivot_y) {
    ImVec2 _s0;
    _s0.x = pos_x;
    _s0.y = pos_y;
    ImVec2 _s2;
    _s2.x = pivot_x;
    _s2.y = pivot_y;
    ImGui_SetNextWindowPosEx(_s0, cond, _s2);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowPos(float pos_x, float pos_y, ImGuiCond cond) {
    ImVec2 _s0;
    _s0.x = pos_x;
    _s0.y = pos_y;
    ImGui_SetNextWindowPos(_s0, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowSize(float size_x, float size_y, ImGuiCond cond) {
    ImVec2 _s0;
    _s0.x = size_x;
    _s0.y = size_y;
    ImGui_SetNextWindowSize(_s0, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowSizeConstraints(float size_min_x, float size_min_y, float size_max_x, float size_max_y, ImGuiSizeCallback custom_callback, void* custom_callback_data) {
    ImVec2 _s0;
    _s0.x = size_min_x;
    _s0.y = size_min_y;
    ImVec2 _s1;
    _s1.x = size_max_x;
    _s1.y = size_max_y;
    ImGui_SetNextWindowSizeConstraints(_s0, _s1, custom_callback, custom_callback_data);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowContentSize(float size_x, float size_y) {
    ImVec2 _s0;
    _s0.x = size_x;
    _s0.y = size_y;
    ImGui_SetNextWindowContentSize(_s0);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowCollapsed(bool collapsed, ImGuiCond cond) {
    ImGui_SetNextWindowCollapsed(collapsed, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowFocus() {
    ImGui_SetNextWindowFocus();
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowScroll(float scroll_x, float scroll_y) {
    ImVec2 _s0;
    _s0.x = scroll_x;
    _s0.y = scroll_y;
    ImGui_SetNextWindowScroll(_s0);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowBgAlpha(float alpha) {
    ImGui_SetNextWindowBgAlpha(alpha);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowViewport(ImGuiID viewport_id) {
    ImGui_SetNextWindowViewport(viewport_id);
}
DCGLUE_EXPORT void dcjs_ImGui_SetWindowPos(float pos_x, float pos_y, ImGuiCond cond) {
    ImVec2 _s0;
    _s0.x = pos_x;
    _s0.y = pos_y;
    ImGui_SetWindowPos(_s0, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_SetWindowSize(float size_x, float size_y, ImGuiCond cond) {
    ImVec2 _s0;
    _s0.x = size_x;
    _s0.y = size_y;
    ImGui_SetWindowSize(_s0, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_SetWindowCollapsed(bool collapsed, ImGuiCond cond) {
    ImGui_SetWindowCollapsed(collapsed, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_SetWindowFocus() {
    ImGui_SetWindowFocus();
}
DCGLUE_EXPORT void dcjs_ImGui_SetWindowPosStr(const char* name, float pos_x, float pos_y, ImGuiCond cond) {
    ImVec2 _s1;
    _s1.x = pos_x;
    _s1.y = pos_y;
    ImGui_SetWindowPosStr(name, _s1, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_SetWindowSizeStr(const char* name, float size_x, float size_y, ImGuiCond cond) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    ImGui_SetWindowSizeStr(name, _s1, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_SetWindowCollapsedStr(const char* name, bool collapsed, ImGuiCond cond) {
    ImGui_SetWindowCollapsedStr(name, collapsed, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_SetWindowFocusStr(const char* name) {
    ImGui_SetWindowFocusStr(name);
}
DCGLUE_EXPORT float dcjs_ImGui_GetScrollX() {
    return ImGui_GetScrollX();
}
DCGLUE_EXPORT float dcjs_ImGui_GetScrollY() {
    return ImGui_GetScrollY();
}
DCGLUE_EXPORT void dcjs_ImGui_SetScrollX(float scroll_x) {
    ImGui_SetScrollX(scroll_x);
}
DCGLUE_EXPORT void dcjs_ImGui_SetScrollY(float scroll_y) {
    ImGui_SetScrollY(scroll_y);
}
DCGLUE_EXPORT float dcjs_ImGui_GetScrollMaxX() {
    return ImGui_GetScrollMaxX();
}
DCGLUE_EXPORT float dcjs_ImGui_GetScrollMaxY() {
    return ImGui_GetScrollMaxY();
}
DCGLUE_EXPORT void dcjs_ImGui_SetScrollHereX(float center_x_ratio) {
    ImGui_SetScrollHereX(center_x_ratio);
}
DCGLUE_EXPORT void dcjs_ImGui_SetScrollHereY(float center_y_ratio) {
    ImGui_SetScrollHereY(center_y_ratio);
}
DCGLUE_EXPORT void dcjs_ImGui_SetScrollFromPosX(float local_x, float center_x_ratio) {
    ImGui_SetScrollFromPosX(local_x, center_x_ratio);
}
DCGLUE_EXPORT void dcjs_ImGui_SetScrollFromPosY(float local_y, float center_y_ratio) {
    ImGui_SetScrollFromPosY(local_y, center_y_ratio);
}
DCGLUE_EXPORT void dcjs_ImGui_PushFontFloat(ImFont* font, float font_size_base_unscaled) {
    ImGui_PushFontFloat(font, font_size_base_unscaled);
}
DCGLUE_EXPORT void dcjs_ImGui_PopFont() {
    ImGui_PopFont();
}
DCGLUE_EXPORT ImFont* dcjs_ImGui_GetFont() {
    return ImGui_GetFont();
}
DCGLUE_EXPORT float dcjs_ImGui_GetFontSize() {
    return ImGui_GetFontSize();
}
DCGLUE_EXPORT ImFontBaked* dcjs_ImGui_GetFontBaked() {
    return ImGui_GetFontBaked();
}
DCGLUE_EXPORT void dcjs_ImGui_PushStyleColor(ImGuiCol idx, ImU32 col) {
    ImGui_PushStyleColor(idx, col);
}
DCGLUE_EXPORT void dcjs_ImGui_PushStyleColorImVec4(ImGuiCol idx, float col_x, float col_y, float col_z, float col_w) {
    ImVec4 _s1;
    _s1.x = col_x;
    _s1.y = col_y;
    _s1.z = col_z;
    _s1.w = col_w;
    ImGui_PushStyleColorImVec4(idx, _s1);
}
DCGLUE_EXPORT void dcjs_ImGui_PopStyleColorEx(int count) {
    ImGui_PopStyleColorEx(count);
}
DCGLUE_EXPORT void dcjs_ImGui_PopStyleColor() {
    ImGui_PopStyleColor();
}
DCGLUE_EXPORT void dcjs_ImGui_PushStyleVar(ImGuiStyleVar idx, float val) {
    ImGui_PushStyleVar(idx, val);
}
DCGLUE_EXPORT void dcjs_ImGui_PushStyleVarImVec2(ImGuiStyleVar idx, float val_x, float val_y) {
    ImVec2 _s1;
    _s1.x = val_x;
    _s1.y = val_y;
    ImGui_PushStyleVarImVec2(idx, _s1);
}
DCGLUE_EXPORT void dcjs_ImGui_PushStyleVarX(ImGuiStyleVar idx, float val_x) {
    ImGui_PushStyleVarX(idx, val_x);
}
DCGLUE_EXPORT void dcjs_ImGui_PushStyleVarY(ImGuiStyleVar idx, float val_y) {
    ImGui_PushStyleVarY(idx, val_y);
}
DCGLUE_EXPORT void dcjs_ImGui_PopStyleVarEx(int count) {
    ImGui_PopStyleVarEx(count);
}
DCGLUE_EXPORT void dcjs_ImGui_PopStyleVar() {
    ImGui_PopStyleVar();
}
DCGLUE_EXPORT void dcjs_ImGui_PushItemFlag(ImGuiItemFlags option, bool enabled) {
    ImGui_PushItemFlag(option, enabled);
}
DCGLUE_EXPORT void dcjs_ImGui_PopItemFlag() {
    ImGui_PopItemFlag();
}
DCGLUE_EXPORT void dcjs_ImGui_PushItemWidth(float item_width) {
    ImGui_PushItemWidth(item_width);
}
DCGLUE_EXPORT void dcjs_ImGui_PopItemWidth() {
    ImGui_PopItemWidth();
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextItemWidth(float item_width) {
    ImGui_SetNextItemWidth(item_width);
}
DCGLUE_EXPORT float dcjs_ImGui_CalcItemWidth() {
    return ImGui_CalcItemWidth();
}
DCGLUE_EXPORT void dcjs_ImGui_PushTextWrapPos(float wrap_local_pos_x) {
    ImGui_PushTextWrapPos(wrap_local_pos_x);
}
DCGLUE_EXPORT void dcjs_ImGui_PopTextWrapPos() {
    ImGui_PopTextWrapPos();
}
DCGLUE_EXPORT void dcjs_ImGui_GetFontTexUvWhitePixel(ImVec2* _out) {
    *_out = ImGui_GetFontTexUvWhitePixel();
}
DCGLUE_EXPORT ImU32 dcjs_ImGui_GetColorU32Ex(ImGuiCol idx, float alpha_mul) {
    return ImGui_GetColorU32Ex(idx, alpha_mul);
}
DCGLUE_EXPORT ImU32 dcjs_ImGui_GetColorU32(ImGuiCol idx) {
    return ImGui_GetColorU32(idx);
}
DCGLUE_EXPORT ImU32 dcjs_ImGui_GetColorU32ImVec4(float col_x, float col_y, float col_z, float col_w) {
    ImVec4 _s0;
    _s0.x = col_x;
    _s0.y = col_y;
    _s0.z = col_z;
    _s0.w = col_w;
    return ImGui_GetColorU32ImVec4(_s0);
}
DCGLUE_EXPORT ImU32 dcjs_ImGui_GetColorU32ImU32Ex(ImU32 col, float alpha_mul) {
    return ImGui_GetColorU32ImU32Ex(col, alpha_mul);
}
DCGLUE_EXPORT ImU32 dcjs_ImGui_GetColorU32ImU32(ImU32 col) {
    return ImGui_GetColorU32ImU32(col);
}
DCGLUE_EXPORT const ImVec4* dcjs_ImGui_GetStyleColorVec4(ImGuiCol idx) {
    return ImGui_GetStyleColorVec4(idx);
}
DCGLUE_EXPORT void dcjs_ImGui_GetCursorScreenPos(ImVec2* _out) {
    *_out = ImGui_GetCursorScreenPos();
}
DCGLUE_EXPORT void dcjs_ImGui_SetCursorScreenPos(float pos_x, float pos_y) {
    ImVec2 _s0;
    _s0.x = pos_x;
    _s0.y = pos_y;
    ImGui_SetCursorScreenPos(_s0);
}
DCGLUE_EXPORT void dcjs_ImGui_GetContentRegionAvail(ImVec2* _out) {
    *_out = ImGui_GetContentRegionAvail();
}
DCGLUE_EXPORT void dcjs_ImGui_GetCursorPos(ImVec2* _out) {
    *_out = ImGui_GetCursorPos();
}
DCGLUE_EXPORT float dcjs_ImGui_GetCursorPosX() {
    return ImGui_GetCursorPosX();
}
DCGLUE_EXPORT float dcjs_ImGui_GetCursorPosY() {
    return ImGui_GetCursorPosY();
}
DCGLUE_EXPORT void dcjs_ImGui_SetCursorPos(float local_pos_x, float local_pos_y) {
    ImVec2 _s0;
    _s0.x = local_pos_x;
    _s0.y = local_pos_y;
    ImGui_SetCursorPos(_s0);
}
DCGLUE_EXPORT void dcjs_ImGui_SetCursorPosX(float local_x) {
    ImGui_SetCursorPosX(local_x);
}
DCGLUE_EXPORT void dcjs_ImGui_SetCursorPosY(float local_y) {
    ImGui_SetCursorPosY(local_y);
}
DCGLUE_EXPORT void dcjs_ImGui_GetCursorStartPos(ImVec2* _out) {
    *_out = ImGui_GetCursorStartPos();
}
DCGLUE_EXPORT void dcjs_ImGui_Separator() {
    ImGui_Separator();
}
DCGLUE_EXPORT void dcjs_ImGui_SameLineEx(float offset_from_start_x, float spacing) {
    ImGui_SameLineEx(offset_from_start_x, spacing);
}
DCGLUE_EXPORT void dcjs_ImGui_SameLine() {
    ImGui_SameLine();
}
DCGLUE_EXPORT void dcjs_ImGui_NewLine() {
    ImGui_NewLine();
}
DCGLUE_EXPORT void dcjs_ImGui_Spacing() {
    ImGui_Spacing();
}
DCGLUE_EXPORT void dcjs_ImGui_Dummy(float size_x, float size_y) {
    ImVec2 _s0;
    _s0.x = size_x;
    _s0.y = size_y;
    ImGui_Dummy(_s0);
}
DCGLUE_EXPORT void dcjs_ImGui_IndentEx(float indent_w) {
    ImGui_IndentEx(indent_w);
}
DCGLUE_EXPORT void dcjs_ImGui_Indent() {
    ImGui_Indent();
}
DCGLUE_EXPORT void dcjs_ImGui_UnindentEx(float indent_w) {
    ImGui_UnindentEx(indent_w);
}
DCGLUE_EXPORT void dcjs_ImGui_Unindent() {
    ImGui_Unindent();
}
DCGLUE_EXPORT void dcjs_ImGui_BeginGroup() {
    ImGui_BeginGroup();
}
DCGLUE_EXPORT void dcjs_ImGui_EndGroup() {
    ImGui_EndGroup();
}
DCGLUE_EXPORT void dcjs_ImGui_AlignTextToFramePadding() {
    ImGui_AlignTextToFramePadding();
}
DCGLUE_EXPORT float dcjs_ImGui_GetTextLineHeight() {
    return ImGui_GetTextLineHeight();
}
DCGLUE_EXPORT float dcjs_ImGui_GetTextLineHeightWithSpacing() {
    return ImGui_GetTextLineHeightWithSpacing();
}
DCGLUE_EXPORT float dcjs_ImGui_GetFrameHeight() {
    return ImGui_GetFrameHeight();
}
DCGLUE_EXPORT float dcjs_ImGui_GetFrameHeightWithSpacing() {
    return ImGui_GetFrameHeightWithSpacing();
}
DCGLUE_EXPORT void dcjs_ImGui_PushID(const char* str_id) {
    ImGui_PushID(str_id);
}
DCGLUE_EXPORT void dcjs_ImGui_PushIDStr(const char* str_id_begin, const char* str_id_end) {
    ImGui_PushIDStr(str_id_begin, str_id_end);
}
DCGLUE_EXPORT void dcjs_ImGui_PushIDPtr(const void* ptr_id) {
    ImGui_PushIDPtr(ptr_id);
}
DCGLUE_EXPORT void dcjs_ImGui_PushIDInt(int int_id) {
    ImGui_PushIDInt(int_id);
}
DCGLUE_EXPORT void dcjs_ImGui_PopID() {
    ImGui_PopID();
}
DCGLUE_EXPORT ImGuiID dcjs_ImGui_GetID(const char* str_id) {
    return ImGui_GetID(str_id);
}
DCGLUE_EXPORT ImGuiID dcjs_ImGui_GetIDStr(const char* str_id_begin, const char* str_id_end) {
    return ImGui_GetIDStr(str_id_begin, str_id_end);
}
DCGLUE_EXPORT ImGuiID dcjs_ImGui_GetIDPtr(const void* ptr_id) {
    return ImGui_GetIDPtr(ptr_id);
}
DCGLUE_EXPORT ImGuiID dcjs_ImGui_GetIDInt(int int_id) {
    return ImGui_GetIDInt(int_id);
}
DCGLUE_EXPORT void dcjs_ImGui_TextUnformattedEx(const char* text, const char* text_end) {
    ImGui_TextUnformattedEx(text, text_end);
}
DCGLUE_EXPORT void dcjs_ImGui_TextUnformatted(const char* text) {
    ImGui_TextUnformatted(text);
}
DCGLUE_EXPORT void dcjs_ImGui_TextColoredUnformatted(float col_x, float col_y, float col_z, float col_w, const char* text) {
    ImVec4 _s0;
    _s0.x = col_x;
    _s0.y = col_y;
    _s0.z = col_z;
    _s0.w = col_w;
    ImGui_TextColoredUnformatted(_s0, text);
}
DCGLUE_EXPORT void dcjs_ImGui_TextDisabledUnformatted(const char* text) {
    ImGui_TextDisabledUnformatted(text);
}
DCGLUE_EXPORT void dcjs_ImGui_TextWrappedUnformatted(const char* text) {
    ImGui_TextWrappedUnformatted(text);
}
DCGLUE_EXPORT void dcjs_ImGui_LabelTextUnformatted(const char* label, const char* text) {
    ImGui_LabelTextUnformatted(label, text);
}
DCGLUE_EXPORT void dcjs_ImGui_BulletTextUnformatted(const char* text) {
    ImGui_BulletTextUnformatted(text);
}
DCGLUE_EXPORT void dcjs_ImGui_SeparatorText(const char* label) {
    ImGui_SeparatorText(label);
}
DCGLUE_EXPORT bool dcjs_ImGui_ButtonEx(const char* label, float size_x, float size_y) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_ButtonEx(label, _s1);
}
DCGLUE_EXPORT bool dcjs_ImGui_Button(const char* label) {
    return ImGui_Button(label);
}
DCGLUE_EXPORT bool dcjs_ImGui_SmallButton(const char* label) {
    return ImGui_SmallButton(label);
}
DCGLUE_EXPORT bool dcjs_ImGui_InvisibleButton(const char* str_id, float size_x, float size_y, ImGuiButtonFlags flags) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_InvisibleButton(str_id, _s1, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_ArrowButton(const char* str_id, ImGuiDir dir) {
    return ImGui_ArrowButton(str_id, dir);
}
DCGLUE_EXPORT bool dcjs_ImGui_Checkbox(const char* label, bool* v) {
    return ImGui_Checkbox(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_CheckboxFlagsIntPtr(const char* label, int* flags, int flags_value) {
    return ImGui_CheckboxFlagsIntPtr(label, flags, flags_value);
}
DCGLUE_EXPORT bool dcjs_ImGui_CheckboxFlagsUintPtr(const char* label, unsigned int* flags, unsigned int flags_value) {
    return ImGui_CheckboxFlagsUintPtr(label, flags, flags_value);
}
DCGLUE_EXPORT bool dcjs_ImGui_RadioButton(const char* label, bool active) {
    return ImGui_RadioButton(label, active);
}
DCGLUE_EXPORT bool dcjs_ImGui_RadioButtonIntPtr(const char* label, int* v, int v_button) {
    return ImGui_RadioButtonIntPtr(label, v, v_button);
}
DCGLUE_EXPORT void dcjs_ImGui_ProgressBar(float fraction, float size_arg_x, float size_arg_y, const char* overlay) {
    ImVec2 _s1;
    _s1.x = size_arg_x;
    _s1.y = size_arg_y;
    ImGui_ProgressBar(fraction, _s1, overlay);
}
DCGLUE_EXPORT void dcjs_ImGui_Bullet() {
    ImGui_Bullet();
}
DCGLUE_EXPORT bool dcjs_ImGui_TextLink(const char* label) {
    return ImGui_TextLink(label);
}
DCGLUE_EXPORT bool dcjs_ImGui_TextLinkOpenURLEx(const char* label, const char* url) {
    return ImGui_TextLinkOpenURLEx(label, url);
}
DCGLUE_EXPORT bool dcjs_ImGui_TextLinkOpenURL(const char* label) {
    return ImGui_TextLinkOpenURL(label);
}
DCGLUE_EXPORT void dcjs_ImGui_ImageEx(ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID, float image_size_x, float image_size_y, float uv0_x, float uv0_y, float uv1_x, float uv1_y) {
    ImTextureRef _s0;
    _s0._TexData = tex_ref__TexData;
    _s0._TexID = tex_ref__TexID;
    ImVec2 _s1;
    _s1.x = image_size_x;
    _s1.y = image_size_y;
    ImVec2 _s2;
    _s2.x = uv0_x;
    _s2.y = uv0_y;
    ImVec2 _s3;
    _s3.x = uv1_x;
    _s3.y = uv1_y;
    ImGui_ImageEx(_s0, _s1, _s2, _s3);
}
DCGLUE_EXPORT void dcjs_ImGui_Image(ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID, float image_size_x, float image_size_y) {
    ImTextureRef _s0;
    _s0._TexData = tex_ref__TexData;
    _s0._TexID = tex_ref__TexID;
    ImVec2 _s1;
    _s1.x = image_size_x;
    _s1.y = image_size_y;
    ImGui_Image(_s0, _s1);
}
DCGLUE_EXPORT void dcjs_ImGui_ImageWithBgEx(ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID, float image_size_x, float image_size_y, float uv0_x, float uv0_y, float uv1_x, float uv1_y, float bg_col_x, float bg_col_y, float bg_col_z, float bg_col_w, float tint_col_x, float tint_col_y, float tint_col_z, float tint_col_w) {
    ImTextureRef _s0;
    _s0._TexData = tex_ref__TexData;
    _s0._TexID = tex_ref__TexID;
    ImVec2 _s1;
    _s1.x = image_size_x;
    _s1.y = image_size_y;
    ImVec2 _s2;
    _s2.x = uv0_x;
    _s2.y = uv0_y;
    ImVec2 _s3;
    _s3.x = uv1_x;
    _s3.y = uv1_y;
    ImVec4 _s4;
    _s4.x = bg_col_x;
    _s4.y = bg_col_y;
    _s4.z = bg_col_z;
    _s4.w = bg_col_w;
    ImVec4 _s5;
    _s5.x = tint_col_x;
    _s5.y = tint_col_y;
    _s5.z = tint_col_z;
    _s5.w = tint_col_w;
    ImGui_ImageWithBgEx(_s0, _s1, _s2, _s3, _s4, _s5);
}
DCGLUE_EXPORT void dcjs_ImGui_ImageWithBg(ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID, float image_size_x, float image_size_y) {
    ImTextureRef _s0;
    _s0._TexData = tex_ref__TexData;
    _s0._TexID = tex_ref__TexID;
    ImVec2 _s1;
    _s1.x = image_size_x;
    _s1.y = image_size_y;
    ImGui_ImageWithBg(_s0, _s1);
}
DCGLUE_EXPORT bool dcjs_ImGui_ImageButtonEx(const char* str_id, ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID, float image_size_x, float image_size_y, float uv0_x, float uv0_y, float uv1_x, float uv1_y, float bg_col_x, float bg_col_y, float bg_col_z, float bg_col_w, float tint_col_x, float tint_col_y, float tint_col_z, float tint_col_w) {
    ImTextureRef _s1;
    _s1._TexData = tex_ref__TexData;
    _s1._TexID = tex_ref__TexID;
    ImVec2 _s2;
    _s2.x = image_size_x;
    _s2.y = image_size_y;
    ImVec2 _s3;
    _s3.x = uv0_x;
    _s3.y = uv0_y;
    ImVec2 _s4;
    _s4.x = uv1_x;
    _s4.y = uv1_y;
    ImVec4 _s5;
    _s5.x = bg_col_x;
    _s5.y = bg_col_y;
    _s5.z = bg_col_z;
    _s5.w = bg_col_w;
    ImVec4 _s6;
    _s6.x = tint_col_x;
    _s6.y = tint_col_y;
    _s6.z = tint_col_z;
    _s6.w = tint_col_w;
    return ImGui_ImageButtonEx(str_id, _s1, _s2, _s3, _s4, _s5, _s6);
}
DCGLUE_EXPORT bool dcjs_ImGui_ImageButton(const char* str_id, ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID, float image_size_x, float image_size_y) {
    ImTextureRef _s1;
    _s1._TexData = tex_ref__TexData;
    _s1._TexID = tex_ref__TexID;
    ImVec2 _s2;
    _s2.x = image_size_x;
    _s2.y = image_size_y;
    return ImGui_ImageButton(str_id, _s1, _s2);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginCombo(const char* label, const char* preview_value, ImGuiComboFlags flags) {
    return ImGui_BeginCombo(label, preview_value, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_EndCombo() {
    ImGui_EndCombo();
}
DCGLUE_EXPORT bool dcjs_ImGui_ComboCharEx(const char* label, int* current_item, const char*const items[], int items_count, int popup_max_height_in_items) {
    return ImGui_ComboCharEx(label, current_item, items, items_count, popup_max_height_in_items);
}
DCGLUE_EXPORT bool dcjs_ImGui_ComboChar(const char* label, int* current_item, const char*const items[], int items_count) {
    return ImGui_ComboChar(label, current_item, items, items_count);
}
DCGLUE_EXPORT bool dcjs_ImGui_ComboEx(const char* label, int* current_item, const char* items_separated_by_zeros, int popup_max_height_in_items) {
    return ImGui_ComboEx(label, current_item, items_separated_by_zeros, popup_max_height_in_items);
}
DCGLUE_EXPORT bool dcjs_ImGui_Combo(const char* label, int* current_item, const char* items_separated_by_zeros) {
    return ImGui_Combo(label, current_item, items_separated_by_zeros);
}
DCGLUE_EXPORT bool dcjs_ImGui_ComboCallbackEx(const char* label, int* current_item, const char* (*getter)(void* user_data, int idx), void* user_data, int items_count, int popup_max_height_in_items) {
    return ImGui_ComboCallbackEx(label, current_item, getter, user_data, items_count, popup_max_height_in_items);
}
DCGLUE_EXPORT bool dcjs_ImGui_ComboCallback(const char* label, int* current_item, const char* (*getter)(void* user_data, int idx), void* user_data, int items_count) {
    return ImGui_ComboCallback(label, current_item, getter, user_data, items_count);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragFloatEx(const char* label, float* v, float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_DragFloatEx(label, v, v_speed, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragFloat(const char* label, float* v) {
    return ImGui_DragFloat(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragFloat2Ex(const char* label, float v[2], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_DragFloat2Ex(label, v, v_speed, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragFloat2(const char* label, float v[2]) {
    return ImGui_DragFloat2(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragFloat3Ex(const char* label, float v[3], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_DragFloat3Ex(label, v, v_speed, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragFloat3(const char* label, float v[3]) {
    return ImGui_DragFloat3(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragFloat4Ex(const char* label, float v[4], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_DragFloat4Ex(label, v, v_speed, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragFloat4(const char* label, float v[4]) {
    return ImGui_DragFloat4(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragFloatRange2Ex(const char* label, float* v_current_min, float* v_current_max, float v_speed, float v_min, float v_max, const char* format, const char* format_max, ImGuiSliderFlags flags) {
    return ImGui_DragFloatRange2Ex(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragFloatRange2(const char* label, float* v_current_min, float* v_current_max) {
    return ImGui_DragFloatRange2(label, v_current_min, v_current_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragIntEx(const char* label, int* v, float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_DragIntEx(label, v, v_speed, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragInt(const char* label, int* v) {
    return ImGui_DragInt(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragInt2Ex(const char* label, int v[2], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_DragInt2Ex(label, v, v_speed, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragInt2(const char* label, int v[2]) {
    return ImGui_DragInt2(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragInt3Ex(const char* label, int v[3], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_DragInt3Ex(label, v, v_speed, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragInt3(const char* label, int v[3]) {
    return ImGui_DragInt3(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragInt4Ex(const char* label, int v[4], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_DragInt4Ex(label, v, v_speed, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragInt4(const char* label, int v[4]) {
    return ImGui_DragInt4(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragIntRange2Ex(const char* label, int* v_current_min, int* v_current_max, float v_speed, int v_min, int v_max, const char* format, const char* format_max, ImGuiSliderFlags flags) {
    return ImGui_DragIntRange2Ex(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragIntRange2(const char* label, int* v_current_min, int* v_current_max) {
    return ImGui_DragIntRange2(label, v_current_min, v_current_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragScalarEx(const char* label, ImGuiDataType data_type, void* p_data, float v_speed, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_DragScalarEx(label, data_type, p_data, v_speed, p_min, p_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragScalar(const char* label, ImGuiDataType data_type, void* p_data) {
    return ImGui_DragScalar(label, data_type, p_data);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragScalarNEx(const char* label, ImGuiDataType data_type, void* p_data, int components, float v_speed, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_DragScalarNEx(label, data_type, p_data, components, v_speed, p_min, p_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_DragScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components) {
    return ImGui_DragScalarN(label, data_type, p_data, components);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderFloatEx(const char* label, float* v, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_SliderFloatEx(label, v, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderFloat(const char* label, float* v, float v_min, float v_max) {
    return ImGui_SliderFloat(label, v, v_min, v_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderFloat2Ex(const char* label, float v[2], float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_SliderFloat2Ex(label, v, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderFloat2(const char* label, float v[2], float v_min, float v_max) {
    return ImGui_SliderFloat2(label, v, v_min, v_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderFloat3Ex(const char* label, float v[3], float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_SliderFloat3Ex(label, v, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderFloat3(const char* label, float v[3], float v_min, float v_max) {
    return ImGui_SliderFloat3(label, v, v_min, v_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderFloat4Ex(const char* label, float v[4], float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_SliderFloat4Ex(label, v, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderFloat4(const char* label, float v[4], float v_min, float v_max) {
    return ImGui_SliderFloat4(label, v, v_min, v_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderAngleEx(const char* label, float* v_rad, float v_degrees_min, float v_degrees_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_SliderAngleEx(label, v_rad, v_degrees_min, v_degrees_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderAngle(const char* label, float* v_rad) {
    return ImGui_SliderAngle(label, v_rad);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderIntEx(const char* label, int* v, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_SliderIntEx(label, v, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderInt(const char* label, int* v, int v_min, int v_max) {
    return ImGui_SliderInt(label, v, v_min, v_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderInt2Ex(const char* label, int v[2], int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_SliderInt2Ex(label, v, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderInt2(const char* label, int v[2], int v_min, int v_max) {
    return ImGui_SliderInt2(label, v, v_min, v_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderInt3Ex(const char* label, int v[3], int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_SliderInt3Ex(label, v, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderInt3(const char* label, int v[3], int v_min, int v_max) {
    return ImGui_SliderInt3(label, v, v_min, v_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderInt4Ex(const char* label, int v[4], int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_SliderInt4Ex(label, v, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderInt4(const char* label, int v[4], int v_min, int v_max) {
    return ImGui_SliderInt4(label, v, v_min, v_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderScalarEx(const char* label, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_SliderScalarEx(label, data_type, p_data, p_min, p_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderScalar(const char* label, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max) {
    return ImGui_SliderScalar(label, data_type, p_data, p_min, p_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderScalarNEx(const char* label, ImGuiDataType data_type, void* p_data, int components, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) {
    return ImGui_SliderScalarNEx(label, data_type, p_data, components, p_min, p_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SliderScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, const void* p_min, const void* p_max) {
    return ImGui_SliderScalarN(label, data_type, p_data, components, p_min, p_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_VSliderFloatEx(const char* label, float size_x, float size_y, float* v, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_VSliderFloatEx(label, _s1, v, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_VSliderFloat(const char* label, float size_x, float size_y, float* v, float v_min, float v_max) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_VSliderFloat(label, _s1, v, v_min, v_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_VSliderIntEx(const char* label, float size_x, float size_y, int* v, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_VSliderIntEx(label, _s1, v, v_min, v_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_VSliderInt(const char* label, float size_x, float size_y, int* v, int v_min, int v_max) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_VSliderInt(label, _s1, v, v_min, v_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_VSliderScalarEx(const char* label, float size_x, float size_y, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_VSliderScalarEx(label, _s1, data_type, p_data, p_min, p_max, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_VSliderScalar(const char* label, float size_x, float size_y, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_VSliderScalar(label, _s1, data_type, p_data, p_min, p_max);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputTextEx(const char* label, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data) {
    return ImGui_InputTextEx(label, buf, buf_size, flags, callback, user_data);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputText(const char* label, char* buf, size_t buf_size, ImGuiInputTextFlags flags) {
    return ImGui_InputText(label, buf, buf_size, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputTextMultilineEx(const char* label, char* buf, size_t buf_size, float size_x, float size_y, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data) {
    ImVec2 _s3;
    _s3.x = size_x;
    _s3.y = size_y;
    return ImGui_InputTextMultilineEx(label, buf, buf_size, _s3, flags, callback, user_data);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputTextMultiline(const char* label, char* buf, size_t buf_size) {
    return ImGui_InputTextMultiline(label, buf, buf_size);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputTextWithHintEx(const char* label, const char* hint, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data) {
    return ImGui_InputTextWithHintEx(label, hint, buf, buf_size, flags, callback, user_data);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputTextWithHint(const char* label, const char* hint, char* buf, size_t buf_size, ImGuiInputTextFlags flags) {
    return ImGui_InputTextWithHint(label, hint, buf, buf_size, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputFloatEx(const char* label, float* v, float step, float step_fast, const char* format, ImGuiInputTextFlags flags) {
    return ImGui_InputFloatEx(label, v, step, step_fast, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputFloat(const char* label, float* v) {
    return ImGui_InputFloat(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputFloat2Ex(const char* label, float v[2], const char* format, ImGuiInputTextFlags flags) {
    return ImGui_InputFloat2Ex(label, v, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputFloat2(const char* label, float v[2]) {
    return ImGui_InputFloat2(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputFloat3Ex(const char* label, float v[3], const char* format, ImGuiInputTextFlags flags) {
    return ImGui_InputFloat3Ex(label, v, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputFloat3(const char* label, float v[3]) {
    return ImGui_InputFloat3(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputFloat4Ex(const char* label, float v[4], const char* format, ImGuiInputTextFlags flags) {
    return ImGui_InputFloat4Ex(label, v, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputFloat4(const char* label, float v[4]) {
    return ImGui_InputFloat4(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputIntEx(const char* label, int* v, int step, int step_fast, ImGuiInputTextFlags flags) {
    return ImGui_InputIntEx(label, v, step, step_fast, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputInt(const char* label, int* v) {
    return ImGui_InputInt(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputInt2(const char* label, int v[2], ImGuiInputTextFlags flags) {
    return ImGui_InputInt2(label, v, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputInt3(const char* label, int v[3], ImGuiInputTextFlags flags) {
    return ImGui_InputInt3(label, v, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputInt4(const char* label, int v[4], ImGuiInputTextFlags flags) {
    return ImGui_InputInt4(label, v, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputDoubleEx(const char* label, double* v, double step, double step_fast, const char* format, ImGuiInputTextFlags flags) {
    return ImGui_InputDoubleEx(label, v, step, step_fast, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputDouble(const char* label, double* v) {
    return ImGui_InputDouble(label, v);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputScalarEx(const char* label, ImGuiDataType data_type, void* p_data, const void* p_step, const void* p_step_fast, const char* format, ImGuiInputTextFlags flags) {
    return ImGui_InputScalarEx(label, data_type, p_data, p_step, p_step_fast, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputScalar(const char* label, ImGuiDataType data_type, void* p_data) {
    return ImGui_InputScalar(label, data_type, p_data);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputScalarNEx(const char* label, ImGuiDataType data_type, void* p_data, int components, const void* p_step, const void* p_step_fast, const char* format, ImGuiInputTextFlags flags) {
    return ImGui_InputScalarNEx(label, data_type, p_data, components, p_step, p_step_fast, format, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_InputScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components) {
    return ImGui_InputScalarN(label, data_type, p_data, components);
}
DCGLUE_EXPORT bool dcjs_ImGui_ColorEdit3(const char* label, float col[3], ImGuiColorEditFlags flags) {
    return ImGui_ColorEdit3(label, col, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_ColorEdit4(const char* label, float col[4], ImGuiColorEditFlags flags) {
    return ImGui_ColorEdit4(label, col, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_ColorPicker3(const char* label, float col[3], ImGuiColorEditFlags flags) {
    return ImGui_ColorPicker3(label, col, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_ColorPicker4(const char* label, float col[4], ImGuiColorEditFlags flags, const float* ref_col) {
    return ImGui_ColorPicker4(label, col, flags, ref_col);
}
DCGLUE_EXPORT bool dcjs_ImGui_ColorButtonEx(const char* desc_id, float col_x, float col_y, float col_z, float col_w, ImGuiColorEditFlags flags, float size_x, float size_y) {
    ImVec4 _s1;
    _s1.x = col_x;
    _s1.y = col_y;
    _s1.z = col_z;
    _s1.w = col_w;
    ImVec2 _s3;
    _s3.x = size_x;
    _s3.y = size_y;
    return ImGui_ColorButtonEx(desc_id, _s1, flags, _s3);
}
DCGLUE_EXPORT bool dcjs_ImGui_ColorButton(const char* desc_id, float col_x, float col_y, float col_z, float col_w, ImGuiColorEditFlags flags) {
    ImVec4 _s1;
    _s1.x = col_x;
    _s1.y = col_y;
    _s1.z = col_z;
    _s1.w = col_w;
    return ImGui_ColorButton(desc_id, _s1, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_SetColorEditOptions(ImGuiColorEditFlags flags) {
    ImGui_SetColorEditOptions(flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_TreeNode(const char* label) {
    return ImGui_TreeNode(label);
}
DCGLUE_EXPORT bool dcjs_ImGui_TreeNodeStrUnformatted(const char* str_id, const char* text) {
    return ImGui_TreeNodeStrUnformatted(str_id, text);
}
DCGLUE_EXPORT bool dcjs_ImGui_TreeNodePtrUnformatted(const void* ptr_id, const char* text) {
    return ImGui_TreeNodePtrUnformatted(ptr_id, text);
}
DCGLUE_EXPORT bool dcjs_ImGui_TreeNodeEx(const char* label, ImGuiTreeNodeFlags flags) {
    return ImGui_TreeNodeEx(label, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_TreeNodeExStrUnformatted(const char* str_id, ImGuiTreeNodeFlags flags, const char* text) {
    return ImGui_TreeNodeExStrUnformatted(str_id, flags, text);
}
DCGLUE_EXPORT bool dcjs_ImGui_TreeNodeExPtrUnformatted(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* text) {
    return ImGui_TreeNodeExPtrUnformatted(ptr_id, flags, text);
}
DCGLUE_EXPORT void dcjs_ImGui_TreePush(const char* str_id) {
    ImGui_TreePush(str_id);
}
DCGLUE_EXPORT void dcjs_ImGui_TreePushPtr(const void* ptr_id) {
    ImGui_TreePushPtr(ptr_id);
}
DCGLUE_EXPORT void dcjs_ImGui_TreePop() {
    ImGui_TreePop();
}
DCGLUE_EXPORT float dcjs_ImGui_GetTreeNodeToLabelSpacing() {
    return ImGui_GetTreeNodeToLabelSpacing();
}
DCGLUE_EXPORT bool dcjs_ImGui_CollapsingHeader(const char* label, ImGuiTreeNodeFlags flags) {
    return ImGui_CollapsingHeader(label, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_CollapsingHeaderBoolPtr(const char* label, bool* p_visible, ImGuiTreeNodeFlags flags) {
    return ImGui_CollapsingHeaderBoolPtr(label, p_visible, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextItemOpen(bool is_open, ImGuiCond cond) {
    ImGui_SetNextItemOpen(is_open, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextItemStorageID(ImGuiID storage_id) {
    ImGui_SetNextItemStorageID(storage_id);
}
DCGLUE_EXPORT bool dcjs_ImGui_TreeNodeGetOpen(ImGuiID storage_id) {
    return ImGui_TreeNodeGetOpen(storage_id);
}
DCGLUE_EXPORT bool dcjs_ImGui_SelectableEx(const char* label, bool selected, ImGuiSelectableFlags flags, float size_x, float size_y) {
    ImVec2 _s3;
    _s3.x = size_x;
    _s3.y = size_y;
    return ImGui_SelectableEx(label, selected, flags, _s3);
}
DCGLUE_EXPORT bool dcjs_ImGui_Selectable(const char* label) {
    return ImGui_Selectable(label);
}
DCGLUE_EXPORT bool dcjs_ImGui_SelectableBoolPtrEx(const char* label, bool* p_selected, ImGuiSelectableFlags flags, float size_x, float size_y) {
    ImVec2 _s3;
    _s3.x = size_x;
    _s3.y = size_y;
    return ImGui_SelectableBoolPtrEx(label, p_selected, flags, _s3);
}
DCGLUE_EXPORT bool dcjs_ImGui_SelectableBoolPtr(const char* label, bool* p_selected, ImGuiSelectableFlags flags) {
    return ImGui_SelectableBoolPtr(label, p_selected, flags);
}
DCGLUE_EXPORT ImGuiMultiSelectIO* dcjs_ImGui_BeginMultiSelectEx(ImGuiMultiSelectFlags flags, int selection_size, int items_count) {
    return ImGui_BeginMultiSelectEx(flags, selection_size, items_count);
}
DCGLUE_EXPORT ImGuiMultiSelectIO* dcjs_ImGui_BeginMultiSelect(ImGuiMultiSelectFlags flags) {
    return ImGui_BeginMultiSelect(flags);
}
DCGLUE_EXPORT ImGuiMultiSelectIO* dcjs_ImGui_EndMultiSelect() {
    return ImGui_EndMultiSelect();
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextItemSelectionUserData(ImGuiSelectionUserData selection_user_data) {
    ImGui_SetNextItemSelectionUserData(selection_user_data);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemToggledSelection() {
    return ImGui_IsItemToggledSelection();
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginListBox(const char* label, float size_x, float size_y) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_BeginListBox(label, _s1);
}
DCGLUE_EXPORT void dcjs_ImGui_EndListBox() {
    ImGui_EndListBox();
}
DCGLUE_EXPORT bool dcjs_ImGui_ListBox(const char* label, int* current_item, const char*const items[], int items_count, int height_in_items) {
    return ImGui_ListBox(label, current_item, items, items_count, height_in_items);
}
DCGLUE_EXPORT bool dcjs_ImGui_ListBoxCallbackEx(const char* label, int* current_item, const char* (*getter)(void* user_data, int idx), void* user_data, int items_count, int height_in_items) {
    return ImGui_ListBoxCallbackEx(label, current_item, getter, user_data, items_count, height_in_items);
}
DCGLUE_EXPORT bool dcjs_ImGui_ListBoxCallback(const char* label, int* current_item, const char* (*getter)(void* user_data, int idx), void* user_data, int items_count) {
    return ImGui_ListBoxCallback(label, current_item, getter, user_data, items_count);
}
DCGLUE_EXPORT void dcjs_ImGui_PlotLinesEx(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, float graph_size_x, float graph_size_y, int stride) {
    ImVec2 _s7;
    _s7.x = graph_size_x;
    _s7.y = graph_size_y;
    ImGui_PlotLinesEx(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, _s7, stride);
}
DCGLUE_EXPORT void dcjs_ImGui_PlotLines(const char* label, const float* values, int values_count) {
    ImGui_PlotLines(label, values, values_count);
}
DCGLUE_EXPORT void dcjs_ImGui_PlotLinesCallbackEx(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, float graph_size_x, float graph_size_y) {
    ImVec2 _s8;
    _s8.x = graph_size_x;
    _s8.y = graph_size_y;
    ImGui_PlotLinesCallbackEx(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, _s8);
}
DCGLUE_EXPORT void dcjs_ImGui_PlotLinesCallback(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count) {
    ImGui_PlotLinesCallback(label, values_getter, data, values_count);
}
DCGLUE_EXPORT void dcjs_ImGui_PlotHistogramEx(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, float graph_size_x, float graph_size_y, int stride) {
    ImVec2 _s7;
    _s7.x = graph_size_x;
    _s7.y = graph_size_y;
    ImGui_PlotHistogramEx(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, _s7, stride);
}
DCGLUE_EXPORT void dcjs_ImGui_PlotHistogram(const char* label, const float* values, int values_count) {
    ImGui_PlotHistogram(label, values, values_count);
}
DCGLUE_EXPORT void dcjs_ImGui_PlotHistogramCallbackEx(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, float graph_size_x, float graph_size_y) {
    ImVec2 _s8;
    _s8.x = graph_size_x;
    _s8.y = graph_size_y;
    ImGui_PlotHistogramCallbackEx(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, _s8);
}
DCGLUE_EXPORT void dcjs_ImGui_PlotHistogramCallback(const char* label, float (*values_getter)(void* data, int idx), void* data, int values_count) {
    ImGui_PlotHistogramCallback(label, values_getter, data, values_count);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginMenuBar() {
    return ImGui_BeginMenuBar();
}
DCGLUE_EXPORT void dcjs_ImGui_EndMenuBar() {
    ImGui_EndMenuBar();
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginMainMenuBar() {
    return ImGui_BeginMainMenuBar();
}
DCGLUE_EXPORT void dcjs_ImGui_EndMainMenuBar() {
    ImGui_EndMainMenuBar();
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginMenuEx(const char* label, bool enabled) {
    return ImGui_BeginMenuEx(label, enabled);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginMenu(const char* label) {
    return ImGui_BeginMenu(label);
}
DCGLUE_EXPORT void dcjs_ImGui_EndMenu() {
    ImGui_EndMenu();
}
DCGLUE_EXPORT bool dcjs_ImGui_MenuItemEx(const char* label, const char* shortcut, bool selected, bool enabled) {
    return ImGui_MenuItemEx(label, shortcut, selected, enabled);
}
DCGLUE_EXPORT bool dcjs_ImGui_MenuItem(const char* label) {
    return ImGui_MenuItem(label);
}
DCGLUE_EXPORT bool dcjs_ImGui_MenuItemBoolPtr(const char* label, const char* shortcut, bool* p_selected, bool enabled) {
    return ImGui_MenuItemBoolPtr(label, shortcut, p_selected, enabled);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginTooltip() {
    return ImGui_BeginTooltip();
}
DCGLUE_EXPORT void dcjs_ImGui_EndTooltip() {
    ImGui_EndTooltip();
}
DCGLUE_EXPORT void dcjs_ImGui_SetTooltipUnformatted(const char* text) {
    ImGui_SetTooltipUnformatted(text);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginItemTooltip() {
    return ImGui_BeginItemTooltip();
}
DCGLUE_EXPORT void dcjs_ImGui_SetItemTooltipUnformatted(const char* text) {
    ImGui_SetItemTooltipUnformatted(text);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginPopup(const char* str_id, ImGuiWindowFlags flags) {
    return ImGui_BeginPopup(str_id, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginPopupModal(const char* name, bool* p_open, ImGuiWindowFlags flags) {
    return ImGui_BeginPopupModal(name, p_open, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_EndPopup() {
    ImGui_EndPopup();
}
DCGLUE_EXPORT void dcjs_ImGui_OpenPopup(const char* str_id, ImGuiPopupFlags popup_flags) {
    ImGui_OpenPopup(str_id, popup_flags);
}
DCGLUE_EXPORT void dcjs_ImGui_OpenPopupID(ImGuiID id, ImGuiPopupFlags popup_flags) {
    ImGui_OpenPopupID(id, popup_flags);
}
DCGLUE_EXPORT void dcjs_ImGui_OpenPopupOnItemClick(const char* str_id, ImGuiPopupFlags popup_flags) {
    ImGui_OpenPopupOnItemClick(str_id, popup_flags);
}
DCGLUE_EXPORT void dcjs_ImGui_CloseCurrentPopup() {
    ImGui_CloseCurrentPopup();
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginPopupContextItemEx(const char* str_id, ImGuiPopupFlags popup_flags) {
    return ImGui_BeginPopupContextItemEx(str_id, popup_flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginPopupContextItem() {
    return ImGui_BeginPopupContextItem();
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginPopupContextWindowEx(const char* str_id, ImGuiPopupFlags popup_flags) {
    return ImGui_BeginPopupContextWindowEx(str_id, popup_flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginPopupContextWindow() {
    return ImGui_BeginPopupContextWindow();
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginPopupContextVoidEx(const char* str_id, ImGuiPopupFlags popup_flags) {
    return ImGui_BeginPopupContextVoidEx(str_id, popup_flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginPopupContextVoid() {
    return ImGui_BeginPopupContextVoid();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsPopupOpen(const char* str_id, ImGuiPopupFlags flags) {
    return ImGui_IsPopupOpen(str_id, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginTableEx(const char* str_id, int columns, ImGuiTableFlags flags, float outer_size_x, float outer_size_y, float inner_width) {
    ImVec2 _s3;
    _s3.x = outer_size_x;
    _s3.y = outer_size_y;
    return ImGui_BeginTableEx(str_id, columns, flags, _s3, inner_width);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginTable(const char* str_id, int columns, ImGuiTableFlags flags) {
    return ImGui_BeginTable(str_id, columns, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_EndTable() {
    ImGui_EndTable();
}
DCGLUE_EXPORT void dcjs_ImGui_TableNextRowEx(ImGuiTableRowFlags row_flags, float min_row_height) {
    ImGui_TableNextRowEx(row_flags, min_row_height);
}
DCGLUE_EXPORT void dcjs_ImGui_TableNextRow() {
    ImGui_TableNextRow();
}
DCGLUE_EXPORT bool dcjs_ImGui_TableNextColumn() {
    return ImGui_TableNextColumn();
}
DCGLUE_EXPORT bool dcjs_ImGui_TableSetColumnIndex(int column_n) {
    return ImGui_TableSetColumnIndex(column_n);
}
DCGLUE_EXPORT void dcjs_ImGui_TableSetupColumnEx(const char* label, ImGuiTableColumnFlags flags, float init_width_or_weight, ImGuiID user_id) {
    ImGui_TableSetupColumnEx(label, flags, init_width_or_weight, user_id);
}
DCGLUE_EXPORT void dcjs_ImGui_TableSetupColumn(const char* label, ImGuiTableColumnFlags flags) {
    ImGui_TableSetupColumn(label, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_TableSetupScrollFreeze(int cols, int rows) {
    ImGui_TableSetupScrollFreeze(cols, rows);
}
DCGLUE_EXPORT void dcjs_ImGui_TableHeader(const char* label) {
    ImGui_TableHeader(label);
}
DCGLUE_EXPORT void dcjs_ImGui_TableHeadersRow() {
    ImGui_TableHeadersRow();
}
DCGLUE_EXPORT void dcjs_ImGui_TableAngledHeadersRow() {
    ImGui_TableAngledHeadersRow();
}
DCGLUE_EXPORT ImGuiTableSortSpecs* dcjs_ImGui_TableGetSortSpecs() {
    return ImGui_TableGetSortSpecs();
}
DCGLUE_EXPORT int dcjs_ImGui_TableGetColumnCount() {
    return ImGui_TableGetColumnCount();
}
DCGLUE_EXPORT int dcjs_ImGui_TableGetColumnIndex() {
    return ImGui_TableGetColumnIndex();
}
DCGLUE_EXPORT int dcjs_ImGui_TableGetRowIndex() {
    return ImGui_TableGetRowIndex();
}
DCGLUE_EXPORT const char* dcjs_ImGui_TableGetColumnName(int column_n) {
    return ImGui_TableGetColumnName(column_n);
}
DCGLUE_EXPORT ImGuiTableColumnFlags dcjs_ImGui_TableGetColumnFlags(int column_n) {
    return ImGui_TableGetColumnFlags(column_n);
}
DCGLUE_EXPORT void dcjs_ImGui_TableSetColumnEnabled(int column_n, bool v) {
    ImGui_TableSetColumnEnabled(column_n, v);
}
DCGLUE_EXPORT int dcjs_ImGui_TableGetHoveredColumn() {
    return ImGui_TableGetHoveredColumn();
}
DCGLUE_EXPORT void dcjs_ImGui_TableSetBgColor(ImGuiTableBgTarget target, ImU32 color, int column_n) {
    ImGui_TableSetBgColor(target, color, column_n);
}
DCGLUE_EXPORT void dcjs_ImGui_ColumnsEx(int count, const char* id, bool borders) {
    ImGui_ColumnsEx(count, id, borders);
}
DCGLUE_EXPORT void dcjs_ImGui_Columns() {
    ImGui_Columns();
}
DCGLUE_EXPORT void dcjs_ImGui_NextColumn() {
    ImGui_NextColumn();
}
DCGLUE_EXPORT int dcjs_ImGui_GetColumnIndex() {
    return ImGui_GetColumnIndex();
}
DCGLUE_EXPORT float dcjs_ImGui_GetColumnWidth(int column_index) {
    return ImGui_GetColumnWidth(column_index);
}
DCGLUE_EXPORT void dcjs_ImGui_SetColumnWidth(int column_index, float width) {
    ImGui_SetColumnWidth(column_index, width);
}
DCGLUE_EXPORT float dcjs_ImGui_GetColumnOffset(int column_index) {
    return ImGui_GetColumnOffset(column_index);
}
DCGLUE_EXPORT void dcjs_ImGui_SetColumnOffset(int column_index, float offset_x) {
    ImGui_SetColumnOffset(column_index, offset_x);
}
DCGLUE_EXPORT int dcjs_ImGui_GetColumnsCount() {
    return ImGui_GetColumnsCount();
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginTabBar(const char* str_id, ImGuiTabBarFlags flags) {
    return ImGui_BeginTabBar(str_id, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_EndTabBar() {
    ImGui_EndTabBar();
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginTabItem(const char* label, bool* p_open, ImGuiTabItemFlags flags) {
    return ImGui_BeginTabItem(label, p_open, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_EndTabItem() {
    ImGui_EndTabItem();
}
DCGLUE_EXPORT bool dcjs_ImGui_TabItemButton(const char* label, ImGuiTabItemFlags flags) {
    return ImGui_TabItemButton(label, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_SetTabItemClosed(const char* tab_or_docked_window_label) {
    ImGui_SetTabItemClosed(tab_or_docked_window_label);
}
DCGLUE_EXPORT ImGuiID dcjs_ImGui_DockSpaceEx(ImGuiID dockspace_id, float size_x, float size_y, ImGuiDockNodeFlags flags, const ImGuiWindowClass* window_class) {
    ImVec2 _s1;
    _s1.x = size_x;
    _s1.y = size_y;
    return ImGui_DockSpaceEx(dockspace_id, _s1, flags, window_class);
}
DCGLUE_EXPORT ImGuiID dcjs_ImGui_DockSpace(ImGuiID dockspace_id) {
    return ImGui_DockSpace(dockspace_id);
}
DCGLUE_EXPORT ImGuiID dcjs_ImGui_DockSpaceOverViewportEx(ImGuiID dockspace_id, const ImGuiViewport* viewport, ImGuiDockNodeFlags flags, const ImGuiWindowClass* window_class) {
    return ImGui_DockSpaceOverViewportEx(dockspace_id, viewport, flags, window_class);
}
DCGLUE_EXPORT ImGuiID dcjs_ImGui_DockSpaceOverViewport() {
    return ImGui_DockSpaceOverViewport();
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowDockID(ImGuiID dock_id, ImGuiCond cond) {
    ImGui_SetNextWindowDockID(dock_id, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextWindowClass(const ImGuiWindowClass* window_class) {
    ImGui_SetNextWindowClass(window_class);
}
DCGLUE_EXPORT ImGuiID dcjs_ImGui_GetWindowDockID() {
    return ImGui_GetWindowDockID();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsWindowDocked() {
    return ImGui_IsWindowDocked();
}
DCGLUE_EXPORT void dcjs_ImGui_LogToTTY(int auto_open_depth) {
    ImGui_LogToTTY(auto_open_depth);
}
DCGLUE_EXPORT void dcjs_ImGui_LogToFile(int auto_open_depth, const char* filename) {
    ImGui_LogToFile(auto_open_depth, filename);
}
DCGLUE_EXPORT void dcjs_ImGui_LogToClipboard(int auto_open_depth) {
    ImGui_LogToClipboard(auto_open_depth);
}
DCGLUE_EXPORT void dcjs_ImGui_LogFinish() {
    ImGui_LogFinish();
}
DCGLUE_EXPORT void dcjs_ImGui_LogButtons() {
    ImGui_LogButtons();
}
DCGLUE_EXPORT void dcjs_ImGui_LogTextUnformatted(const char* text) {
    ImGui_LogTextUnformatted(text);
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginDragDropSource(ImGuiDragDropFlags flags) {
    return ImGui_BeginDragDropSource(flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SetDragDropPayload(const char* type, const void* data, size_t sz, ImGuiCond cond) {
    return ImGui_SetDragDropPayload(type, data, sz, cond);
}
DCGLUE_EXPORT void dcjs_ImGui_EndDragDropSource() {
    ImGui_EndDragDropSource();
}
DCGLUE_EXPORT bool dcjs_ImGui_BeginDragDropTarget() {
    return ImGui_BeginDragDropTarget();
}
DCGLUE_EXPORT const ImGuiPayload* dcjs_ImGui_AcceptDragDropPayload(const char* type, ImGuiDragDropFlags flags) {
    return ImGui_AcceptDragDropPayload(type, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_EndDragDropTarget() {
    ImGui_EndDragDropTarget();
}
DCGLUE_EXPORT const ImGuiPayload* dcjs_ImGui_GetDragDropPayload() {
    return ImGui_GetDragDropPayload();
}
DCGLUE_EXPORT void dcjs_ImGui_BeginDisabled(bool disabled) {
    ImGui_BeginDisabled(disabled);
}
DCGLUE_EXPORT void dcjs_ImGui_EndDisabled() {
    ImGui_EndDisabled();
}
DCGLUE_EXPORT void dcjs_ImGui_PushClipRect(float clip_rect_min_x, float clip_rect_min_y, float clip_rect_max_x, float clip_rect_max_y, bool intersect_with_current_clip_rect) {
    ImVec2 _s0;
    _s0.x = clip_rect_min_x;
    _s0.y = clip_rect_min_y;
    ImVec2 _s1;
    _s1.x = clip_rect_max_x;
    _s1.y = clip_rect_max_y;
    ImGui_PushClipRect(_s0, _s1, intersect_with_current_clip_rect);
}
DCGLUE_EXPORT void dcjs_ImGui_PopClipRect() {
    ImGui_PopClipRect();
}
DCGLUE_EXPORT void dcjs_ImGui_SetItemDefaultFocus() {
    ImGui_SetItemDefaultFocus();
}
DCGLUE_EXPORT void dcjs_ImGui_SetKeyboardFocusHereEx(int offset) {
    ImGui_SetKeyboardFocusHereEx(offset);
}
DCGLUE_EXPORT void dcjs_ImGui_SetKeyboardFocusHere() {
    ImGui_SetKeyboardFocusHere();
}
DCGLUE_EXPORT void dcjs_ImGui_SetNavCursorVisible(bool visible) {
    ImGui_SetNavCursorVisible(visible);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextItemAllowOverlap() {
    ImGui_SetNextItemAllowOverlap();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemHovered(ImGuiHoveredFlags flags) {
    return ImGui_IsItemHovered(flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemActive() {
    return ImGui_IsItemActive();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemFocused() {
    return ImGui_IsItemFocused();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemClickedEx(ImGuiMouseButton mouse_button) {
    return ImGui_IsItemClickedEx(mouse_button);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemClicked() {
    return ImGui_IsItemClicked();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemVisible() {
    return ImGui_IsItemVisible();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemEdited() {
    return ImGui_IsItemEdited();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemActivated() {
    return ImGui_IsItemActivated();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemDeactivated() {
    return ImGui_IsItemDeactivated();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemDeactivatedAfterEdit() {
    return ImGui_IsItemDeactivatedAfterEdit();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsItemToggledOpen() {
    return ImGui_IsItemToggledOpen();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsAnyItemHovered() {
    return ImGui_IsAnyItemHovered();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsAnyItemActive() {
    return ImGui_IsAnyItemActive();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsAnyItemFocused() {
    return ImGui_IsAnyItemFocused();
}
DCGLUE_EXPORT ImGuiID dcjs_ImGui_GetItemID() {
    return ImGui_GetItemID();
}
DCGLUE_EXPORT void dcjs_ImGui_GetItemRectMin(ImVec2* _out) {
    *_out = ImGui_GetItemRectMin();
}
DCGLUE_EXPORT void dcjs_ImGui_GetItemRectMax(ImVec2* _out) {
    *_out = ImGui_GetItemRectMax();
}
DCGLUE_EXPORT void dcjs_ImGui_GetItemRectSize(ImVec2* _out) {
    *_out = ImGui_GetItemRectSize();
}
DCGLUE_EXPORT ImGuiItemFlags dcjs_ImGui_GetItemFlags() {
    return ImGui_GetItemFlags();
}
DCGLUE_EXPORT ImGuiViewport* dcjs_ImGui_GetMainViewport() {
    return ImGui_GetMainViewport();
}
DCGLUE_EXPORT ImDrawList* dcjs_ImGui_GetBackgroundDrawListEx(ImGuiViewport* viewport) {
    return ImGui_GetBackgroundDrawListEx(viewport);
}
DCGLUE_EXPORT ImDrawList* dcjs_ImGui_GetBackgroundDrawList() {
    return ImGui_GetBackgroundDrawList();
}
DCGLUE_EXPORT ImDrawList* dcjs_ImGui_GetForegroundDrawListEx(ImGuiViewport* viewport) {
    return ImGui_GetForegroundDrawListEx(viewport);
}
DCGLUE_EXPORT ImDrawList* dcjs_ImGui_GetForegroundDrawList() {
    return ImGui_GetForegroundDrawList();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsRectVisibleBySize(float size_x, float size_y) {
    ImVec2 _s0;
    _s0.x = size_x;
    _s0.y = size_y;
    return ImGui_IsRectVisibleBySize(_s0);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsRectVisible(float rect_min_x, float rect_min_y, float rect_max_x, float rect_max_y) {
    ImVec2 _s0;
    _s0.x = rect_min_x;
    _s0.y = rect_min_y;
    ImVec2 _s1;
    _s1.x = rect_max_x;
    _s1.y = rect_max_y;
    return ImGui_IsRectVisible(_s0, _s1);
}
DCGLUE_EXPORT double dcjs_ImGui_GetTime() {
    return ImGui_GetTime();
}
DCGLUE_EXPORT int dcjs_ImGui_GetFrameCount() {
    return ImGui_GetFrameCount();
}
DCGLUE_EXPORT ImDrawListSharedData* dcjs_ImGui_GetDrawListSharedData() {
    return ImGui_GetDrawListSharedData();
}
DCGLUE_EXPORT const char* dcjs_ImGui_GetStyleColorName(ImGuiCol idx) {
    return ImGui_GetStyleColorName(idx);
}
DCGLUE_EXPORT void dcjs_ImGui_SetStateStorage(ImGuiStorage* storage) {
    ImGui_SetStateStorage(storage);
}
DCGLUE_EXPORT ImGuiStorage* dcjs_ImGui_GetStateStorage() {
    return ImGui_GetStateStorage();
}
DCGLUE_EXPORT void dcjs_ImGui_CalcTextSizeEx(ImVec2* _out, const char* text, const char* text_end, bool hide_text_after_double_hash, float wrap_width) {
    *_out = ImGui_CalcTextSizeEx(text, text_end, hide_text_after_double_hash, wrap_width);
}
DCGLUE_EXPORT void dcjs_ImGui_CalcTextSize(ImVec2* _out, const char* text) {
    *_out = ImGui_CalcTextSize(text);
}
DCGLUE_EXPORT void dcjs_ImGui_ColorConvertU32ToFloat4(ImVec4* _out, ImU32 in) {
    *_out = ImGui_ColorConvertU32ToFloat4(in);
}
DCGLUE_EXPORT ImU32 dcjs_ImGui_ColorConvertFloat4ToU32(float in_x, float in_y, float in_z, float in_w) {
    ImVec4 _s0;
    _s0.x = in_x;
    _s0.y = in_y;
    _s0.z = in_z;
    _s0.w = in_w;
    return ImGui_ColorConvertFloat4ToU32(_s0);
}
DCGLUE_EXPORT void dcjs_ImGui_ColorConvertRGBtoHSV(float r, float g, float b, float* out_h, float* out_s, float* out_v) {
    ImGui_ColorConvertRGBtoHSV(r, g, b, out_h, out_s, out_v);
}
DCGLUE_EXPORT void dcjs_ImGui_ColorConvertHSVtoRGB(float h, float s, float v, float* out_r, float* out_g, float* out_b) {
    ImGui_ColorConvertHSVtoRGB(h, s, v, out_r, out_g, out_b);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsKeyDown(ImGuiKey key) {
    return ImGui_IsKeyDown(key);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsKeyPressedEx(ImGuiKey key, bool repeat) {
    return ImGui_IsKeyPressedEx(key, repeat);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsKeyPressed(ImGuiKey key) {
    return ImGui_IsKeyPressed(key);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsKeyReleased(ImGuiKey key) {
    return ImGui_IsKeyReleased(key);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsKeyChordPressed(ImGuiKeyChord key_chord) {
    return ImGui_IsKeyChordPressed(key_chord);
}
DCGLUE_EXPORT int dcjs_ImGui_GetKeyPressedAmount(ImGuiKey key, float repeat_delay, float rate) {
    return ImGui_GetKeyPressedAmount(key, repeat_delay, rate);
}
DCGLUE_EXPORT const char* dcjs_ImGui_GetKeyName(ImGuiKey key) {
    return ImGui_GetKeyName(key);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextFrameWantCaptureKeyboard(bool want_capture_keyboard) {
    ImGui_SetNextFrameWantCaptureKeyboard(want_capture_keyboard);
}
DCGLUE_EXPORT bool dcjs_ImGui_Shortcut(ImGuiKeyChord key_chord, ImGuiInputFlags flags) {
    return ImGui_Shortcut(key_chord, flags);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextItemShortcut(ImGuiKeyChord key_chord, ImGuiInputFlags flags) {
    ImGui_SetNextItemShortcut(key_chord, flags);
}
DCGLUE_EXPORT bool dcjs_ImGui_SetItemKeyOwner(ImGuiKey key) {
    return ImGui_SetItemKeyOwner(key);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsMouseDown(ImGuiMouseButton button) {
    return ImGui_IsMouseDown(button);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsMouseClickedEx(ImGuiMouseButton button, bool repeat) {
    return ImGui_IsMouseClickedEx(button, repeat);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsMouseClicked(ImGuiMouseButton button) {
    return ImGui_IsMouseClicked(button);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsMouseReleased(ImGuiMouseButton button) {
    return ImGui_IsMouseReleased(button);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsMouseDoubleClicked(ImGuiMouseButton button) {
    return ImGui_IsMouseDoubleClicked(button);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsMouseReleasedWithDelay(ImGuiMouseButton button, float delay) {
    return ImGui_IsMouseReleasedWithDelay(button, delay);
}
DCGLUE_EXPORT int dcjs_ImGui_GetMouseClickedCount(ImGuiMouseButton button) {
    return ImGui_GetMouseClickedCount(button);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsMouseHoveringRectEx(float r_min_x, float r_min_y, float r_max_x, float r_max_y, bool clip) {
    ImVec2 _s0;
    _s0.x = r_min_x;
    _s0.y = r_min_y;
    ImVec2 _s1;
    _s1.x = r_max_x;
    _s1.y = r_max_y;
    return ImGui_IsMouseHoveringRectEx(_s0, _s1, clip);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsMouseHoveringRect(float r_min_x, float r_min_y, float r_max_x, float r_max_y) {
    ImVec2 _s0;
    _s0.x = r_min_x;
    _s0.y = r_min_y;
    ImVec2 _s1;
    _s1.x = r_max_x;
    _s1.y = r_max_y;
    return ImGui_IsMouseHoveringRect(_s0, _s1);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsMousePosValid(const ImVec2* mouse_pos) {
    return ImGui_IsMousePosValid(mouse_pos);
}
DCGLUE_EXPORT bool dcjs_ImGui_IsAnyMouseDown() {
    return ImGui_IsAnyMouseDown();
}
DCGLUE_EXPORT void dcjs_ImGui_GetMousePos(ImVec2* _out) {
    *_out = ImGui_GetMousePos();
}
DCGLUE_EXPORT void dcjs_ImGui_GetMousePosOnOpeningCurrentPopup(ImVec2* _out) {
    *_out = ImGui_GetMousePosOnOpeningCurrentPopup();
}
DCGLUE_EXPORT bool dcjs_ImGui_IsMouseDragging(ImGuiMouseButton button, float lock_threshold) {
    return ImGui_IsMouseDragging(button, lock_threshold);
}
DCGLUE_EXPORT void dcjs_ImGui_GetMouseDragDelta(ImVec2* _out, ImGuiMouseButton button, float lock_threshold) {
    *_out = ImGui_GetMouseDragDelta(button, lock_threshold);
}
DCGLUE_EXPORT void dcjs_ImGui_ResetMouseDragDeltaEx(ImGuiMouseButton button) {
    ImGui_ResetMouseDragDeltaEx(button);
}
DCGLUE_EXPORT void dcjs_ImGui_ResetMouseDragDelta() {
    ImGui_ResetMouseDragDelta();
}
DCGLUE_EXPORT ImGuiMouseCursor dcjs_ImGui_GetMouseCursor() {
    return ImGui_GetMouseCursor();
}
DCGLUE_EXPORT void dcjs_ImGui_SetMouseCursor(ImGuiMouseCursor cursor_type) {
    ImGui_SetMouseCursor(cursor_type);
}
DCGLUE_EXPORT void dcjs_ImGui_SetNextFrameWantCaptureMouse(bool want_capture_mouse) {
    ImGui_SetNextFrameWantCaptureMouse(want_capture_mouse);
}
DCGLUE_EXPORT const char* dcjs_ImGui_GetClipboardText() {
    return ImGui_GetClipboardText();
}
DCGLUE_EXPORT void dcjs_ImGui_SetClipboardText(const char* text) {
    ImGui_SetClipboardText(text);
}
DCGLUE_EXPORT void dcjs_ImGui_LoadIniSettingsFromDisk(const char* ini_filename) {
    ImGui_LoadIniSettingsFromDisk(ini_filename);
}
DCGLUE_EXPORT void dcjs_ImGui_LoadIniSettingsFromMemory(const char* ini_data, size_t ini_size) {
    ImGui_LoadIniSettingsFromMemory(ini_data, ini_size);
}
DCGLUE_EXPORT void dcjs_ImGui_SaveIniSettingsToDisk(const char* ini_filename) {
    ImGui_SaveIniSettingsToDisk(ini_filename);
}
DCGLUE_EXPORT const char* dcjs_ImGui_SaveIniSettingsToMemory(size_t* out_ini_size) {
    return ImGui_SaveIniSettingsToMemory(out_ini_size);
}
DCGLUE_EXPORT void dcjs_ImGui_DebugTextEncoding(const char* text) {
    ImGui_DebugTextEncoding(text);
}
DCGLUE_EXPORT void dcjs_ImGui_DebugFlashStyleColor(ImGuiCol idx) {
    ImGui_DebugFlashStyleColor(idx);
}
DCGLUE_EXPORT void dcjs_ImGui_DebugStartItemPicker() {
    ImGui_DebugStartItemPicker();
}
DCGLUE_EXPORT bool dcjs_ImGui_DebugCheckVersionAndDataLayout(const char* version_str, size_t sz_io, size_t sz_style, size_t sz_vec2, size_t sz_vec4, size_t sz_drawvert, size_t sz_drawidx) {
    return ImGui_DebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx);
}
DCGLUE_EXPORT void dcjs_ImGui_DebugLogUnformatted(const char* text) {
    ImGui_DebugLogUnformatted(text);
}
DCGLUE_EXPORT void dcjs_ImGui_SetAllocatorFunctions(ImGuiMemAllocFunc alloc_func, ImGuiMemFreeFunc free_func, void* user_data) {
    ImGui_SetAllocatorFunctions(alloc_func, free_func, user_data);
}
DCGLUE_EXPORT void dcjs_ImGui_GetAllocatorFunctions(ImGuiMemAllocFunc* p_alloc_func, ImGuiMemFreeFunc* p_free_func, void** p_user_data) {
    ImGui_GetAllocatorFunctions(p_alloc_func, p_free_func, p_user_data);
}
DCGLUE_EXPORT void* dcjs_ImGui_MemAlloc(size_t size) {
    return ImGui_MemAlloc(size);
}
DCGLUE_EXPORT void dcjs_ImGui_MemFree(void* ptr) {
    ImGui_MemFree(ptr);
}
DCGLUE_EXPORT void dcjs_ImGui_UpdatePlatformWindows() {
    ImGui_UpdatePlatformWindows();
}
DCGLUE_EXPORT void dcjs_ImGui_RenderPlatformWindowsDefaultEx(void* platform_render_arg, void* renderer_render_arg) {
    ImGui_RenderPlatformWindowsDefaultEx(platform_render_arg, renderer_render_arg);
}
DCGLUE_EXPORT void dcjs_ImGui_RenderPlatformWindowsDefault() {
    ImGui_RenderPlatformWindowsDefault();
}
DCGLUE_EXPORT void dcjs_ImGui_DestroyPlatformWindows() {
    ImGui_DestroyPlatformWindows();
}
DCGLUE_EXPORT ImGuiViewport* dcjs_ImGui_FindViewportByID(ImGuiID viewport_id) {
    return ImGui_FindViewportByID(viewport_id);
}
DCGLUE_EXPORT ImGuiViewport* dcjs_ImGui_FindViewportByPlatformHandle(void* platform_handle) {
    return ImGui_FindViewportByPlatformHandle(platform_handle);
}
DCGLUE_EXPORT void dcjs_ImVector_Construct(void* vector) {
    ImVector_Construct(vector);
}
DCGLUE_EXPORT void dcjs_ImVector_Destruct(void* vector) {
    ImVector_Destruct(vector);
}
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_SetPlatform_GetWindowWorkAreaInsets(void (*getWindowWorkAreaInsetsFunc)(ImGuiViewport* vp, ImVec4* result)) {
    ImGuiPlatformIO_SetPlatform_GetWindowWorkAreaInsets(getWindowWorkAreaInsetsFunc);
}
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_SetPlatform_GetWindowFramebufferScale(void (*getWindowFramebufferScaleFunc)(ImGuiViewport* vp, ImVec2* result)) {
    ImGuiPlatformIO_SetPlatform_GetWindowFramebufferScale(getWindowFramebufferScaleFunc);
}
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_SetPlatform_GetWindowPos(void (*getWindowPosFunc)(ImGuiViewport* vp, ImVec2* result)) {
    ImGuiPlatformIO_SetPlatform_GetWindowPos(getWindowPosFunc);
}
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_SetPlatform_GetWindowSize(void (*getWindowSizeFunc)(ImGuiViewport* vp, ImVec2* result)) {
    ImGuiPlatformIO_SetPlatform_GetWindowSize(getWindowSizeFunc);
}
DCGLUE_EXPORT void dcjs_ImGuiStyle_ScaleAllSizes(ImGuiStyle* self, float scale_factor) {
    ImGuiStyle_ScaleAllSizes(self, scale_factor);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_AddKeyEvent(ImGuiIO* self, ImGuiKey key, bool down) {
    ImGuiIO_AddKeyEvent(self, key, down);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_AddKeyAnalogEvent(ImGuiIO* self, ImGuiKey key, bool down, float v) {
    ImGuiIO_AddKeyAnalogEvent(self, key, down, v);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_AddMousePosEvent(ImGuiIO* self, float x, float y) {
    ImGuiIO_AddMousePosEvent(self, x, y);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_AddMouseButtonEvent(ImGuiIO* self, int button, bool down) {
    ImGuiIO_AddMouseButtonEvent(self, button, down);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_AddMouseWheelEvent(ImGuiIO* self, float wheel_x, float wheel_y) {
    ImGuiIO_AddMouseWheelEvent(self, wheel_x, wheel_y);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_AddMouseSourceEvent(ImGuiIO* self, ImGuiMouseSource source) {
    ImGuiIO_AddMouseSourceEvent(self, source);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_AddMouseViewportEvent(ImGuiIO* self, ImGuiID id) {
    ImGuiIO_AddMouseViewportEvent(self, id);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_AddFocusEvent(ImGuiIO* self, bool focused) {
    ImGuiIO_AddFocusEvent(self, focused);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_AddInputCharacter(ImGuiIO* self, unsigned int c) {
    ImGuiIO_AddInputCharacter(self, c);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_AddInputCharacterUTF16(ImGuiIO* self, ImWchar16 c) {
    ImGuiIO_AddInputCharacterUTF16(self, c);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_AddInputCharactersUTF8(ImGuiIO* self, const char* str) {
    ImGuiIO_AddInputCharactersUTF8(self, str);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_SetKeyEventNativeDataEx(ImGuiIO* self, ImGuiKey key, int native_keycode, int native_scancode, int native_legacy_index) {
    ImGuiIO_SetKeyEventNativeDataEx(self, key, native_keycode, native_scancode, native_legacy_index);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_SetKeyEventNativeData(ImGuiIO* self, ImGuiKey key, int native_keycode, int native_scancode) {
    ImGuiIO_SetKeyEventNativeData(self, key, native_keycode, native_scancode);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_SetAppAcceptingEvents(ImGuiIO* self, bool accepting_events) {
    ImGuiIO_SetAppAcceptingEvents(self, accepting_events);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_ClearEventsQueue(ImGuiIO* self) {
    ImGuiIO_ClearEventsQueue(self);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_ClearInputKeys(ImGuiIO* self) {
    ImGuiIO_ClearInputKeys(self);
}
DCGLUE_EXPORT void dcjs_ImGuiIO_ClearInputMouse(ImGuiIO* self) {
    ImGuiIO_ClearInputMouse(self);
}
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_DeleteChars(ImGuiInputTextCallbackData* self, int pos, int bytes_count) {
    ImGuiInputTextCallbackData_DeleteChars(self, pos, bytes_count);
}
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_InsertChars(ImGuiInputTextCallbackData* self, int pos, const char* text, const char* text_end) {
    ImGuiInputTextCallbackData_InsertChars(self, pos, text, text_end);
}
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_SelectAll(ImGuiInputTextCallbackData* self) {
    ImGuiInputTextCallbackData_SelectAll(self);
}
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_SetSelection(ImGuiInputTextCallbackData* self, int s, int e) {
    ImGuiInputTextCallbackData_SetSelection(self, s, e);
}
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_ClearSelection(ImGuiInputTextCallbackData* self) {
    ImGuiInputTextCallbackData_ClearSelection(self);
}
DCGLUE_EXPORT bool dcjs_ImGuiInputTextCallbackData_HasSelection(const ImGuiInputTextCallbackData* self) {
    return ImGuiInputTextCallbackData_HasSelection(self);
}
DCGLUE_EXPORT void dcjs_ImGuiPayload_Clear(ImGuiPayload* self) {
    ImGuiPayload_Clear(self);
}
DCGLUE_EXPORT bool dcjs_ImGuiPayload_IsDataType(const ImGuiPayload* self, const char* type) {
    return ImGuiPayload_IsDataType(self, type);
}
DCGLUE_EXPORT bool dcjs_ImGuiPayload_IsPreview(const ImGuiPayload* self) {
    return ImGuiPayload_IsPreview(self);
}
DCGLUE_EXPORT bool dcjs_ImGuiPayload_IsDelivery(const ImGuiPayload* self) {
    return ImGuiPayload_IsDelivery(self);
}
DCGLUE_EXPORT const char* dcjs_ImGuiTextBuffer_begin(const ImGuiTextBuffer* self) {
    return ImGuiTextBuffer_begin(self);
}
DCGLUE_EXPORT const char* dcjs_ImGuiTextBuffer_end(const ImGuiTextBuffer* self) {
    return ImGuiTextBuffer_end(self);
}
DCGLUE_EXPORT int dcjs_ImGuiTextBuffer_size(const ImGuiTextBuffer* self) {
    return ImGuiTextBuffer_size(self);
}
DCGLUE_EXPORT bool dcjs_ImGuiTextBuffer_empty(const ImGuiTextBuffer* self) {
    return ImGuiTextBuffer_empty(self);
}
DCGLUE_EXPORT void dcjs_ImGuiTextBuffer_clear(ImGuiTextBuffer* self) {
    ImGuiTextBuffer_clear(self);
}
DCGLUE_EXPORT void dcjs_ImGuiTextBuffer_resize(ImGuiTextBuffer* self, int size) {
    ImGuiTextBuffer_resize(self, size);
}
DCGLUE_EXPORT void dcjs_ImGuiTextBuffer_reserve(ImGuiTextBuffer* self, int capacity) {
    ImGuiTextBuffer_reserve(self, capacity);
}
DCGLUE_EXPORT const char* dcjs_ImGuiTextBuffer_c_str(const ImGuiTextBuffer* self) {
    return ImGuiTextBuffer_c_str(self);
}
DCGLUE_EXPORT void dcjs_ImGuiTextBuffer_append(ImGuiTextBuffer* self, const char* str, const char* str_end) {
    ImGuiTextBuffer_append(self, str, str_end);
}
DCGLUE_EXPORT void dcjs_ImGuiStorage_Clear(ImGuiStorage* self) {
    ImGuiStorage_Clear(self);
}
DCGLUE_EXPORT int dcjs_ImGuiStorage_GetInt(const ImGuiStorage* self, ImGuiID key, int default_val) {
    return ImGuiStorage_GetInt(self, key, default_val);
}
DCGLUE_EXPORT void dcjs_ImGuiStorage_SetInt(ImGuiStorage* self, ImGuiID key, int val) {
    ImGuiStorage_SetInt(self, key, val);
}
DCGLUE_EXPORT bool dcjs_ImGuiStorage_GetBool(const ImGuiStorage* self, ImGuiID key, bool default_val) {
    return ImGuiStorage_GetBool(self, key, default_val);
}
DCGLUE_EXPORT void dcjs_ImGuiStorage_SetBool(ImGuiStorage* self, ImGuiID key, bool val) {
    ImGuiStorage_SetBool(self, key, val);
}
DCGLUE_EXPORT float dcjs_ImGuiStorage_GetFloat(const ImGuiStorage* self, ImGuiID key, float default_val) {
    return ImGuiStorage_GetFloat(self, key, default_val);
}
DCGLUE_EXPORT void dcjs_ImGuiStorage_SetFloat(ImGuiStorage* self, ImGuiID key, float val) {
    ImGuiStorage_SetFloat(self, key, val);
}
DCGLUE_EXPORT void* dcjs_ImGuiStorage_GetVoidPtr(const ImGuiStorage* self, ImGuiID key) {
    return ImGuiStorage_GetVoidPtr(self, key);
}
DCGLUE_EXPORT void dcjs_ImGuiStorage_SetVoidPtr(ImGuiStorage* self, ImGuiID key, void* val) {
    ImGuiStorage_SetVoidPtr(self, key, val);
}
DCGLUE_EXPORT int* dcjs_ImGuiStorage_GetIntRef(ImGuiStorage* self, ImGuiID key, int default_val) {
    return ImGuiStorage_GetIntRef(self, key, default_val);
}
DCGLUE_EXPORT bool* dcjs_ImGuiStorage_GetBoolRef(ImGuiStorage* self, ImGuiID key, bool default_val) {
    return ImGuiStorage_GetBoolRef(self, key, default_val);
}
DCGLUE_EXPORT float* dcjs_ImGuiStorage_GetFloatRef(ImGuiStorage* self, ImGuiID key, float default_val) {
    return ImGuiStorage_GetFloatRef(self, key, default_val);
}
DCGLUE_EXPORT void** dcjs_ImGuiStorage_GetVoidPtrRef(ImGuiStorage* self, ImGuiID key, void* default_val) {
    return ImGuiStorage_GetVoidPtrRef(self, key, default_val);
}
DCGLUE_EXPORT void dcjs_ImGuiStorage_BuildSortByKey(ImGuiStorage* self) {
    ImGuiStorage_BuildSortByKey(self);
}
DCGLUE_EXPORT void dcjs_ImGuiStorage_SetAllInt(ImGuiStorage* self, int val) {
    ImGuiStorage_SetAllInt(self, val);
}
DCGLUE_EXPORT void dcjs_ImGuiListClipper_Begin(ImGuiListClipper* self, int items_count, float items_height) {
    ImGuiListClipper_Begin(self, items_count, items_height);
}
DCGLUE_EXPORT void dcjs_ImGuiListClipper_End(ImGuiListClipper* self) {
    ImGuiListClipper_End(self);
}
DCGLUE_EXPORT bool dcjs_ImGuiListClipper_Step(ImGuiListClipper* self) {
    return ImGuiListClipper_Step(self);
}
DCGLUE_EXPORT void dcjs_ImGuiListClipper_IncludeItemByIndex(ImGuiListClipper* self, int item_index) {
    ImGuiListClipper_IncludeItemByIndex(self, item_index);
}
DCGLUE_EXPORT void dcjs_ImGuiListClipper_IncludeItemsByIndex(ImGuiListClipper* self, int item_begin, int item_end) {
    ImGuiListClipper_IncludeItemsByIndex(self, item_begin, item_end);
}
DCGLUE_EXPORT void dcjs_ImGuiListClipper_SeekCursorForItem(ImGuiListClipper* self, int item_index) {
    ImGuiListClipper_SeekCursorForItem(self, item_index);
}
DCGLUE_EXPORT void dcjs_ImColor_SetHSV(ImColor* self, float h, float s, float v, float a) {
    ImColor_SetHSV(self, h, s, v, a);
}
DCGLUE_EXPORT void dcjs_ImGuiSelectionBasicStorage_ApplyRequests(ImGuiSelectionBasicStorage* self, ImGuiMultiSelectIO* ms_io) {
    ImGuiSelectionBasicStorage_ApplyRequests(self, ms_io);
}
DCGLUE_EXPORT bool dcjs_ImGuiSelectionBasicStorage_Contains(const ImGuiSelectionBasicStorage* self, ImGuiID id) {
    return ImGuiSelectionBasicStorage_Contains(self, id);
}
DCGLUE_EXPORT void dcjs_ImGuiSelectionBasicStorage_Clear(ImGuiSelectionBasicStorage* self) {
    ImGuiSelectionBasicStorage_Clear(self);
}
DCGLUE_EXPORT void dcjs_ImGuiSelectionBasicStorage_Swap(ImGuiSelectionBasicStorage* self, ImGuiSelectionBasicStorage* r) {
    ImGuiSelectionBasicStorage_Swap(self, r);
}
DCGLUE_EXPORT void dcjs_ImGuiSelectionBasicStorage_SetItemSelected(ImGuiSelectionBasicStorage* self, ImGuiID id, bool selected) {
    ImGuiSelectionBasicStorage_SetItemSelected(self, id, selected);
}
DCGLUE_EXPORT bool dcjs_ImGuiSelectionBasicStorage_GetNextSelectedItem(ImGuiSelectionBasicStorage* self, void** opaque_it, ImGuiID* out_id) {
    return ImGuiSelectionBasicStorage_GetNextSelectedItem(self, opaque_it, out_id);
}
DCGLUE_EXPORT ImGuiID dcjs_ImGuiSelectionBasicStorage_GetStorageIdFromIndex(ImGuiSelectionBasicStorage* self, int idx) {
    return ImGuiSelectionBasicStorage_GetStorageIdFromIndex(self, idx);
}
DCGLUE_EXPORT void dcjs_ImGuiSelectionExternalStorage_ApplyRequests(ImGuiSelectionExternalStorage* self, ImGuiMultiSelectIO* ms_io) {
    ImGuiSelectionExternalStorage_ApplyRequests(self, ms_io);
}
DCGLUE_EXPORT ImTextureID dcjs_ImDrawCmd_GetTexID(const ImDrawCmd* self) {
    return ImDrawCmd_GetTexID(self);
}
DCGLUE_EXPORT void dcjs_ImDrawListSplitter_Clear(ImDrawListSplitter* self) {
    ImDrawListSplitter_Clear(self);
}
DCGLUE_EXPORT void dcjs_ImDrawListSplitter_ClearFreeMemory(ImDrawListSplitter* self) {
    ImDrawListSplitter_ClearFreeMemory(self);
}
DCGLUE_EXPORT void dcjs_ImDrawListSplitter_Split(ImDrawListSplitter* self, ImDrawList* draw_list, int count) {
    ImDrawListSplitter_Split(self, draw_list, count);
}
DCGLUE_EXPORT void dcjs_ImDrawListSplitter_Merge(ImDrawListSplitter* self, ImDrawList* draw_list) {
    ImDrawListSplitter_Merge(self, draw_list);
}
DCGLUE_EXPORT void dcjs_ImDrawListSplitter_SetCurrentChannel(ImDrawListSplitter* self, ImDrawList* draw_list, int channel_idx) {
    ImDrawListSplitter_SetCurrentChannel(self, draw_list, channel_idx);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PushClipRect(ImDrawList* self, float clip_rect_min_x, float clip_rect_min_y, float clip_rect_max_x, float clip_rect_max_y, bool intersect_with_current_clip_rect) {
    ImVec2 _s1;
    _s1.x = clip_rect_min_x;
    _s1.y = clip_rect_min_y;
    ImVec2 _s2;
    _s2.x = clip_rect_max_x;
    _s2.y = clip_rect_max_y;
    ImDrawList_PushClipRect(self, _s1, _s2, intersect_with_current_clip_rect);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PushClipRectFullScreen(ImDrawList* self) {
    ImDrawList_PushClipRectFullScreen(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PopClipRect(ImDrawList* self) {
    ImDrawList_PopClipRect(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PushTexture(ImDrawList* self, ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID) {
    ImTextureRef _s1;
    _s1._TexData = tex_ref__TexData;
    _s1._TexID = tex_ref__TexID;
    ImDrawList_PushTexture(self, _s1);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PopTexture(ImDrawList* self) {
    ImDrawList_PopTexture(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList_GetClipRectMin(ImVec2* _out, const ImDrawList* self) {
    *_out = ImDrawList_GetClipRectMin(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList_GetClipRectMax(ImVec2* _out, const ImDrawList* self) {
    *_out = ImDrawList_GetClipRectMax(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddLineEx(ImDrawList* self, float p1_x, float p1_y, float p2_x, float p2_y, ImU32 col, float thickness) {
    ImVec2 _s1;
    _s1.x = p1_x;
    _s1.y = p1_y;
    ImVec2 _s2;
    _s2.x = p2_x;
    _s2.y = p2_y;
    ImDrawList_AddLineEx(self, _s1, _s2, col, thickness);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddLine(ImDrawList* self, float p1_x, float p1_y, float p2_x, float p2_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = p1_x;
    _s1.y = p1_y;
    ImVec2 _s2;
    _s2.x = p2_x;
    _s2.y = p2_y;
    ImDrawList_AddLine(self, _s1, _s2, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddLineHEx(ImDrawList* self, float min_x, float max_x, float y, ImU32 col, float thickness) {
    ImDrawList_AddLineHEx(self, min_x, max_x, y, col, thickness);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddLineH(ImDrawList* self, float min_x, float max_x, float y, ImU32 col) {
    ImDrawList_AddLineH(self, min_x, max_x, y, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddLineVEx(ImDrawList* self, float x, float min_y, float max_y, ImU32 col, float thickness) {
    ImDrawList_AddLineVEx(self, x, min_y, max_y, col, thickness);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddLineV(ImDrawList* self, float x, float min_y, float max_y, ImU32 col) {
    ImDrawList_AddLineV(self, x, min_y, max_y, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddRectEx(ImDrawList* self, float p_min_x, float p_min_y, float p_max_x, float p_max_y, ImU32 col, float rounding, float thickness, ImDrawFlags flags) {
    ImVec2 _s1;
    _s1.x = p_min_x;
    _s1.y = p_min_y;
    ImVec2 _s2;
    _s2.x = p_max_x;
    _s2.y = p_max_y;
    ImDrawList_AddRectEx(self, _s1, _s2, col, rounding, thickness, flags);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddRect(ImDrawList* self, float p_min_x, float p_min_y, float p_max_x, float p_max_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = p_min_x;
    _s1.y = p_min_y;
    ImVec2 _s2;
    _s2.x = p_max_x;
    _s2.y = p_max_y;
    ImDrawList_AddRect(self, _s1, _s2, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddRectFilledEx(ImDrawList* self, float p_min_x, float p_min_y, float p_max_x, float p_max_y, ImU32 col, float rounding, ImDrawFlags flags) {
    ImVec2 _s1;
    _s1.x = p_min_x;
    _s1.y = p_min_y;
    ImVec2 _s2;
    _s2.x = p_max_x;
    _s2.y = p_max_y;
    ImDrawList_AddRectFilledEx(self, _s1, _s2, col, rounding, flags);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddRectFilled(ImDrawList* self, float p_min_x, float p_min_y, float p_max_x, float p_max_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = p_min_x;
    _s1.y = p_min_y;
    ImVec2 _s2;
    _s2.x = p_max_x;
    _s2.y = p_max_y;
    ImDrawList_AddRectFilled(self, _s1, _s2, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddRectFilledMultiColor(ImDrawList* self, float p_min_x, float p_min_y, float p_max_x, float p_max_y, ImU32 col_upr_left, ImU32 col_upr_right, ImU32 col_bot_right, ImU32 col_bot_left) {
    ImVec2 _s1;
    _s1.x = p_min_x;
    _s1.y = p_min_y;
    ImVec2 _s2;
    _s2.x = p_max_x;
    _s2.y = p_max_y;
    ImDrawList_AddRectFilledMultiColor(self, _s1, _s2, col_upr_left, col_upr_right, col_bot_right, col_bot_left);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddQuadEx(ImDrawList* self, float p1_x, float p1_y, float p2_x, float p2_y, float p3_x, float p3_y, float p4_x, float p4_y, ImU32 col, float thickness) {
    ImVec2 _s1;
    _s1.x = p1_x;
    _s1.y = p1_y;
    ImVec2 _s2;
    _s2.x = p2_x;
    _s2.y = p2_y;
    ImVec2 _s3;
    _s3.x = p3_x;
    _s3.y = p3_y;
    ImVec2 _s4;
    _s4.x = p4_x;
    _s4.y = p4_y;
    ImDrawList_AddQuadEx(self, _s1, _s2, _s3, _s4, col, thickness);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddQuad(ImDrawList* self, float p1_x, float p1_y, float p2_x, float p2_y, float p3_x, float p3_y, float p4_x, float p4_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = p1_x;
    _s1.y = p1_y;
    ImVec2 _s2;
    _s2.x = p2_x;
    _s2.y = p2_y;
    ImVec2 _s3;
    _s3.x = p3_x;
    _s3.y = p3_y;
    ImVec2 _s4;
    _s4.x = p4_x;
    _s4.y = p4_y;
    ImDrawList_AddQuad(self, _s1, _s2, _s3, _s4, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddQuadFilled(ImDrawList* self, float p1_x, float p1_y, float p2_x, float p2_y, float p3_x, float p3_y, float p4_x, float p4_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = p1_x;
    _s1.y = p1_y;
    ImVec2 _s2;
    _s2.x = p2_x;
    _s2.y = p2_y;
    ImVec2 _s3;
    _s3.x = p3_x;
    _s3.y = p3_y;
    ImVec2 _s4;
    _s4.x = p4_x;
    _s4.y = p4_y;
    ImDrawList_AddQuadFilled(self, _s1, _s2, _s3, _s4, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddTriangleEx(ImDrawList* self, float p1_x, float p1_y, float p2_x, float p2_y, float p3_x, float p3_y, ImU32 col, float thickness) {
    ImVec2 _s1;
    _s1.x = p1_x;
    _s1.y = p1_y;
    ImVec2 _s2;
    _s2.x = p2_x;
    _s2.y = p2_y;
    ImVec2 _s3;
    _s3.x = p3_x;
    _s3.y = p3_y;
    ImDrawList_AddTriangleEx(self, _s1, _s2, _s3, col, thickness);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddTriangle(ImDrawList* self, float p1_x, float p1_y, float p2_x, float p2_y, float p3_x, float p3_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = p1_x;
    _s1.y = p1_y;
    ImVec2 _s2;
    _s2.x = p2_x;
    _s2.y = p2_y;
    ImVec2 _s3;
    _s3.x = p3_x;
    _s3.y = p3_y;
    ImDrawList_AddTriangle(self, _s1, _s2, _s3, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddTriangleFilled(ImDrawList* self, float p1_x, float p1_y, float p2_x, float p2_y, float p3_x, float p3_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = p1_x;
    _s1.y = p1_y;
    ImVec2 _s2;
    _s2.x = p2_x;
    _s2.y = p2_y;
    ImVec2 _s3;
    _s3.x = p3_x;
    _s3.y = p3_y;
    ImDrawList_AddTriangleFilled(self, _s1, _s2, _s3, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddCircleEx(ImDrawList* self, float center_x, float center_y, float radius, ImU32 col, int num_segments, float thickness) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImDrawList_AddCircleEx(self, _s1, radius, col, num_segments, thickness);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddCircle(ImDrawList* self, float center_x, float center_y, float radius, ImU32 col) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImDrawList_AddCircle(self, _s1, radius, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddCircleFilled(ImDrawList* self, float center_x, float center_y, float radius, ImU32 col, int num_segments) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImDrawList_AddCircleFilled(self, _s1, radius, col, num_segments);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddNgonEx(ImDrawList* self, float center_x, float center_y, float radius, ImU32 col, int num_segments, float thickness) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImDrawList_AddNgonEx(self, _s1, radius, col, num_segments, thickness);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddNgon(ImDrawList* self, float center_x, float center_y, float radius, ImU32 col, int num_segments) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImDrawList_AddNgon(self, _s1, radius, col, num_segments);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddNgonFilled(ImDrawList* self, float center_x, float center_y, float radius, ImU32 col, int num_segments) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImDrawList_AddNgonFilled(self, _s1, radius, col, num_segments);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddEllipseEx(ImDrawList* self, float center_x, float center_y, float radius_x, float radius_y, ImU32 col, float rot, int num_segments, float thickness) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImVec2 _s2;
    _s2.x = radius_x;
    _s2.y = radius_y;
    ImDrawList_AddEllipseEx(self, _s1, _s2, col, rot, num_segments, thickness);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddEllipse(ImDrawList* self, float center_x, float center_y, float radius_x, float radius_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImVec2 _s2;
    _s2.x = radius_x;
    _s2.y = radius_y;
    ImDrawList_AddEllipse(self, _s1, _s2, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddEllipseFilledEx(ImDrawList* self, float center_x, float center_y, float radius_x, float radius_y, ImU32 col, float rot, int num_segments) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImVec2 _s2;
    _s2.x = radius_x;
    _s2.y = radius_y;
    ImDrawList_AddEllipseFilledEx(self, _s1, _s2, col, rot, num_segments);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddEllipseFilled(ImDrawList* self, float center_x, float center_y, float radius_x, float radius_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImVec2 _s2;
    _s2.x = radius_x;
    _s2.y = radius_y;
    ImDrawList_AddEllipseFilled(self, _s1, _s2, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddTextEx(ImDrawList* self, float pos_x, float pos_y, ImU32 col, const char* text_begin, const char* text_end) {
    ImVec2 _s1;
    _s1.x = pos_x;
    _s1.y = pos_y;
    ImDrawList_AddTextEx(self, _s1, col, text_begin, text_end);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddText(ImDrawList* self, float pos_x, float pos_y, ImU32 col, const char* text_begin) {
    ImVec2 _s1;
    _s1.x = pos_x;
    _s1.y = pos_y;
    ImDrawList_AddText(self, _s1, col, text_begin);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddTextImFontPtrEx(ImDrawList* self, ImFont* font, float font_size, float pos_x, float pos_y, ImU32 col, const char* text_begin, const char* text_end, float wrap_width, const ImVec4* cpu_fine_clip_rect) {
    ImVec2 _s3;
    _s3.x = pos_x;
    _s3.y = pos_y;
    ImDrawList_AddTextImFontPtrEx(self, font, font_size, _s3, col, text_begin, text_end, wrap_width, cpu_fine_clip_rect);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddTextImFontPtr(ImDrawList* self, ImFont* font, float font_size, float pos_x, float pos_y, ImU32 col, const char* text_begin) {
    ImVec2 _s3;
    _s3.x = pos_x;
    _s3.y = pos_y;
    ImDrawList_AddTextImFontPtr(self, font, font_size, _s3, col, text_begin);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddBezierCubic(ImDrawList* self, float p1_x, float p1_y, float p2_x, float p2_y, float p3_x, float p3_y, float p4_x, float p4_y, ImU32 col, float thickness, int num_segments) {
    ImVec2 _s1;
    _s1.x = p1_x;
    _s1.y = p1_y;
    ImVec2 _s2;
    _s2.x = p2_x;
    _s2.y = p2_y;
    ImVec2 _s3;
    _s3.x = p3_x;
    _s3.y = p3_y;
    ImVec2 _s4;
    _s4.x = p4_x;
    _s4.y = p4_y;
    ImDrawList_AddBezierCubic(self, _s1, _s2, _s3, _s4, col, thickness, num_segments);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddBezierQuadratic(ImDrawList* self, float p1_x, float p1_y, float p2_x, float p2_y, float p3_x, float p3_y, ImU32 col, float thickness, int num_segments) {
    ImVec2 _s1;
    _s1.x = p1_x;
    _s1.y = p1_y;
    ImVec2 _s2;
    _s2.x = p2_x;
    _s2.y = p2_y;
    ImVec2 _s3;
    _s3.x = p3_x;
    _s3.y = p3_y;
    ImDrawList_AddBezierQuadratic(self, _s1, _s2, _s3, col, thickness, num_segments);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddPolyline(ImDrawList* self, const ImVec2* points, int num_points, ImU32 col, float thickness, ImDrawFlags flags) {
    ImDrawList_AddPolyline(self, points, num_points, col, thickness, flags);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddConvexPolyFilled(ImDrawList* self, const ImVec2* points, int num_points, ImU32 col) {
    ImDrawList_AddConvexPolyFilled(self, points, num_points, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddConcavePolyFilled(ImDrawList* self, const ImVec2* points, int num_points, ImU32 col) {
    ImDrawList_AddConcavePolyFilled(self, points, num_points, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddImageEx(ImDrawList* self, ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID, float p_min_x, float p_min_y, float p_max_x, float p_max_y, float uv_min_x, float uv_min_y, float uv_max_x, float uv_max_y, ImU32 col) {
    ImTextureRef _s1;
    _s1._TexData = tex_ref__TexData;
    _s1._TexID = tex_ref__TexID;
    ImVec2 _s2;
    _s2.x = p_min_x;
    _s2.y = p_min_y;
    ImVec2 _s3;
    _s3.x = p_max_x;
    _s3.y = p_max_y;
    ImVec2 _s4;
    _s4.x = uv_min_x;
    _s4.y = uv_min_y;
    ImVec2 _s5;
    _s5.x = uv_max_x;
    _s5.y = uv_max_y;
    ImDrawList_AddImageEx(self, _s1, _s2, _s3, _s4, _s5, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddImage(ImDrawList* self, ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID, float p_min_x, float p_min_y, float p_max_x, float p_max_y) {
    ImTextureRef _s1;
    _s1._TexData = tex_ref__TexData;
    _s1._TexID = tex_ref__TexID;
    ImVec2 _s2;
    _s2.x = p_min_x;
    _s2.y = p_min_y;
    ImVec2 _s3;
    _s3.x = p_max_x;
    _s3.y = p_max_y;
    ImDrawList_AddImage(self, _s1, _s2, _s3);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddImageQuadEx(ImDrawList* self, ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID, float p1_x, float p1_y, float p2_x, float p2_y, float p3_x, float p3_y, float p4_x, float p4_y, float uv1_x, float uv1_y, float uv2_x, float uv2_y, float uv3_x, float uv3_y, float uv4_x, float uv4_y, ImU32 col) {
    ImTextureRef _s1;
    _s1._TexData = tex_ref__TexData;
    _s1._TexID = tex_ref__TexID;
    ImVec2 _s2;
    _s2.x = p1_x;
    _s2.y = p1_y;
    ImVec2 _s3;
    _s3.x = p2_x;
    _s3.y = p2_y;
    ImVec2 _s4;
    _s4.x = p3_x;
    _s4.y = p3_y;
    ImVec2 _s5;
    _s5.x = p4_x;
    _s5.y = p4_y;
    ImVec2 _s6;
    _s6.x = uv1_x;
    _s6.y = uv1_y;
    ImVec2 _s7;
    _s7.x = uv2_x;
    _s7.y = uv2_y;
    ImVec2 _s8;
    _s8.x = uv3_x;
    _s8.y = uv3_y;
    ImVec2 _s9;
    _s9.x = uv4_x;
    _s9.y = uv4_y;
    ImDrawList_AddImageQuadEx(self, _s1, _s2, _s3, _s4, _s5, _s6, _s7, _s8, _s9, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddImageQuad(ImDrawList* self, ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID, float p1_x, float p1_y, float p2_x, float p2_y, float p3_x, float p3_y, float p4_x, float p4_y) {
    ImTextureRef _s1;
    _s1._TexData = tex_ref__TexData;
    _s1._TexID = tex_ref__TexID;
    ImVec2 _s2;
    _s2.x = p1_x;
    _s2.y = p1_y;
    ImVec2 _s3;
    _s3.x = p2_x;
    _s3.y = p2_y;
    ImVec2 _s4;
    _s4.x = p3_x;
    _s4.y = p3_y;
    ImVec2 _s5;
    _s5.x = p4_x;
    _s5.y = p4_y;
    ImDrawList_AddImageQuad(self, _s1, _s2, _s3, _s4, _s5);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddImageRounded(ImDrawList* self, ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID, float p_min_x, float p_min_y, float p_max_x, float p_max_y, float uv_min_x, float uv_min_y, float uv_max_x, float uv_max_y, ImU32 col, float rounding, ImDrawFlags flags) {
    ImTextureRef _s1;
    _s1._TexData = tex_ref__TexData;
    _s1._TexID = tex_ref__TexID;
    ImVec2 _s2;
    _s2.x = p_min_x;
    _s2.y = p_min_y;
    ImVec2 _s3;
    _s3.x = p_max_x;
    _s3.y = p_max_y;
    ImVec2 _s4;
    _s4.x = uv_min_x;
    _s4.y = uv_min_y;
    ImVec2 _s5;
    _s5.x = uv_max_x;
    _s5.y = uv_max_y;
    ImDrawList_AddImageRounded(self, _s1, _s2, _s3, _s4, _s5, col, rounding, flags);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathClear(ImDrawList* self) {
    ImDrawList_PathClear(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathLineTo(ImDrawList* self, float pos_x, float pos_y) {
    ImVec2 _s1;
    _s1.x = pos_x;
    _s1.y = pos_y;
    ImDrawList_PathLineTo(self, _s1);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathLineToMergeDuplicate(ImDrawList* self, float pos_x, float pos_y) {
    ImVec2 _s1;
    _s1.x = pos_x;
    _s1.y = pos_y;
    ImDrawList_PathLineToMergeDuplicate(self, _s1);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathFillConvex(ImDrawList* self, ImU32 col) {
    ImDrawList_PathFillConvex(self, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathFillConcave(ImDrawList* self, ImU32 col) {
    ImDrawList_PathFillConcave(self, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathStroke(ImDrawList* self, ImU32 col, float thickness, ImDrawFlags flags) {
    ImDrawList_PathStroke(self, col, thickness, flags);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathArcTo(ImDrawList* self, float center_x, float center_y, float radius, float a_min, float a_max, int num_segments) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImDrawList_PathArcTo(self, _s1, radius, a_min, a_max, num_segments);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathArcToFast(ImDrawList* self, float center_x, float center_y, float radius, int a_min_of_12, int a_max_of_12) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImDrawList_PathArcToFast(self, _s1, radius, a_min_of_12, a_max_of_12);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathEllipticalArcToEx(ImDrawList* self, float center_x, float center_y, float radius_x, float radius_y, float rot, float a_min, float a_max, int num_segments) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImVec2 _s2;
    _s2.x = radius_x;
    _s2.y = radius_y;
    ImDrawList_PathEllipticalArcToEx(self, _s1, _s2, rot, a_min, a_max, num_segments);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathEllipticalArcTo(ImDrawList* self, float center_x, float center_y, float radius_x, float radius_y, float rot, float a_min, float a_max) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImVec2 _s2;
    _s2.x = radius_x;
    _s2.y = radius_y;
    ImDrawList_PathEllipticalArcTo(self, _s1, _s2, rot, a_min, a_max);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathBezierCubicCurveTo(ImDrawList* self, float p2_x, float p2_y, float p3_x, float p3_y, float p4_x, float p4_y, int num_segments) {
    ImVec2 _s1;
    _s1.x = p2_x;
    _s1.y = p2_y;
    ImVec2 _s2;
    _s2.x = p3_x;
    _s2.y = p3_y;
    ImVec2 _s3;
    _s3.x = p4_x;
    _s3.y = p4_y;
    ImDrawList_PathBezierCubicCurveTo(self, _s1, _s2, _s3, num_segments);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathBezierQuadraticCurveTo(ImDrawList* self, float p2_x, float p2_y, float p3_x, float p3_y, int num_segments) {
    ImVec2 _s1;
    _s1.x = p2_x;
    _s1.y = p2_y;
    ImVec2 _s2;
    _s2.x = p3_x;
    _s2.y = p3_y;
    ImDrawList_PathBezierQuadraticCurveTo(self, _s1, _s2, num_segments);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PathRect(ImDrawList* self, float rect_min_x, float rect_min_y, float rect_max_x, float rect_max_y, float rounding, ImDrawFlags flags) {
    ImVec2 _s1;
    _s1.x = rect_min_x;
    _s1.y = rect_min_y;
    ImVec2 _s2;
    _s2.x = rect_max_x;
    _s2.y = rect_max_y;
    ImDrawList_PathRect(self, _s1, _s2, rounding, flags);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddCallbackEx(ImDrawList* self, ImDrawCallback callback, void* userdata, size_t userdata_size) {
    ImDrawList_AddCallbackEx(self, callback, userdata, userdata_size);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddCallback(ImDrawList* self, ImDrawCallback callback) {
    ImDrawList_AddCallback(self, callback);
}
DCGLUE_EXPORT void dcjs_ImDrawList_AddDrawCmd(ImDrawList* self) {
    ImDrawList_AddDrawCmd(self);
}
DCGLUE_EXPORT ImDrawList* dcjs_ImDrawList_CloneOutput(const ImDrawList* self) {
    return ImDrawList_CloneOutput(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList_ChannelsSplit(ImDrawList* self, int count) {
    ImDrawList_ChannelsSplit(self, count);
}
DCGLUE_EXPORT void dcjs_ImDrawList_ChannelsMerge(ImDrawList* self) {
    ImDrawList_ChannelsMerge(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList_ChannelsSetCurrent(ImDrawList* self, int n) {
    ImDrawList_ChannelsSetCurrent(self, n);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PrimReserve(ImDrawList* self, int idx_count, int vtx_count) {
    ImDrawList_PrimReserve(self, idx_count, vtx_count);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PrimUnreserve(ImDrawList* self, int idx_count, int vtx_count) {
    ImDrawList_PrimUnreserve(self, idx_count, vtx_count);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PrimRect(ImDrawList* self, float a_x, float a_y, float b_x, float b_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = a_x;
    _s1.y = a_y;
    ImVec2 _s2;
    _s2.x = b_x;
    _s2.y = b_y;
    ImDrawList_PrimRect(self, _s1, _s2, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PrimRectUV(ImDrawList* self, float a_x, float a_y, float b_x, float b_y, float uv_a_x, float uv_a_y, float uv_b_x, float uv_b_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = a_x;
    _s1.y = a_y;
    ImVec2 _s2;
    _s2.x = b_x;
    _s2.y = b_y;
    ImVec2 _s3;
    _s3.x = uv_a_x;
    _s3.y = uv_a_y;
    ImVec2 _s4;
    _s4.x = uv_b_x;
    _s4.y = uv_b_y;
    ImDrawList_PrimRectUV(self, _s1, _s2, _s3, _s4, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PrimQuadUV(ImDrawList* self, float a_x, float a_y, float b_x, float b_y, float c_x, float c_y, float d_x, float d_y, float uv_a_x, float uv_a_y, float uv_b_x, float uv_b_y, float uv_c_x, float uv_c_y, float uv_d_x, float uv_d_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = a_x;
    _s1.y = a_y;
    ImVec2 _s2;
    _s2.x = b_x;
    _s2.y = b_y;
    ImVec2 _s3;
    _s3.x = c_x;
    _s3.y = c_y;
    ImVec2 _s4;
    _s4.x = d_x;
    _s4.y = d_y;
    ImVec2 _s5;
    _s5.x = uv_a_x;
    _s5.y = uv_a_y;
    ImVec2 _s6;
    _s6.x = uv_b_x;
    _s6.y = uv_b_y;
    ImVec2 _s7;
    _s7.x = uv_c_x;
    _s7.y = uv_c_y;
    ImVec2 _s8;
    _s8.x = uv_d_x;
    _s8.y = uv_d_y;
    ImDrawList_PrimQuadUV(self, _s1, _s2, _s3, _s4, _s5, _s6, _s7, _s8, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PrimWriteVtx(ImDrawList* self, float pos_x, float pos_y, float uv_x, float uv_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = pos_x;
    _s1.y = pos_y;
    ImVec2 _s2;
    _s2.x = uv_x;
    _s2.y = uv_y;
    ImDrawList_PrimWriteVtx(self, _s1, _s2, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PrimWriteIdx(ImDrawList* self, ImDrawIdx idx) {
    ImDrawList_PrimWriteIdx(self, idx);
}
DCGLUE_EXPORT void dcjs_ImDrawList_PrimVtx(ImDrawList* self, float pos_x, float pos_y, float uv_x, float uv_y, ImU32 col) {
    ImVec2 _s1;
    _s1.x = pos_x;
    _s1.y = pos_y;
    ImVec2 _s2;
    _s2.x = uv_x;
    _s2.y = uv_y;
    ImDrawList_PrimVtx(self, _s1, _s2, col);
}
DCGLUE_EXPORT void dcjs_ImDrawList__SetDrawListSharedData(ImDrawList* self, ImDrawListSharedData* data) {
    ImDrawList__SetDrawListSharedData(self, data);
}
DCGLUE_EXPORT void dcjs_ImDrawList__ResetForNewFrame(ImDrawList* self) {
    ImDrawList__ResetForNewFrame(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList__ClearFreeMemory(ImDrawList* self) {
    ImDrawList__ClearFreeMemory(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList__PopUnusedDrawCmd(ImDrawList* self) {
    ImDrawList__PopUnusedDrawCmd(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList__TryMergeDrawCmds(ImDrawList* self) {
    ImDrawList__TryMergeDrawCmds(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList__OnChangedClipRect(ImDrawList* self) {
    ImDrawList__OnChangedClipRect(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList__OnChangedTexture(ImDrawList* self) {
    ImDrawList__OnChangedTexture(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList__OnChangedVtxOffset(ImDrawList* self) {
    ImDrawList__OnChangedVtxOffset(self);
}
DCGLUE_EXPORT void dcjs_ImDrawList__SetTexture(ImDrawList* self, ImTextureData* tex_ref__TexData, ImTextureID tex_ref__TexID) {
    ImTextureRef _s1;
    _s1._TexData = tex_ref__TexData;
    _s1._TexID = tex_ref__TexID;
    ImDrawList__SetTexture(self, _s1);
}
DCGLUE_EXPORT int dcjs_ImDrawList__CalcCircleAutoSegmentCount(const ImDrawList* self, float radius) {
    return ImDrawList__CalcCircleAutoSegmentCount(self, radius);
}
DCGLUE_EXPORT void dcjs_ImDrawList__PathArcToFastEx(ImDrawList* self, float center_x, float center_y, float radius, int a_min_sample, int a_max_sample, int a_step) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImDrawList__PathArcToFastEx(self, _s1, radius, a_min_sample, a_max_sample, a_step);
}
DCGLUE_EXPORT void dcjs_ImDrawList__PathArcToN(ImDrawList* self, float center_x, float center_y, float radius, float a_min, float a_max, int num_segments) {
    ImVec2 _s1;
    _s1.x = center_x;
    _s1.y = center_y;
    ImDrawList__PathArcToN(self, _s1, radius, a_min, a_max, num_segments);
}
DCGLUE_EXPORT void dcjs_ImDrawData_Clear(ImDrawData* self) {
    ImDrawData_Clear(self);
}
DCGLUE_EXPORT void dcjs_ImDrawData_AddDrawList(ImDrawData* self, ImDrawList* draw_list) {
    ImDrawData_AddDrawList(self, draw_list);
}
DCGLUE_EXPORT void dcjs_ImDrawData_DeIndexAllBuffers(ImDrawData* self) {
    ImDrawData_DeIndexAllBuffers(self);
}
DCGLUE_EXPORT void dcjs_ImDrawData_ScaleClipRects(ImDrawData* self, float fb_scale_x, float fb_scale_y) {
    ImVec2 _s1;
    _s1.x = fb_scale_x;
    _s1.y = fb_scale_y;
    ImDrawData_ScaleClipRects(self, _s1);
}
DCGLUE_EXPORT void dcjs_ImTextureData_Create(ImTextureData* self, ImTextureFormat format, int w, int h) {
    ImTextureData_Create(self, format, w, h);
}
DCGLUE_EXPORT void dcjs_ImTextureData_DestroyPixels(ImTextureData* self) {
    ImTextureData_DestroyPixels(self);
}
DCGLUE_EXPORT void* dcjs_ImTextureData_GetPixels(ImTextureData* self) {
    return ImTextureData_GetPixels(self);
}
DCGLUE_EXPORT void* dcjs_ImTextureData_GetPixelsAt(ImTextureData* self, int x, int y) {
    return ImTextureData_GetPixelsAt(self, x, y);
}
DCGLUE_EXPORT int dcjs_ImTextureData_GetSizeInBytes(const ImTextureData* self) {
    return ImTextureData_GetSizeInBytes(self);
}
DCGLUE_EXPORT int dcjs_ImTextureData_GetPitch(const ImTextureData* self) {
    return ImTextureData_GetPitch(self);
}
DCGLUE_EXPORT void dcjs_ImTextureData_GetTexRef(ImTextureRef* _out, ImTextureData* self) {
    *_out = ImTextureData_GetTexRef(self);
}
DCGLUE_EXPORT ImTextureID dcjs_ImTextureData_GetTexID(const ImTextureData* self) {
    return ImTextureData_GetTexID(self);
}
DCGLUE_EXPORT void dcjs_ImTextureData_SetTexID(ImTextureData* self, ImTextureID tex_id) {
    ImTextureData_SetTexID(self, tex_id);
}
DCGLUE_EXPORT void dcjs_ImTextureData_SetStatus(ImTextureData* self, ImTextureStatus status) {
    ImTextureData_SetStatus(self, status);
}
DCGLUE_EXPORT void dcjs_ImFontGlyphRangesBuilder_Clear(ImFontGlyphRangesBuilder* self) {
    ImFontGlyphRangesBuilder_Clear(self);
}
DCGLUE_EXPORT bool dcjs_ImFontGlyphRangesBuilder_GetBit(const ImFontGlyphRangesBuilder* self, size_t n) {
    return ImFontGlyphRangesBuilder_GetBit(self, n);
}
DCGLUE_EXPORT void dcjs_ImFontGlyphRangesBuilder_SetBit(ImFontGlyphRangesBuilder* self, size_t n) {
    ImFontGlyphRangesBuilder_SetBit(self, n);
}
DCGLUE_EXPORT void dcjs_ImFontGlyphRangesBuilder_AddChar(ImFontGlyphRangesBuilder* self, ImWchar c) {
    ImFontGlyphRangesBuilder_AddChar(self, c);
}
DCGLUE_EXPORT void dcjs_ImFontGlyphRangesBuilder_AddText(ImFontGlyphRangesBuilder* self, const char* text, const char* text_end) {
    ImFontGlyphRangesBuilder_AddText(self, text, text_end);
}
DCGLUE_EXPORT void dcjs_ImFontGlyphRangesBuilder_AddRanges(ImFontGlyphRangesBuilder* self, const ImWchar* ranges) {
    ImFontGlyphRangesBuilder_AddRanges(self, ranges);
}
DCGLUE_EXPORT void dcjs_ImFontGlyphRangesBuilder_BuildRanges(ImFontGlyphRangesBuilder* self, ImVector_ImWchar* out_ranges) {
    ImFontGlyphRangesBuilder_BuildRanges(self, out_ranges);
}
DCGLUE_EXPORT ImFont* dcjs_ImFontAtlas_AddFont(ImFontAtlas* self, const ImFontConfig* font_cfg) {
    return ImFontAtlas_AddFont(self, font_cfg);
}
DCGLUE_EXPORT ImFont* dcjs_ImFontAtlas_AddFontDefault(ImFontAtlas* self, const ImFontConfig* font_cfg) {
    return ImFontAtlas_AddFontDefault(self, font_cfg);
}
DCGLUE_EXPORT ImFont* dcjs_ImFontAtlas_AddFontDefaultVector(ImFontAtlas* self, const ImFontConfig* font_cfg) {
    return ImFontAtlas_AddFontDefaultVector(self, font_cfg);
}
DCGLUE_EXPORT ImFont* dcjs_ImFontAtlas_AddFontDefaultBitmap(ImFontAtlas* self, const ImFontConfig* font_cfg) {
    return ImFontAtlas_AddFontDefaultBitmap(self, font_cfg);
}
DCGLUE_EXPORT ImFont* dcjs_ImFontAtlas_AddFontFromFileTTF(ImFontAtlas* self, const char* filename, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges) {
    return ImFontAtlas_AddFontFromFileTTF(self, filename, size_pixels, font_cfg, glyph_ranges);
}
DCGLUE_EXPORT ImFont* dcjs_ImFontAtlas_AddFontFromMemoryTTF(ImFontAtlas* self, void* font_data, int font_data_size, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges) {
    return ImFontAtlas_AddFontFromMemoryTTF(self, font_data, font_data_size, size_pixels, font_cfg, glyph_ranges);
}
DCGLUE_EXPORT ImFont* dcjs_ImFontAtlas_AddFontFromMemoryCompressedTTF(ImFontAtlas* self, const void* compressed_font_data, int compressed_font_data_size, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges) {
    return ImFontAtlas_AddFontFromMemoryCompressedTTF(self, compressed_font_data, compressed_font_data_size, size_pixels, font_cfg, glyph_ranges);
}
DCGLUE_EXPORT ImFont* dcjs_ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(ImFontAtlas* self, const char* compressed_font_data_base85, float size_pixels, const ImFontConfig* font_cfg, const ImWchar* glyph_ranges) {
    return ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self, compressed_font_data_base85, size_pixels, font_cfg, glyph_ranges);
}
DCGLUE_EXPORT void dcjs_ImFontAtlas_RemoveFont(ImFontAtlas* self, ImFont* font) {
    ImFontAtlas_RemoveFont(self, font);
}
DCGLUE_EXPORT void dcjs_ImFontAtlas_Clear(ImFontAtlas* self) {
    ImFontAtlas_Clear(self);
}
DCGLUE_EXPORT void dcjs_ImFontAtlas_ClearFonts(ImFontAtlas* self) {
    ImFontAtlas_ClearFonts(self);
}
DCGLUE_EXPORT void dcjs_ImFontAtlas_CompactCache(ImFontAtlas* self) {
    ImFontAtlas_CompactCache(self);
}
DCGLUE_EXPORT void dcjs_ImFontAtlas_SetFontLoader(ImFontAtlas* self, const ImFontLoader* font_loader) {
    ImFontAtlas_SetFontLoader(self, font_loader);
}
DCGLUE_EXPORT void dcjs_ImFontAtlas_ClearInputData(ImFontAtlas* self) {
    ImFontAtlas_ClearInputData(self);
}
DCGLUE_EXPORT void dcjs_ImFontAtlas_ClearTexData(ImFontAtlas* self) {
    ImFontAtlas_ClearTexData(self);
}
DCGLUE_EXPORT const ImWchar* dcjs_ImFontAtlas_GetGlyphRangesDefault(ImFontAtlas* self) {
    return ImFontAtlas_GetGlyphRangesDefault(self);
}
DCGLUE_EXPORT ImFontAtlasRectId dcjs_ImFontAtlas_AddCustomRect(ImFontAtlas* self, int width, int height, ImFontAtlasRect* out_r) {
    return ImFontAtlas_AddCustomRect(self, width, height, out_r);
}
DCGLUE_EXPORT void dcjs_ImFontAtlas_RemoveCustomRect(ImFontAtlas* self, ImFontAtlasRectId id) {
    ImFontAtlas_RemoveCustomRect(self, id);
}
DCGLUE_EXPORT bool dcjs_ImFontAtlas_GetCustomRect(const ImFontAtlas* self, ImFontAtlasRectId id, ImFontAtlasRect* out_r) {
    return ImFontAtlas_GetCustomRect(self, id, out_r);
}
DCGLUE_EXPORT void dcjs_ImFontBaked_ClearOutputData(ImFontBaked* self) {
    ImFontBaked_ClearOutputData(self);
}
DCGLUE_EXPORT ImFontGlyph* dcjs_ImFontBaked_FindGlyph(ImFontBaked* self, ImWchar c) {
    return ImFontBaked_FindGlyph(self, c);
}
DCGLUE_EXPORT ImFontGlyph* dcjs_ImFontBaked_FindGlyphNoFallback(ImFontBaked* self, ImWchar c) {
    return ImFontBaked_FindGlyphNoFallback(self, c);
}
DCGLUE_EXPORT float dcjs_ImFontBaked_GetCharAdvance(ImFontBaked* self, ImWchar c) {
    return ImFontBaked_GetCharAdvance(self, c);
}
DCGLUE_EXPORT bool dcjs_ImFontBaked_IsGlyphLoaded(ImFontBaked* self, ImWchar c) {
    return ImFontBaked_IsGlyphLoaded(self, c);
}
DCGLUE_EXPORT void dcjs_ImGuiViewport_GetCenter(ImVec2* _out, const ImGuiViewport* self) {
    *_out = ImGuiViewport_GetCenter(self);
}
DCGLUE_EXPORT void dcjs_ImGuiViewport_GetWorkCenter(ImVec2* _out, const ImGuiViewport* self) {
    *_out = ImGuiViewport_GetWorkCenter(self);
}
DCGLUE_EXPORT const char* dcjs_ImGuiViewport_GetDebugName(const ImGuiViewport* self) {
    return ImGuiViewport_GetDebugName(self);
}
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_ClearPlatformHandlers(ImGuiPlatformIO* self) {
    ImGuiPlatformIO_ClearPlatformHandlers(self);
}
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_ClearRendererHandlers(ImGuiPlatformIO* self) {
    ImGuiPlatformIO_ClearRendererHandlers(self);
}

// ---- struct field accessors ----

DCGLUE_EXPORT float dcjs_ImVec2_get_x(ImVec2* self) { return self->x; }
DCGLUE_EXPORT void dcjs_ImVec2_set_x(ImVec2* self, float v) { self->x = v; }
DCGLUE_EXPORT float dcjs_ImVec2_get_y(ImVec2* self) { return self->y; }
DCGLUE_EXPORT void dcjs_ImVec2_set_y(ImVec2* self, float v) { self->y = v; }
DCGLUE_EXPORT float dcjs_ImVec4_get_x(ImVec4* self) { return self->x; }
DCGLUE_EXPORT void dcjs_ImVec4_set_x(ImVec4* self, float v) { self->x = v; }
DCGLUE_EXPORT float dcjs_ImVec4_get_y(ImVec4* self) { return self->y; }
DCGLUE_EXPORT void dcjs_ImVec4_set_y(ImVec4* self, float v) { self->y = v; }
DCGLUE_EXPORT float dcjs_ImVec4_get_z(ImVec4* self) { return self->z; }
DCGLUE_EXPORT void dcjs_ImVec4_set_z(ImVec4* self, float v) { self->z = v; }
DCGLUE_EXPORT float dcjs_ImVec4_get_w(ImVec4* self) { return self->w; }
DCGLUE_EXPORT void dcjs_ImVec4_set_w(ImVec4* self, float v) { self->w = v; }
DCGLUE_EXPORT ImTextureData* dcjs_ImTextureRef_get__TexData(ImTextureRef* self) { return self->_TexData; }
DCGLUE_EXPORT void dcjs_ImTextureRef_set__TexData(ImTextureRef* self, ImTextureData* v) { self->_TexData = v; }
DCGLUE_EXPORT ImTextureID dcjs_ImTextureRef_get__TexID(ImTextureRef* self) { return self->_TexID; }
DCGLUE_EXPORT void dcjs_ImTextureRef_set__TexID(ImTextureRef* self, ImTextureID v) { self->_TexID = v; }
DCGLUE_EXPORT const ImGuiTableColumnSortSpecs* dcjs_ImGuiTableSortSpecs_get_Specs(ImGuiTableSortSpecs* self) { return self->Specs; }
DCGLUE_EXPORT void dcjs_ImGuiTableSortSpecs_set_Specs(ImGuiTableSortSpecs* self, const ImGuiTableColumnSortSpecs* v) { self->Specs = v; }
DCGLUE_EXPORT int dcjs_ImGuiTableSortSpecs_get_SpecsCount(ImGuiTableSortSpecs* self) { return self->SpecsCount; }
DCGLUE_EXPORT void dcjs_ImGuiTableSortSpecs_set_SpecsCount(ImGuiTableSortSpecs* self, int v) { self->SpecsCount = v; }
DCGLUE_EXPORT bool dcjs_ImGuiTableSortSpecs_get_SpecsDirty(ImGuiTableSortSpecs* self) { return self->SpecsDirty; }
DCGLUE_EXPORT void dcjs_ImGuiTableSortSpecs_set_SpecsDirty(ImGuiTableSortSpecs* self, bool v) { self->SpecsDirty = v; }
DCGLUE_EXPORT ImGuiID dcjs_ImGuiTableColumnSortSpecs_get_ColumnUserID(ImGuiTableColumnSortSpecs* self) { return self->ColumnUserID; }
DCGLUE_EXPORT void dcjs_ImGuiTableColumnSortSpecs_set_ColumnUserID(ImGuiTableColumnSortSpecs* self, ImGuiID v) { self->ColumnUserID = v; }
DCGLUE_EXPORT ImS16 dcjs_ImGuiTableColumnSortSpecs_get_ColumnIndex(ImGuiTableColumnSortSpecs* self) { return self->ColumnIndex; }
DCGLUE_EXPORT void dcjs_ImGuiTableColumnSortSpecs_set_ColumnIndex(ImGuiTableColumnSortSpecs* self, ImS16 v) { self->ColumnIndex = v; }
DCGLUE_EXPORT ImS16 dcjs_ImGuiTableColumnSortSpecs_get_SortOrder(ImGuiTableColumnSortSpecs* self) { return self->SortOrder; }
DCGLUE_EXPORT void dcjs_ImGuiTableColumnSortSpecs_set_SortOrder(ImGuiTableColumnSortSpecs* self, ImS16 v) { self->SortOrder = v; }
DCGLUE_EXPORT ImGuiSortDirection dcjs_ImGuiTableColumnSortSpecs_get_SortDirection(ImGuiTableColumnSortSpecs* self) { return self->SortDirection; }
DCGLUE_EXPORT void dcjs_ImGuiTableColumnSortSpecs_set_SortDirection(ImGuiTableColumnSortSpecs* self, ImGuiSortDirection v) { self->SortDirection = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImGuiTextRange_get_Size(ImVector_ImGuiTextRange* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiTextRange_set_Size(ImVector_ImGuiTextRange* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImGuiTextRange_get_Capacity(ImVector_ImGuiTextRange* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiTextRange_set_Capacity(ImVector_ImGuiTextRange* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImGuiTextFilter_ImGuiTextRange* dcjs_ImVector_ImGuiTextRange_get_Data(ImVector_ImGuiTextRange* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiTextRange_set_Data(ImVector_ImGuiTextRange* self, ImGuiTextFilter_ImGuiTextRange* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_char_get_Size(ImVector_char* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_char_set_Size(ImVector_char* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_char_get_Capacity(ImVector_char* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_char_set_Capacity(ImVector_char* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT char* dcjs_ImVector_char_get_Data(ImVector_char* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_char_set_Data(ImVector_char* self, char* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImGuiStoragePair_get_Size(ImVector_ImGuiStoragePair* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiStoragePair_set_Size(ImVector_ImGuiStoragePair* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImGuiStoragePair_get_Capacity(ImVector_ImGuiStoragePair* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiStoragePair_set_Capacity(ImVector_ImGuiStoragePair* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImGuiStoragePair* dcjs_ImVector_ImGuiStoragePair_get_Data(ImVector_ImGuiStoragePair* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiStoragePair_set_Data(ImVector_ImGuiStoragePair* self, ImGuiStoragePair* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImGuiSelectionRequest_get_Size(ImVector_ImGuiSelectionRequest* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiSelectionRequest_set_Size(ImVector_ImGuiSelectionRequest* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImGuiSelectionRequest_get_Capacity(ImVector_ImGuiSelectionRequest* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiSelectionRequest_set_Capacity(ImVector_ImGuiSelectionRequest* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImGuiSelectionRequest* dcjs_ImVector_ImGuiSelectionRequest_get_Data(ImVector_ImGuiSelectionRequest* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiSelectionRequest_set_Data(ImVector_ImGuiSelectionRequest* self, ImGuiSelectionRequest* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawChannel_get_Size(ImVector_ImDrawChannel* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawChannel_set_Size(ImVector_ImDrawChannel* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawChannel_get_Capacity(ImVector_ImDrawChannel* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawChannel_set_Capacity(ImVector_ImDrawChannel* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImDrawChannel* dcjs_ImVector_ImDrawChannel_get_Data(ImVector_ImDrawChannel* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawChannel_set_Data(ImVector_ImDrawChannel* self, ImDrawChannel* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawCmd_get_Size(ImVector_ImDrawCmd* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawCmd_set_Size(ImVector_ImDrawCmd* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawCmd_get_Capacity(ImVector_ImDrawCmd* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawCmd_set_Capacity(ImVector_ImDrawCmd* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImDrawCmd* dcjs_ImVector_ImDrawCmd_get_Data(ImVector_ImDrawCmd* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawCmd_set_Data(ImVector_ImDrawCmd* self, ImDrawCmd* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawIdx_get_Size(ImVector_ImDrawIdx* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawIdx_set_Size(ImVector_ImDrawIdx* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawIdx_get_Capacity(ImVector_ImDrawIdx* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawIdx_set_Capacity(ImVector_ImDrawIdx* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImDrawIdx* dcjs_ImVector_ImDrawIdx_get_Data(ImVector_ImDrawIdx* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawIdx_set_Data(ImVector_ImDrawIdx* self, ImDrawIdx* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawVert_get_Size(ImVector_ImDrawVert* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawVert_set_Size(ImVector_ImDrawVert* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawVert_get_Capacity(ImVector_ImDrawVert* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawVert_set_Capacity(ImVector_ImDrawVert* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImDrawVert* dcjs_ImVector_ImDrawVert_get_Data(ImVector_ImDrawVert* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawVert_set_Data(ImVector_ImDrawVert* self, ImDrawVert* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImVec2_get_Size(ImVector_ImVec2* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImVec2_set_Size(ImVector_ImVec2* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImVec2_get_Capacity(ImVector_ImVec2* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImVec2_set_Capacity(ImVector_ImVec2* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImVec2* dcjs_ImVector_ImVec2_get_Data(ImVector_ImVec2* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImVec2_set_Data(ImVector_ImVec2* self, ImVec2* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImVec4_get_Size(ImVector_ImVec4* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImVec4_set_Size(ImVector_ImVec4* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImVec4_get_Capacity(ImVector_ImVec4* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImVec4_set_Capacity(ImVector_ImVec4* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImVec4* dcjs_ImVector_ImVec4_get_Data(ImVector_ImVec4* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImVec4_set_Data(ImVector_ImVec4* self, ImVec4* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImTextureRef_get_Size(ImVector_ImTextureRef* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImTextureRef_set_Size(ImVector_ImTextureRef* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImTextureRef_get_Capacity(ImVector_ImTextureRef* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImTextureRef_set_Capacity(ImVector_ImTextureRef* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImTextureRef* dcjs_ImVector_ImTextureRef_get_Data(ImVector_ImTextureRef* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImTextureRef_set_Data(ImVector_ImTextureRef* self, ImTextureRef* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImU8_get_Size(ImVector_ImU8* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImU8_set_Size(ImVector_ImU8* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImU8_get_Capacity(ImVector_ImU8* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImU8_set_Capacity(ImVector_ImU8* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImU8* dcjs_ImVector_ImU8_get_Data(ImVector_ImU8* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImU8_set_Data(ImVector_ImU8* self, ImU8* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawListPtr_get_Size(ImVector_ImDrawListPtr* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawListPtr_set_Size(ImVector_ImDrawListPtr* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawListPtr_get_Capacity(ImVector_ImDrawListPtr* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawListPtr_set_Capacity(ImVector_ImDrawListPtr* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImDrawList** dcjs_ImVector_ImDrawListPtr_get_Data(ImVector_ImDrawListPtr* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawListPtr_set_Data(ImVector_ImDrawListPtr* self, ImDrawList** v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImTextureRect_get_Size(ImVector_ImTextureRect* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImTextureRect_set_Size(ImVector_ImTextureRect* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImTextureRect_get_Capacity(ImVector_ImTextureRect* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImTextureRect_set_Capacity(ImVector_ImTextureRect* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImTextureRect* dcjs_ImVector_ImTextureRect_get_Data(ImVector_ImTextureRect* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImTextureRect_set_Data(ImVector_ImTextureRect* self, ImTextureRect* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImU32_get_Size(ImVector_ImU32* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImU32_set_Size(ImVector_ImU32* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImU32_get_Capacity(ImVector_ImU32* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImU32_set_Capacity(ImVector_ImU32* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImU32* dcjs_ImVector_ImU32_get_Data(ImVector_ImU32* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImU32_set_Data(ImVector_ImU32* self, ImU32* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImWchar_get_Size(ImVector_ImWchar* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImWchar_set_Size(ImVector_ImWchar* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImWchar_get_Capacity(ImVector_ImWchar* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImWchar_set_Capacity(ImVector_ImWchar* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImWchar* dcjs_ImVector_ImWchar_get_Data(ImVector_ImWchar* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImWchar_set_Data(ImVector_ImWchar* self, ImWchar* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImFontPtr_get_Size(ImVector_ImFontPtr* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontPtr_set_Size(ImVector_ImFontPtr* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImFontPtr_get_Capacity(ImVector_ImFontPtr* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontPtr_set_Capacity(ImVector_ImFontPtr* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImFont** dcjs_ImVector_ImFontPtr_get_Data(ImVector_ImFontPtr* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontPtr_set_Data(ImVector_ImFontPtr* self, ImFont** v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImFontConfig_get_Size(ImVector_ImFontConfig* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontConfig_set_Size(ImVector_ImFontConfig* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImFontConfig_get_Capacity(ImVector_ImFontConfig* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontConfig_set_Capacity(ImVector_ImFontConfig* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImFontConfig* dcjs_ImVector_ImFontConfig_get_Data(ImVector_ImFontConfig* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontConfig_set_Data(ImVector_ImFontConfig* self, ImFontConfig* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawListSharedDataPtr_get_Size(ImVector_ImDrawListSharedDataPtr* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawListSharedDataPtr_set_Size(ImVector_ImDrawListSharedDataPtr* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImDrawListSharedDataPtr_get_Capacity(ImVector_ImDrawListSharedDataPtr* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawListSharedDataPtr_set_Capacity(ImVector_ImDrawListSharedDataPtr* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImDrawListSharedData** dcjs_ImVector_ImDrawListSharedDataPtr_get_Data(ImVector_ImDrawListSharedDataPtr* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImDrawListSharedDataPtr_set_Data(ImVector_ImDrawListSharedDataPtr* self, ImDrawListSharedData** v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_float_get_Size(ImVector_float* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_float_set_Size(ImVector_float* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_float_get_Capacity(ImVector_float* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_float_set_Capacity(ImVector_float* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT float* dcjs_ImVector_float_get_Data(ImVector_float* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_float_set_Data(ImVector_float* self, float* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImU16_get_Size(ImVector_ImU16* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImU16_set_Size(ImVector_ImU16* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImU16_get_Capacity(ImVector_ImU16* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImU16_set_Capacity(ImVector_ImU16* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImU16* dcjs_ImVector_ImU16_get_Data(ImVector_ImU16* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImU16_set_Data(ImVector_ImU16* self, ImU16* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImFontGlyph_get_Size(ImVector_ImFontGlyph* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontGlyph_set_Size(ImVector_ImFontGlyph* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImFontGlyph_get_Capacity(ImVector_ImFontGlyph* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontGlyph_set_Capacity(ImVector_ImFontGlyph* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImFontGlyph* dcjs_ImVector_ImFontGlyph_get_Data(ImVector_ImFontGlyph* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontGlyph_set_Data(ImVector_ImFontGlyph* self, ImFontGlyph* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImFontConfigPtr_get_Size(ImVector_ImFontConfigPtr* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontConfigPtr_set_Size(ImVector_ImFontConfigPtr* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImFontConfigPtr_get_Capacity(ImVector_ImFontConfigPtr* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontConfigPtr_set_Capacity(ImVector_ImFontConfigPtr* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImFontConfig** dcjs_ImVector_ImFontConfigPtr_get_Data(ImVector_ImFontConfigPtr* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImFontConfigPtr_set_Data(ImVector_ImFontConfigPtr* self, ImFontConfig** v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImGuiPlatformMonitor_get_Size(ImVector_ImGuiPlatformMonitor* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiPlatformMonitor_set_Size(ImVector_ImGuiPlatformMonitor* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImGuiPlatformMonitor_get_Capacity(ImVector_ImGuiPlatformMonitor* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiPlatformMonitor_set_Capacity(ImVector_ImGuiPlatformMonitor* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImGuiPlatformMonitor* dcjs_ImVector_ImGuiPlatformMonitor_get_Data(ImVector_ImGuiPlatformMonitor* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiPlatformMonitor_set_Data(ImVector_ImGuiPlatformMonitor* self, ImGuiPlatformMonitor* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImTextureDataPtr_get_Size(ImVector_ImTextureDataPtr* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImTextureDataPtr_set_Size(ImVector_ImTextureDataPtr* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImTextureDataPtr_get_Capacity(ImVector_ImTextureDataPtr* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImTextureDataPtr_set_Capacity(ImVector_ImTextureDataPtr* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImTextureData** dcjs_ImVector_ImTextureDataPtr_get_Data(ImVector_ImTextureDataPtr* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImTextureDataPtr_set_Data(ImVector_ImTextureDataPtr* self, ImTextureData** v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImGuiViewportPtr_get_Size(ImVector_ImGuiViewportPtr* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiViewportPtr_set_Size(ImVector_ImGuiViewportPtr* self, int v) { self->Size = v; }
DCGLUE_EXPORT int dcjs_ImVector_ImGuiViewportPtr_get_Capacity(ImVector_ImGuiViewportPtr* self) { return self->Capacity; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiViewportPtr_set_Capacity(ImVector_ImGuiViewportPtr* self, int v) { self->Capacity = v; }
DCGLUE_EXPORT ImGuiViewport** dcjs_ImVector_ImGuiViewportPtr_get_Data(ImVector_ImGuiViewportPtr* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImVector_ImGuiViewportPtr_set_Data(ImVector_ImGuiViewportPtr* self, ImGuiViewport** v) { self->Data = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_FontSizeBase(ImGuiStyle* self) { return self->FontSizeBase; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_FontSizeBase(ImGuiStyle* self, float v) { self->FontSizeBase = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_FontScaleMain(ImGuiStyle* self) { return self->FontScaleMain; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_FontScaleMain(ImGuiStyle* self, float v) { self->FontScaleMain = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_FontScaleDpi(ImGuiStyle* self) { return self->FontScaleDpi; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_FontScaleDpi(ImGuiStyle* self, float v) { self->FontScaleDpi = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_Alpha(ImGuiStyle* self) { return self->Alpha; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_Alpha(ImGuiStyle* self, float v) { self->Alpha = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_DisabledAlpha(ImGuiStyle* self) { return self->DisabledAlpha; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_DisabledAlpha(ImGuiStyle* self, float v) { self->DisabledAlpha = v; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_WindowPadding(ImGuiStyle* self, ImVec2* _out) { *_out = self->WindowPadding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_WindowPadding(ImGuiStyle* self, float v_x, float v_y) { self->WindowPadding.x = v_x; self->WindowPadding.y = v_y; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_WindowRounding(ImGuiStyle* self) { return self->WindowRounding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_WindowRounding(ImGuiStyle* self, float v) { self->WindowRounding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_WindowBorderSize(ImGuiStyle* self) { return self->WindowBorderSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_WindowBorderSize(ImGuiStyle* self, float v) { self->WindowBorderSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_WindowBorderHoverPadding(ImGuiStyle* self) { return self->WindowBorderHoverPadding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_WindowBorderHoverPadding(ImGuiStyle* self, float v) { self->WindowBorderHoverPadding = v; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_WindowMinSize(ImGuiStyle* self, ImVec2* _out) { *_out = self->WindowMinSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_WindowMinSize(ImGuiStyle* self, float v_x, float v_y) { self->WindowMinSize.x = v_x; self->WindowMinSize.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_WindowTitleAlign(ImGuiStyle* self, ImVec2* _out) { *_out = self->WindowTitleAlign; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_WindowTitleAlign(ImGuiStyle* self, float v_x, float v_y) { self->WindowTitleAlign.x = v_x; self->WindowTitleAlign.y = v_y; }
DCGLUE_EXPORT ImGuiDir dcjs_ImGuiStyle_get_WindowMenuButtonPosition(ImGuiStyle* self) { return self->WindowMenuButtonPosition; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_WindowMenuButtonPosition(ImGuiStyle* self, ImGuiDir v) { self->WindowMenuButtonPosition = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_ChildRounding(ImGuiStyle* self) { return self->ChildRounding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ChildRounding(ImGuiStyle* self, float v) { self->ChildRounding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_ChildBorderSize(ImGuiStyle* self) { return self->ChildBorderSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ChildBorderSize(ImGuiStyle* self, float v) { self->ChildBorderSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_PopupRounding(ImGuiStyle* self) { return self->PopupRounding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_PopupRounding(ImGuiStyle* self, float v) { self->PopupRounding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_PopupBorderSize(ImGuiStyle* self) { return self->PopupBorderSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_PopupBorderSize(ImGuiStyle* self, float v) { self->PopupBorderSize = v; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_FramePadding(ImGuiStyle* self, ImVec2* _out) { *_out = self->FramePadding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_FramePadding(ImGuiStyle* self, float v_x, float v_y) { self->FramePadding.x = v_x; self->FramePadding.y = v_y; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_FrameRounding(ImGuiStyle* self) { return self->FrameRounding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_FrameRounding(ImGuiStyle* self, float v) { self->FrameRounding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_FrameBorderSize(ImGuiStyle* self) { return self->FrameBorderSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_FrameBorderSize(ImGuiStyle* self, float v) { self->FrameBorderSize = v; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_ItemSpacing(ImGuiStyle* self, ImVec2* _out) { *_out = self->ItemSpacing; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ItemSpacing(ImGuiStyle* self, float v_x, float v_y) { self->ItemSpacing.x = v_x; self->ItemSpacing.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_ItemInnerSpacing(ImGuiStyle* self, ImVec2* _out) { *_out = self->ItemInnerSpacing; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ItemInnerSpacing(ImGuiStyle* self, float v_x, float v_y) { self->ItemInnerSpacing.x = v_x; self->ItemInnerSpacing.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_CellPadding(ImGuiStyle* self, ImVec2* _out) { *_out = self->CellPadding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_CellPadding(ImGuiStyle* self, float v_x, float v_y) { self->CellPadding.x = v_x; self->CellPadding.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_TouchExtraPadding(ImGuiStyle* self, ImVec2* _out) { *_out = self->TouchExtraPadding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TouchExtraPadding(ImGuiStyle* self, float v_x, float v_y) { self->TouchExtraPadding.x = v_x; self->TouchExtraPadding.y = v_y; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_IndentSpacing(ImGuiStyle* self) { return self->IndentSpacing; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_IndentSpacing(ImGuiStyle* self, float v) { self->IndentSpacing = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_ColumnsMinSpacing(ImGuiStyle* self) { return self->ColumnsMinSpacing; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ColumnsMinSpacing(ImGuiStyle* self, float v) { self->ColumnsMinSpacing = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_ScrollbarSize(ImGuiStyle* self) { return self->ScrollbarSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ScrollbarSize(ImGuiStyle* self, float v) { self->ScrollbarSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_ScrollbarRounding(ImGuiStyle* self) { return self->ScrollbarRounding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ScrollbarRounding(ImGuiStyle* self, float v) { self->ScrollbarRounding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_ScrollbarPadding(ImGuiStyle* self) { return self->ScrollbarPadding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ScrollbarPadding(ImGuiStyle* self, float v) { self->ScrollbarPadding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_GrabMinSize(ImGuiStyle* self) { return self->GrabMinSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_GrabMinSize(ImGuiStyle* self, float v) { self->GrabMinSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_GrabRounding(ImGuiStyle* self) { return self->GrabRounding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_GrabRounding(ImGuiStyle* self, float v) { self->GrabRounding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_LogSliderDeadzone(ImGuiStyle* self) { return self->LogSliderDeadzone; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_LogSliderDeadzone(ImGuiStyle* self, float v) { self->LogSliderDeadzone = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_ImageRounding(ImGuiStyle* self) { return self->ImageRounding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ImageRounding(ImGuiStyle* self, float v) { self->ImageRounding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_ImageBorderSize(ImGuiStyle* self) { return self->ImageBorderSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ImageBorderSize(ImGuiStyle* self, float v) { self->ImageBorderSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_TabRounding(ImGuiStyle* self) { return self->TabRounding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TabRounding(ImGuiStyle* self, float v) { self->TabRounding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_TabBorderSize(ImGuiStyle* self) { return self->TabBorderSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TabBorderSize(ImGuiStyle* self, float v) { self->TabBorderSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_TabMinWidthBase(ImGuiStyle* self) { return self->TabMinWidthBase; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TabMinWidthBase(ImGuiStyle* self, float v) { self->TabMinWidthBase = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_TabMinWidthShrink(ImGuiStyle* self) { return self->TabMinWidthShrink; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TabMinWidthShrink(ImGuiStyle* self, float v) { self->TabMinWidthShrink = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_TabCloseButtonMinWidthSelected(ImGuiStyle* self) { return self->TabCloseButtonMinWidthSelected; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TabCloseButtonMinWidthSelected(ImGuiStyle* self, float v) { self->TabCloseButtonMinWidthSelected = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_TabCloseButtonMinWidthUnselected(ImGuiStyle* self) { return self->TabCloseButtonMinWidthUnselected; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TabCloseButtonMinWidthUnselected(ImGuiStyle* self, float v) { self->TabCloseButtonMinWidthUnselected = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_TabBarBorderSize(ImGuiStyle* self) { return self->TabBarBorderSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TabBarBorderSize(ImGuiStyle* self, float v) { self->TabBarBorderSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_TabBarOverlineSize(ImGuiStyle* self) { return self->TabBarOverlineSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TabBarOverlineSize(ImGuiStyle* self, float v) { self->TabBarOverlineSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_TableAngledHeadersAngle(ImGuiStyle* self) { return self->TableAngledHeadersAngle; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TableAngledHeadersAngle(ImGuiStyle* self, float v) { self->TableAngledHeadersAngle = v; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_TableAngledHeadersTextAlign(ImGuiStyle* self, ImVec2* _out) { *_out = self->TableAngledHeadersTextAlign; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TableAngledHeadersTextAlign(ImGuiStyle* self, float v_x, float v_y) { self->TableAngledHeadersTextAlign.x = v_x; self->TableAngledHeadersTextAlign.y = v_y; }
DCGLUE_EXPORT ImGuiTreeNodeFlags dcjs_ImGuiStyle_get_TreeLinesFlags(ImGuiStyle* self) { return self->TreeLinesFlags; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TreeLinesFlags(ImGuiStyle* self, ImGuiTreeNodeFlags v) { self->TreeLinesFlags = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_TreeLinesSize(ImGuiStyle* self) { return self->TreeLinesSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TreeLinesSize(ImGuiStyle* self, float v) { self->TreeLinesSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_TreeLinesRounding(ImGuiStyle* self) { return self->TreeLinesRounding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_TreeLinesRounding(ImGuiStyle* self, float v) { self->TreeLinesRounding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_DragDropTargetRounding(ImGuiStyle* self) { return self->DragDropTargetRounding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_DragDropTargetRounding(ImGuiStyle* self, float v) { self->DragDropTargetRounding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_DragDropTargetBorderSize(ImGuiStyle* self) { return self->DragDropTargetBorderSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_DragDropTargetBorderSize(ImGuiStyle* self, float v) { self->DragDropTargetBorderSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_DragDropTargetPadding(ImGuiStyle* self) { return self->DragDropTargetPadding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_DragDropTargetPadding(ImGuiStyle* self, float v) { self->DragDropTargetPadding = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_ColorMarkerSize(ImGuiStyle* self) { return self->ColorMarkerSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ColorMarkerSize(ImGuiStyle* self, float v) { self->ColorMarkerSize = v; }
DCGLUE_EXPORT ImGuiDir dcjs_ImGuiStyle_get_ColorButtonPosition(ImGuiStyle* self) { return self->ColorButtonPosition; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ColorButtonPosition(ImGuiStyle* self, ImGuiDir v) { self->ColorButtonPosition = v; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_ButtonTextAlign(ImGuiStyle* self, ImVec2* _out) { *_out = self->ButtonTextAlign; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_ButtonTextAlign(ImGuiStyle* self, float v_x, float v_y) { self->ButtonTextAlign.x = v_x; self->ButtonTextAlign.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_SelectableTextAlign(ImGuiStyle* self, ImVec2* _out) { *_out = self->SelectableTextAlign; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_SelectableTextAlign(ImGuiStyle* self, float v_x, float v_y) { self->SelectableTextAlign.x = v_x; self->SelectableTextAlign.y = v_y; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_SeparatorSize(ImGuiStyle* self) { return self->SeparatorSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_SeparatorSize(ImGuiStyle* self, float v) { self->SeparatorSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_SeparatorTextBorderSize(ImGuiStyle* self) { return self->SeparatorTextBorderSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_SeparatorTextBorderSize(ImGuiStyle* self, float v) { self->SeparatorTextBorderSize = v; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_SeparatorTextAlign(ImGuiStyle* self, ImVec2* _out) { *_out = self->SeparatorTextAlign; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_SeparatorTextAlign(ImGuiStyle* self, float v_x, float v_y) { self->SeparatorTextAlign.x = v_x; self->SeparatorTextAlign.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_SeparatorTextPadding(ImGuiStyle* self, ImVec2* _out) { *_out = self->SeparatorTextPadding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_SeparatorTextPadding(ImGuiStyle* self, float v_x, float v_y) { self->SeparatorTextPadding.x = v_x; self->SeparatorTextPadding.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_DisplayWindowPadding(ImGuiStyle* self, ImVec2* _out) { *_out = self->DisplayWindowPadding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_DisplayWindowPadding(ImGuiStyle* self, float v_x, float v_y) { self->DisplayWindowPadding.x = v_x; self->DisplayWindowPadding.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_get_DisplaySafeAreaPadding(ImGuiStyle* self, ImVec2* _out) { *_out = self->DisplaySafeAreaPadding; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_DisplaySafeAreaPadding(ImGuiStyle* self, float v_x, float v_y) { self->DisplaySafeAreaPadding.x = v_x; self->DisplaySafeAreaPadding.y = v_y; }
DCGLUE_EXPORT bool dcjs_ImGuiStyle_get_DockingNodeHasCloseButton(ImGuiStyle* self) { return self->DockingNodeHasCloseButton; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_DockingNodeHasCloseButton(ImGuiStyle* self, bool v) { self->DockingNodeHasCloseButton = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_DockingSeparatorSize(ImGuiStyle* self) { return self->DockingSeparatorSize; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_DockingSeparatorSize(ImGuiStyle* self, float v) { self->DockingSeparatorSize = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_MouseCursorScale(ImGuiStyle* self) { return self->MouseCursorScale; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_MouseCursorScale(ImGuiStyle* self, float v) { self->MouseCursorScale = v; }
DCGLUE_EXPORT bool dcjs_ImGuiStyle_get_AntiAliasedLines(ImGuiStyle* self) { return self->AntiAliasedLines; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_AntiAliasedLines(ImGuiStyle* self, bool v) { self->AntiAliasedLines = v; }
DCGLUE_EXPORT bool dcjs_ImGuiStyle_get_AntiAliasedLinesUseTex(ImGuiStyle* self) { return self->AntiAliasedLinesUseTex; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_AntiAliasedLinesUseTex(ImGuiStyle* self, bool v) { self->AntiAliasedLinesUseTex = v; }
DCGLUE_EXPORT bool dcjs_ImGuiStyle_get_AntiAliasedFill(ImGuiStyle* self) { return self->AntiAliasedFill; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_AntiAliasedFill(ImGuiStyle* self, bool v) { self->AntiAliasedFill = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_CurveTessellationTol(ImGuiStyle* self) { return self->CurveTessellationTol; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_CurveTessellationTol(ImGuiStyle* self, float v) { self->CurveTessellationTol = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_CircleTessellationMaxError(ImGuiStyle* self) { return self->CircleTessellationMaxError; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_CircleTessellationMaxError(ImGuiStyle* self, float v) { self->CircleTessellationMaxError = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_HoverStationaryDelay(ImGuiStyle* self) { return self->HoverStationaryDelay; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_HoverStationaryDelay(ImGuiStyle* self, float v) { self->HoverStationaryDelay = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_HoverDelayShort(ImGuiStyle* self) { return self->HoverDelayShort; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_HoverDelayShort(ImGuiStyle* self, float v) { self->HoverDelayShort = v; }
DCGLUE_EXPORT float dcjs_ImGuiStyle_get_HoverDelayNormal(ImGuiStyle* self) { return self->HoverDelayNormal; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_HoverDelayNormal(ImGuiStyle* self, float v) { self->HoverDelayNormal = v; }
DCGLUE_EXPORT ImGuiHoveredFlags dcjs_ImGuiStyle_get_HoverFlagsForTooltipMouse(ImGuiStyle* self) { return self->HoverFlagsForTooltipMouse; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_HoverFlagsForTooltipMouse(ImGuiStyle* self, ImGuiHoveredFlags v) { self->HoverFlagsForTooltipMouse = v; }
DCGLUE_EXPORT ImGuiHoveredFlags dcjs_ImGuiStyle_get_HoverFlagsForTooltipNav(ImGuiStyle* self) { return self->HoverFlagsForTooltipNav; }
DCGLUE_EXPORT void dcjs_ImGuiStyle_set_HoverFlagsForTooltipNav(ImGuiStyle* self, ImGuiHoveredFlags v) { self->HoverFlagsForTooltipNav = v; }
DCGLUE_EXPORT ImGuiConfigFlags dcjs_ImGuiIO_get_ConfigFlags(ImGuiIO* self) { return self->ConfigFlags; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigFlags(ImGuiIO* self, ImGuiConfigFlags v) { self->ConfigFlags = v; }
DCGLUE_EXPORT ImGuiBackendFlags dcjs_ImGuiIO_get_BackendFlags(ImGuiIO* self) { return self->BackendFlags; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_BackendFlags(ImGuiIO* self, ImGuiBackendFlags v) { self->BackendFlags = v; }
DCGLUE_EXPORT void dcjs_ImGuiIO_get_DisplaySize(ImGuiIO* self, ImVec2* _out) { *_out = self->DisplaySize; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_DisplaySize(ImGuiIO* self, float v_x, float v_y) { self->DisplaySize.x = v_x; self->DisplaySize.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiIO_get_DisplayFramebufferScale(ImGuiIO* self, ImVec2* _out) { *_out = self->DisplayFramebufferScale; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_DisplayFramebufferScale(ImGuiIO* self, float v_x, float v_y) { self->DisplayFramebufferScale.x = v_x; self->DisplayFramebufferScale.y = v_y; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_DeltaTime(ImGuiIO* self) { return self->DeltaTime; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_DeltaTime(ImGuiIO* self, float v) { self->DeltaTime = v; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_IniSavingRate(ImGuiIO* self) { return self->IniSavingRate; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_IniSavingRate(ImGuiIO* self, float v) { self->IniSavingRate = v; }
DCGLUE_EXPORT const char* dcjs_ImGuiIO_get_IniFilename(ImGuiIO* self) { return self->IniFilename; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_IniFilename(ImGuiIO* self, const char* v) { self->IniFilename = v; }
DCGLUE_EXPORT const char* dcjs_ImGuiIO_get_LogFilename(ImGuiIO* self) { return self->LogFilename; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_LogFilename(ImGuiIO* self, const char* v) { self->LogFilename = v; }
DCGLUE_EXPORT void* dcjs_ImGuiIO_get_UserData(ImGuiIO* self) { return self->UserData; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_UserData(ImGuiIO* self, void* v) { self->UserData = v; }
DCGLUE_EXPORT ImFontAtlas* dcjs_ImGuiIO_get_Fonts(ImGuiIO* self) { return self->Fonts; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_Fonts(ImGuiIO* self, ImFontAtlas* v) { self->Fonts = v; }
DCGLUE_EXPORT ImFont* dcjs_ImGuiIO_get_FontDefault(ImGuiIO* self) { return self->FontDefault; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_FontDefault(ImGuiIO* self, ImFont* v) { self->FontDefault = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_FontAllowUserScaling(ImGuiIO* self) { return self->FontAllowUserScaling; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_FontAllowUserScaling(ImGuiIO* self, bool v) { self->FontAllowUserScaling = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigNavSwapGamepadButtons(ImGuiIO* self) { return self->ConfigNavSwapGamepadButtons; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigNavSwapGamepadButtons(ImGuiIO* self, bool v) { self->ConfigNavSwapGamepadButtons = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigNavMoveSetMousePos(ImGuiIO* self) { return self->ConfigNavMoveSetMousePos; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigNavMoveSetMousePos(ImGuiIO* self, bool v) { self->ConfigNavMoveSetMousePos = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigNavCaptureKeyboard(ImGuiIO* self) { return self->ConfigNavCaptureKeyboard; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigNavCaptureKeyboard(ImGuiIO* self, bool v) { self->ConfigNavCaptureKeyboard = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigNavEscapeClearFocusItem(ImGuiIO* self) { return self->ConfigNavEscapeClearFocusItem; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigNavEscapeClearFocusItem(ImGuiIO* self, bool v) { self->ConfigNavEscapeClearFocusItem = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigNavEscapeClearFocusWindow(ImGuiIO* self) { return self->ConfigNavEscapeClearFocusWindow; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigNavEscapeClearFocusWindow(ImGuiIO* self, bool v) { self->ConfigNavEscapeClearFocusWindow = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigNavCursorVisibleAuto(ImGuiIO* self) { return self->ConfigNavCursorVisibleAuto; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigNavCursorVisibleAuto(ImGuiIO* self, bool v) { self->ConfigNavCursorVisibleAuto = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigNavCursorVisibleAlways(ImGuiIO* self) { return self->ConfigNavCursorVisibleAlways; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigNavCursorVisibleAlways(ImGuiIO* self, bool v) { self->ConfigNavCursorVisibleAlways = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDockingNoSplit(ImGuiIO* self) { return self->ConfigDockingNoSplit; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDockingNoSplit(ImGuiIO* self, bool v) { self->ConfigDockingNoSplit = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDockingNoDockingOver(ImGuiIO* self) { return self->ConfigDockingNoDockingOver; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDockingNoDockingOver(ImGuiIO* self, bool v) { self->ConfigDockingNoDockingOver = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDockingWithShift(ImGuiIO* self) { return self->ConfigDockingWithShift; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDockingWithShift(ImGuiIO* self, bool v) { self->ConfigDockingWithShift = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDockingAlwaysTabBar(ImGuiIO* self) { return self->ConfigDockingAlwaysTabBar; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDockingAlwaysTabBar(ImGuiIO* self, bool v) { self->ConfigDockingAlwaysTabBar = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDockingTransparentPayload(ImGuiIO* self) { return self->ConfigDockingTransparentPayload; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDockingTransparentPayload(ImGuiIO* self, bool v) { self->ConfigDockingTransparentPayload = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigViewportsNoAutoMerge(ImGuiIO* self) { return self->ConfigViewportsNoAutoMerge; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigViewportsNoAutoMerge(ImGuiIO* self, bool v) { self->ConfigViewportsNoAutoMerge = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigViewportsNoTaskBarIcon(ImGuiIO* self) { return self->ConfigViewportsNoTaskBarIcon; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigViewportsNoTaskBarIcon(ImGuiIO* self, bool v) { self->ConfigViewportsNoTaskBarIcon = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigViewportsNoDecoration(ImGuiIO* self) { return self->ConfigViewportsNoDecoration; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigViewportsNoDecoration(ImGuiIO* self, bool v) { self->ConfigViewportsNoDecoration = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigViewportsNoDefaultParent(ImGuiIO* self) { return self->ConfigViewportsNoDefaultParent; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigViewportsNoDefaultParent(ImGuiIO* self, bool v) { self->ConfigViewportsNoDefaultParent = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigViewportsPlatformFocusSetsImGuiFocus(ImGuiIO* self) { return self->ConfigViewportsPlatformFocusSetsImGuiFocus; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigViewportsPlatformFocusSetsImGuiFocus(ImGuiIO* self, bool v) { self->ConfigViewportsPlatformFocusSetsImGuiFocus = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDpiScaleFonts(ImGuiIO* self) { return self->ConfigDpiScaleFonts; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDpiScaleFonts(ImGuiIO* self, bool v) { self->ConfigDpiScaleFonts = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDpiScaleViewports(ImGuiIO* self) { return self->ConfigDpiScaleViewports; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDpiScaleViewports(ImGuiIO* self, bool v) { self->ConfigDpiScaleViewports = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_MouseDrawCursor(ImGuiIO* self) { return self->MouseDrawCursor; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MouseDrawCursor(ImGuiIO* self, bool v) { self->MouseDrawCursor = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigMacOSXBehaviors(ImGuiIO* self) { return self->ConfigMacOSXBehaviors; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigMacOSXBehaviors(ImGuiIO* self, bool v) { self->ConfigMacOSXBehaviors = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigInputTrickleEventQueue(ImGuiIO* self) { return self->ConfigInputTrickleEventQueue; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigInputTrickleEventQueue(ImGuiIO* self, bool v) { self->ConfigInputTrickleEventQueue = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigInputTextCursorBlink(ImGuiIO* self) { return self->ConfigInputTextCursorBlink; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigInputTextCursorBlink(ImGuiIO* self, bool v) { self->ConfigInputTextCursorBlink = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigInputTextEnterKeepActive(ImGuiIO* self) { return self->ConfigInputTextEnterKeepActive; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigInputTextEnterKeepActive(ImGuiIO* self, bool v) { self->ConfigInputTextEnterKeepActive = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDragClickToInputText(ImGuiIO* self) { return self->ConfigDragClickToInputText; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDragClickToInputText(ImGuiIO* self, bool v) { self->ConfigDragClickToInputText = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigWindowsResizeFromEdges(ImGuiIO* self) { return self->ConfigWindowsResizeFromEdges; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigWindowsResizeFromEdges(ImGuiIO* self, bool v) { self->ConfigWindowsResizeFromEdges = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigWindowsMoveFromTitleBarOnly(ImGuiIO* self) { return self->ConfigWindowsMoveFromTitleBarOnly; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigWindowsMoveFromTitleBarOnly(ImGuiIO* self, bool v) { self->ConfigWindowsMoveFromTitleBarOnly = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigWindowsCopyContentsWithCtrlC(ImGuiIO* self) { return self->ConfigWindowsCopyContentsWithCtrlC; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigWindowsCopyContentsWithCtrlC(ImGuiIO* self, bool v) { self->ConfigWindowsCopyContentsWithCtrlC = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigScrollbarScrollByPage(ImGuiIO* self) { return self->ConfigScrollbarScrollByPage; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigScrollbarScrollByPage(ImGuiIO* self, bool v) { self->ConfigScrollbarScrollByPage = v; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_ConfigMemoryCompactTimer(ImGuiIO* self) { return self->ConfigMemoryCompactTimer; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigMemoryCompactTimer(ImGuiIO* self, float v) { self->ConfigMemoryCompactTimer = v; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_MouseDoubleClickTime(ImGuiIO* self) { return self->MouseDoubleClickTime; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MouseDoubleClickTime(ImGuiIO* self, float v) { self->MouseDoubleClickTime = v; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_MouseDoubleClickMaxDist(ImGuiIO* self) { return self->MouseDoubleClickMaxDist; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MouseDoubleClickMaxDist(ImGuiIO* self, float v) { self->MouseDoubleClickMaxDist = v; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_MouseDragThreshold(ImGuiIO* self) { return self->MouseDragThreshold; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MouseDragThreshold(ImGuiIO* self, float v) { self->MouseDragThreshold = v; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_KeyRepeatDelay(ImGuiIO* self) { return self->KeyRepeatDelay; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_KeyRepeatDelay(ImGuiIO* self, float v) { self->KeyRepeatDelay = v; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_KeyRepeatRate(ImGuiIO* self) { return self->KeyRepeatRate; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_KeyRepeatRate(ImGuiIO* self, float v) { self->KeyRepeatRate = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigErrorRecovery(ImGuiIO* self) { return self->ConfigErrorRecovery; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigErrorRecovery(ImGuiIO* self, bool v) { self->ConfigErrorRecovery = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableAssert(ImGuiIO* self) { return self->ConfigErrorRecoveryEnableAssert; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableAssert(ImGuiIO* self, bool v) { self->ConfigErrorRecoveryEnableAssert = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableDebugLog(ImGuiIO* self) { return self->ConfigErrorRecoveryEnableDebugLog; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableDebugLog(ImGuiIO* self, bool v) { self->ConfigErrorRecoveryEnableDebugLog = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableTooltip(ImGuiIO* self) { return self->ConfigErrorRecoveryEnableTooltip; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableTooltip(ImGuiIO* self, bool v) { self->ConfigErrorRecoveryEnableTooltip = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDebugIsDebuggerPresent(ImGuiIO* self) { return self->ConfigDebugIsDebuggerPresent; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDebugIsDebuggerPresent(ImGuiIO* self, bool v) { self->ConfigDebugIsDebuggerPresent = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDebugHighlightIdConflicts(ImGuiIO* self) { return self->ConfigDebugHighlightIdConflicts; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDebugHighlightIdConflicts(ImGuiIO* self, bool v) { self->ConfigDebugHighlightIdConflicts = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDebugHighlightIdConflictsShowItemPicker(ImGuiIO* self) { return self->ConfigDebugHighlightIdConflictsShowItemPicker; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDebugHighlightIdConflictsShowItemPicker(ImGuiIO* self, bool v) { self->ConfigDebugHighlightIdConflictsShowItemPicker = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDebugBeginReturnValueOnce(ImGuiIO* self) { return self->ConfigDebugBeginReturnValueOnce; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDebugBeginReturnValueOnce(ImGuiIO* self, bool v) { self->ConfigDebugBeginReturnValueOnce = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDebugBeginReturnValueLoop(ImGuiIO* self) { return self->ConfigDebugBeginReturnValueLoop; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDebugBeginReturnValueLoop(ImGuiIO* self, bool v) { self->ConfigDebugBeginReturnValueLoop = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDebugIgnoreFocusLoss(ImGuiIO* self) { return self->ConfigDebugIgnoreFocusLoss; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDebugIgnoreFocusLoss(ImGuiIO* self, bool v) { self->ConfigDebugIgnoreFocusLoss = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_ConfigDebugIniSettings(ImGuiIO* self) { return self->ConfigDebugIniSettings; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_ConfigDebugIniSettings(ImGuiIO* self, bool v) { self->ConfigDebugIniSettings = v; }
DCGLUE_EXPORT const char* dcjs_ImGuiIO_get_BackendPlatformName(ImGuiIO* self) { return self->BackendPlatformName; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_BackendPlatformName(ImGuiIO* self, const char* v) { self->BackendPlatformName = v; }
DCGLUE_EXPORT const char* dcjs_ImGuiIO_get_BackendRendererName(ImGuiIO* self) { return self->BackendRendererName; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_BackendRendererName(ImGuiIO* self, const char* v) { self->BackendRendererName = v; }
DCGLUE_EXPORT void* dcjs_ImGuiIO_get_BackendPlatformUserData(ImGuiIO* self) { return self->BackendPlatformUserData; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_BackendPlatformUserData(ImGuiIO* self, void* v) { self->BackendPlatformUserData = v; }
DCGLUE_EXPORT void* dcjs_ImGuiIO_get_BackendRendererUserData(ImGuiIO* self) { return self->BackendRendererUserData; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_BackendRendererUserData(ImGuiIO* self, void* v) { self->BackendRendererUserData = v; }
DCGLUE_EXPORT void* dcjs_ImGuiIO_get_BackendLanguageUserData(ImGuiIO* self) { return self->BackendLanguageUserData; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_BackendLanguageUserData(ImGuiIO* self, void* v) { self->BackendLanguageUserData = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_WantCaptureMouse(ImGuiIO* self) { return self->WantCaptureMouse; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_WantCaptureMouse(ImGuiIO* self, bool v) { self->WantCaptureMouse = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_WantCaptureKeyboard(ImGuiIO* self) { return self->WantCaptureKeyboard; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_WantCaptureKeyboard(ImGuiIO* self, bool v) { self->WantCaptureKeyboard = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_WantTextInput(ImGuiIO* self) { return self->WantTextInput; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_WantTextInput(ImGuiIO* self, bool v) { self->WantTextInput = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_WantSetMousePos(ImGuiIO* self) { return self->WantSetMousePos; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_WantSetMousePos(ImGuiIO* self, bool v) { self->WantSetMousePos = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_WantSaveIniSettings(ImGuiIO* self) { return self->WantSaveIniSettings; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_WantSaveIniSettings(ImGuiIO* self, bool v) { self->WantSaveIniSettings = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_NavActive(ImGuiIO* self) { return self->NavActive; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_NavActive(ImGuiIO* self, bool v) { self->NavActive = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_NavVisible(ImGuiIO* self) { return self->NavVisible; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_NavVisible(ImGuiIO* self, bool v) { self->NavVisible = v; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_Framerate(ImGuiIO* self) { return self->Framerate; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_Framerate(ImGuiIO* self, float v) { self->Framerate = v; }
DCGLUE_EXPORT int dcjs_ImGuiIO_get_MetricsRenderVertices(ImGuiIO* self) { return self->MetricsRenderVertices; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MetricsRenderVertices(ImGuiIO* self, int v) { self->MetricsRenderVertices = v; }
DCGLUE_EXPORT int dcjs_ImGuiIO_get_MetricsRenderIndices(ImGuiIO* self) { return self->MetricsRenderIndices; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MetricsRenderIndices(ImGuiIO* self, int v) { self->MetricsRenderIndices = v; }
DCGLUE_EXPORT int dcjs_ImGuiIO_get_MetricsRenderWindows(ImGuiIO* self) { return self->MetricsRenderWindows; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MetricsRenderWindows(ImGuiIO* self, int v) { self->MetricsRenderWindows = v; }
DCGLUE_EXPORT int dcjs_ImGuiIO_get_MetricsActiveWindows(ImGuiIO* self) { return self->MetricsActiveWindows; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MetricsActiveWindows(ImGuiIO* self, int v) { self->MetricsActiveWindows = v; }
DCGLUE_EXPORT void dcjs_ImGuiIO_get_MouseDelta(ImGuiIO* self, ImVec2* _out) { *_out = self->MouseDelta; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MouseDelta(ImGuiIO* self, float v_x, float v_y) { self->MouseDelta.x = v_x; self->MouseDelta.y = v_y; }
DCGLUE_EXPORT ImGuiContext* dcjs_ImGuiIO_get_Ctx(ImGuiIO* self) { return self->Ctx; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_Ctx(ImGuiIO* self, ImGuiContext* v) { self->Ctx = v; }
DCGLUE_EXPORT void dcjs_ImGuiIO_get_MousePos(ImGuiIO* self, ImVec2* _out) { *_out = self->MousePos; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MousePos(ImGuiIO* self, float v_x, float v_y) { self->MousePos.x = v_x; self->MousePos.y = v_y; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_MouseWheel(ImGuiIO* self) { return self->MouseWheel; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MouseWheel(ImGuiIO* self, float v) { self->MouseWheel = v; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_MouseWheelH(ImGuiIO* self) { return self->MouseWheelH; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MouseWheelH(ImGuiIO* self, float v) { self->MouseWheelH = v; }
DCGLUE_EXPORT ImGuiMouseSource dcjs_ImGuiIO_get_MouseSource(ImGuiIO* self) { return self->MouseSource; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MouseSource(ImGuiIO* self, ImGuiMouseSource v) { self->MouseSource = v; }
DCGLUE_EXPORT ImGuiID dcjs_ImGuiIO_get_MouseHoveredViewport(ImGuiIO* self) { return self->MouseHoveredViewport; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MouseHoveredViewport(ImGuiIO* self, ImGuiID v) { self->MouseHoveredViewport = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_KeyCtrl(ImGuiIO* self) { return self->KeyCtrl; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_KeyCtrl(ImGuiIO* self, bool v) { self->KeyCtrl = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_KeyShift(ImGuiIO* self) { return self->KeyShift; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_KeyShift(ImGuiIO* self, bool v) { self->KeyShift = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_KeyAlt(ImGuiIO* self) { return self->KeyAlt; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_KeyAlt(ImGuiIO* self, bool v) { self->KeyAlt = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_KeySuper(ImGuiIO* self) { return self->KeySuper; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_KeySuper(ImGuiIO* self, bool v) { self->KeySuper = v; }
DCGLUE_EXPORT ImGuiKeyChord dcjs_ImGuiIO_get_KeyMods(ImGuiIO* self) { return self->KeyMods; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_KeyMods(ImGuiIO* self, ImGuiKeyChord v) { self->KeyMods = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_WantCaptureMouseUnlessPopupClose(ImGuiIO* self) { return self->WantCaptureMouseUnlessPopupClose; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_WantCaptureMouseUnlessPopupClose(ImGuiIO* self, bool v) { self->WantCaptureMouseUnlessPopupClose = v; }
DCGLUE_EXPORT void dcjs_ImGuiIO_get_MousePosPrev(ImGuiIO* self, ImVec2* _out) { *_out = self->MousePosPrev; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MousePosPrev(ImGuiIO* self, float v_x, float v_y) { self->MousePosPrev.x = v_x; self->MousePosPrev.y = v_y; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_MouseWheelRequestAxisSwap(ImGuiIO* self) { return self->MouseWheelRequestAxisSwap; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MouseWheelRequestAxisSwap(ImGuiIO* self, bool v) { self->MouseWheelRequestAxisSwap = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_MouseCtrlLeftAsRightClick(ImGuiIO* self) { return self->MouseCtrlLeftAsRightClick; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_MouseCtrlLeftAsRightClick(ImGuiIO* self, bool v) { self->MouseCtrlLeftAsRightClick = v; }
DCGLUE_EXPORT float dcjs_ImGuiIO_get_PenPressure(ImGuiIO* self) { return self->PenPressure; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_PenPressure(ImGuiIO* self, float v) { self->PenPressure = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_AppFocusLost(ImGuiIO* self) { return self->AppFocusLost; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_AppFocusLost(ImGuiIO* self, bool v) { self->AppFocusLost = v; }
DCGLUE_EXPORT bool dcjs_ImGuiIO_get_AppAcceptingEvents(ImGuiIO* self) { return self->AppAcceptingEvents; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_AppAcceptingEvents(ImGuiIO* self, bool v) { self->AppAcceptingEvents = v; }
DCGLUE_EXPORT ImWchar16 dcjs_ImGuiIO_get_InputQueueSurrogate(ImGuiIO* self) { return self->InputQueueSurrogate; }
DCGLUE_EXPORT void dcjs_ImGuiIO_set_InputQueueSurrogate(ImGuiIO* self, ImWchar16 v) { self->InputQueueSurrogate = v; }
DCGLUE_EXPORT ImVector_ImWchar* dcjs_ImGuiIO_ptr_InputQueueCharacters(ImGuiIO* self) { return &self->InputQueueCharacters; }
DCGLUE_EXPORT ImGuiContext* dcjs_ImGuiInputTextCallbackData_get_Ctx(ImGuiInputTextCallbackData* self) { return self->Ctx; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_Ctx(ImGuiInputTextCallbackData* self, ImGuiContext* v) { self->Ctx = v; }
DCGLUE_EXPORT ImGuiInputTextFlags dcjs_ImGuiInputTextCallbackData_get_EventFlag(ImGuiInputTextCallbackData* self) { return self->EventFlag; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_EventFlag(ImGuiInputTextCallbackData* self, ImGuiInputTextFlags v) { self->EventFlag = v; }
DCGLUE_EXPORT ImGuiInputTextFlags dcjs_ImGuiInputTextCallbackData_get_Flags(ImGuiInputTextCallbackData* self) { return self->Flags; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_Flags(ImGuiInputTextCallbackData* self, ImGuiInputTextFlags v) { self->Flags = v; }
DCGLUE_EXPORT void* dcjs_ImGuiInputTextCallbackData_get_UserData(ImGuiInputTextCallbackData* self) { return self->UserData; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_UserData(ImGuiInputTextCallbackData* self, void* v) { self->UserData = v; }
DCGLUE_EXPORT ImGuiID dcjs_ImGuiInputTextCallbackData_get_ID(ImGuiInputTextCallbackData* self) { return self->ID; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_ID(ImGuiInputTextCallbackData* self, ImGuiID v) { self->ID = v; }
DCGLUE_EXPORT ImGuiKey dcjs_ImGuiInputTextCallbackData_get_EventKey(ImGuiInputTextCallbackData* self) { return self->EventKey; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_EventKey(ImGuiInputTextCallbackData* self, ImGuiKey v) { self->EventKey = v; }
DCGLUE_EXPORT ImWchar dcjs_ImGuiInputTextCallbackData_get_EventChar(ImGuiInputTextCallbackData* self) { return self->EventChar; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_EventChar(ImGuiInputTextCallbackData* self, ImWchar v) { self->EventChar = v; }
DCGLUE_EXPORT bool dcjs_ImGuiInputTextCallbackData_get_EventActivated(ImGuiInputTextCallbackData* self) { return self->EventActivated; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_EventActivated(ImGuiInputTextCallbackData* self, bool v) { self->EventActivated = v; }
DCGLUE_EXPORT bool dcjs_ImGuiInputTextCallbackData_get_BufDirty(ImGuiInputTextCallbackData* self) { return self->BufDirty; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_BufDirty(ImGuiInputTextCallbackData* self, bool v) { self->BufDirty = v; }
DCGLUE_EXPORT char* dcjs_ImGuiInputTextCallbackData_get_Buf(ImGuiInputTextCallbackData* self) { return self->Buf; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_Buf(ImGuiInputTextCallbackData* self, char* v) { self->Buf = v; }
DCGLUE_EXPORT int dcjs_ImGuiInputTextCallbackData_get_BufTextLen(ImGuiInputTextCallbackData* self) { return self->BufTextLen; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_BufTextLen(ImGuiInputTextCallbackData* self, int v) { self->BufTextLen = v; }
DCGLUE_EXPORT int dcjs_ImGuiInputTextCallbackData_get_BufSize(ImGuiInputTextCallbackData* self) { return self->BufSize; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_BufSize(ImGuiInputTextCallbackData* self, int v) { self->BufSize = v; }
DCGLUE_EXPORT int dcjs_ImGuiInputTextCallbackData_get_CursorPos(ImGuiInputTextCallbackData* self) { return self->CursorPos; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_CursorPos(ImGuiInputTextCallbackData* self, int v) { self->CursorPos = v; }
DCGLUE_EXPORT int dcjs_ImGuiInputTextCallbackData_get_SelectionStart(ImGuiInputTextCallbackData* self) { return self->SelectionStart; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_SelectionStart(ImGuiInputTextCallbackData* self, int v) { self->SelectionStart = v; }
DCGLUE_EXPORT int dcjs_ImGuiInputTextCallbackData_get_SelectionEnd(ImGuiInputTextCallbackData* self) { return self->SelectionEnd; }
DCGLUE_EXPORT void dcjs_ImGuiInputTextCallbackData_set_SelectionEnd(ImGuiInputTextCallbackData* self, int v) { self->SelectionEnd = v; }
DCGLUE_EXPORT void* dcjs_ImGuiSizeCallbackData_get_UserData(ImGuiSizeCallbackData* self) { return self->UserData; }
DCGLUE_EXPORT void dcjs_ImGuiSizeCallbackData_set_UserData(ImGuiSizeCallbackData* self, void* v) { self->UserData = v; }
DCGLUE_EXPORT void dcjs_ImGuiSizeCallbackData_get_Pos(ImGuiSizeCallbackData* self, ImVec2* _out) { *_out = self->Pos; }
DCGLUE_EXPORT void dcjs_ImGuiSizeCallbackData_set_Pos(ImGuiSizeCallbackData* self, float v_x, float v_y) { self->Pos.x = v_x; self->Pos.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiSizeCallbackData_get_CurrentSize(ImGuiSizeCallbackData* self, ImVec2* _out) { *_out = self->CurrentSize; }
DCGLUE_EXPORT void dcjs_ImGuiSizeCallbackData_set_CurrentSize(ImGuiSizeCallbackData* self, float v_x, float v_y) { self->CurrentSize.x = v_x; self->CurrentSize.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiSizeCallbackData_get_DesiredSize(ImGuiSizeCallbackData* self, ImVec2* _out) { *_out = self->DesiredSize; }
DCGLUE_EXPORT void dcjs_ImGuiSizeCallbackData_set_DesiredSize(ImGuiSizeCallbackData* self, float v_x, float v_y) { self->DesiredSize.x = v_x; self->DesiredSize.y = v_y; }
DCGLUE_EXPORT ImGuiID dcjs_ImGuiWindowClass_get_ClassId(ImGuiWindowClass* self) { return self->ClassId; }
DCGLUE_EXPORT void dcjs_ImGuiWindowClass_set_ClassId(ImGuiWindowClass* self, ImGuiID v) { self->ClassId = v; }
DCGLUE_EXPORT ImGuiID dcjs_ImGuiWindowClass_get_ParentViewportId(ImGuiWindowClass* self) { return self->ParentViewportId; }
DCGLUE_EXPORT void dcjs_ImGuiWindowClass_set_ParentViewportId(ImGuiWindowClass* self, ImGuiID v) { self->ParentViewportId = v; }
DCGLUE_EXPORT ImGuiID dcjs_ImGuiWindowClass_get_FocusRouteParentWindowId(ImGuiWindowClass* self) { return self->FocusRouteParentWindowId; }
DCGLUE_EXPORT void dcjs_ImGuiWindowClass_set_FocusRouteParentWindowId(ImGuiWindowClass* self, ImGuiID v) { self->FocusRouteParentWindowId = v; }
DCGLUE_EXPORT ImGuiViewportFlags dcjs_ImGuiWindowClass_get_ViewportFlagsOverrideSet(ImGuiWindowClass* self) { return self->ViewportFlagsOverrideSet; }
DCGLUE_EXPORT void dcjs_ImGuiWindowClass_set_ViewportFlagsOverrideSet(ImGuiWindowClass* self, ImGuiViewportFlags v) { self->ViewportFlagsOverrideSet = v; }
DCGLUE_EXPORT ImGuiViewportFlags dcjs_ImGuiWindowClass_get_ViewportFlagsOverrideClear(ImGuiWindowClass* self) { return self->ViewportFlagsOverrideClear; }
DCGLUE_EXPORT void dcjs_ImGuiWindowClass_set_ViewportFlagsOverrideClear(ImGuiWindowClass* self, ImGuiViewportFlags v) { self->ViewportFlagsOverrideClear = v; }
DCGLUE_EXPORT ImGuiTabItemFlags dcjs_ImGuiWindowClass_get_TabItemFlagsOverrideSet(ImGuiWindowClass* self) { return self->TabItemFlagsOverrideSet; }
DCGLUE_EXPORT void dcjs_ImGuiWindowClass_set_TabItemFlagsOverrideSet(ImGuiWindowClass* self, ImGuiTabItemFlags v) { self->TabItemFlagsOverrideSet = v; }
DCGLUE_EXPORT ImGuiDockNodeFlags dcjs_ImGuiWindowClass_get_DockNodeFlagsOverrideSet(ImGuiWindowClass* self) { return self->DockNodeFlagsOverrideSet; }
DCGLUE_EXPORT void dcjs_ImGuiWindowClass_set_DockNodeFlagsOverrideSet(ImGuiWindowClass* self, ImGuiDockNodeFlags v) { self->DockNodeFlagsOverrideSet = v; }
DCGLUE_EXPORT bool dcjs_ImGuiWindowClass_get_DockingAlwaysTabBar(ImGuiWindowClass* self) { return self->DockingAlwaysTabBar; }
DCGLUE_EXPORT void dcjs_ImGuiWindowClass_set_DockingAlwaysTabBar(ImGuiWindowClass* self, bool v) { self->DockingAlwaysTabBar = v; }
DCGLUE_EXPORT bool dcjs_ImGuiWindowClass_get_DockingAllowUnclassed(ImGuiWindowClass* self) { return self->DockingAllowUnclassed; }
DCGLUE_EXPORT void dcjs_ImGuiWindowClass_set_DockingAllowUnclassed(ImGuiWindowClass* self, bool v) { self->DockingAllowUnclassed = v; }
DCGLUE_EXPORT void* dcjs_ImGuiWindowClass_get_PlatformIconData(ImGuiWindowClass* self) { return self->PlatformIconData; }
DCGLUE_EXPORT void dcjs_ImGuiWindowClass_set_PlatformIconData(ImGuiWindowClass* self, void* v) { self->PlatformIconData = v; }
DCGLUE_EXPORT void* dcjs_ImGuiPayload_get_Data(ImGuiPayload* self) { return self->Data; }
DCGLUE_EXPORT void dcjs_ImGuiPayload_set_Data(ImGuiPayload* self, void* v) { self->Data = v; }
DCGLUE_EXPORT int dcjs_ImGuiPayload_get_DataSize(ImGuiPayload* self) { return self->DataSize; }
DCGLUE_EXPORT void dcjs_ImGuiPayload_set_DataSize(ImGuiPayload* self, int v) { self->DataSize = v; }
DCGLUE_EXPORT ImVector_char* dcjs_ImGuiTextBuffer_ptr_Buf(ImGuiTextBuffer* self) { return &self->Buf; }
DCGLUE_EXPORT int dcjs_ImGuiListClipper_get_DisplayStart(ImGuiListClipper* self) { return self->DisplayStart; }
DCGLUE_EXPORT void dcjs_ImGuiListClipper_set_DisplayStart(ImGuiListClipper* self, int v) { self->DisplayStart = v; }
DCGLUE_EXPORT int dcjs_ImGuiListClipper_get_DisplayEnd(ImGuiListClipper* self) { return self->DisplayEnd; }
DCGLUE_EXPORT void dcjs_ImGuiListClipper_set_DisplayEnd(ImGuiListClipper* self, int v) { self->DisplayEnd = v; }
DCGLUE_EXPORT int dcjs_ImGuiListClipper_get_UserIndex(ImGuiListClipper* self) { return self->UserIndex; }
DCGLUE_EXPORT void dcjs_ImGuiListClipper_set_UserIndex(ImGuiListClipper* self, int v) { self->UserIndex = v; }
DCGLUE_EXPORT int dcjs_ImGuiListClipper_get_ItemsCount(ImGuiListClipper* self) { return self->ItemsCount; }
DCGLUE_EXPORT void dcjs_ImGuiListClipper_set_ItemsCount(ImGuiListClipper* self, int v) { self->ItemsCount = v; }
DCGLUE_EXPORT float dcjs_ImGuiListClipper_get_ItemsHeight(ImGuiListClipper* self) { return self->ItemsHeight; }
DCGLUE_EXPORT void dcjs_ImGuiListClipper_set_ItemsHeight(ImGuiListClipper* self, float v) { self->ItemsHeight = v; }
DCGLUE_EXPORT ImGuiListClipperFlags dcjs_ImGuiListClipper_get_Flags(ImGuiListClipper* self) { return self->Flags; }
DCGLUE_EXPORT void dcjs_ImGuiListClipper_set_Flags(ImGuiListClipper* self, ImGuiListClipperFlags v) { self->Flags = v; }
DCGLUE_EXPORT double dcjs_ImGuiListClipper_get_StartPosY(ImGuiListClipper* self) { return self->StartPosY; }
DCGLUE_EXPORT void dcjs_ImGuiListClipper_set_StartPosY(ImGuiListClipper* self, double v) { self->StartPosY = v; }
DCGLUE_EXPORT double dcjs_ImGuiListClipper_get_StartSeekOffsetY(ImGuiListClipper* self) { return self->StartSeekOffsetY; }
DCGLUE_EXPORT void dcjs_ImGuiListClipper_set_StartSeekOffsetY(ImGuiListClipper* self, double v) { self->StartSeekOffsetY = v; }
DCGLUE_EXPORT ImGuiContext* dcjs_ImGuiListClipper_get_Ctx(ImGuiListClipper* self) { return self->Ctx; }
DCGLUE_EXPORT void dcjs_ImGuiListClipper_set_Ctx(ImGuiListClipper* self, ImGuiContext* v) { self->Ctx = v; }
DCGLUE_EXPORT void* dcjs_ImGuiListClipper_get_TempData(ImGuiListClipper* self) { return self->TempData; }
DCGLUE_EXPORT void dcjs_ImGuiListClipper_set_TempData(ImGuiListClipper* self, void* v) { self->TempData = v; }
DCGLUE_EXPORT void dcjs_ImColor_get_Value(ImColor* self, ImVec4* _out) { *_out = self->Value; }
DCGLUE_EXPORT void dcjs_ImColor_set_Value(ImColor* self, float v_x, float v_y, float v_z, float v_w) { self->Value.x = v_x; self->Value.y = v_y; self->Value.z = v_z; self->Value.w = v_w; }
DCGLUE_EXPORT ImVector_ImGuiSelectionRequest* dcjs_ImGuiMultiSelectIO_ptr_Requests(ImGuiMultiSelectIO* self) { return &self->Requests; }
DCGLUE_EXPORT ImGuiSelectionUserData dcjs_ImGuiMultiSelectIO_get_RangeSrcItem(ImGuiMultiSelectIO* self) { return self->RangeSrcItem; }
DCGLUE_EXPORT void dcjs_ImGuiMultiSelectIO_set_RangeSrcItem(ImGuiMultiSelectIO* self, ImGuiSelectionUserData v) { self->RangeSrcItem = v; }
DCGLUE_EXPORT ImGuiSelectionUserData dcjs_ImGuiMultiSelectIO_get_NavIdItem(ImGuiMultiSelectIO* self) { return self->NavIdItem; }
DCGLUE_EXPORT void dcjs_ImGuiMultiSelectIO_set_NavIdItem(ImGuiMultiSelectIO* self, ImGuiSelectionUserData v) { self->NavIdItem = v; }
DCGLUE_EXPORT bool dcjs_ImGuiMultiSelectIO_get_NavIdSelected(ImGuiMultiSelectIO* self) { return self->NavIdSelected; }
DCGLUE_EXPORT void dcjs_ImGuiMultiSelectIO_set_NavIdSelected(ImGuiMultiSelectIO* self, bool v) { self->NavIdSelected = v; }
DCGLUE_EXPORT bool dcjs_ImGuiMultiSelectIO_get_RangeSrcReset(ImGuiMultiSelectIO* self) { return self->RangeSrcReset; }
DCGLUE_EXPORT void dcjs_ImGuiMultiSelectIO_set_RangeSrcReset(ImGuiMultiSelectIO* self, bool v) { self->RangeSrcReset = v; }
DCGLUE_EXPORT int dcjs_ImGuiMultiSelectIO_get_ItemsCount(ImGuiMultiSelectIO* self) { return self->ItemsCount; }
DCGLUE_EXPORT void dcjs_ImGuiMultiSelectIO_set_ItemsCount(ImGuiMultiSelectIO* self, int v) { self->ItemsCount = v; }
DCGLUE_EXPORT ImGuiSelectionRequestType dcjs_ImGuiSelectionRequest_get_Type(ImGuiSelectionRequest* self) { return self->Type; }
DCGLUE_EXPORT void dcjs_ImGuiSelectionRequest_set_Type(ImGuiSelectionRequest* self, ImGuiSelectionRequestType v) { self->Type = v; }
DCGLUE_EXPORT bool dcjs_ImGuiSelectionRequest_get_Selected(ImGuiSelectionRequest* self) { return self->Selected; }
DCGLUE_EXPORT void dcjs_ImGuiSelectionRequest_set_Selected(ImGuiSelectionRequest* self, bool v) { self->Selected = v; }
DCGLUE_EXPORT ImS8 dcjs_ImGuiSelectionRequest_get_RangeDirection(ImGuiSelectionRequest* self) { return self->RangeDirection; }
DCGLUE_EXPORT void dcjs_ImGuiSelectionRequest_set_RangeDirection(ImGuiSelectionRequest* self, ImS8 v) { self->RangeDirection = v; }
DCGLUE_EXPORT ImGuiSelectionUserData dcjs_ImGuiSelectionRequest_get_RangeFirstItem(ImGuiSelectionRequest* self) { return self->RangeFirstItem; }
DCGLUE_EXPORT void dcjs_ImGuiSelectionRequest_set_RangeFirstItem(ImGuiSelectionRequest* self, ImGuiSelectionUserData v) { self->RangeFirstItem = v; }
DCGLUE_EXPORT ImGuiSelectionUserData dcjs_ImGuiSelectionRequest_get_RangeLastItem(ImGuiSelectionRequest* self) { return self->RangeLastItem; }
DCGLUE_EXPORT void dcjs_ImGuiSelectionRequest_set_RangeLastItem(ImGuiSelectionRequest* self, ImGuiSelectionUserData v) { self->RangeLastItem = v; }
DCGLUE_EXPORT int dcjs_ImGuiSelectionBasicStorage_get_Size(ImGuiSelectionBasicStorage* self) { return self->Size; }
DCGLUE_EXPORT void dcjs_ImGuiSelectionBasicStorage_set_Size(ImGuiSelectionBasicStorage* self, int v) { self->Size = v; }
DCGLUE_EXPORT bool dcjs_ImGuiSelectionBasicStorage_get_PreserveOrder(ImGuiSelectionBasicStorage* self) { return self->PreserveOrder; }
DCGLUE_EXPORT void dcjs_ImGuiSelectionBasicStorage_set_PreserveOrder(ImGuiSelectionBasicStorage* self, bool v) { self->PreserveOrder = v; }
DCGLUE_EXPORT void* dcjs_ImGuiSelectionBasicStorage_get_UserData(ImGuiSelectionBasicStorage* self) { return self->UserData; }
DCGLUE_EXPORT void dcjs_ImGuiSelectionBasicStorage_set_UserData(ImGuiSelectionBasicStorage* self, void* v) { self->UserData = v; }
DCGLUE_EXPORT void* dcjs_ImGuiSelectionBasicStorage_getp_AdapterIndexToStorageId(ImGuiSelectionBasicStorage* self) { return (void*)self->AdapterIndexToStorageId; }
DCGLUE_EXPORT int dcjs_ImGuiSelectionBasicStorage_get__SelectionOrder(ImGuiSelectionBasicStorage* self) { return self->_SelectionOrder; }
DCGLUE_EXPORT void dcjs_ImGuiSelectionBasicStorage_set__SelectionOrder(ImGuiSelectionBasicStorage* self, int v) { self->_SelectionOrder = v; }
DCGLUE_EXPORT ImGuiStorage* dcjs_ImGuiSelectionBasicStorage_ptr__Storage(ImGuiSelectionBasicStorage* self) { return &self->_Storage; }
DCGLUE_EXPORT void* dcjs_ImGuiSelectionExternalStorage_get_UserData(ImGuiSelectionExternalStorage* self) { return self->UserData; }
DCGLUE_EXPORT void dcjs_ImGuiSelectionExternalStorage_set_UserData(ImGuiSelectionExternalStorage* self, void* v) { self->UserData = v; }
DCGLUE_EXPORT void* dcjs_ImGuiSelectionExternalStorage_getp_AdapterSetItemSelected(ImGuiSelectionExternalStorage* self) { return (void*)self->AdapterSetItemSelected; }
DCGLUE_EXPORT void dcjs_ImDrawCmd_get_ClipRect(ImDrawCmd* self, ImVec4* _out) { *_out = self->ClipRect; }
DCGLUE_EXPORT void dcjs_ImDrawCmd_set_ClipRect(ImDrawCmd* self, float v_x, float v_y, float v_z, float v_w) { self->ClipRect.x = v_x; self->ClipRect.y = v_y; self->ClipRect.z = v_z; self->ClipRect.w = v_w; }
DCGLUE_EXPORT void dcjs_ImDrawCmd_get_TexRef(ImDrawCmd* self, ImTextureRef* _out) { *_out = self->TexRef; }
DCGLUE_EXPORT void dcjs_ImDrawCmd_set_TexRef(ImDrawCmd* self, ImTextureData* v__TexData, ImTextureID v__TexID) { self->TexRef._TexData = v__TexData; self->TexRef._TexID = v__TexID; }
DCGLUE_EXPORT unsigned int dcjs_ImDrawCmd_get_VtxOffset(ImDrawCmd* self) { return self->VtxOffset; }
DCGLUE_EXPORT void dcjs_ImDrawCmd_set_VtxOffset(ImDrawCmd* self, unsigned int v) { self->VtxOffset = v; }
DCGLUE_EXPORT unsigned int dcjs_ImDrawCmd_get_IdxOffset(ImDrawCmd* self) { return self->IdxOffset; }
DCGLUE_EXPORT void dcjs_ImDrawCmd_set_IdxOffset(ImDrawCmd* self, unsigned int v) { self->IdxOffset = v; }
DCGLUE_EXPORT unsigned int dcjs_ImDrawCmd_get_ElemCount(ImDrawCmd* self) { return self->ElemCount; }
DCGLUE_EXPORT void dcjs_ImDrawCmd_set_ElemCount(ImDrawCmd* self, unsigned int v) { self->ElemCount = v; }
DCGLUE_EXPORT ImDrawCallback dcjs_ImDrawCmd_get_UserCallback(ImDrawCmd* self) { return self->UserCallback; }
DCGLUE_EXPORT void dcjs_ImDrawCmd_set_UserCallback(ImDrawCmd* self, ImDrawCallback v) { self->UserCallback = v; }
DCGLUE_EXPORT void* dcjs_ImDrawCmd_get_UserCallbackData(ImDrawCmd* self) { return self->UserCallbackData; }
DCGLUE_EXPORT void dcjs_ImDrawCmd_set_UserCallbackData(ImDrawCmd* self, void* v) { self->UserCallbackData = v; }
DCGLUE_EXPORT int dcjs_ImDrawCmd_get_UserCallbackDataSize(ImDrawCmd* self) { return self->UserCallbackDataSize; }
DCGLUE_EXPORT void dcjs_ImDrawCmd_set_UserCallbackDataSize(ImDrawCmd* self, int v) { self->UserCallbackDataSize = v; }
DCGLUE_EXPORT int dcjs_ImDrawCmd_get_UserCallbackDataOffset(ImDrawCmd* self) { return self->UserCallbackDataOffset; }
DCGLUE_EXPORT void dcjs_ImDrawCmd_set_UserCallbackDataOffset(ImDrawCmd* self, int v) { self->UserCallbackDataOffset = v; }
DCGLUE_EXPORT void dcjs_ImDrawVert_get_pos(ImDrawVert* self, ImVec2* _out) { *_out = self->pos; }
DCGLUE_EXPORT void dcjs_ImDrawVert_set_pos(ImDrawVert* self, float v_x, float v_y) { self->pos.x = v_x; self->pos.y = v_y; }
DCGLUE_EXPORT void dcjs_ImDrawVert_get_uv(ImDrawVert* self, ImVec2* _out) { *_out = self->uv; }
DCGLUE_EXPORT void dcjs_ImDrawVert_set_uv(ImDrawVert* self, float v_x, float v_y) { self->uv.x = v_x; self->uv.y = v_y; }
DCGLUE_EXPORT ImU32 dcjs_ImDrawVert_get_col(ImDrawVert* self) { return self->col; }
DCGLUE_EXPORT void dcjs_ImDrawVert_set_col(ImDrawVert* self, ImU32 v) { self->col = v; }
DCGLUE_EXPORT int dcjs_ImDrawListSplitter_get__Current(ImDrawListSplitter* self) { return self->_Current; }
DCGLUE_EXPORT void dcjs_ImDrawListSplitter_set__Current(ImDrawListSplitter* self, int v) { self->_Current = v; }
DCGLUE_EXPORT int dcjs_ImDrawListSplitter_get__Count(ImDrawListSplitter* self) { return self->_Count; }
DCGLUE_EXPORT void dcjs_ImDrawListSplitter_set__Count(ImDrawListSplitter* self, int v) { self->_Count = v; }
DCGLUE_EXPORT ImVector_ImDrawChannel* dcjs_ImDrawListSplitter_ptr__Channels(ImDrawListSplitter* self) { return &self->_Channels; }
DCGLUE_EXPORT ImVector_ImDrawCmd* dcjs_ImDrawList_ptr_CmdBuffer(ImDrawList* self) { return &self->CmdBuffer; }
DCGLUE_EXPORT ImVector_ImDrawIdx* dcjs_ImDrawList_ptr_IdxBuffer(ImDrawList* self) { return &self->IdxBuffer; }
DCGLUE_EXPORT ImVector_ImDrawVert* dcjs_ImDrawList_ptr_VtxBuffer(ImDrawList* self) { return &self->VtxBuffer; }
DCGLUE_EXPORT ImDrawListFlags dcjs_ImDrawList_get_Flags(ImDrawList* self) { return self->Flags; }
DCGLUE_EXPORT void dcjs_ImDrawList_set_Flags(ImDrawList* self, ImDrawListFlags v) { self->Flags = v; }
DCGLUE_EXPORT unsigned int dcjs_ImDrawList_get__VtxCurrentIdx(ImDrawList* self) { return self->_VtxCurrentIdx; }
DCGLUE_EXPORT void dcjs_ImDrawList_set__VtxCurrentIdx(ImDrawList* self, unsigned int v) { self->_VtxCurrentIdx = v; }
DCGLUE_EXPORT ImDrawListSharedData* dcjs_ImDrawList_get__Data(ImDrawList* self) { return self->_Data; }
DCGLUE_EXPORT void dcjs_ImDrawList_set__Data(ImDrawList* self, ImDrawListSharedData* v) { self->_Data = v; }
DCGLUE_EXPORT ImDrawVert* dcjs_ImDrawList_get__VtxWritePtr(ImDrawList* self) { return self->_VtxWritePtr; }
DCGLUE_EXPORT void dcjs_ImDrawList_set__VtxWritePtr(ImDrawList* self, ImDrawVert* v) { self->_VtxWritePtr = v; }
DCGLUE_EXPORT ImDrawIdx* dcjs_ImDrawList_get__IdxWritePtr(ImDrawList* self) { return self->_IdxWritePtr; }
DCGLUE_EXPORT void dcjs_ImDrawList_set__IdxWritePtr(ImDrawList* self, ImDrawIdx* v) { self->_IdxWritePtr = v; }
DCGLUE_EXPORT ImVector_ImVec2* dcjs_ImDrawList_ptr__Path(ImDrawList* self) { return &self->_Path; }
DCGLUE_EXPORT ImDrawCmdHeader dcjs_ImDrawList_get__CmdHeader(ImDrawList* self) { return self->_CmdHeader; }
DCGLUE_EXPORT void dcjs_ImDrawList_set__CmdHeader(ImDrawList* self, ImDrawCmdHeader v) { self->_CmdHeader = v; }
DCGLUE_EXPORT ImDrawListSplitter* dcjs_ImDrawList_ptr__Splitter(ImDrawList* self) { return &self->_Splitter; }
DCGLUE_EXPORT ImVector_ImVec4* dcjs_ImDrawList_ptr__ClipRectStack(ImDrawList* self) { return &self->_ClipRectStack; }
DCGLUE_EXPORT ImVector_ImTextureRef* dcjs_ImDrawList_ptr__TextureStack(ImDrawList* self) { return &self->_TextureStack; }
DCGLUE_EXPORT ImVector_ImU8* dcjs_ImDrawList_ptr__CallbacksDataBuf(ImDrawList* self) { return &self->_CallbacksDataBuf; }
DCGLUE_EXPORT float dcjs_ImDrawList_get__FringeScale(ImDrawList* self) { return self->_FringeScale; }
DCGLUE_EXPORT void dcjs_ImDrawList_set__FringeScale(ImDrawList* self, float v) { self->_FringeScale = v; }
DCGLUE_EXPORT const char* dcjs_ImDrawList_get__OwnerName(ImDrawList* self) { return self->_OwnerName; }
DCGLUE_EXPORT void dcjs_ImDrawList_set__OwnerName(ImDrawList* self, const char* v) { self->_OwnerName = v; }
DCGLUE_EXPORT bool dcjs_ImDrawData_get_Valid(ImDrawData* self) { return self->Valid; }
DCGLUE_EXPORT void dcjs_ImDrawData_set_Valid(ImDrawData* self, bool v) { self->Valid = v; }
DCGLUE_EXPORT int dcjs_ImDrawData_get_CmdListsCount(ImDrawData* self) { return self->CmdListsCount; }
DCGLUE_EXPORT void dcjs_ImDrawData_set_CmdListsCount(ImDrawData* self, int v) { self->CmdListsCount = v; }
DCGLUE_EXPORT int dcjs_ImDrawData_get_TotalIdxCount(ImDrawData* self) { return self->TotalIdxCount; }
DCGLUE_EXPORT void dcjs_ImDrawData_set_TotalIdxCount(ImDrawData* self, int v) { self->TotalIdxCount = v; }
DCGLUE_EXPORT int dcjs_ImDrawData_get_TotalVtxCount(ImDrawData* self) { return self->TotalVtxCount; }
DCGLUE_EXPORT void dcjs_ImDrawData_set_TotalVtxCount(ImDrawData* self, int v) { self->TotalVtxCount = v; }
DCGLUE_EXPORT ImVector_ImDrawListPtr* dcjs_ImDrawData_ptr_CmdLists(ImDrawData* self) { return &self->CmdLists; }
DCGLUE_EXPORT void dcjs_ImDrawData_get_DisplayPos(ImDrawData* self, ImVec2* _out) { *_out = self->DisplayPos; }
DCGLUE_EXPORT void dcjs_ImDrawData_set_DisplayPos(ImDrawData* self, float v_x, float v_y) { self->DisplayPos.x = v_x; self->DisplayPos.y = v_y; }
DCGLUE_EXPORT void dcjs_ImDrawData_get_DisplaySize(ImDrawData* self, ImVec2* _out) { *_out = self->DisplaySize; }
DCGLUE_EXPORT void dcjs_ImDrawData_set_DisplaySize(ImDrawData* self, float v_x, float v_y) { self->DisplaySize.x = v_x; self->DisplaySize.y = v_y; }
DCGLUE_EXPORT void dcjs_ImDrawData_get_FramebufferScale(ImDrawData* self, ImVec2* _out) { *_out = self->FramebufferScale; }
DCGLUE_EXPORT void dcjs_ImDrawData_set_FramebufferScale(ImDrawData* self, float v_x, float v_y) { self->FramebufferScale.x = v_x; self->FramebufferScale.y = v_y; }
DCGLUE_EXPORT ImGuiViewport* dcjs_ImDrawData_get_OwnerViewport(ImDrawData* self) { return self->OwnerViewport; }
DCGLUE_EXPORT void dcjs_ImDrawData_set_OwnerViewport(ImDrawData* self, ImGuiViewport* v) { self->OwnerViewport = v; }
DCGLUE_EXPORT ImVector_ImTextureDataPtr* dcjs_ImDrawData_get_Textures(ImDrawData* self) { return self->Textures; }
DCGLUE_EXPORT void dcjs_ImDrawData_set_Textures(ImDrawData* self, ImVector_ImTextureDataPtr* v) { self->Textures = v; }
DCGLUE_EXPORT unsigned short dcjs_ImTextureRect_get_x(ImTextureRect* self) { return self->x; }
DCGLUE_EXPORT void dcjs_ImTextureRect_set_x(ImTextureRect* self, unsigned short v) { self->x = v; }
DCGLUE_EXPORT unsigned short dcjs_ImTextureRect_get_y(ImTextureRect* self) { return self->y; }
DCGLUE_EXPORT void dcjs_ImTextureRect_set_y(ImTextureRect* self, unsigned short v) { self->y = v; }
DCGLUE_EXPORT unsigned short dcjs_ImTextureRect_get_w(ImTextureRect* self) { return self->w; }
DCGLUE_EXPORT void dcjs_ImTextureRect_set_w(ImTextureRect* self, unsigned short v) { self->w = v; }
DCGLUE_EXPORT unsigned short dcjs_ImTextureRect_get_h(ImTextureRect* self) { return self->h; }
DCGLUE_EXPORT void dcjs_ImTextureRect_set_h(ImTextureRect* self, unsigned short v) { self->h = v; }
DCGLUE_EXPORT int dcjs_ImTextureData_get_UniqueID(ImTextureData* self) { return self->UniqueID; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_UniqueID(ImTextureData* self, int v) { self->UniqueID = v; }
DCGLUE_EXPORT ImTextureStatus dcjs_ImTextureData_get_Status(ImTextureData* self) { return self->Status; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_Status(ImTextureData* self, ImTextureStatus v) { self->Status = v; }
DCGLUE_EXPORT void* dcjs_ImTextureData_get_BackendUserData(ImTextureData* self) { return self->BackendUserData; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_BackendUserData(ImTextureData* self, void* v) { self->BackendUserData = v; }
DCGLUE_EXPORT ImTextureID dcjs_ImTextureData_get_TexID(ImTextureData* self) { return self->TexID; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_TexID(ImTextureData* self, ImTextureID v) { self->TexID = v; }
DCGLUE_EXPORT ImTextureFormat dcjs_ImTextureData_get_Format(ImTextureData* self) { return self->Format; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_Format(ImTextureData* self, ImTextureFormat v) { self->Format = v; }
DCGLUE_EXPORT int dcjs_ImTextureData_get_Width(ImTextureData* self) { return self->Width; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_Width(ImTextureData* self, int v) { self->Width = v; }
DCGLUE_EXPORT int dcjs_ImTextureData_get_Height(ImTextureData* self) { return self->Height; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_Height(ImTextureData* self, int v) { self->Height = v; }
DCGLUE_EXPORT int dcjs_ImTextureData_get_BytesPerPixel(ImTextureData* self) { return self->BytesPerPixel; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_BytesPerPixel(ImTextureData* self, int v) { self->BytesPerPixel = v; }
DCGLUE_EXPORT unsigned char* dcjs_ImTextureData_get_Pixels(ImTextureData* self) { return self->Pixels; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_Pixels(ImTextureData* self, unsigned char* v) { self->Pixels = v; }
DCGLUE_EXPORT ImTextureRect* dcjs_ImTextureData_ptr_UsedRect(ImTextureData* self) { return &self->UsedRect; }
DCGLUE_EXPORT ImTextureRect* dcjs_ImTextureData_ptr_UpdateRect(ImTextureData* self) { return &self->UpdateRect; }
DCGLUE_EXPORT ImVector_ImTextureRect* dcjs_ImTextureData_ptr_Updates(ImTextureData* self) { return &self->Updates; }
DCGLUE_EXPORT int dcjs_ImTextureData_get_UnusedFrames(ImTextureData* self) { return self->UnusedFrames; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_UnusedFrames(ImTextureData* self, int v) { self->UnusedFrames = v; }
DCGLUE_EXPORT unsigned short dcjs_ImTextureData_get_RefCount(ImTextureData* self) { return self->RefCount; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_RefCount(ImTextureData* self, unsigned short v) { self->RefCount = v; }
DCGLUE_EXPORT bool dcjs_ImTextureData_get_UseColors(ImTextureData* self) { return self->UseColors; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_UseColors(ImTextureData* self, bool v) { self->UseColors = v; }
DCGLUE_EXPORT bool dcjs_ImTextureData_get_WantDestroyNextFrame(ImTextureData* self) { return self->WantDestroyNextFrame; }
DCGLUE_EXPORT void dcjs_ImTextureData_set_WantDestroyNextFrame(ImTextureData* self, bool v) { self->WantDestroyNextFrame = v; }
DCGLUE_EXPORT void* dcjs_ImFontConfig_get_FontData(ImFontConfig* self) { return self->FontData; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_FontData(ImFontConfig* self, void* v) { self->FontData = v; }
DCGLUE_EXPORT int dcjs_ImFontConfig_get_FontDataSize(ImFontConfig* self) { return self->FontDataSize; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_FontDataSize(ImFontConfig* self, int v) { self->FontDataSize = v; }
DCGLUE_EXPORT bool dcjs_ImFontConfig_get_FontDataOwnedByAtlas(ImFontConfig* self) { return self->FontDataOwnedByAtlas; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_FontDataOwnedByAtlas(ImFontConfig* self, bool v) { self->FontDataOwnedByAtlas = v; }
DCGLUE_EXPORT bool dcjs_ImFontConfig_get_MergeMode(ImFontConfig* self) { return self->MergeMode; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_MergeMode(ImFontConfig* self, bool v) { self->MergeMode = v; }
DCGLUE_EXPORT bool dcjs_ImFontConfig_get_PixelSnapH(ImFontConfig* self) { return self->PixelSnapH; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_PixelSnapH(ImFontConfig* self, bool v) { self->PixelSnapH = v; }
DCGLUE_EXPORT ImS8 dcjs_ImFontConfig_get_OversampleH(ImFontConfig* self) { return self->OversampleH; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_OversampleH(ImFontConfig* self, ImS8 v) { self->OversampleH = v; }
DCGLUE_EXPORT ImS8 dcjs_ImFontConfig_get_OversampleV(ImFontConfig* self) { return self->OversampleV; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_OversampleV(ImFontConfig* self, ImS8 v) { self->OversampleV = v; }
DCGLUE_EXPORT ImWchar dcjs_ImFontConfig_get_EllipsisChar(ImFontConfig* self) { return self->EllipsisChar; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_EllipsisChar(ImFontConfig* self, ImWchar v) { self->EllipsisChar = v; }
DCGLUE_EXPORT float dcjs_ImFontConfig_get_SizePixels(ImFontConfig* self) { return self->SizePixels; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_SizePixels(ImFontConfig* self, float v) { self->SizePixels = v; }
DCGLUE_EXPORT const ImWchar* dcjs_ImFontConfig_get_GlyphRanges(ImFontConfig* self) { return self->GlyphRanges; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_GlyphRanges(ImFontConfig* self, const ImWchar* v) { self->GlyphRanges = v; }
DCGLUE_EXPORT const ImWchar* dcjs_ImFontConfig_get_GlyphExcludeRanges(ImFontConfig* self) { return self->GlyphExcludeRanges; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_GlyphExcludeRanges(ImFontConfig* self, const ImWchar* v) { self->GlyphExcludeRanges = v; }
DCGLUE_EXPORT void dcjs_ImFontConfig_get_GlyphOffset(ImFontConfig* self, ImVec2* _out) { *_out = self->GlyphOffset; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_GlyphOffset(ImFontConfig* self, float v_x, float v_y) { self->GlyphOffset.x = v_x; self->GlyphOffset.y = v_y; }
DCGLUE_EXPORT float dcjs_ImFontConfig_get_GlyphMinAdvanceX(ImFontConfig* self) { return self->GlyphMinAdvanceX; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_GlyphMinAdvanceX(ImFontConfig* self, float v) { self->GlyphMinAdvanceX = v; }
DCGLUE_EXPORT float dcjs_ImFontConfig_get_GlyphMaxAdvanceX(ImFontConfig* self) { return self->GlyphMaxAdvanceX; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_GlyphMaxAdvanceX(ImFontConfig* self, float v) { self->GlyphMaxAdvanceX = v; }
DCGLUE_EXPORT float dcjs_ImFontConfig_get_GlyphExtraAdvanceX(ImFontConfig* self) { return self->GlyphExtraAdvanceX; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_GlyphExtraAdvanceX(ImFontConfig* self, float v) { self->GlyphExtraAdvanceX = v; }
DCGLUE_EXPORT ImU32 dcjs_ImFontConfig_get_FontNo(ImFontConfig* self) { return self->FontNo; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_FontNo(ImFontConfig* self, ImU32 v) { self->FontNo = v; }
DCGLUE_EXPORT unsigned int dcjs_ImFontConfig_get_FontLoaderFlags(ImFontConfig* self) { return self->FontLoaderFlags; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_FontLoaderFlags(ImFontConfig* self, unsigned int v) { self->FontLoaderFlags = v; }
DCGLUE_EXPORT float dcjs_ImFontConfig_get_RasterizerMultiply(ImFontConfig* self) { return self->RasterizerMultiply; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_RasterizerMultiply(ImFontConfig* self, float v) { self->RasterizerMultiply = v; }
DCGLUE_EXPORT float dcjs_ImFontConfig_get_RasterizerDensity(ImFontConfig* self) { return self->RasterizerDensity; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_RasterizerDensity(ImFontConfig* self, float v) { self->RasterizerDensity = v; }
DCGLUE_EXPORT float dcjs_ImFontConfig_get_ExtraSizeScale(ImFontConfig* self) { return self->ExtraSizeScale; }
DCGLUE_EXPORT void dcjs_ImFontConfig_set_ExtraSizeScale(ImFontConfig* self, float v) { self->ExtraSizeScale = v; }
DCGLUE_EXPORT unsigned int dcjs_ImFontGlyph_get_Colored(ImFontGlyph* self) { return self->Colored; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_Colored(ImFontGlyph* self, unsigned int v) { self->Colored = v; }
DCGLUE_EXPORT unsigned int dcjs_ImFontGlyph_get_Visible(ImFontGlyph* self) { return self->Visible; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_Visible(ImFontGlyph* self, unsigned int v) { self->Visible = v; }
DCGLUE_EXPORT unsigned int dcjs_ImFontGlyph_get_SourceIdx(ImFontGlyph* self) { return self->SourceIdx; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_SourceIdx(ImFontGlyph* self, unsigned int v) { self->SourceIdx = v; }
DCGLUE_EXPORT unsigned int dcjs_ImFontGlyph_get_Codepoint(ImFontGlyph* self) { return self->Codepoint; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_Codepoint(ImFontGlyph* self, unsigned int v) { self->Codepoint = v; }
DCGLUE_EXPORT float dcjs_ImFontGlyph_get_AdvanceX(ImFontGlyph* self) { return self->AdvanceX; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_AdvanceX(ImFontGlyph* self, float v) { self->AdvanceX = v; }
DCGLUE_EXPORT float dcjs_ImFontGlyph_get_X0(ImFontGlyph* self) { return self->X0; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_X0(ImFontGlyph* self, float v) { self->X0 = v; }
DCGLUE_EXPORT float dcjs_ImFontGlyph_get_Y0(ImFontGlyph* self) { return self->Y0; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_Y0(ImFontGlyph* self, float v) { self->Y0 = v; }
DCGLUE_EXPORT float dcjs_ImFontGlyph_get_X1(ImFontGlyph* self) { return self->X1; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_X1(ImFontGlyph* self, float v) { self->X1 = v; }
DCGLUE_EXPORT float dcjs_ImFontGlyph_get_Y1(ImFontGlyph* self) { return self->Y1; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_Y1(ImFontGlyph* self, float v) { self->Y1 = v; }
DCGLUE_EXPORT float dcjs_ImFontGlyph_get_U0(ImFontGlyph* self) { return self->U0; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_U0(ImFontGlyph* self, float v) { self->U0 = v; }
DCGLUE_EXPORT float dcjs_ImFontGlyph_get_V0(ImFontGlyph* self) { return self->V0; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_V0(ImFontGlyph* self, float v) { self->V0 = v; }
DCGLUE_EXPORT float dcjs_ImFontGlyph_get_U1(ImFontGlyph* self) { return self->U1; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_U1(ImFontGlyph* self, float v) { self->U1 = v; }
DCGLUE_EXPORT float dcjs_ImFontGlyph_get_V1(ImFontGlyph* self) { return self->V1; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_V1(ImFontGlyph* self, float v) { self->V1 = v; }
DCGLUE_EXPORT int dcjs_ImFontGlyph_get_PackId(ImFontGlyph* self) { return self->PackId; }
DCGLUE_EXPORT void dcjs_ImFontGlyph_set_PackId(ImFontGlyph* self, int v) { self->PackId = v; }
DCGLUE_EXPORT ImVector_ImU32* dcjs_ImFontGlyphRangesBuilder_ptr_UsedChars(ImFontGlyphRangesBuilder* self) { return &self->UsedChars; }
DCGLUE_EXPORT unsigned short dcjs_ImFontAtlasRect_get_x(ImFontAtlasRect* self) { return self->x; }
DCGLUE_EXPORT void dcjs_ImFontAtlasRect_set_x(ImFontAtlasRect* self, unsigned short v) { self->x = v; }
DCGLUE_EXPORT unsigned short dcjs_ImFontAtlasRect_get_y(ImFontAtlasRect* self) { return self->y; }
DCGLUE_EXPORT void dcjs_ImFontAtlasRect_set_y(ImFontAtlasRect* self, unsigned short v) { self->y = v; }
DCGLUE_EXPORT unsigned short dcjs_ImFontAtlasRect_get_w(ImFontAtlasRect* self) { return self->w; }
DCGLUE_EXPORT void dcjs_ImFontAtlasRect_set_w(ImFontAtlasRect* self, unsigned short v) { self->w = v; }
DCGLUE_EXPORT unsigned short dcjs_ImFontAtlasRect_get_h(ImFontAtlasRect* self) { return self->h; }
DCGLUE_EXPORT void dcjs_ImFontAtlasRect_set_h(ImFontAtlasRect* self, unsigned short v) { self->h = v; }
DCGLUE_EXPORT void dcjs_ImFontAtlasRect_get_uv0(ImFontAtlasRect* self, ImVec2* _out) { *_out = self->uv0; }
DCGLUE_EXPORT void dcjs_ImFontAtlasRect_set_uv0(ImFontAtlasRect* self, float v_x, float v_y) { self->uv0.x = v_x; self->uv0.y = v_y; }
DCGLUE_EXPORT void dcjs_ImFontAtlasRect_get_uv1(ImFontAtlasRect* self, ImVec2* _out) { *_out = self->uv1; }
DCGLUE_EXPORT void dcjs_ImFontAtlasRect_set_uv1(ImFontAtlasRect* self, float v_x, float v_y) { self->uv1.x = v_x; self->uv1.y = v_y; }
DCGLUE_EXPORT ImFontAtlasFlags dcjs_ImFontAtlas_get_Flags(ImFontAtlas* self) { return self->Flags; }
DCGLUE_EXPORT void dcjs_ImFontAtlas_set_Flags(ImFontAtlas* self, ImFontAtlasFlags v) { self->Flags = v; }
DCGLUE_EXPORT ImTextureFormat dcjs_ImFontAtlas_get_TexDesiredFormat(ImFontAtlas* self) { return self->TexDesiredFormat; }
DCGLUE_EXPORT void dcjs_ImFontAtlas_set_TexDesiredFormat(ImFontAtlas* self, ImTextureFormat v) { self->TexDesiredFormat = v; }
DCGLUE_EXPORT int dcjs_ImFontAtlas_get_TexGlyphPadding(ImFontAtlas* self) { return self->TexGlyphPadding; }
DCGLUE_EXPORT void dcjs_ImFontAtlas_set_TexGlyphPadding(ImFontAtlas* self, int v) { self->TexGlyphPadding = v; }
DCGLUE_EXPORT int dcjs_ImFontAtlas_get_TexMinWidth(ImFontAtlas* self) { return self->TexMinWidth; }
DCGLUE_EXPORT void dcjs_ImFontAtlas_set_TexMinWidth(ImFontAtlas* self, int v) { self->TexMinWidth = v; }
DCGLUE_EXPORT int dcjs_ImFontAtlas_get_TexMinHeight(ImFontAtlas* self) { return self->TexMinHeight; }
DCGLUE_EXPORT void dcjs_ImFontAtlas_set_TexMinHeight(ImFontAtlas* self, int v) { self->TexMinHeight = v; }
DCGLUE_EXPORT int dcjs_ImFontAtlas_get_TexMaxWidth(ImFontAtlas* self) { return self->TexMaxWidth; }
DCGLUE_EXPORT void dcjs_ImFontAtlas_set_TexMaxWidth(ImFontAtlas* self, int v) { self->TexMaxWidth = v; }
DCGLUE_EXPORT int dcjs_ImFontAtlas_get_TexMaxHeight(ImFontAtlas* self) { return self->TexMaxHeight; }
DCGLUE_EXPORT void dcjs_ImFontAtlas_set_TexMaxHeight(ImFontAtlas* self, int v) { self->TexMaxHeight = v; }
DCGLUE_EXPORT void* dcjs_ImFontAtlas_get_UserData(ImFontAtlas* self) { return self->UserData; }
DCGLUE_EXPORT void dcjs_ImFontAtlas_set_UserData(ImFontAtlas* self, void* v) { self->UserData = v; }
DCGLUE_EXPORT void dcjs_ImFontAtlas_get_TexRef(ImFontAtlas* self, ImTextureRef* _out) { *_out = self->TexRef; }
DCGLUE_EXPORT void dcjs_ImFontAtlas_set_TexRef(ImFontAtlas* self, ImTextureData* v__TexData, ImTextureID v__TexID) { self->TexRef._TexData = v__TexData; self->TexRef._TexID = v__TexID; }
DCGLUE_EXPORT ImTextureData* dcjs_ImFontAtlas_get_TexData(ImFontAtlas* self) { return self->TexData; }
DCGLUE_EXPORT void dcjs_ImFontAtlas_set_TexData(ImFontAtlas* self, ImTextureData* v) { self->TexData = v; }
DCGLUE_EXPORT ImGuiID dcjs_ImGuiViewport_get_ID(ImGuiViewport* self) { return self->ID; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_ID(ImGuiViewport* self, ImGuiID v) { self->ID = v; }
DCGLUE_EXPORT ImGuiViewportFlags dcjs_ImGuiViewport_get_Flags(ImGuiViewport* self) { return self->Flags; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_Flags(ImGuiViewport* self, ImGuiViewportFlags v) { self->Flags = v; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_get_Pos(ImGuiViewport* self, ImVec2* _out) { *_out = self->Pos; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_Pos(ImGuiViewport* self, float v_x, float v_y) { self->Pos.x = v_x; self->Pos.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_get_Size(ImGuiViewport* self, ImVec2* _out) { *_out = self->Size; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_Size(ImGuiViewport* self, float v_x, float v_y) { self->Size.x = v_x; self->Size.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_get_FramebufferScale(ImGuiViewport* self, ImVec2* _out) { *_out = self->FramebufferScale; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_FramebufferScale(ImGuiViewport* self, float v_x, float v_y) { self->FramebufferScale.x = v_x; self->FramebufferScale.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_get_WorkPos(ImGuiViewport* self, ImVec2* _out) { *_out = self->WorkPos; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_WorkPos(ImGuiViewport* self, float v_x, float v_y) { self->WorkPos.x = v_x; self->WorkPos.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_get_WorkSize(ImGuiViewport* self, ImVec2* _out) { *_out = self->WorkSize; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_WorkSize(ImGuiViewport* self, float v_x, float v_y) { self->WorkSize.x = v_x; self->WorkSize.y = v_y; }
DCGLUE_EXPORT float dcjs_ImGuiViewport_get_DpiScale(ImGuiViewport* self) { return self->DpiScale; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_DpiScale(ImGuiViewport* self, float v) { self->DpiScale = v; }
DCGLUE_EXPORT ImGuiID dcjs_ImGuiViewport_get_ParentViewportId(ImGuiViewport* self) { return self->ParentViewportId; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_ParentViewportId(ImGuiViewport* self, ImGuiID v) { self->ParentViewportId = v; }
DCGLUE_EXPORT ImGuiViewport* dcjs_ImGuiViewport_get_ParentViewport(ImGuiViewport* self) { return self->ParentViewport; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_ParentViewport(ImGuiViewport* self, ImGuiViewport* v) { self->ParentViewport = v; }
DCGLUE_EXPORT ImDrawData* dcjs_ImGuiViewport_get_DrawData(ImGuiViewport* self) { return self->DrawData; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_DrawData(ImGuiViewport* self, ImDrawData* v) { self->DrawData = v; }
DCGLUE_EXPORT void* dcjs_ImGuiViewport_get_RendererUserData(ImGuiViewport* self) { return self->RendererUserData; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_RendererUserData(ImGuiViewport* self, void* v) { self->RendererUserData = v; }
DCGLUE_EXPORT void* dcjs_ImGuiViewport_get_PlatformUserData(ImGuiViewport* self) { return self->PlatformUserData; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_PlatformUserData(ImGuiViewport* self, void* v) { self->PlatformUserData = v; }
DCGLUE_EXPORT void* dcjs_ImGuiViewport_get_PlatformIconData(ImGuiViewport* self) { return self->PlatformIconData; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_PlatformIconData(ImGuiViewport* self, void* v) { self->PlatformIconData = v; }
DCGLUE_EXPORT void* dcjs_ImGuiViewport_get_PlatformHandle(ImGuiViewport* self) { return self->PlatformHandle; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_PlatformHandle(ImGuiViewport* self, void* v) { self->PlatformHandle = v; }
DCGLUE_EXPORT void* dcjs_ImGuiViewport_get_PlatformHandleRaw(ImGuiViewport* self) { return self->PlatformHandleRaw; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_PlatformHandleRaw(ImGuiViewport* self, void* v) { self->PlatformHandleRaw = v; }
DCGLUE_EXPORT bool dcjs_ImGuiViewport_get_PlatformWindowCreated(ImGuiViewport* self) { return self->PlatformWindowCreated; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_PlatformWindowCreated(ImGuiViewport* self, bool v) { self->PlatformWindowCreated = v; }
DCGLUE_EXPORT bool dcjs_ImGuiViewport_get_PlatformRequestMove(ImGuiViewport* self) { return self->PlatformRequestMove; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_PlatformRequestMove(ImGuiViewport* self, bool v) { self->PlatformRequestMove = v; }
DCGLUE_EXPORT bool dcjs_ImGuiViewport_get_PlatformRequestResize(ImGuiViewport* self) { return self->PlatformRequestResize; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_PlatformRequestResize(ImGuiViewport* self, bool v) { self->PlatformRequestResize = v; }
DCGLUE_EXPORT bool dcjs_ImGuiViewport_get_PlatformRequestClose(ImGuiViewport* self) { return self->PlatformRequestClose; }
DCGLUE_EXPORT void dcjs_ImGuiViewport_set_PlatformRequestClose(ImGuiViewport* self, bool v) { self->PlatformRequestClose = v; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_GetClipboardTextFn(ImGuiPlatformIO* self) { return (void*)self->Platform_GetClipboardTextFn; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_SetClipboardTextFn(ImGuiPlatformIO* self) { return (void*)self->Platform_SetClipboardTextFn; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_get_Platform_ClipboardUserData(ImGuiPlatformIO* self) { return self->Platform_ClipboardUserData; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_set_Platform_ClipboardUserData(ImGuiPlatformIO* self, void* v) { self->Platform_ClipboardUserData = v; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_OpenInShellFn(ImGuiPlatformIO* self) { return (void*)self->Platform_OpenInShellFn; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_get_Platform_OpenInShellUserData(ImGuiPlatformIO* self) { return self->Platform_OpenInShellUserData; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_set_Platform_OpenInShellUserData(ImGuiPlatformIO* self, void* v) { self->Platform_OpenInShellUserData = v; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_SetImeDataFn(ImGuiPlatformIO* self) { return (void*)self->Platform_SetImeDataFn; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_get_Platform_ImeUserData(ImGuiPlatformIO* self) { return self->Platform_ImeUserData; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_set_Platform_ImeUserData(ImGuiPlatformIO* self, void* v) { self->Platform_ImeUserData = v; }
DCGLUE_EXPORT ImWchar dcjs_ImGuiPlatformIO_get_Platform_LocaleDecimalPoint(ImGuiPlatformIO* self) { return self->Platform_LocaleDecimalPoint; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_set_Platform_LocaleDecimalPoint(ImGuiPlatformIO* self, ImWchar v) { self->Platform_LocaleDecimalPoint = v; }
DCGLUE_EXPORT int dcjs_ImGuiPlatformIO_get_Renderer_TextureMaxWidth(ImGuiPlatformIO* self) { return self->Renderer_TextureMaxWidth; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_set_Renderer_TextureMaxWidth(ImGuiPlatformIO* self, int v) { self->Renderer_TextureMaxWidth = v; }
DCGLUE_EXPORT int dcjs_ImGuiPlatformIO_get_Renderer_TextureMaxHeight(ImGuiPlatformIO* self) { return self->Renderer_TextureMaxHeight; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_set_Renderer_TextureMaxHeight(ImGuiPlatformIO* self, int v) { self->Renderer_TextureMaxHeight = v; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_get_Renderer_RenderState(ImGuiPlatformIO* self) { return self->Renderer_RenderState; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_set_Renderer_RenderState(ImGuiPlatformIO* self, void* v) { self->Renderer_RenderState = v; }
DCGLUE_EXPORT ImDrawCallback dcjs_ImGuiPlatformIO_get_DrawCallback_ResetRenderState(ImGuiPlatformIO* self) { return self->DrawCallback_ResetRenderState; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_set_DrawCallback_ResetRenderState(ImGuiPlatformIO* self, ImDrawCallback v) { self->DrawCallback_ResetRenderState = v; }
DCGLUE_EXPORT ImDrawCallback dcjs_ImGuiPlatformIO_get_DrawCallback_SetSamplerLinear(ImGuiPlatformIO* self) { return self->DrawCallback_SetSamplerLinear; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_set_DrawCallback_SetSamplerLinear(ImGuiPlatformIO* self, ImDrawCallback v) { self->DrawCallback_SetSamplerLinear = v; }
DCGLUE_EXPORT ImDrawCallback dcjs_ImGuiPlatformIO_get_DrawCallback_SetSamplerNearest(ImGuiPlatformIO* self) { return self->DrawCallback_SetSamplerNearest; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformIO_set_DrawCallback_SetSamplerNearest(ImGuiPlatformIO* self, ImDrawCallback v) { self->DrawCallback_SetSamplerNearest = v; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_CreateWindow(ImGuiPlatformIO* self) { return (void*)self->Platform_CreateWindow; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_DestroyWindow(ImGuiPlatformIO* self) { return (void*)self->Platform_DestroyWindow; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_ShowWindow(ImGuiPlatformIO* self) { return (void*)self->Platform_ShowWindow; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_SetWindowPos(ImGuiPlatformIO* self) { return (void*)self->Platform_SetWindowPos; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_GetWindowPos(ImGuiPlatformIO* self) { return (void*)self->Platform_GetWindowPos; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_SetWindowSize(ImGuiPlatformIO* self) { return (void*)self->Platform_SetWindowSize; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_GetWindowSize(ImGuiPlatformIO* self) { return (void*)self->Platform_GetWindowSize; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_GetWindowFramebufferScale(ImGuiPlatformIO* self) { return (void*)self->Platform_GetWindowFramebufferScale; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_SetWindowFocus(ImGuiPlatformIO* self) { return (void*)self->Platform_SetWindowFocus; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_GetWindowFocus(ImGuiPlatformIO* self) { return (void*)self->Platform_GetWindowFocus; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_GetWindowMinimized(ImGuiPlatformIO* self) { return (void*)self->Platform_GetWindowMinimized; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_SetWindowTitle(ImGuiPlatformIO* self) { return (void*)self->Platform_SetWindowTitle; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_SetWindowAlpha(ImGuiPlatformIO* self) { return (void*)self->Platform_SetWindowAlpha; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_UpdateWindow(ImGuiPlatformIO* self) { return (void*)self->Platform_UpdateWindow; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_RenderWindow(ImGuiPlatformIO* self) { return (void*)self->Platform_RenderWindow; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_SwapBuffers(ImGuiPlatformIO* self) { return (void*)self->Platform_SwapBuffers; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_GetWindowDpiScale(ImGuiPlatformIO* self) { return (void*)self->Platform_GetWindowDpiScale; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_OnChangedViewport(ImGuiPlatformIO* self) { return (void*)self->Platform_OnChangedViewport; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_GetWindowWorkAreaInsets(ImGuiPlatformIO* self) { return (void*)self->Platform_GetWindowWorkAreaInsets; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Platform_CreateVkSurface(ImGuiPlatformIO* self) { return (void*)self->Platform_CreateVkSurface; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Renderer_CreateWindow(ImGuiPlatformIO* self) { return (void*)self->Renderer_CreateWindow; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Renderer_DestroyWindow(ImGuiPlatformIO* self) { return (void*)self->Renderer_DestroyWindow; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Renderer_SetWindowSize(ImGuiPlatformIO* self) { return (void*)self->Renderer_SetWindowSize; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Renderer_RenderWindow(ImGuiPlatformIO* self) { return (void*)self->Renderer_RenderWindow; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformIO_getp_Renderer_SwapBuffers(ImGuiPlatformIO* self) { return (void*)self->Renderer_SwapBuffers; }
DCGLUE_EXPORT ImVector_ImGuiPlatformMonitor* dcjs_ImGuiPlatformIO_ptr_Monitors(ImGuiPlatformIO* self) { return &self->Monitors; }
DCGLUE_EXPORT ImVector_ImTextureDataPtr* dcjs_ImGuiPlatformIO_ptr_Textures(ImGuiPlatformIO* self) { return &self->Textures; }
DCGLUE_EXPORT ImVector_ImGuiViewportPtr* dcjs_ImGuiPlatformIO_ptr_Viewports(ImGuiPlatformIO* self) { return &self->Viewports; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformMonitor_get_MainPos(ImGuiPlatformMonitor* self, ImVec2* _out) { *_out = self->MainPos; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformMonitor_set_MainPos(ImGuiPlatformMonitor* self, float v_x, float v_y) { self->MainPos.x = v_x; self->MainPos.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformMonitor_get_MainSize(ImGuiPlatformMonitor* self, ImVec2* _out) { *_out = self->MainSize; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformMonitor_set_MainSize(ImGuiPlatformMonitor* self, float v_x, float v_y) { self->MainSize.x = v_x; self->MainSize.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformMonitor_get_WorkPos(ImGuiPlatformMonitor* self, ImVec2* _out) { *_out = self->WorkPos; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformMonitor_set_WorkPos(ImGuiPlatformMonitor* self, float v_x, float v_y) { self->WorkPos.x = v_x; self->WorkPos.y = v_y; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformMonitor_get_WorkSize(ImGuiPlatformMonitor* self, ImVec2* _out) { *_out = self->WorkSize; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformMonitor_set_WorkSize(ImGuiPlatformMonitor* self, float v_x, float v_y) { self->WorkSize.x = v_x; self->WorkSize.y = v_y; }
DCGLUE_EXPORT float dcjs_ImGuiPlatformMonitor_get_DpiScale(ImGuiPlatformMonitor* self) { return self->DpiScale; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformMonitor_set_DpiScale(ImGuiPlatformMonitor* self, float v) { self->DpiScale = v; }
DCGLUE_EXPORT void* dcjs_ImGuiPlatformMonitor_get_PlatformHandle(ImGuiPlatformMonitor* self) { return self->PlatformHandle; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformMonitor_set_PlatformHandle(ImGuiPlatformMonitor* self, void* v) { self->PlatformHandle = v; }
DCGLUE_EXPORT bool dcjs_ImGuiPlatformImeData_get_WantVisible(ImGuiPlatformImeData* self) { return self->WantVisible; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformImeData_set_WantVisible(ImGuiPlatformImeData* self, bool v) { self->WantVisible = v; }
DCGLUE_EXPORT bool dcjs_ImGuiPlatformImeData_get_WantTextInput(ImGuiPlatformImeData* self) { return self->WantTextInput; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformImeData_set_WantTextInput(ImGuiPlatformImeData* self, bool v) { self->WantTextInput = v; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformImeData_get_InputPos(ImGuiPlatformImeData* self, ImVec2* _out) { *_out = self->InputPos; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformImeData_set_InputPos(ImGuiPlatformImeData* self, float v_x, float v_y) { self->InputPos.x = v_x; self->InputPos.y = v_y; }
DCGLUE_EXPORT float dcjs_ImGuiPlatformImeData_get_InputLineHeight(ImGuiPlatformImeData* self) { return self->InputLineHeight; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformImeData_set_InputLineHeight(ImGuiPlatformImeData* self, float v) { self->InputLineHeight = v; }
DCGLUE_EXPORT ImGuiID dcjs_ImGuiPlatformImeData_get_ViewportId(ImGuiPlatformImeData* self) { return self->ViewportId; }
DCGLUE_EXPORT void dcjs_ImGuiPlatformImeData_set_ViewportId(ImGuiPlatformImeData* self, ImGuiID v) { self->ViewportId = v; }

// ---- struct sizes ----

DCGLUE_EXPORT int dcjs_sizeof_ImVec2(void) { return (int)sizeof(ImVec2); }
DCGLUE_EXPORT int dcjs_sizeof_ImVec4(void) { return (int)sizeof(ImVec4); }
DCGLUE_EXPORT int dcjs_sizeof_ImTextureRef(void) { return (int)sizeof(ImTextureRef); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiTableSortSpecs(void) { return (int)sizeof(ImGuiTableSortSpecs); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiTableColumnSortSpecs(void) { return (int)sizeof(ImGuiTableColumnSortSpecs); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImGuiTextRange(void) { return (int)sizeof(ImVector_ImGuiTextRange); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_char(void) { return (int)sizeof(ImVector_char); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImGuiStoragePair(void) { return (int)sizeof(ImVector_ImGuiStoragePair); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImGuiSelectionRequest(void) { return (int)sizeof(ImVector_ImGuiSelectionRequest); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImDrawChannel(void) { return (int)sizeof(ImVector_ImDrawChannel); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImDrawCmd(void) { return (int)sizeof(ImVector_ImDrawCmd); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImDrawIdx(void) { return (int)sizeof(ImVector_ImDrawIdx); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImDrawVert(void) { return (int)sizeof(ImVector_ImDrawVert); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImVec2(void) { return (int)sizeof(ImVector_ImVec2); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImVec4(void) { return (int)sizeof(ImVector_ImVec4); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImTextureRef(void) { return (int)sizeof(ImVector_ImTextureRef); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImU8(void) { return (int)sizeof(ImVector_ImU8); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImDrawListPtr(void) { return (int)sizeof(ImVector_ImDrawListPtr); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImTextureRect(void) { return (int)sizeof(ImVector_ImTextureRect); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImU32(void) { return (int)sizeof(ImVector_ImU32); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImWchar(void) { return (int)sizeof(ImVector_ImWchar); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImFontPtr(void) { return (int)sizeof(ImVector_ImFontPtr); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImFontConfig(void) { return (int)sizeof(ImVector_ImFontConfig); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImDrawListSharedDataPtr(void) { return (int)sizeof(ImVector_ImDrawListSharedDataPtr); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_float(void) { return (int)sizeof(ImVector_float); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImU16(void) { return (int)sizeof(ImVector_ImU16); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImFontGlyph(void) { return (int)sizeof(ImVector_ImFontGlyph); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImFontConfigPtr(void) { return (int)sizeof(ImVector_ImFontConfigPtr); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImGuiPlatformMonitor(void) { return (int)sizeof(ImVector_ImGuiPlatformMonitor); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImTextureDataPtr(void) { return (int)sizeof(ImVector_ImTextureDataPtr); }
DCGLUE_EXPORT int dcjs_sizeof_ImVector_ImGuiViewportPtr(void) { return (int)sizeof(ImVector_ImGuiViewportPtr); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiStyle(void) { return (int)sizeof(ImGuiStyle); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiIO(void) { return (int)sizeof(ImGuiIO); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiInputTextCallbackData(void) { return (int)sizeof(ImGuiInputTextCallbackData); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiSizeCallbackData(void) { return (int)sizeof(ImGuiSizeCallbackData); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiWindowClass(void) { return (int)sizeof(ImGuiWindowClass); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiPayload(void) { return (int)sizeof(ImGuiPayload); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiTextBuffer(void) { return (int)sizeof(ImGuiTextBuffer); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiStorage(void) { return (int)sizeof(ImGuiStorage); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiListClipper(void) { return (int)sizeof(ImGuiListClipper); }
DCGLUE_EXPORT int dcjs_sizeof_ImColor(void) { return (int)sizeof(ImColor); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiMultiSelectIO(void) { return (int)sizeof(ImGuiMultiSelectIO); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiSelectionRequest(void) { return (int)sizeof(ImGuiSelectionRequest); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiSelectionBasicStorage(void) { return (int)sizeof(ImGuiSelectionBasicStorage); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiSelectionExternalStorage(void) { return (int)sizeof(ImGuiSelectionExternalStorage); }
DCGLUE_EXPORT int dcjs_sizeof_ImDrawCmd(void) { return (int)sizeof(ImDrawCmd); }
DCGLUE_EXPORT int dcjs_sizeof_ImDrawVert(void) { return (int)sizeof(ImDrawVert); }
DCGLUE_EXPORT int dcjs_sizeof_ImDrawListSplitter(void) { return (int)sizeof(ImDrawListSplitter); }
DCGLUE_EXPORT int dcjs_sizeof_ImDrawList(void) { return (int)sizeof(ImDrawList); }
DCGLUE_EXPORT int dcjs_sizeof_ImDrawData(void) { return (int)sizeof(ImDrawData); }
DCGLUE_EXPORT int dcjs_sizeof_ImTextureRect(void) { return (int)sizeof(ImTextureRect); }
DCGLUE_EXPORT int dcjs_sizeof_ImTextureData(void) { return (int)sizeof(ImTextureData); }
DCGLUE_EXPORT int dcjs_sizeof_ImFontConfig(void) { return (int)sizeof(ImFontConfig); }
DCGLUE_EXPORT int dcjs_sizeof_ImFontGlyph(void) { return (int)sizeof(ImFontGlyph); }
DCGLUE_EXPORT int dcjs_sizeof_ImFontGlyphRangesBuilder(void) { return (int)sizeof(ImFontGlyphRangesBuilder); }
DCGLUE_EXPORT int dcjs_sizeof_ImFontAtlasRect(void) { return (int)sizeof(ImFontAtlasRect); }
DCGLUE_EXPORT int dcjs_sizeof_ImFontAtlas(void) { return (int)sizeof(ImFontAtlas); }
DCGLUE_EXPORT int dcjs_sizeof_ImFontBaked(void) { return (int)sizeof(ImFontBaked); }
DCGLUE_EXPORT int dcjs_sizeof_ImFont(void) { return (int)sizeof(ImFont); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiViewport(void) { return (int)sizeof(ImGuiViewport); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiPlatformIO(void) { return (int)sizeof(ImGuiPlatformIO); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiPlatformMonitor(void) { return (int)sizeof(ImGuiPlatformMonitor); }
DCGLUE_EXPORT int dcjs_sizeof_ImGuiPlatformImeData(void) { return (int)sizeof(ImGuiPlatformImeData); }

} // extern "C"
