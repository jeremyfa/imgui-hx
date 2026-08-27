package imgui;

import imgui.ImGui;

/**
 * Portable access to the parts of `ImGuiStyle` the generator cannot bind: the
 * `Colors[]` C array, and the next-frame font size. Backed by the hand-written
 * dcimgui_extra_glue.cpp helpers, compiled into every target.
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class ImGuiStyleExtra {

    public static function getStyleColor(style:#if cpp cpp.Star<ImGuiStyle> #else ImGuiStyle #end, idx:ImGuiCol):ImVec4 {
        #if cpp
        var x:cpp.Float32 = 0;
        var y:cpp.Float32 = 0;
        var z:cpp.Float32 = 0;
        var w:cpp.Float32 = 0;
        untyped __cpp__('{ ImVec4 _c; dcx_ImGuiStyle_GetColor({0}, {1}, &_c); {2} = _c.x; {3} = _c.y; {4} = _c.z; {5} = _c.w; }',
            style, (idx:Int), x, y, z, w);
        return ImVec4.make(x, y, z, w);
        #elseif js
        imguijs.ImGuiJs.M._dcx_ImGuiStyle_GetColor((style:Int), (idx:Int), imguijs.ImGuiJs.vecScratch);
        return ImVec4.make(
            imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch),
            imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4),
            imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 8),
            imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 12)
        );
        #elseif cs
        var v = new ImVec4(0, 0, 0, 0);
        imguics.DCImGuiExtra.dcx_ImGuiStyle_GetColor(imguics.ImGuiCs.ptr((style:Float)), (idx:Int), v);
        return v;
        #else
        return cast null;
        #end
    }

    /**
     * Set the base font size, taking effect at the next frame.
     *
     * Assigning `style.fontSizeBase` from inside a frame does nothing: ImGui
     * restores that field from the frame's own value as it builds it, so the
     * one place a size slider can run is the one place the assignment is lost.
     * This goes through the separate field ImGui keeps for the purpose (the one
     * its own style editor uses).
     *
     * A size of 0 means "leave it alone" to ImGui, so it is ignored here.
     */
    public static function setNextFrameFontSizeBase(style:#if cpp cpp.Star<ImGuiStyle> #else ImGuiStyle #end, size:Float):Void {
        if (size <= 0) return;
        #if cpp
        untyped __cpp__('dcx_ImGuiStyle_SetNextFrameFontSizeBase({0}, (float){1})', style, size);
        #elseif js
        imguijs.ImGuiJs.M._dcx_ImGuiStyle_SetNextFrameFontSizeBase((style:Int), size);
        #elseif cs
        imguics.DCImGuiExtra.dcx_ImGuiStyle_SetNextFrameFontSizeBase(imguics.ImGuiCs.ptr((style:Float)), size);
        #end
    }

    public static function setStyleColor(style:#if cpp cpp.Star<ImGuiStyle> #else ImGuiStyle #end, idx:ImGuiCol, color:ImVec4):Void {
        #if cpp
        untyped __cpp__('dcx_ImGuiStyle_SetColor({0}, {1}, (float){2}, (float){3}, (float){4}, (float){5})',
            style, (idx:Int), color.x, color.y, color.z, color.w);
        #elseif js
        imguijs.ImGuiJs.M._dcx_ImGuiStyle_SetColor((style:Int), (idx:Int), color.x, color.y, color.z, color.w);
        #elseif cs
        imguics.DCImGuiExtra.dcx_ImGuiStyle_SetColor(imguics.ImGuiCs.ptr((style:Float)), (idx:Int), color.x, color.y, color.z, color.w);
        #end
    }

}
