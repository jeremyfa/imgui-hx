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

    static function dcx_SetIniFilename(path:String):Void;
    static function dcx_DockBuilderAddNode(nodeId:UInt, flags:Int):UInt;
    static function dcx_DockBuilderAddDockSpaceNode(nodeId:UInt, extraFlags:Int):UInt;
    static function dcx_DockBuilderRemoveNode(nodeId:UInt):Void;
    static function dcx_DockBuilderRemoveNodeChildNodes(nodeId:UInt):Void;
    static function dcx_DockBuilderSetNodePos(nodeId:UInt, x:Single, y:Single):Void;
    static function dcx_DockBuilderSetNodeSize(nodeId:UInt, w:Single, h:Single):Void;
    static function dcx_DockBuilderNodeExists(nodeId:UInt):Int;
    static function dcx_DockBuilderSplitNode(nodeId:UInt, splitDir:Int, sizeRatioForNodeAtDir:Single, outIds:cs.NativeArray<UInt>):UInt;
    static function dcx_DockBuilderDockWindow(windowName:String, nodeId:UInt):Void;
    static function dcx_DockBuilderFinish(nodeId:UInt):Void;
    static function dcx_DockBuilderGetCentralNode(nodeId:UInt):UInt;
}
