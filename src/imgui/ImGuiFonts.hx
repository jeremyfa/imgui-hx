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
     * Reference size used when a glyph offset is requested without one.
     * Matches ImGui's own default font size.
     */
    public static inline final DEFAULT_REFERENCE_SIZE:Float = 16.0;

    /**
     * Add a TTF/OTF font to the atlas from haxe.io.Bytes. Returns the ImFont
     * handle (target-typed). `sizePixels` = 0 uses the dynamic default size.
     *
     * With `merge` = true, the font is MERGED into the previously added font
     * instead of creating a new one: use this to add fallback glyphs (e.g.
     * Japanese/CJK coverage, icons) to a base font. Order matters: add the
     * merge font right after its base font.
     *
     * The TTF data is copied to native memory allocated with ImGui's OWN
     * allocator and handed over to the atlas (fontDataOwnedByAtlas=true):
     * since 1.92 the data must stay alive for the whole life of the atlas,
     * and ImGui releases it with `IM_FREE` when the atlas source goes away
     * (so with the context). Keeping ownership on our side instead would
     * leak one copy of every font per context - which an editor that reloads
     * the app in-process (Unity's play mode) turns into a leak per run.
     */
    public static function addFontFromBytes(bytes:haxe.io.Bytes, sizePixels:Float = 0.0, merge:Bool = false):ImGuiFontPtr {

        var data = NativeStructs.allocImGuiBytesFromHaxe(bytes);

        var cfg = NativeStructs.createFontConfig();
        cfg.fontDataOwnedByAtlas = true;
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
     * Add a font, restricted to a range of codepoints and optionally nudged
     * vertically. This is what an ICON font needs: icon sets live in the
     * private use area, and merging one into the text font usually requires a
     * small vertical offset so the glyphs sit on the text baseline.
     *
     * ```haxe
     * // Text font first, then the icons merged into it
     * ImGuiFonts.addFontFromBytes(textBytes);
     * ImGuiFonts.addFontFromBytesRanged(iconBytes, 0, true, [0xE000, 0xF8FF], 3);
     * ```
     *
     * Kept to five parameters on purpose: hxcpp only generates reflection
     * wrappers for static functions up to six arguments.
     *
     * @param bytes       the TTF data
     * @param sizePixels  0 to follow `style.fontSizeBase`. Must be non zero
     *                    when `offsetY` is used: ImGui scales the offset
     *                    relative to it, and asserts otherwise. A reference
     *                    size is substituted automatically if you forget.
     * @param merge       merge into the previously added font
     * @param ranges      pairs of inclusive codepoint bounds, e.g. `[0xE000, 0xF8FF]`
     * @param offsetY     vertical nudge, expressed at `sizePixels`, scaled
     *                    with the font when it is rendered at another size
     */
    public static function addFontFromBytesRanged(bytes:haxe.io.Bytes, sizePixels:Float = 0.0, merge:Bool = false, ?ranges:Array<Int>, offsetY:Float = 0):ImGuiFontPtr {

        var data = NativeStructs.allocImGuiBytesFromHaxe(bytes);

        // A glyph offset is expressed relative to a reference size, so ImGui
        // asserts when one is given without the other. Substitute its own
        // default rather than letting the caller hit an assertion.
        if (offsetY != 0 && sizePixels == 0) {
            sizePixels = DEFAULT_REFERENCE_SIZE;
        }

        var cfg = NativeStructs.createFontConfig();
        cfg.fontDataOwnedByAtlas = true;
        cfg.mergeMode = merge;
        cfg.glyphOffset = ImVec2.make(0, offsetY);

        // A zero terminated list of ImWchar pairs, which must stay alive as
        // long as the font: `glyphRanges` is ImGui's LEGACY field, the one
        // pointer it never frees itself (unlike the font data above, or
        // `glyphExcludeRanges`), so this small buffer stays ours and is never
        // released - a handful of bytes per font, not a blob per font.
        // The address type follows the target (see NativeStructs.allocBytes),
        // and so does its "no ranges" value: null on cpp, 0 elsewhere.
        #if cpp
        var rangesPtr:cpp.RawPointer<cpp.UInt8> = null;
        #elseif cs
        var rangesPtr:Float = 0;
        #else
        var rangesPtr:Int = 0;
        #end
        if (ranges != null && ranges.length > 0) {
            var count = ranges.length + 1;
            var buffer = NativeStructs.allocBytes(count * 2);
            for (i in 0...ranges.length) {
                NativeStructs.setI16(buffer, i * 2, ranges[i]);
            }
            NativeStructs.setI16(buffer, ranges.length * 2, 0);
            rangesPtr = buffer;
        }

        var io = ImGui.getIO();
        var atlas = io.fonts;
        #if cpp
        var font = ImFontAtlas.addFontFromMemoryTTF(atlas, cast data, bytes.length, sizePixels, cfg, cast rangesPtr);
        #else
        var font = ImFontAtlas.addFontFromMemoryTTF(atlas, data, bytes.length, sizePixels, cfg, rangesPtr);
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
