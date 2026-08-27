// Hand-written extra glue (see dcimgui_extra.h). Compiled into every target
// (linc XML for hxcpp, build-web.sh for wasm, build-*.sh for the Unity libs).
//
// DCX_EXPORT comes from dcimgui_extra.h so the declarations there carry the
// exact same linkage as the definitions below (MSVC C2375 otherwise).

#include <string>
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

DCX_EXPORT void dcx_ImGuiStyle_SetNextFrameFontSizeBase(ImGuiStyle* style, float size) {
    style->_NextFrameFontSizeBase = size;
}

// Clipboard rerouting: ImGui's clipboard goes through PlatformIO function
// pointers. Bindable targets cannot assign those fields directly, so this
// registers flat C callbacks (js: Module.addFunction trampolines).
typedef const char* (*dcx_ClipboardGetFn)(void);
typedef void (*dcx_ClipboardSetFn)(const char* text);
static dcx_ClipboardGetFn dcx_clipboardGet = NULL;
static dcx_ClipboardSetFn dcx_clipboardSet = NULL;

static const char* dcx_Platform_GetClipboardText(ImGuiContext* ctx) {
    (void)ctx;
    return dcx_clipboardGet != NULL ? dcx_clipboardGet() : NULL;
}

static void dcx_Platform_SetClipboardText(ImGuiContext* ctx, const char* text) {
    (void)ctx;
    if (dcx_clipboardSet != NULL) dcx_clipboardSet(text);
}

DCX_EXPORT void dcx_SetClipboardHandlers(dcx_ClipboardGetFn get, dcx_ClipboardSetFn set) {
    dcx_clipboardGet = get;
    dcx_clipboardSet = set;
    ImGuiPlatformIO* platformIO = ImGui_GetPlatformIO();
    platformIO->Platform_GetClipboardTextFn = dcx_Platform_GetClipboardText;
    platformIO->Platform_SetClipboardTextFn = dcx_Platform_SetClipboardText;
}

// Storage for io.IniFilename: ImGui keeps the pointer we hand it, so the
// string has to outlive the call.
static std::string dcx_iniFilename;

DCX_EXPORT void dcx_SetIniFilename(const char* path) {
    ImGuiIO* io = ImGui_GetIO();
    if (path == NULL) {
        dcx_iniFilename.clear();
        io->IniFilename = NULL;
        return;
    }
    dcx_iniFilename = path;
    io->IniFilename = dcx_iniFilename.c_str();
}

DCX_EXPORT void dcx_ImGuiSelectionBasicStorage_SetAdapter(ImGuiSelectionBasicStorage* self, void* adapter) {
    self->AdapterIndexToStorageId = (ImGuiID (*)(ImGuiSelectionBasicStorage*, int))adapter;
}

} // extern "C"
