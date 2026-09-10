package imgui.macros;

#if macro

import haxe.macro.Context;

/**
 * Init macro run for every project using this library (see extraParams.hxml).
 *
 * On C#, the callback trampolines are reached from the native side: the
 * hand-written `imguics/DCImGuiCallbacks.cs` companion (copied next to the
 * generated C# code) calls `imgui.ImGuiCallbacks.dispatch*`. Nothing in Haxe
 * has to reference that class, so a project using no ImGui callback would
 * never pull the module in, and the exported C# project would fail to
 * compile with "the type or namespace name 'ImGuiCallbacks' does not exist
 * in the namespace 'imgui'".
 *
 * Force the module to be typed there; its `dispatch*` methods are already
 * `@:keep`, so DCE leaves the entry points alone.
 */
class ImGuiKeep {

    public static function init():Void {

        if (!Context.defined('cs')) return;

        Context.onAfterInitMacros(() -> {
            Context.getType('imgui.ImGuiCallbacks');
        });

    }

}

#end
