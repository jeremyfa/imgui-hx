package imgui;

import imgui.ImGui;
import imgui.ImGuiStyleExtra;

/**
 * Ready-to-use ImGui themes (hand-written, never regenerated).
 *
 * All of it goes through the portable facade (style fields +
 * ImGuiStyleExtra.setStyleColor), so it works identically on hxcpp,
 * js/wasm and C#/Unity.
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class ImGuiThemes {

    /**
     * Dark blue theme by Sixze (dear imgui issue #707), with adjustable hue,
     * saturation and transparency.
     *
     * @param hue Hue shift, [0,1] range (0 = original blue).
     * @param saturation Saturation scale for backgrounds/text, [0,6] range.
     * @param saturationAccent Saturation scale for accents, [0,6] range.
     * @param transparency Window/child/title background opacity, [0,1].
     * @param borderSize Frame/image/tab border size (0 = borderless look).
     */
    public static function applyDarkBlue(hue:Float = 0.0, saturation:Float = 1.0, saturationAccent:Float = 1.0, transparency:Float = 0.95, borderSize:Float = 0.0):Void {

        var style = ImGui.getStyle();

        style.frameBorderSize = borderSize;
        style.imageBorderSize = borderSize;
        style.tabBorderSize = borderSize;
        style.tabBarBorderSize = 3.0;
        style.windowRounding = 4.0;
        style.childRounding = 4.0;
        style.frameRounding = 4.0;
        style.grabRounding = 4.0;
        style.tabRounding = 4.0;

        var textColor = adjust(ImVec4.make(1.000, 1.000, 1.000, 1.000), hue, saturation);
        var textDimmedColor = adjust(ImVec4.make(0.357, 0.482, 0.549, 1.000), hue, saturation);
        var backgroundColor = adjust(ImVec4.make(0.110, 0.149, 0.169, 1.000), hue, saturation);
        var backgroundChildColor = adjust(ImVec4.make(0.090, 0.122, 0.141, 1.000), hue, saturation);
        var backgroundDimmedColor = adjust(ImVec4.make(0.000, 0.000, 0.000, 0.600), hue, saturation);
        var titleColor = adjust(ImVec4.make(0.078, 0.102, 0.122, 1.000), hue, saturation);
        var headerColor = adjust(ImVec4.make(0.184, 0.247, 0.286, 1.000), hue, saturation);
        var accent1Color = adjust(ImVec4.make(0.000, 0.490, 1.000, 1.000), hue, saturationAccent);
        var accent2Color = adjust(ImVec4.make(0.000, 0.412, 0.824, 1.000), hue, saturationAccent);
        var accent1AlternativeColor = adjust(ImVec4.make(0.302, 0.408, 0.475, 1.000), hue, saturationAccent);
        var accent2AlternativeColor = adjust(ImVec4.make(0.251, 0.337, 0.392, 1.000), hue, saturationAccent);
        var transparentColor = ImVec4.make(0.0, 0.0, 0.0, 0.0);

        var backgroundTransparentColor = ImVec4.make(backgroundColor.x, backgroundColor.y, backgroundColor.z, backgroundColor.w * transparency);
        var backgroundChildTransparentColor = ImVec4.make(backgroundChildColor.x, backgroundChildColor.y, backgroundChildColor.z, backgroundChildColor.w * transparency);
        var titleTransparentColor = ImVec4.make(titleColor.x, titleColor.y, titleColor.z, titleColor.w * transparency);
        var headerTransparentColor = ImVec4.make(headerColor.x, headerColor.y, headerColor.z, headerColor.w * transparency);

        inline function col(idx:Int, c:ImVec4):Void {
            ImGuiStyleExtra.setStyleColor(style, idx, c);
        }

        col(ImGuiCol.Text, textColor);
        col(ImGuiCol.TextDisabled, textDimmedColor);
        col(ImGuiCol.WindowBg, backgroundTransparentColor);
        col(ImGuiCol.ChildBg, backgroundChildTransparentColor);
        col(ImGuiCol.PopupBg, backgroundChildTransparentColor);
        col(ImGuiCol.Border, titleColor);
        col(ImGuiCol.BorderShadow, transparentColor);
        col(ImGuiCol.FrameBg, headerTransparentColor);
        col(ImGuiCol.FrameBgHovered, accent1AlternativeColor);
        col(ImGuiCol.FrameBgActive, accent2AlternativeColor);
        col(ImGuiCol.TitleBg, headerTransparentColor);
        col(ImGuiCol.TitleBgActive, titleTransparentColor);
        col(ImGuiCol.TitleBgCollapsed, headerTransparentColor);
        col(ImGuiCol.MenuBarBg, backgroundChildTransparentColor);
        col(ImGuiCol.ScrollbarBg, titleTransparentColor);
        col(ImGuiCol.ScrollbarGrab, headerColor);
        col(ImGuiCol.ScrollbarGrabHovered, accent1AlternativeColor);
        col(ImGuiCol.ScrollbarGrabActive, accent2AlternativeColor);
        col(ImGuiCol.CheckMark, accent1Color);
        col(ImGuiCol.SliderGrab, accent1Color);
        col(ImGuiCol.SliderGrabActive, accent2Color);
        col(ImGuiCol.Button, headerTransparentColor);
        col(ImGuiCol.ButtonHovered, accent1Color);
        col(ImGuiCol.ButtonActive, accent2Color);
        col(ImGuiCol.Header, headerTransparentColor);
        col(ImGuiCol.HeaderHovered, accent1Color);
        col(ImGuiCol.HeaderActive, accent2Color);
        col(ImGuiCol.Separator, headerColor);
        col(ImGuiCol.SeparatorHovered, accent1Color);
        col(ImGuiCol.SeparatorActive, accent2Color);
        col(ImGuiCol.ResizeGrip, headerColor);
        col(ImGuiCol.ResizeGripHovered, accent1Color);
        col(ImGuiCol.ResizeGripActive, accent2Color);
        col(ImGuiCol.InputTextCursor, textColor);
        col(ImGuiCol.TabHovered, accent1Color);
        col(ImGuiCol.Tab, transparentColor);
        col(ImGuiCol.TabSelected, headerTransparentColor);
        col(ImGuiCol.TabSelectedOverline, transparentColor);
        col(ImGuiCol.TabDimmed, transparentColor);
        col(ImGuiCol.TabDimmedSelected, backgroundChildTransparentColor);
        col(ImGuiCol.TabDimmedSelectedOverline, transparentColor);
        col(ImGuiCol.DockingPreview, headerColor);
        col(ImGuiCol.DockingEmptyBg, backgroundTransparentColor);
        col(ImGuiCol.PlotLines, textDimmedColor);
        col(ImGuiCol.PlotLinesHovered, accent1Color);
        col(ImGuiCol.PlotHistogram, textDimmedColor);
        col(ImGuiCol.PlotHistogramHovered, accent1Color);
        col(ImGuiCol.TableHeaderBg, backgroundChildTransparentColor);
        col(ImGuiCol.TableBorderStrong, titleColor);
        col(ImGuiCol.TableBorderLight, headerColor);
        col(ImGuiCol.TableRowBg, backgroundTransparentColor);
        col(ImGuiCol.TableRowBgAlt, backgroundChildTransparentColor);
        col(ImGuiCol.TextLink, accent1Color);
        col(ImGuiCol.TextSelectedBg, accent1Color);
        col(ImGuiCol.TreeLines, textDimmedColor);
        col(ImGuiCol.DragDropTarget, accent1Color);
        col(ImGuiCol.DragDropTargetBg, transparentColor);
        col(ImGuiCol.UnsavedMarker, accent1Color);
        col(ImGuiCol.NavCursor, accent1Color);
        col(ImGuiCol.NavWindowingHighlight, accent1Color);
        col(ImGuiCol.NavWindowingDimBg, backgroundDimmedColor);
        col(ImGuiCol.ModalWindowDimBg, backgroundDimmedColor);

    }

    /** Shift hue and scale saturation of a color (HSV round-trip). */
    static function adjust(color:ImVec4, hueShift:Float, saturationScale:Float):ImVec4 {
        var h = 0.0, s = 0.0, v = 0.0;
        ImGui.colorConvertRGBtoHSV(color.x, color.y, color.z, h, s, v);
        h += hueShift;
        s *= saturationScale;
        var r = 0.0, g = 0.0, b = 0.0;
        ImGui.colorConvertHSVtoRGB(h, s, v, r, g, b);
        return ImVec4.make(r, g, b, color.w);
    }

}
