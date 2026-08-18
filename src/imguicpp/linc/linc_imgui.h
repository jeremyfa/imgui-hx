#pragma once

// hxcpp include should be first
#ifndef HXCPP_H
#include <hxcpp.h>
#endif

// Header the Haxe/hxcpp externs bind against: the dear_bindings C API ONLY.
// dcimgui.h must NEVER share a translation unit with imgui.h (its C-view struct
// typedefs clash with the C++ types); dcimgui.cpp is the single place both meet
// (it wraps the C view in `namespace cimgui`, extern "C" linkage crosses it).
//
// The old linc_* variadic shims are gone: dcimgui already exposes C-friendly
// variants (including *Unformatted/*V forms) for everything the bindings need.
// Hand-written native helpers, if ever needed again, belong here.
#include "dcimgui.h"
#include "dcimgui_extra.h"

namespace linc {
    namespace imgui {

        // Route ImGui's clipboard (ImGuiPlatformIO function pointers) through
        // Haxe closures: `get` is Void->String, `set` is String->Void.
        // Must be called after ImGui_CreateContext().
        extern void setClipboardHandlers(::Dynamic get, ::Dynamic set);

    }
}
