//hxcpp include should be first
#include <hxcpp.h>
#include "./linc_imgui.h"

namespace ImGui {

    void (*linc_Address_sync)(void) = NULL;

    bool linc_VSliderScalar(const char* label, const ImVec2 size, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::VSliderScalar(label,size,data_type,p_data,p_min,p_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_VSliderInt(const char* label, const ImVec2 size, int* v, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::VSliderInt(label,size,v,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_VSliderFloat(const char* label, const ImVec2 size, float* v, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::VSliderFloat(label,size,v,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    void linc_TreePush(const void* ptr_id) {
        ImGui::TreePush(ptr_id);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    bool linc_TreeNodeV(const void* ptr_id, const char* fmt, va_list args) {
        bool _res = ImGui::TreeNodeV(ptr_id,fmt,args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_TreeNodeExV(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, va_list args) {
        bool _res = ImGui::TreeNodeExV(ptr_id,flags,fmt,args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_TreeNodeEx(const char* str_id, ImGuiTreeNodeFlags flags, const char* fmt, ...) {
        va_list _args;
        va_start(_args, fmt);
        bool _res = ImGui::TreeNodeExV(str_id,flags,fmt,_args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_TreeNodeEx(const void* ptr_id, ImGuiTreeNodeFlags flags, const char* fmt, ...) {
        va_list _args;
        va_start(_args, fmt);
        bool _res = ImGui::TreeNodeExV(ptr_id,flags,fmt,_args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_TreeNode(const char* str_id, const char* fmt, ...) {
        va_list _args;
        va_start(_args, fmt);
        bool _res = ImGui::TreeNodeV(str_id,fmt,_args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_TreeNode(const void* ptr_id, const char* fmt, ...) {
        va_list _args;
        va_start(_args, fmt);
        bool _res = ImGui::TreeNodeV(ptr_id,fmt,_args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    void linc_TextWrapped(const char* fmt, ...) {
        va_list _args;
        va_start(_args, fmt);
        ImGui::TextWrappedV(fmt,_args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_TextDisabled(const char* fmt, ...) {
        va_list _args;
        va_start(_args, fmt);
        ImGui::TextDisabledV(fmt,_args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_TextColored(const ImVec4 col, const char* fmt, ...) {
        va_list _args;
        va_start(_args, fmt);
        ImGui::TextColoredV(col,fmt,_args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_Text(const char* fmt, ...) {
        va_list _args;
        va_start(_args, fmt);
        ImGui::TextV(fmt,_args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    bool linc_SliderScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::SliderScalarN(label,data_type,p_data,components,p_min,p_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_SliderScalar(const char* label, ImGuiDataType data_type, void* p_data, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::SliderScalar(label,data_type,p_data,p_min,p_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_SliderInt4(const char* label, int v[4], int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::SliderInt4(label,v,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_SliderInt3(const char* label, int v[3], int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::SliderInt3(label,v,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_SliderInt2(const char* label, int v[2], int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::SliderInt2(label,v,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_SliderInt(const char* label, int* v, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::SliderInt(label,v,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_SliderFloat4(const char* label, float v[4], float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::SliderFloat4(label,v,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_SliderFloat3(const char* label, float v[3], float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::SliderFloat3(label,v,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_SliderFloat2(const char* label, float v[2], float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::SliderFloat2(label,v,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_SliderFloat(const char* label, float* v, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::SliderFloat(label,v,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_SliderAngle(const char* label, float* v_rad, float v_degrees_min, float v_degrees_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::SliderAngle(label,v_rad,v_degrees_min,v_degrees_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    void linc_ShowMetricsWindow(bool* p_open) {
        ImGui::ShowMetricsWindow(p_open);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_ShowDemoWindow(bool* p_open) {
        ImGui::ShowDemoWindow(p_open);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_ShowAboutWindow(bool* p_open) {
        ImGui::ShowAboutWindow(p_open);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_SetTooltip(const char* fmt, ...) {
        va_list _args;
        va_start(_args, fmt);
        ImGui::SetTooltipV(fmt,_args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_SetNextWindowSizeConstraints(const ImVec2 size_min, const ImVec2 size_max, ImGuiSizeCallback custom_callback, void* custom_callback_data) {
        ImGui::SetNextWindowSizeConstraints(size_min,size_max,custom_callback,custom_callback_data);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    bool linc_SetDragDropPayload(const char* type, const void* data, size_t sz, ImGuiCond cond) {
        bool _res = ImGui::SetDragDropPayload(type,data,sz,cond);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    void linc_SetAllocatorFunctions(void*(*alloc_func)(size_t sz,void* user_data), void(*free_func)(void* ptr,void* user_data), void* user_data) {
        ImGui::SetAllocatorFunctions(alloc_func,free_func,user_data);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    bool linc_Selectable(const char* label, bool* p_selected, ImGuiSelectableFlags flags, const ImVec2 size) {
        bool _res = ImGui::Selectable(label,p_selected,flags,size);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_RadioButton(const char* label, int* v, int v_button) {
        bool _res = ImGui::RadioButton(label,v,v_button);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    void linc_PushID(const void* ptr_id) {
        ImGui::PushID(ptr_id);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_PlotLines(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride) {
        ImGui::PlotLines(label,values,values_count,values_offset,overlay_text,scale_min,scale_max,graph_size,stride);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_PlotLines(const char* label, float(*values_getter)(void* data,int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size) {
        ImGui::PlotLines(label,values_getter,data,values_count,values_offset,overlay_text,scale_min,scale_max,graph_size);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_PlotHistogram(const char* label, const float* values, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride) {
        ImGui::PlotHistogram(label,values,values_count,values_offset,overlay_text,scale_min,scale_max,graph_size,stride);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_PlotHistogram(const char* label, float(*values_getter)(void* data,int idx), void* data, int values_count, int values_offset, const char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size) {
        ImGui::PlotHistogram(label,values_getter,data,values_count,values_offset,overlay_text,scale_min,scale_max,graph_size);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    bool linc_MenuItem(const char* label, const char* shortcut, bool* p_selected, bool enabled) {
        bool _res = ImGui::MenuItem(label,shortcut,p_selected,enabled);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    void linc_MemFree(void* ptr) {
        ImGui::MemFree(ptr);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    bool linc_ListBox(const char* label, int* current_item, const char* const items[], int items_count, int height_in_items) {
        bool _res = ImGui::ListBox(label,current_item,items,items_count,height_in_items);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_ListBox(const char* label, int* current_item, bool(*items_getter)(void* data,int idx,const char** out_text), void* data, int items_count, int height_in_items) {
        bool _res = ImGui::ListBox(label,current_item,items_getter,data,items_count,height_in_items);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    void linc_LabelText(const char* label, const char* fmt, ...) {
        va_list _args;
        va_start(_args, fmt);
        ImGui::LabelTextV(label,fmt,_args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    bool linc_InputTextWithHint(const char* label, const char* hint, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data) {
        bool _res = ImGui::InputTextWithHint(label,hint,buf,buf_size,flags,callback,user_data);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputTextMultiline(const char* label, char* buf, size_t buf_size, const ImVec2 size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data) {
        bool _res = ImGui::InputTextMultiline(label,buf,buf_size,size,flags,callback,user_data);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputText(const char* label, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data) {
        bool _res = ImGui::InputText(label,buf,buf_size,flags,callback,user_data);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, const void* p_step, const void* p_step_fast, const char* format, ImGuiInputTextFlags flags) {
        bool _res = ImGui::InputScalarN(label,data_type,p_data,components,p_step,p_step_fast,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputScalar(const char* label, ImGuiDataType data_type, void* p_data, const void* p_step, const void* p_step_fast, const char* format, ImGuiInputTextFlags flags) {
        bool _res = ImGui::InputScalar(label,data_type,p_data,p_step,p_step_fast,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputInt4(const char* label, int v[4], ImGuiInputTextFlags flags) {
        bool _res = ImGui::InputInt4(label,v,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputInt3(const char* label, int v[3], ImGuiInputTextFlags flags) {
        bool _res = ImGui::InputInt3(label,v,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputInt2(const char* label, int v[2], ImGuiInputTextFlags flags) {
        bool _res = ImGui::InputInt2(label,v,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputInt(const char* label, int* v, int step, int step_fast, ImGuiInputTextFlags flags) {
        bool _res = ImGui::InputInt(label,v,step,step_fast,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputFloat4(const char* label, float v[4], const char* format, ImGuiInputTextFlags flags) {
        bool _res = ImGui::InputFloat4(label,v,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputFloat3(const char* label, float v[3], const char* format, ImGuiInputTextFlags flags) {
        bool _res = ImGui::InputFloat3(label,v,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputFloat2(const char* label, float v[2], const char* format, ImGuiInputTextFlags flags) {
        bool _res = ImGui::InputFloat2(label,v,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_InputFloat(const char* label, float* v, float step, float step_fast, const char* format, ImGuiInputTextFlags flags) {
        bool _res = ImGui::InputFloat(label,v,step,step_fast,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    ImGuiID linc_GetID(const void* ptr_id) {
        ImGuiID _res = ImGui::GetID(ptr_id);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragScalarN(const char* label, ImGuiDataType data_type, void* p_data, int components, float v_speed, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragScalarN(label,data_type,p_data,components,v_speed,p_min,p_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragScalar(const char* label, ImGuiDataType data_type, void* p_data, float v_speed, const void* p_min, const void* p_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragScalar(label,data_type,p_data,v_speed,p_min,p_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragIntRange2(const char* label, int* v_current_min, int* v_current_max, float v_speed, int v_min, int v_max, const char* format, const char* format_max, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragIntRange2(label,v_current_min,v_current_max,v_speed,v_min,v_max,format,format_max,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragInt4(const char* label, int v[4], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragInt4(label,v,v_speed,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragInt3(const char* label, int v[3], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragInt3(label,v,v_speed,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragInt2(const char* label, int v[2], float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragInt2(label,v,v_speed,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragInt(const char* label, int* v, float v_speed, int v_min, int v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragInt(label,v,v_speed,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragFloatRange2(const char* label, float* v_current_min, float* v_current_max, float v_speed, float v_min, float v_max, const char* format, const char* format_max, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragFloatRange2(label,v_current_min,v_current_max,v_speed,v_min,v_max,format,format_max,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragFloat4(const char* label, float v[4], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragFloat4(label,v,v_speed,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragFloat3(const char* label, float v[3], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragFloat3(label,v,v_speed,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragFloat2(const char* label, float v[2], float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragFloat2(label,v,v_speed,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_DragFloat(const char* label, float* v, float v_speed, float v_min, float v_max, const char* format, ImGuiSliderFlags flags) {
        bool _res = ImGui::DragFloat(label,v,v_speed,v_min,v_max,format,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_Combo(const char* label, int* current_item, const char* const items[], int items_count, int popup_max_height_in_items) {
        bool _res = ImGui::Combo(label,current_item,items,items_count,popup_max_height_in_items);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_Combo(const char* label, int* current_item, const char* items_separated_by_zeros, int popup_max_height_in_items) {
        bool _res = ImGui::Combo(label,current_item,items_separated_by_zeros,popup_max_height_in_items);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_Combo(const char* label, int* current_item, bool(*items_getter)(void* data,int idx,const char** out_text), void* data, int items_count, int popup_max_height_in_items) {
        bool _res = ImGui::Combo(label,current_item,items_getter,data,items_count,popup_max_height_in_items);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_ColorPicker4(const char* label, float col[4], ImGuiColorEditFlags flags, const float* ref_col) {
        bool _res = ImGui::ColorPicker4(label,col,flags,ref_col);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_ColorPicker3(const char* label, float col[3], ImGuiColorEditFlags flags) {
        bool _res = ImGui::ColorPicker3(label,col,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_ColorEdit4(const char* label, float col[4], ImGuiColorEditFlags flags) {
        bool _res = ImGui::ColorEdit4(label,col,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_ColorEdit3(const char* label, float col[3], ImGuiColorEditFlags flags) {
        bool _res = ImGui::ColorEdit3(label,col,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    void linc_ColorConvertRGBtoHSV(float r, float g, float b, float* out_h, float* out_s, float* out_v) {
        ImGui::ColorConvertRGBtoHSV(r,g,b,*out_h,*out_s,*out_v);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_ColorConvertHSVtoRGB(float h, float s, float v, float* out_r, float* out_g, float* out_b) {
        ImGui::ColorConvertHSVtoRGB(h,s,v,*out_r,*out_g,*out_b);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    bool linc_CollapsingHeader(const char* label, bool* p_visible, ImGuiTreeNodeFlags flags) {
        bool _res = ImGui::CollapsingHeader(label,p_visible,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_CheckboxFlags(const char* label, int* flags, int flags_value) {
        bool _res = ImGui::CheckboxFlags(label,flags,flags_value);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_Checkbox(const char* label, bool* v) {
        bool _res = ImGui::Checkbox(label,v);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    void linc_CalcListClipping(int items_count, float items_height, int* out_items_display_start, int* out_items_display_end) {
        ImGui::CalcListClipping(items_count,items_height,out_items_display_start,out_items_display_end);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    void linc_BulletText(const char* fmt, ...) {
        va_list _args;
        va_start(_args, fmt);
        ImGui::BulletTextV(fmt,_args);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
    }

    bool linc_BeginTabItem(const char* label, bool* p_open, ImGuiTabItemFlags flags) {
        bool _res = ImGui::BeginTabItem(label,p_open,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_BeginPopupModal(const char* name, bool* p_open, ImGuiWindowFlags flags) {
        bool _res = ImGui::BeginPopupModal(name,p_open,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }

    bool linc_Begin(const char* name, bool* p_open, ImGuiWindowFlags flags) {
        bool _res = ImGui::Begin(name,p_open,flags);
        if (linc_Address_sync != NULL) (*linc_Address_sync)();
        return _res;
    }



}
