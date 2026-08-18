package;

import ceramic.Color;
import ceramic.Quad;
import ceramic.Scene;
import ceramic.Visual;
import ceramic.Shortcuts.*;
import imgui.ImGui;
import imgui.ImGuiFonts;
import imgui.ImGuiThemes;

/**
 * Dear ImGui × ceramic demo: the full ImGui demo window plus a small custom
 * window, rendered THROUGH ceramic's own pipeline (cross-backend renderable),
 * over animated ceramic 2D content - proving the two pipelines compose and
 * that input capture works (interact with ImGui vs click through to the app).
 */
class MainScene extends Scene {

    var quads:Array<Quad> = [];
    var time:Float = 0;
    var clicks:Int = 0;
    var showNativeDemo:Bool = true;
    var showHaxeDemo:Bool = true;
    var sliderValue:Float = 0.5;
    var checkValue:Bool = true;
    var playerName:String = 'ceramic';
    var tint:Array<Float> = [1.0, 1.0, 1.0, 1.0];

    // Style & Fonts test window state
    var showStyleWindow:Bool = true;
    var showMonoWindow:Bool = true;
    var themeIdx:Int = 0; // 0 = DarkBlue (Sixze), 1 = Dark, 2 = Light, 3 = Classic
    var themeHue:Float = 0.0;
    var themeSaturation:Float = 1.0;
    var themeSaturationAccent:Float = 1.0;
    var themeTransparency:Float = 0.95;
    var themeBorderSize:Float = 0.0;
    var themeApplied:Bool = false;
    var fontsLoaded:Bool = false;
    var cousineFont:ImGuiFontPtr = #if cpp null #else cast 0 #end;
    var proggyFont:ImGuiFontPtr = #if cpp null #else cast 0 #end;
    var perWindowFontSize:Float = 15.0;

    // Ceramic visuals in imgui state
    var showVisualsWindow:Bool = true;
    var spinningQuad:Quad = null;
    var quadGroup:Visual = null;
    var groupQuads:Array<Quad> = [];
    var bigVisual:Visual = null;
    var interactiveGroup:Visual = null;
    var interactiveQuads:Array<Quad> = [];
    var buttonQuad:Quad = null;
    var buttonClicks:Int = 0;
    var visualsTime:Float = 0;
    var gameArea:Visual = null;
    var gameBg:Quad = null;
    var gamePlayer:Quad = null;
    var gamePlayerX:Float = 100;
    var gamePlayerY:Float = 60;
    var aaQuad:Quad = null;
    var aaQuadSmooth:Quad = null;
    var pixelQuadGroup:Visual = null;
    var pixelQuadGroup2:Visual = null;

    override function preload() {

        // Second TTF used to demonstrate per-window fonts (Roboto-Medium is
        // the global default font, loaded by the plugin via `imgui_font`).
        assets.add('binary:Cousine-Regular.ttf.bin');

    }

    override function create() {

        // ImGui context is up (plugin loader ran before scenes), we can add
        // fonts at any time with 1.92 dynamic fonts.
        var cousineBytes = assets.bytes('binary:Cousine-Regular.ttf.bin');
        if (cousineBytes != null) {
            cousineFont = ImGuiFonts.addFontFromBytes(cousineBytes);
            proggyFont = ImGuiFonts.addDefaultFont();
            fontsLoaded = true;
        }

        createImGuiVisualsContent();

        // Animated ceramic 2D content behind the UI.
        for (i in 0...12) {
            var q = new Quad();
            q.color = Color.fromHSB((i * 30) % 360, 0.6, 0.9);
            q.size(60, 60);
            q.anchor(0.5, 0.5);
            q.depth = 1;
            add(q);
            quads.push(q);
        }

    }

    override function update(delta:Float):Void {

        time += delta;

        for (i in 0...quads.length) {
            var q = quads[i];
            var a = time * 0.6 + (i / quads.length) * Math.PI * 2;
            q.pos(
                width * 0.5 + Math.cos(a) * (200 + 60 * Math.sin(time * 0.8 + i)),
                height * 0.5 + Math.sin(a) * (160 + 40 * Math.cos(time + i))
            );
            q.rotation = (time * 40 + i * 12) % 360;
        }

        // --- Dear ImGui UI (rendered by the plugin's cross-backend renderable) ---

        // Apply the DarkBlue theme once at startup (global style change)
        if (!themeApplied) {
            themeApplied = true;
            ImGuiThemes.applyDarkBlue();
        }

        if (showStyleWindow) styleAndFontsWindow();
        if (showMonoWindow) monoWindow();
        if (showVisualsWindow) ceramicVisualsWindow(delta);

        if (showNativeDemo) ImGui.showDemoWindow();
        if (showHaxeDemo) imgui.demo.ImGuiDemo.showDemoWindow();

        ImGui.setNextWindowPos(ImVec2.make(20, 20), ImGuiCond.FirstUseEver);
        if (ImGui.begin('Ceramic × Dear ImGui')) {
            ImGui.text('ImGui ' + ImGui.getVersion() + ' - rendered through ceramic');
            ImGui.separator();
            if (ImGui.button('Click me')) clicks++;
            ImGui.sameLine();
            ImGui.text('clicks: ' + clicks);
            ImGui.checkbox('Native demo', showNativeDemo);
            ImGui.sameLine();
            ImGui.checkbox('Haxe demo', showHaxeDemo);
            // Out-params are plain lvalues (portable, zero allocation):
            ImGui.sliderFloat('A slider', sliderValue, 0.0, 1.0);
            ImGui.checkbox('A checkbox', checkValue);
            ImGui.inputText('Name', playerName, 64);
            if (ImGui.colorEdit4('Quads tint', tint)) {
                for (q in quads) {
                    q.color = Color.fromRGBFloat(tint[0], tint[1], tint[2]);
                    q.alpha = tint[3];
                }
            }
            ImGui.text('Hello ' + playerName + '!');
            ImGui.text('Capture mouse: ' + ceramic.ImGuiSystem.shared.wantCaptureMouse);

            // Any ceramic texture can be displayed in ImGui widgets through
            // the texture registry (cross-backend, no pointer casts).
            var fontTexture = ceramic.App.app.defaultFont.pages.get(0);
            if (fontTexture != null) {
                ImGui.separator();
                ImGui.text('ImGui.image() with a ceramic texture:');
                ImGui.image(
                    ceramic.ImGuiTextures.textureRef(fontTexture),
                    ImVec2.make(fontTexture.width * 0.5, fontTexture.height * 0.5)
                );
            }
        }
        ImGui.end();

    }


    /**
     * Test window for global themes/fonts: theme selector with DarkBlue
     * parameters, global font size, and font showcase.
     */
    function styleAndFontsWindow():Void {

        ImGui.setNextWindowPos(ImVec2.make(20, 420), ImGuiCond.FirstUseEver);
        ImGui.setNextWindowSize(ImVec2.make(420, 400), ImGuiCond.FirstUseEver);
        if (!ImGui.begin('Style & Fonts', showStyleWindow)) {
            ImGui.end();
            return;
        }

        var style = ImGui.getStyle();

        // --- Global theme ---
        ImGui.separatorText('Global theme');
        var themeChanged = ImGui.combo('Theme', themeIdx, 'DarkBlue (Sixze)\x00Dark\x00Light\x00Classic\x00');
        if (themeIdx == 0) {
            themeChanged = ImGui.sliderFloatEx('Hue', themeHue, 0.0, 1.0, '%.2f') || themeChanged;
            themeChanged = ImGui.sliderFloatEx('Saturation', themeSaturation, 0.0, 6.0, '%.2f') || themeChanged;
            themeChanged = ImGui.sliderFloatEx('Saturation accent', themeSaturationAccent, 0.0, 6.0, '%.2f') || themeChanged;
            themeChanged = ImGui.sliderFloatEx('Transparency', themeTransparency, 0.0, 1.0, '%.2f') || themeChanged;
            themeChanged = ImGui.sliderFloatEx('Border size', themeBorderSize, 0.0, 2.0, '%.0f') || themeChanged;
        }
        if (themeChanged) applyCurrentTheme();

        // --- Global font size ---
        ImGui.separatorText('Global font size');
        ImGui.sliderFloatEx('style.FontSizeBase', style.fontSizeBase, 10.0, 30.0, '%.0f');
        ImGui.sameLine();
        imgui.demo.ImGuiDemo.helpMarker('With ImGui 1.92 dynamic fonts, TTF fonts are re-rasterized at any size: no blurry scaling.');

        // --- Fonts showcase ---
        ImGui.separatorText('Fonts');
        ImGui.text('Default font: Roboto-Medium (imgui_font define)');
        if (fontsLoaded) {
            ImGui.pushFontFloat(proggyFont, 13);
            ImGui.text('ProggyClean 13px: the old pixelated default font');
            ImGui.popFont();
            ImGui.pushFontFloat(cousineFont, 0);
            ImGui.text('Cousine (mono), loaded with ImGuiFonts.addFontFromBytes()');
            ImGui.popFont();

            var roboto = ceramic.ImGuiSystem.shared.customFont;
            ImGui.pushFontFloat(roboto, 24);
            ImGui.text('Roboto 24px, smooth at any size');
            ImGui.popFont();

            // Kosugi is merged into Roboto as a fallback (imgui_font_fallback):
            // Japanese glyphs come from it transparently.
            ImGui.text('CJK fallback: こんにちは 日本語 (Kosugi merged)');
        }

        ImGui.end();

    }

    /**
     * A window demonstrating PER-WINDOW font and style overrides:
     * mono font + orange accent + square corners, without touching the
     * global style.
     */
    function monoWindow():Void {

        if (!fontsLoaded)
            return;

        ImGui.pushFontFloat(cousineFont, perWindowFontSize);
        ImGui.pushStyleColorImVec4(ImGuiCol.TitleBgActive, ImVec4.make(0.75, 0.35, 0.05, 1.0));
        ImGui.pushStyleColorImVec4(ImGuiCol.Button, ImVec4.make(0.85, 0.45, 0.10, 0.80));
        ImGui.pushStyleColorImVec4(ImGuiCol.ButtonHovered, ImVec4.make(0.95, 0.55, 0.15, 1.0));
        ImGui.pushStyleColorImVec4(ImGuiCol.ButtonActive, ImVec4.make(1.0, 0.65, 0.25, 1.0));
        ImGui.pushStyleColorImVec4(ImGuiCol.CheckMark, ImVec4.make(1.0, 0.60, 0.20, 1.0));
        ImGui.pushStyleColorImVec4(ImGuiCol.SliderGrab, ImVec4.make(0.95, 0.55, 0.15, 1.0));
        ImGui.pushStyleVar(ImGuiStyleVar.FrameRounding, 0.0);
        ImGui.pushStyleVar(ImGuiStyleVar.GrabRounding, 0.0);

        ImGui.setNextWindowPos(ImVec2.make(460, 420), ImGuiCond.FirstUseEver);
        if (ImGui.begin('Mono window (per-window overrides)', showMonoWindow)) {
            ImGui.text('This window uses Cousine (mono font),');
            ImGui.text('an orange accent and square corners,');
            ImGui.text('via push/pop around Begin()/End().');
            ImGui.separator();
            ImGui.button('An orange button');
            ImGui.checkbox('A checkbox', checkValue);
            ImGui.sliderFloatEx('Font size', perWindowFontSize, 10.0, 24.0, '%.0f');
        }
        ImGui.end();

        ImGui.popStyleVarEx(2);
        ImGui.popStyleColorEx(6);
        ImGui.popFont();

    }

    /** Reapply the currently selected global theme. */
    function applyCurrentTheme():Void {
        switch (themeIdx) {
            case 0:
                ImGuiThemes.applyDarkBlue(themeHue, themeSaturation, themeSaturationAccent, themeTransparency, themeBorderSize);
            case 1, 2, 3:
                // Built-in palettes only change colors: also reset the style
                // sizes that applyDarkBlue customizes, back to ImGui defaults.
                var style = ImGui.getStyle();
                style.frameBorderSize = 0.0;
                style.imageBorderSize = 0.0;
                style.tabBorderSize = 0.0;
                style.tabBarBorderSize = 1.0;
                style.windowRounding = 0.0;
                style.childRounding = 0.0;
                style.frameRounding = 0.0;
                style.grabRounding = 0.0;
                style.tabRounding = 4.0;
                if (themeIdx == 1) ImGui.styleColorsDark();
                else if (themeIdx == 2) ImGui.styleColorsLight();
                else ImGui.styleColorsClassic();
            case _:
        }
    }


    /** Create the visuals displayed inside the imgui UI (owned by the UI, no parent needed). */
    function createImGuiVisualsContent():Void {

        // A single spinning quad
        spinningQuad = new Quad();
        spinningQuad.size(80, 80);
        spinningQuad.color = Color.fromHSB(200, 0.7, 0.95);

        // A group of quads (composite visual)
        quadGroup = new Visual();
        quadGroup.size(200, 120);
        for (i in 0...4) {
            var q = new Quad();
            q.size(42, 42);
            q.anchor(0.5, 0.5);
            q.color = Color.fromHSB((i * 70) % 360, 0.7, 0.95);
            quadGroup.add(q);
            groupQuads.push(q);
        }

        // A large visual (exceeds the shared atlas page: dedicated render texture)
        bigVisual = new Visual();
        bigVisual.size(1600, 900);
        var bigBg = new Quad();
        bigBg.size(1600, 900);
        bigBg.color = Color.fromHSB(260, 0.35, 0.35);
        bigBg.depth = 1;
        bigVisual.add(bigBg);
        for (i in 0...10) {
            var q = new Quad();
            q.size(120, 120);
            q.anchor(0.5, 0.5);
            q.pos(160 * i + 80, 450 + Math.sin(i) * 250);
            q.color = Color.fromHSB((i * 36) % 360, 0.8, 0.95);
            q.depth = 2;
            bigVisual.add(q);
        }

        // An interactive group: quads react to ceramic pointer events
        interactiveGroup = new Visual();
        interactiveGroup.size(220, 80);
        for (i in 0...3) {
            var q = new Quad();
            q.size(60, 60);
            q.anchor(0.5, 0.5);
            q.pos(40 + i * 70, 40);
            q.color = Color.GRAY;
            q.onPointerOver(this, _ -> q.color = Color.YELLOW);
            q.onPointerOut(this, _ -> q.color = Color.GRAY);
            q.onPointerDown(this, _ -> q.color = Color.fromHSB(Math.random() * 360, 0.8, 0.95));
            interactiveGroup.add(q);
            interactiveQuads.push(q);
        }

        // A tiny keyboard-controlled "game": a player quad in a bounded area.
        // Its window focus state decides whether it reads keyboard input.
        gameArea = new Visual();
        gameArea.size(200, 120);
        gameBg = new Quad();
        gameBg.size(200, 120);
        gameBg.color = Color.fromHSB(120, 0.25, 0.25);
        gameBg.depth = 1;
        gameArea.add(gameBg);
        gamePlayer = new Quad();
        gamePlayer.size(16, 16);
        gamePlayer.anchor(0.5, 0.5);
        gamePlayer.color = Color.LIME;
        gamePlayer.depth = 2;
        gameArea.add(gamePlayer);

        // Two identical rotated quads to compare antialiasing settings
        aaQuad = new Quad();
        aaQuad.size(70, 70);
        aaQuad.color = Color.fromHSB(30, 0.8, 0.95);
        aaQuadSmooth = new Quad();
        aaQuadSmooth.size(70, 70);
        aaQuadSmooth.color = Color.fromHSB(30, 0.8, 0.95);

        // Two tiny "pixel-art" visuals (2x2 checker of 4px quads), displayed
        // enlarged: one with LINEAR sampling, one with NEAREST.
        inline function makePixelGroup():Visual {
            var group = new Visual();
            group.size(8, 8);
            for (i in 0...4) {
                var q = new Quad();
                q.size(4, 4);
                q.pos((i % 2) * 4, Std.int(i / 2) * 4);
                q.color = (i == 0 || i == 3) ? Color.fromHSB(200, 0.8, 0.95) : Color.fromHSB(50, 0.9, 0.95);
                group.add(q);
            }
            return group;
        }
        pixelQuadGroup = makePixelGroup();
        pixelQuadGroup2 = makePixelGroup();

        // A quad used as an image button
        buttonQuad = new Quad();
        buttonQuad.size(48, 48);
        buttonQuad.color = Color.ORANGE;

    }

    /** Test window: ceramic visuals displayed inside imgui via ImGuiVisuals. */
    function ceramicVisualsWindow(delta:Float):Void {

        visualsTime += delta;

        // Animate the content (it renders live in the imgui UI)
        if (spinningQuad != null) spinningQuad.rotation = (visualsTime * 90) % 360;
        for (i in 0...groupQuads.length) {
            var q = groupQuads[i];
            var a = visualsTime * 1.5 + i * Math.PI * 0.5;
            q.pos(100 + Math.cos(a) * 60, 60 + Math.sin(a) * 30);
            q.rotation = (visualsTime * 60 + i * 45) % 360;
        }

        ImGui.setNextWindowPos(ImVec2.make(900, 420), ImGuiCond.FirstUseEver);
        ImGui.setNextWindowSize(ImVec2.make(420, 620), ImGuiCond.FirstUseEver);
        if (!ImGui.begin('Ceramic visuals', showVisualsWindow)) {
            ImGui.end();
            return;
        }

        ImGui.textWrapped('Ceramic visuals rendered offscreen and displayed inside the ImGui layout with ImGuiVisuals.visual().');
        ImGui.separator();

        ImGui.text('Spinning quad (auto size):');
        ceramic.ImGuiVisuals.visual(spinningQuad);

        ImGui.text('Composite group, scale-to-fit in 120x72:');
        ceramic.ImGuiVisuals.visual(quadGroup, 120, 72);
        ImGui.sameLine();
        ImGui.text('<- same visual twice ->');
        ImGui.sameLine();
        ceramic.ImGuiVisuals.visual(quadGroup, 120, 72);

        ImGui.text('Interactive (hover/click the squares):');
        ceramic.ImGuiVisuals.visual(interactiveGroup);

        // Mini keyboard game: reads arrow keys / WASD ONLY when its imgui
        // window is focused (click the window first).
        var gameFocused = ceramic.ImGuiVisuals.isWindowFocused(gameArea);
        if (gameFocused) {
            var speed = 140 * delta;
            var input = ceramic.App.app.input;
            // Scan codes: physical key positions, layout independent (WASD works on AZERTY too)
            if (input.scanPressed(ceramic.ScanCode.LEFT) || input.scanPressed(ceramic.ScanCode.KEY_A)) gamePlayerX -= speed;
            if (input.scanPressed(ceramic.ScanCode.RIGHT) || input.scanPressed(ceramic.ScanCode.KEY_D)) gamePlayerX += speed;
            if (input.scanPressed(ceramic.ScanCode.UP) || input.scanPressed(ceramic.ScanCode.KEY_W)) gamePlayerY -= speed;
            if (input.scanPressed(ceramic.ScanCode.DOWN) || input.scanPressed(ceramic.ScanCode.KEY_S)) gamePlayerY += speed;
            gamePlayerX = Math.max(8, Math.min(192, gamePlayerX));
            gamePlayerY = Math.max(8, Math.min(112, gamePlayerY));
        }
        gamePlayer.pos(gamePlayerX, gamePlayerY);
        gameBg.color = gameFocused ? Color.fromHSB(120, 0.45, 0.35) : Color.fromHSB(120, 0.25, 0.25);

        ImGui.text('Keyboard mini game (arrows/WASD), window focused: ' + gameFocused);
        ceramic.ImGuiVisuals.visual(gameArea);

        if (ceramic.ImGuiVisuals.visualButton('##visualbtn', buttonQuad)) {
            buttonClicks++;
            buttonQuad.color = Color.fromHSB(Math.random() * 360, 0.8, 0.95);
        }
        ImGui.sameLine();
        ImGui.text('visualButton, clicks: ' + buttonClicks);

        ImGui.text('Large visual (1600x900 -> dedicated render texture):');
        ceramic.ImGuiVisuals.visual(bigVisual, 380, 214, false);

        // Per-visual offscreen texture settings
        if (aaQuad != null) {
            aaQuad.rotation = 30;
            aaQuadSmooth.rotation = 30;
        }
        ImGui.text('Antialiasing: none vs MSAA 8, clamped to GPU max (rotated edges):');
        ceramic.ImGuiVisuals.visual(aaQuad, 90, 90, false);
        ImGui.sameLine();
        ceramic.ImGuiVisuals.visual(aaQuadSmooth, 90, 90, false, 8);

        ImGui.text('Texture filter: LINEAR vs NEAREST (8x8 pixel art at 64x64):');
        ceramic.ImGuiVisuals.visual(pixelQuadGroup, 64, 64, false, 0, null, true);
        ImGui.sameLine();
        ceramic.ImGuiVisuals.visual(pixelQuadGroup2, 64, 64, false, 0, NEAREST, true);

        ImGui.separator();
        ImGui.text('Entries: ' + ceramic.ImGuiVisuals.numEntries + ' (dedicated: ' + ceramic.ImGuiVisuals.numDedicated + ')');


        ImGui.end();

    }

}
