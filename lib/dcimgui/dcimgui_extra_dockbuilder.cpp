// Hand-written DockBuilder wrappers (see dcimgui_extra.h). Separate TU because
// it needs imgui_internal.h, where the programmatic docking API lives.
//
// Kept apart from the GENERATED dcimgui glue so regeneration never loses it,
// and compiled into every target (linc XML for hxcpp, build-web.sh for wasm,
// build-*.sh for the Unity native libs).

#ifdef __EMSCRIPTEN__
#include <emscripten.h>
#define DCX_EXPORT EMSCRIPTEN_KEEPALIVE
#elif defined(_WIN32)
#define DCX_EXPORT __declspec(dllexport)
#else
#define DCX_EXPORT __attribute__((visibility("default")))
#endif

#include "imgui.h"
#include "imgui_internal.h"

extern "C" {

DCX_EXPORT unsigned int dcx_DockBuilderAddNode(unsigned int node_id, int flags) {
    return (unsigned int)ImGui::DockBuilderAddNode((ImGuiID)node_id, (ImGuiDockNodeFlags)flags);
}

DCX_EXPORT unsigned int dcx_DockBuilderAddDockSpaceNode(unsigned int node_id, int extra_flags) {
    return (unsigned int)ImGui::DockBuilderAddNode((ImGuiID)node_id,
        (ImGuiDockNodeFlags)(extra_flags | ImGuiDockNodeFlags_DockSpace));
}

DCX_EXPORT void dcx_DockBuilderRemoveNode(unsigned int node_id) {
    ImGui::DockBuilderRemoveNode((ImGuiID)node_id);
}

DCX_EXPORT void dcx_DockBuilderRemoveNodeChildNodes(unsigned int node_id) {
    ImGui::DockBuilderRemoveNodeChildNodes((ImGuiID)node_id);
}

DCX_EXPORT void dcx_DockBuilderSetNodePos(unsigned int node_id, float x, float y) {
    ImGui::DockBuilderSetNodePos((ImGuiID)node_id, ImVec2(x, y));
}

DCX_EXPORT void dcx_DockBuilderSetNodeSize(unsigned int node_id, float w, float h) {
    ImGui::DockBuilderSetNodeSize((ImGuiID)node_id, ImVec2(w, h));
}

DCX_EXPORT int dcx_DockBuilderNodeExists(unsigned int node_id) {
    return ImGui::DockBuilderGetNode((ImGuiID)node_id) != NULL ? 1 : 0;
}

DCX_EXPORT unsigned int dcx_DockBuilderSplitNode(unsigned int node_id, int split_dir, float size_ratio_for_node_at_dir, unsigned int* out_ids) {
    if (out_ids) {
        out_ids[0] = 0u;
        out_ids[1] = 0u;
    }
    // Upstream asserts on a missing node and then dereferences the child nodes
    // it expects the split to have produced. Asserts are compiled out here
    // (NDEBUG), so guard rather than crash: a Haxe caller cannot check this.
    if (split_dir < 0 || ImGui::DockBuilderGetNode((ImGuiID)node_id) == NULL) {
        return 0u;
    }
    ImGuiID at_dir = 0;
    ImGuiID at_opposite = 0;
    ImGui::DockBuilderSplitNode((ImGuiID)node_id, (ImGuiDir)split_dir, size_ratio_for_node_at_dir, &at_dir, &at_opposite);
    if (out_ids) {
        out_ids[0] = (unsigned int)at_dir;
        out_ids[1] = (unsigned int)at_opposite;
    }
    return (unsigned int)at_dir;
}

DCX_EXPORT void dcx_DockBuilderDockWindow(const char* window_name, unsigned int node_id) {
    ImGui::DockBuilderDockWindow(window_name, (ImGuiID)node_id);
}

DCX_EXPORT void dcx_DockBuilderFinish(unsigned int node_id) {
    ImGui::DockBuilderFinish((ImGuiID)node_id);
}

DCX_EXPORT unsigned int dcx_DockBuilderGetCentralNode(unsigned int node_id) {
    ImGuiDockNode* node = ImGui::DockBuilderGetCentralNode((ImGuiID)node_id);
    return node ? (unsigned int)node->ID : 0u;
}

}
