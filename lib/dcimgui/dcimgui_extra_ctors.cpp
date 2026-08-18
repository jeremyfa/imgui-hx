// Hand-written reference constructors (see dcimgui_extra.h). This TU includes
// ONLY imgui.h (the C++ API): the dcimgui C structs share the exact memory
// layout, so running the real C++ constructor through a void* is safe.
// Memory is zeroed first so padding bytes are deterministic (some imgui
// constructors assign fields without a memset), making the results byte
// comparable in the smoke tests.

#ifdef __EMSCRIPTEN__
#include <emscripten.h>
#define DCX_EXPORT EMSCRIPTEN_KEEPALIVE
#elif defined(_WIN32)
#define DCX_EXPORT __declspec(dllexport)
#else
#define DCX_EXPORT __attribute__((visibility("default")))
#endif

#include <string.h>
#include "imgui.h"

extern "C" {

DCX_EXPORT void dcx_ImFontConfig_Construct(void* self) {
    memset(self, 0, sizeof(::ImFontConfig));
    IM_PLACEMENT_NEW((::ImFontConfig*)self) ::ImFontConfig();
}

DCX_EXPORT void dcx_ImGuiListClipper_Construct(void* self) {
    memset(self, 0, sizeof(::ImGuiListClipper));
    IM_PLACEMENT_NEW((::ImGuiListClipper*)self) ::ImGuiListClipper();
}

DCX_EXPORT void dcx_ImGuiSelectionBasicStorage_Construct(void* self) {
    memset(self, 0, sizeof(::ImGuiSelectionBasicStorage));
    IM_PLACEMENT_NEW((::ImGuiSelectionBasicStorage*)self) ::ImGuiSelectionBasicStorage();
}

} // extern "C"
