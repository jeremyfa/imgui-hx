package imgui;

import imgui.ImGui;

/**
 * Where (and whether) Dear ImGui persists window layout.
 *
 * By default ImGui reads and writes `imgui.ini` in the **process working
 * directory** — which on a packaged app means inside the bundle, and on web
 * means nowhere useful. `io.IniFilename` cannot be set from the portable API
 * (it is a `const char*` whose storage ImGui keeps a pointer to), hence this
 * helper: it owns the string on the native side.
 *
 * An app that persists the layout itself (through its own storage, a database,
 * a game engine's save system...) calls `disable()` once at startup and then
 * uses `ImGui.saveIniSettingsToMemory()` / `ImGui.loadIniSettingsFromMemory()`.
 * With ini file IO off, ImGui raises `io.wantSaveIniSettings` when the layout
 * changed and there is something worth saving.
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class ImGuiIniSettings {

    /**
     * Turn off ImGui's own ini file reading and writing. Layout then only
     * persists if the app saves it (see `ImGui.saveIniSettingsToMemory`).
     */
    public static function disable():Void {

        #if cpp
        untyped __cpp__('dcx_SetIniFilename(NULL)');
        #elseif js
        imguijs.ImGuiJs.M._dcx_SetIniFilename(0);
        #elseif cs
        imguics.DCImGuiExtra.dcx_SetIniFilename(null);
        #end

    }

    /**
     * Point ImGui's ini file at an explicit path (it then loads it on the next
     * frame and saves it on its own, every `io.iniSavingRate` seconds).
     */
    public static function setFilename(path:String):Void {

        if (path == null) {
            disable();
            return;
        }

        #if cpp
        untyped __cpp__('dcx_SetIniFilename({0})', path.utf8_str());
        #elseif js
        imguijs.ImGuiJs.M._dcx_SetIniFilename(imguijs.ImGuiJs.str(path));
        #elseif cs
        imguics.DCImGuiExtra.dcx_SetIniFilename(path);
        #end

    }

}
