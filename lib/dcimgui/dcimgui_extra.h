// Hand-written extra helpers over the dcimgui C API: the few things the
// generated bindings cannot express (C array struct fields). Kept separate
// from the GENERATED dcimgui_js_glue.cpp so regeneration never loses them.
#pragma once
#include "dcimgui.h"

#ifdef __cplusplus
extern "C" {
#endif

// style->Colors[idx] accessors (the Colors C array field is not bindable)
void dcx_ImGuiStyle_GetColor(ImGuiStyle* style, int idx, ImVec4* out_color);
void dcx_ImGuiStyle_SetColor(ImGuiStyle* style, int idx, float x, float y, float z, float w);

// Reference constructors: run the REAL C++ constructor semantics (memset +
// placement new) on caller-provided memory. Used by the smoke tests to
// detect upstream constructor-default drift against the portable
// replications in imgui.NativeStructs (which would otherwise fail silently).
// Implemented in dcimgui_extra_ctors.cpp (a TU including only imgui.h).
void dcx_ImFontConfig_Construct(void* self);

// Typed setter for the AdapterIndexToStorageId function pointer field (the
// generated getp_ accessor returns the pointer VALUE, so it cannot be used
// as a write address).
void dcx_ImGuiSelectionBasicStorage_SetAdapter(ImGuiSelectionBasicStorage* self, void* adapter);

void dcx_ImGuiListClipper_Construct(void* self);
void dcx_ImGuiSelectionBasicStorage_Construct(void* self);

#ifdef __cplusplus
}
#endif
