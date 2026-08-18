// Hand-written companion to the GENERATED DCImGui.cs: P/Invoke declarations
// for the extra glue (dcimgui_extra_glue.cpp) that regeneration never touches.

using System.Runtime.InteropServices;

public static class DCImGuiExtra {

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImGuiStyle_GetColor(System.IntPtr style, int idx, out ImVec4 outColor);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImGuiStyle_SetColor(System.IntPtr style, int idx, float x, float y, float z, float w);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImGuiSelectionBasicStorage_SetAdapter(System.IntPtr self, System.IntPtr adapter);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImFontConfig_Construct(System.IntPtr self);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImGuiListClipper_Construct(System.IntPtr self);

    [DllImport("dcimgui", CallingConvention = CallingConvention.Cdecl)]
    public static extern void dcx_ImGuiSelectionBasicStorage_Construct(System.IntPtr self);

}
