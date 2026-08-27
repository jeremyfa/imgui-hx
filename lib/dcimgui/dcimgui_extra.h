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

/** Sets `io.IniFilename`, keeping the string alive for as long as ImGui needs
    it (it stores the pointer, not a copy). Pass NULL to turn off ImGui's own
    ini file IO entirely, which is what an app wants when it persists the
    layout itself (see SaveIniSettingsToMemory / LoadIniSettingsFromMemory).
    Without this, ImGui reads and writes `imgui.ini` in the process working
    directory — inside the .app bundle on macOS, and nowhere useful on web. */
void dcx_SetIniFilename(const char* path);

// DockBuilder: the programmatic docking API lives in imgui_internal.h, which
// dear_bindings does not process. These wrappers expose the subset needed to
// build a default layout (add a node, split it, dock windows into the pieces),
// with a flat C ABI: no by-value structs, ids returned rather than pointers.
// Implemented in dcimgui_extra_dockbuilder.cpp (a TU including imgui_internal.h).
unsigned int dcx_DockBuilderAddNode(unsigned int node_id, int flags);
/** Adds a node flagged as a dockspace host. Separate entry point because
    `ImGuiDockNodeFlags_DockSpace` is an internal flag, absent from the public
    enum the bindings expose: keeping it here means callers never hardcode its
    value and an upstream renumbering cannot silently break them. */
unsigned int dcx_DockBuilderAddDockSpaceNode(unsigned int node_id, int extra_flags);
void dcx_DockBuilderRemoveNode(unsigned int node_id);
void dcx_DockBuilderRemoveNodeChildNodes(unsigned int node_id);
void dcx_DockBuilderSetNodePos(unsigned int node_id, float x, float y);
void dcx_DockBuilderSetNodeSize(unsigned int node_id, float w, float h);
/** Whether a dock node with that id currently exists. */
int dcx_DockBuilderNodeExists(unsigned int node_id);
/** Splits `node_id`; writes the two resulting ids into `out_ids[0]` (at dir)
    and `out_ids[1]` (opposite). Returns the id at dir for convenience. */
unsigned int dcx_DockBuilderSplitNode(unsigned int node_id, int split_dir, float size_ratio_for_node_at_dir, unsigned int* out_ids);
void dcx_DockBuilderDockWindow(const char* window_name, unsigned int node_id);
void dcx_DockBuilderFinish(unsigned int node_id);
/** Central node id of the tree rooted at `node_id`, or 0 when there is none. */
unsigned int dcx_DockBuilderGetCentralNode(unsigned int node_id);

#ifdef __cplusplus
}
#endif
