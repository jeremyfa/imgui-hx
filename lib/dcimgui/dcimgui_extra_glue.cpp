// Hand-written extra glue (see dcimgui_extra.h). Compiled into every target
// (linc XML for hxcpp, build-web.sh for wasm, build-*.sh for the Unity libs).
//
// DCX_EXPORT comes from dcimgui_extra.h so the declarations there carry the
// exact same linkage as the definitions below (MSVC C2375 otherwise).

#include "dcimgui_extra.h"

extern "C" {

DCX_EXPORT void dcx_ImGuiStyle_GetColor(ImGuiStyle* style, int idx, ImVec4* out_color) {
    if (idx < 0 || idx >= ImGuiCol_COUNT) { out_color->x = 0; out_color->y = 0; out_color->z = 0; out_color->w = 0; return; }
    *out_color = style->Colors[idx];
}

DCX_EXPORT void dcx_ImGuiStyle_SetColor(ImGuiStyle* style, int idx, float x, float y, float z, float w) {
    if (idx < 0 || idx >= ImGuiCol_COUNT) return;
    style->Colors[idx].x = x;
    style->Colors[idx].y = y;
    style->Colors[idx].z = z;
    style->Colors[idx].w = w;
}

DCX_EXPORT void dcx_ImGuiSelectionBasicStorage_SetAdapter(ImGuiSelectionBasicStorage* self, void* adapter) {
    self->AdapterIndexToStorageId = (ImGuiID (*)(ImGuiSelectionBasicStorage*, int))adapter;
}

} // extern "C"
