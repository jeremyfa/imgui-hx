#pragma once

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include "imgui.h"

namespace ImGui {

    extern void (*linc_Address_sync)(void);

    bool linc_VSliderScalar(const char* label, const ImVec2& size, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max, const char* format=NULL, ImGuiSliderFlags flags=0);

    bool linc_VSliderInt(const char* label, const ImVec2& size, int* v, int v_min, int v_max, const char* format="%d", ImGuiSliderFlags flags=0);

    bool linc_VSliderFloat(const char* label, const ImVec2& size, float* v, float v_min, float v_max, const char* format="%.3f", ImGuiSliderFlags flags=0);

    void linc_TreePush(const void* ptr_id=NULL);

    bool linc_TreeNodeV(const void* ptr_id, const char* fmt, va_list args);

    bool linc_TreeNodeExV(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args);

    bool linc_TreeNodeEx(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, ...);

    bool linc_TreeNodeEx(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, ...);

    bool linc_TreeNode(const char* str_id, const char* fmt, ...);

    bool linc_TreeNode(const void* ptr_id, const char* fmt, ...);

    void linc_TextWrapped(const char* fmt, ...);

    void linc_TextDisabled(const char* fmt, ...);

    void linc_TextColored(const ImVec4& col, const char* fmt, ...);

    void linc_Text(const char* fmt, ...);

    bool linc_SliderScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, const void* p_min, const void* p_max, const char* format=NULL, ImGuiSliderFlags flags=0);

    bool linc_SliderScalar(const char* label, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max, const char* format=NULL, ImGuiSliderFlags flags=0);

    bool linc_SliderInt4(const char* label, int v[4], int v_min, int v_max, const char* format="%d", ImGuiSliderFlags flags=0);

    bool linc_SliderInt3(const char* label, int v[3], int v_min, int v_max, const char* format="%d", ImGuiSliderFlags flags=0);

    bool linc_SliderInt2(const char* label, int v[2], int v_min, int v_max, const char* format="%d", ImGuiSliderFlags flags=0);

    bool linc_SliderInt(const char* label, int* v, int v_min, int v_max, const char* format="%d", ImGuiSliderFlags flags=0);

    bool linc_SliderFloat4(const char* label, float v[4], float v_min, float v_max, const char* format="%.3f", ImGuiSliderFlags flags=0);

    bool linc_SliderFloat3(const char* label, float v[3], float v_min, float v_max, const char* format="%.3f", ImGuiSliderFlags flags=0);

    bool linc_SliderFloat2(const char* label, float v[2], float v_min, float v_max, const char* format="%.3f", ImGuiSliderFlags flags=0);

    bool linc_SliderFloat(const char* label, float* v, float v_min, float v_max, const char* format="%.3f", ImGuiSliderFlags flags=0);

    bool linc_SliderAngle(const char* label, float* v_rad, float v_degrees_min=-360.0f, float v_degrees_max=+360.0f, const char* format="%.0f deg", ImGuiSliderFlags flags=0);

    void linc_ShowMetricsWindow(bool* p_open=NULL);

    void linc_ShowDemoWindow(bool* p_open=NULL);

    void linc_ShowAboutWindow(bool* p_open=NULL);

    void linc_SetTooltip(const char* fmt, ...);

    void linc_SetNextWindowSizeConstraints(const ImVec2& size_min, const ImVec2& size_max, ImGuiSizeCallback custom_callback=NULL, void* custom_callback_data=NULL);

    bool linc_SetDragDropPayload(const char* type, const void* data, size_t sz, ImGuiCond cond=0);

    void linc_SetAllocatorFunctions(void*(*alloc_func)(size_t sz, void* user_data), void(*free_func)(void* ptr, void* user_data), void* user_data=NULL);

    bool linc_Selectable(const char* label, bool* p_selected, ImGuiSelectableFlags flags=0, const ImVec2& size=ImVec2(0, 0));

    bool linc_RadioButton(const char* label, int* v, int v_button);

    void linc_PushID(const void* ptr_id);

    void linc_PlotLines(const char* label, const float* values, int values_count, int values_offset=0, const char* overlay_text=NULL, float scale_min=3.40282346638528859811704183484516925e+38F, float scale_max=3.40282346638528859811704183484516925e+38F, ImVec2 graph_size=ImVec2(0, 0), int stride=sizeof(float));

    void linc_PlotLines(const char* label, float(*values_getter)(void* data, int idx), void* data, int values_count, int values_offset=0, const char* overlay_text=NULL, float scale_min=3.40282346638528859811704183484516925e+38F, float scale_max=3.40282346638528859811704183484516925e+38F, ImVec2 graph_size=ImVec2(0, 0));

    void linc_PlotHistogram(const char* label, const float* values, int values_count, int values_offset=0, const char* overlay_text=NULL, float scale_min=3.40282346638528859811704183484516925e+38F, float scale_max=3.40282346638528859811704183484516925e+38F, ImVec2 graph_size=ImVec2(0, 0), int stride=sizeof(float));

    void linc_PlotHistogram(const char* label, float(*values_getter)(void* data, int idx), void* data, int values_count, int values_offset=0, const char* overlay_text=NULL, float scale_min=3.40282346638528859811704183484516925e+38F, float scale_max=3.40282346638528859811704183484516925e+38F, ImVec2 graph_size=ImVec2(0, 0));

    bool linc_MenuItem(const char* label, const char* shortcut, bool* p_selected, bool enabled=true);

    void linc_MemFree(void* ptr);

    bool linc_ListBox(const char* label, int* current_item, const char* const items[], int items_count, int height_in_items=-1);

    bool linc_ListBox(const char* label, int* current_item, bool(*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int height_in_items=-1);

    void linc_LabelText(const char* label, const char* fmt, ...);

    bool linc_InputTextWithHint(const char* label, const char* hint, char* buf, size_t buf_size, ImGuiInputTextFlags flags=0, ImGuiInputTextCallback callback=NULL, void* user_data=NULL);

    bool linc_InputTextMultiline(const char* label, char* buf, size_t buf_size, const ImVec2& size=ImVec2(0, 0), ImGuiInputTextFlags flags=0, ImGuiInputTextCallback callback=NULL, void* user_data=NULL);

    bool linc_InputText(const char* label, char* buf, size_t buf_size, ImGuiInputTextFlags flags=0, ImGuiInputTextCallback callback=NULL, void* user_data=NULL);

    bool linc_InputScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, const void* p_step=NULL, const void* p_step_fast=NULL, const char* format=NULL, ImGuiInputTextFlags flags=0);

    bool linc_InputScalar(const char* label, ImGuiDataType data_type, void* p_data, const void* p_step=NULL, const void* p_step_fast=NULL, const char* format=NULL, ImGuiInputTextFlags flags=0);

    bool linc_InputInt4(const char* label, int v[4], ImGuiInputTextFlags flags=0);

    bool linc_InputInt3(const char* label, int v[3], ImGuiInputTextFlags flags=0);

    bool linc_InputInt2(const char* label, int v[2], ImGuiInputTextFlags flags=0);

    bool linc_InputInt(const char* label, int* v, int step=1, int step_fast=100, ImGuiInputTextFlags flags=0);

    bool linc_InputFloat4(const char* label, float v[4], const char* format="%.3f", ImGuiInputTextFlags flags=0);

    bool linc_InputFloat3(const char* label, float v[3], const char* format="%.3f", ImGuiInputTextFlags flags=0);

    bool linc_InputFloat2(const char* label, float v[2], const char* format="%.3f", ImGuiInputTextFlags flags=0);

    bool linc_InputFloat(const char* label, float* v, float step=0.0f, float step_fast=0.0f, const char* format="%.3f", ImGuiInputTextFlags flags=0);

    ImGuiID linc_GetID(const void* ptr_id);

    void linc_End();

    bool linc_DragScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, float v_speed, const void* p_min=NULL, const void* p_max=NULL, const char* format=NULL, ImGuiSliderFlags flags=0);

    bool linc_DragScalar(const char* label, ImGuiDataType data_type, void* p_data, float v_speed, const void* p_min=NULL, const void* p_max=NULL, const char* format=NULL, ImGuiSliderFlags flags=0);

    bool linc_DragIntRange2(const char* label, int* v_current_min, int* v_current_max, float v_speed=1.0f, int v_min=0, int v_max=0, const char* format="%d", const char* format_max=NULL, ImGuiSliderFlags flags=0);

    bool linc_DragInt4(const char* label, int v[4], float v_speed=1.0f, int v_min=0, int v_max=0, const char* format="%d", ImGuiSliderFlags flags=0);

    bool linc_DragInt3(const char* label, int v[3], float v_speed=1.0f, int v_min=0, int v_max=0, const char* format="%d", ImGuiSliderFlags flags=0);

    bool linc_DragInt2(const char* label, int v[2], float v_speed=1.0f, int v_min=0, int v_max=0, const char* format="%d", ImGuiSliderFlags flags=0);

    bool linc_DragInt(const char* label, int* v, float v_speed=1.0f, int v_min=0, int v_max=0, const char* format="%d", ImGuiSliderFlags flags=0);

    bool linc_DragFloatRange2(const char* label, float* v_current_min, float* v_current_max, float v_speed=1.0f, float v_min=0.0f, float v_max=0.0f, const char* format="%.3f", const char* format_max=NULL, ImGuiSliderFlags flags=0);

    bool linc_DragFloat4(const char* label, float v[4], float v_speed=1.0f, float v_min=0.0f, float v_max=0.0f, const char* format="%.3f", ImGuiSliderFlags flags=0);

    bool linc_DragFloat3(const char* label, float v[3], float v_speed=1.0f, float v_min=0.0f, float v_max=0.0f, const char* format="%.3f", ImGuiSliderFlags flags=0);

    bool linc_DragFloat2(const char* label, float v[2], float v_speed=1.0f, float v_min=0.0f, float v_max=0.0f, const char* format="%.3f", ImGuiSliderFlags flags=0);

    bool linc_DragFloat(const char* label, float* v, float v_speed=1.0f, float v_min=0.0f, float v_max=0.0f, const char* format="%.3f", ImGuiSliderFlags flags=0);

    bool linc_Combo(const char* label, int* current_item, const char* const items[], int items_count, int popup_max_height_in_items=-1);

    bool linc_Combo(const char* label, int* current_item, const char* items_separated_by_zeros, int popup_max_height_in_items=-1);

    bool linc_Combo(const char* label, int* current_item, bool(*items_getter)(void* data, int idx, const char** out_text), void* data, int items_count, int popup_max_height_in_items=-1);

    bool linc_ColorPicker4(const char* label, float col[4], ImGuiColorEditFlags flags=0, const float* ref_col=NULL);

    bool linc_ColorPicker3(const char* label, float col[3], ImGuiColorEditFlags flags=0);

    bool linc_ColorEdit4(const char* label, float col[4], ImGuiColorEditFlags flags=0);

    bool linc_ColorEdit3(const char* label, float col[3], ImGuiColorEditFlags flags=0);

    void linc_ColorConvertRGBtoHSV(float r, float g, float b, float& out_h, float& out_s, float& out_v);

    void linc_ColorConvertHSVtoRGB(float h, float s, float v, float& out_r, float& out_g, float& out_b);

    bool linc_CollapsingHeader(const char* label, bool* p_visible, ImGuiTreeNodeFlags flags=0);

    bool linc_CheckboxFlags(const char* label, int* flags, int flags_value);

    bool linc_Checkbox(const char* label, bool* v);

    void linc_CalcListClipping(int items_count, float items_height, int* out_items_display_start, int* out_items_display_end);

    void linc_BulletText(const char* fmt, ...);

    bool linc_BeginTabItem(const char* label, bool* p_open=NULL, ImGuiTabItemFlags flags=0);

    bool linc_BeginPopupModal(const char* name, bool* p_open=NULL, ImGuiWindowFlags flags=0);

    bool linc_Begin(const char* name, bool* p_open=NULL, ImGuiWindowFlags flags=0);



}
