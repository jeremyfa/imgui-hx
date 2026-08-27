// Hand-written companion to the GENERATED DCImGui.cs: P/Invoke declarations
// for the extra glue (dcimgui_extra_glue.cpp) that regeneration never touches.

using System.Runtime.InteropServices;

public static class DCImGuiExtra {

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImGuiStyle_GetColor(System.IntPtr style, int idx, out ImVec4 outColor);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImGuiStyle_SetColor(System.IntPtr style, int idx, float x, float y, float z, float w);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImGuiStyle_SetNextFrameFontSizeBase(System.IntPtr style, float size);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImGuiSelectionBasicStorage_SetAdapter(System.IntPtr self, System.IntPtr adapter);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_SetIniFilename([MarshalAs(UnmanagedType.LPUTF8Str)] string path);

    // DockBuilder (imgui_internal.h), see dcimgui_extra_dockbuilder.cpp
    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcx_DockBuilderAddNode(uint nodeId, int flags);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcx_DockBuilderAddDockSpaceNode(uint nodeId, int extraFlags);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_DockBuilderRemoveNode(uint nodeId);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_DockBuilderRemoveNodeChildNodes(uint nodeId);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_DockBuilderSetNodePos(uint nodeId, float x, float y);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_DockBuilderSetNodeSize(uint nodeId, float w, float h);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern int dcx_DockBuilderNodeExists(uint nodeId);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcx_DockBuilderSplitNode(uint nodeId, int splitDir, float sizeRatioForNodeAtDir, uint[] outIds);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_DockBuilderDockWindow([MarshalAs(UnmanagedType.LPUTF8Str)] string windowName, uint nodeId);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_DockBuilderFinish(uint nodeId);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern uint dcx_DockBuilderGetCentralNode(uint nodeId);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImFontConfig_Construct(System.IntPtr self);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImGuiListClipper_Construct(System.IntPtr self);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImGuiSelectionBasicStorage_Construct(System.IntPtr self);

}
