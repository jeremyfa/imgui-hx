// hxcpp include should be first
#include <hxcpp.h>
#include "./linc_imgui.h"

#include <string>

// The bindings call the dear_bindings C API (dcimgui.cpp) directly; this
// translation unit only holds the few native helpers that can't be expressed
// as plain externs (callbacks crossing the C → Haxe boundary).

namespace linc {
    namespace imgui {

        static ::Dynamic clipboardGet;
        static ::Dynamic clipboardSet;
        static bool clipboardRooted = false;
        // ImGui expects the returned pointer to stay valid until the next call.
        static std::string clipboardBuffer;

        static const char* getClipboardText(ImGuiContext* ctx) {
            (void)ctx;
            if (hx::IsNull(clipboardGet)) return NULL;
            ::Dynamic result = clipboardGet();
            if (hx::IsNull(result)) return NULL;
            ::String text = result;
            const char* utf8 = text.utf8_str();
            clipboardBuffer = utf8 != NULL ? utf8 : "";
            return clipboardBuffer.c_str();
        }

        static void setClipboardText(ImGuiContext* ctx, const char* text) {
            (void)ctx;
            if (hx::IsNull(clipboardSet)) return;
            clipboardSet(::String::create(text != NULL ? text : ""));
        }

        void setClipboardHandlers(::Dynamic get, ::Dynamic set) {
            if (!clipboardRooted) {
                clipboardRooted = true;
                hx::GCAddRoot((hx::Object**)&clipboardGet.mPtr);
                hx::GCAddRoot((hx::Object**)&clipboardSet.mPtr);
            }
            clipboardGet = get;
            clipboardSet = set;

            ImGuiPlatformIO* platformIO = ImGui_GetPlatformIO();
            platformIO->Platform_GetClipboardTextFn = getClipboardText;
            platformIO->Platform_SetClipboardTextFn = setClipboardText;
        }

    }
}
