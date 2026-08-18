package imgui;

import imgui.ImGui;

#if cpp
typedef ImGuiFontPtr = cpp.Star<ImFont>;
#else
typedef ImGuiFontPtr = ImFont;
#end

/**
 * Cross-target font loading helpers (hand-written, never regenerated).
 *
 * With Dear ImGui 1.92 dynamic fonts (RendererHasTextures backends), fonts
 * can be added at any time and are rasterized on demand at any size, so
 * `sizePixels` is usually left at 0 (the size then follows
 * `style.fontSizeBase` and `pushFontFloat`).
 *
 * ```haxe
 * var font = ImGuiFonts.addFontFromBytes(myTtfBytes);
 * ImGui.getIO().fontDefault = font;            // global default font
 * // or per window / per widget:
 * ImGui.pushFontFloat(font, 18);
 * ...
 * ImGui.popFont();
 * ```
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class ImGuiFonts {

    /**
     * Add a TTF/OTF font to the atlas from haxe.io.Bytes. Returns the ImFont
     * handle (target-typed). `sizePixels` = 0 uses the dynamic default size.
     *
     * With `merge` = true, the font is MERGED into the previously added font
     * instead of creating a new one: use this to add fallback glyphs (e.g.
     * Japanese/CJK coverage, icons) to a base font. Order matters: add the
     * merge font right after its base font.
     *
     * The TTF data is copied to native memory that stays alive for the whole
     * app lifetime (the atlas does NOT own it, fontDataOwnedByAtlas=false,
     * to avoid any cross-target allocator mismatch; native malloc memory is
     * not garbage collected so no retention is needed).
     */
    public static function addFontFromBytes(bytes:haxe.io.Bytes, sizePixels:Float = 0.0, merge:Bool = false):ImGuiFontPtr {

        var data = NativeStructs.allocBytesFromHaxe(bytes);

        var cfg = NativeStructs.createFontConfig();
        cfg.fontDataOwnedByAtlas = false;
        cfg.mergeMode = merge;

        var io = ImGui.getIO();
        var atlas = io.fonts;
        #if cpp
        var font = ImFontAtlas.addFontFromMemoryTTF(atlas, cast data, bytes.length, sizePixels, cfg, null);
        #else
        var font = ImFontAtlas.addFontFromMemoryTTF(atlas, data, bytes.length, sizePixels, cfg, 0);
        #end

        NativeStructs.destroyFontConfig(cfg); // The atlas copied the config

        return font;

    }

    /**
     * Add ImGui's built-in default font (ProggyClean) to the atlas and
     * return its handle. Useful to keep the pixel font around after
     * switching `io.fontDefault` to a custom TTF.
     */
    public static function addDefaultFont():ImGuiFontPtr {
        var io = ImGui.getIO();
        var atlas = io.fonts;
        #if cpp
        return ImFontAtlas.addFontDefault(atlas, null);
        #else
        return ImFontAtlas.addFontDefault(atlas, cast 0);
        #end
    }

}
