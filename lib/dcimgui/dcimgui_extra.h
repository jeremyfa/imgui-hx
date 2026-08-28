// Hand-written extra helpers over the dcimgui C API: the few things the
// generated bindings cannot express (C array struct fields). Kept separate
// from the GENERATED dcimgui_js_glue.cpp so regeneration never loses them.
#pragma once
#include "dcimgui.h"

// Export decoration shared by the declarations below and their definitions in
// dcimgui_extra_glue.cpp. It MUST appear on the declarations too: MSVC rejects
// a plain declaration followed by a __declspec(dllexport) definition with
// error C2375 (redefinition; different linkage). gcc and clang do not care,
// which is how the mismatch stayed invisible until the Windows DLL was built.
#ifndef DCX_EXPORT
#ifdef __EMSCRIPTEN__
#include <emscripten.h>
#define DCX_EXPORT EMSCRIPTEN_KEEPALIVE
#elif defined(_WIN32)
#define DCX_EXPORT __declspec(dllexport)
#else
#define DCX_EXPORT __attribute__((visibility("default")))
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

// style->Colors[idx] accessors (the Colors C array field is not bindable)
DCX_EXPORT void dcx_ImGuiStyle_GetColor(ImGuiStyle* style, int idx, ImVec4* out_color);
DCX_EXPORT void dcx_ImGuiStyle_SetColor(ImGuiStyle* style, int idx, float x, float y, float z, float w);

// Reference constructors: run the REAL C++ constructor semantics (memset +
// placement new) on caller-provided memory. Used by the smoke tests to
// detect upstream constructor-default drift against the portable
// replications in imgui.NativeStructs (which would otherwise fail silently).
// Implemented in dcimgui_extra_ctors.cpp (a TU including only imgui.h).
DCX_EXPORT void dcx_ImFontConfig_Construct(void* self);

// Typed setter for the AdapterIndexToStorageId function pointer field (the
// generated getp_ accessor returns the pointer VALUE, so it cannot be used
// as a write address).
DCX_EXPORT void dcx_ImGuiSelectionBasicStorage_SetAdapter(ImGuiSelectionBasicStorage* self, void* adapter);

DCX_EXPORT void dcx_ImGuiListClipper_Construct(void* self);
DCX_EXPORT void dcx_ImGuiSelectionBasicStorage_Construct(void* self);

#ifdef __cplusplus
}
#endif
