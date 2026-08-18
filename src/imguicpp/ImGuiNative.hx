package imguicpp;

/**
 * Hand-written native helpers backed by linc_imgui.cpp - NOT generated.
 * Only for things a plain extern can't express (callbacks crossing the
 * C → Haxe boundary).
 */
@:keep
@:include('linc_imgui.h')
extern class ImGuiNative {

    /**
     * Route ImGui's clipboard (ImGuiPlatformIO function pointers) through
     * Haxe functions. Call after `ImGui.createContext()`.
     */
    @:native('linc::imgui::setClipboardHandlers')
    static function setClipboardHandlers(get:Void->String, set:String->Void):Void;

}
