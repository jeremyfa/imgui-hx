package imguics;

import imguics.ImGui;

// Haxe externs over the hand-written DCImGuiExtra.cs companion shim.

@:native('DCImGuiExtra') extern class DCImGuiExtra {
    static function dcx_ImGuiStyle_GetColor(style:cs.system.IntPtr, idx:Int, outColor:cs.Out<ImVec4>):Void;
    static function dcx_ImGuiStyle_SetColor(style:cs.system.IntPtr, idx:Int, x:Single, y:Single, z:Single, w:Single):Void;
    static function dcx_ImGuiSelectionBasicStorage_SetAdapter(self:cs.system.IntPtr, adapter:cs.system.IntPtr):Void;
    static function dcx_ImFontConfig_Construct(self:cs.system.IntPtr):Void;
    static function dcx_ImGuiListClipper_Construct(self:cs.system.IntPtr):Void;
    static function dcx_ImGuiSelectionBasicStorage_Construct(self:cs.system.IntPtr):Void;
}
