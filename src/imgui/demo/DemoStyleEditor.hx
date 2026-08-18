package imgui.demo;

import imgui.ImGui;
import imgui.ImGuiStyleExtra;
import imgui.ImGuiTextFilterHx;
import imgui.demo.ImGuiDemo.helpMarker;

/**
 * ShowStyleEditor port (imgui_demo.cpp).
 *
 * ADAPTED parts:
 * - the "ref" style is a snapshot of the COLORS only (a full ImGuiStyle copy
 *   is not exposed by the bindings), so Save/Revert applies to colors;
 * - ShowFontSelector/ShowFontAtlas are not in the C ABI, the Fonts tab shows
 *   basic font info instead.
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoStyleEditor {

    static var styleIdx:Int = -1;
    static var styleNames:Array<String> = ['Dark', 'Light', 'Classic'];

    static var refColors:Array<Float> = null; // 4 floats per ImGuiCol (colors snapshot = our "ref")
    static var outputDest:Int = 0;
    static var outputOnlyModified:Bool = true;
    static var filter:ImGuiTextFilterHx = new ImGuiTextFilterHx();
    static var alphaFlags:Int = 0;

    // Scratch for ImVec2 style fields editing
    static var v2:Array<Float> = [0.0, 0.0];
    static var colorScratch:Array<Float> = [0.0, 0.0, 0.0, 0.0];

    /** ShowStyleSelector port. */
    public static function showStyleSelector(label:String):Bool {
        var ret = false;
        if (ImGui.beginCombo(label, (styleIdx >= 0 && styleIdx < styleNames.length) ? styleNames[styleIdx] : '')) {
            for (n in 0...styleNames.length) {
                if (ImGui.selectableEx(styleNames[n], styleIdx == n, ImGuiSelectableFlags.SelectOnNav, ImVec2.make(0, 0))) {
                    styleIdx = n;
                    ret = true;
                    switch (styleIdx) {
                        case 0: ImGui.styleColorsDark();
                        case 1: ImGui.styleColorsLight();
                        case 2: ImGui.styleColorsClassic();
                        case _:
                    }
                }
                else if (styleIdx == n) {
                    ImGui.setItemDefaultFocus();
                }
            }
            ImGui.endCombo();
        }
        return ret;
    }

    static function treeLinesFlagsName(flags:Int):String {
        if (flags == ImGuiTreeNodeFlags.DrawLinesNone) return 'DrawLinesNone';
        if (flags == ImGuiTreeNodeFlags.DrawLinesFull) return 'DrawLinesFull';
        if (flags == ImGuiTreeNodeFlags.DrawLinesToNodes) return 'DrawLinesToNodes';
        return '';
    }

    /** Snapshot the current style colors as the "ref" (ADAPTED: colors only). */
    static function saveRefColors():Void {
        var style = ImGui.getStyle();
        if (refColors == null)
            refColors = [for (_ in 0...((ImGuiCol.COUNT:Int) * 4)) 0.0];
        for (i in 0...(ImGuiCol.COUNT:Int)) {
            var col = ImGuiStyleExtra.getStyleColor(style, i);
            refColors[i * 4] = col.x;
            refColors[i * 4 + 1] = col.y;
            refColors[i * 4 + 2] = col.z;
            refColors[i * 4 + 3] = col.w;
        }
    }

    /** ShowStyleEditor port (body only; caller provides the window). */
    public static function showStyleEditor():Void {

        var style = ImGui.getStyle();
        var io = ImGui.getIO();

        if (refColors == null)
            saveRefColors();

        // ADAPTED: style._MainScale is internal, use 1.0 as the default border size
        var defaultBorderSize = 1.0;
        var maxBorderSize = defaultBorderSize > 2.0 ? defaultBorderSize : 2.0;

        ImGui.pushItemWidth(ImGui.getWindowWidth() * 0.50);

        {
            ImGui.separatorText('General');
            if ((io.backendFlags & ImGuiBackendFlags.RendererHasTextures) == 0) {
                ImGui.bulletText('Warning: Font scaling will NOT be smooth, because\nImGuiBackendFlags_RendererHasTextures is not set!');
                ImGui.bulletText('For instructions, see:');
                ImGui.sameLine();
                ImGui.textLinkOpenURLEx('docs/BACKENDS.md', 'https://github.com/ocornut/imgui/blob/master/docs/BACKENDS.md');
            }

            if (showStyleSelector('Colors##Selector'))
                saveRefColors();
            ImGui.textDisabled('Fonts##Selector: (adapted: single font, ShowFontSelector needs the font atlas API)');
            ImGui.dragFloatEx('FontSizeBase', style.fontSizeBase, 0.20, 5.0, 100.0, '%.0f');
            ImGui.sameLineEx(0.0, 0.0); ImGui.text(' (out ' + fmt2(ImGui.getFontSize()) + ')');
            ImGui.dragFloatEx('FontScaleMain', style.fontScaleMain, 0.02, 0.5, 4.0);
            ImGui.beginDisabled(io.configDpiScaleFonts);
            ImGui.dragFloatEx('FontScaleDpi', style.fontScaleDpi, 0.02, 0.5, 4.0);
            ImGui.setItemTooltip('When io.ConfigDpiScaleFonts is set, this value is automatically overwritten.');
            ImGui.endDisabled();

            if (ImGui.sliderFloatEx('FrameRounding', style.frameRounding, 0.0, 12.0, '%.0f'))
                style.grabRounding = style.frameRounding; // Make GrabRounding always the same value as FrameRounding
            {
                var border = (style.windowBorderSize > 0.0);
                if (ImGui.checkbox('WindowBorder', border)) style.windowBorderSize = border ? defaultBorderSize : 0.0;
            }
            ImGui.sameLine();
            {
                var border = (style.frameBorderSize > 0.0);
                if (ImGui.checkbox('FrameBorder', border)) style.frameBorderSize = border ? defaultBorderSize : 0.0;
            }
            ImGui.sameLine();
            {
                var border = (style.popupBorderSize > 0.0);
                if (ImGui.checkbox('PopupBorder', border)) style.popupBorderSize = border ? defaultBorderSize : 0.0;
            }
        }

        if (ImGui.button('Save Ref'))
            saveRefColors();
        ImGui.sameLine();
        if (ImGui.button('Revert Ref')) {
            for (i in 0...(ImGuiCol.COUNT:Int))
                ImGuiStyleExtra.setStyleColor(style, i, ImVec4.make(refColors[i * 4], refColors[i * 4 + 1], refColors[i * 4 + 2], refColors[i * 4 + 3]));
        }
        ImGui.sameLine();
        helpMarker(
            'Save/Revert in local non-persistent storage. Default Colors definition are not affected. '
            + 'Use "Export" below to save them somewhere. (adapted: Save/Revert applies to colors only)');

        ImGui.separatorText('Details');
        if (ImGui.beginTabBar('##tabs', ImGuiTabBarFlags.None)) {

            if (ImGui.beginTabItem('Sizes')) {
                ImGui.separatorText('Main');
                if (sliderVec2('WindowPadding', style.windowPadding, 0.0, 20.0, '%.0f')) style.windowPadding = v2Vec();
                if (sliderVec2('FramePadding', style.framePadding, 0.0, 20.0, '%.0f')) style.framePadding = v2Vec();
                if (sliderVec2('ItemSpacing', style.itemSpacing, 0.0, 20.0, '%.0f')) style.itemSpacing = v2Vec();
                if (sliderVec2('ItemInnerSpacing', style.itemInnerSpacing, 0.0, 20.0, '%.0f')) style.itemInnerSpacing = v2Vec();
                if (sliderVec2('TouchExtraPadding', style.touchExtraPadding, 0.0, 10.0, '%.0f')) style.touchExtraPadding = v2Vec();
                ImGui.sliderFloatEx('IndentSpacing', style.indentSpacing, 0.0, 30.0, '%.0f');
                ImGui.sliderFloatEx('GrabMinSize', style.grabMinSize, 1.0, 20.0, '%.0f');

                ImGui.separatorText('Borders');
                ImGui.sliderFloatEx('WindowBorderSize', style.windowBorderSize, 0.0, maxBorderSize, '%.0f');
                ImGui.sliderFloatEx('ChildBorderSize', style.childBorderSize, 0.0, maxBorderSize, '%.0f');
                ImGui.sliderFloatEx('PopupBorderSize', style.popupBorderSize, 0.0, maxBorderSize, '%.0f');
                ImGui.sliderFloatEx('FrameBorderSize', style.frameBorderSize, 0.0, maxBorderSize, '%.0f');

                ImGui.separatorText('Rounding');
                ImGui.sliderFloatEx('WindowRounding', style.windowRounding, 0.0, 12.0, '%.0f');
                ImGui.sliderFloatEx('ChildRounding', style.childRounding, 0.0, 12.0, '%.0f');
                ImGui.sliderFloatEx('FrameRounding', style.frameRounding, 0.0, 12.0, '%.0f');
                ImGui.sliderFloatEx('PopupRounding', style.popupRounding, 0.0, 12.0, '%.0f');
                ImGui.sliderFloatEx('GrabRounding', style.grabRounding, 0.0, 12.0, '%.0f');

                ImGui.separatorText('Scrollbar');
                ImGui.sliderFloatEx('ScrollbarSize', style.scrollbarSize, 1.0, 20.0, '%.0f');
                ImGui.sliderFloatEx('ScrollbarRounding', style.scrollbarRounding, 0.0, 12.0, '%.0f');
                ImGui.sliderFloatEx('ScrollbarPadding', style.scrollbarPadding, 0.0, 10.0, '%.0f');

                ImGui.separatorText('Tabs');
                ImGui.sliderFloatEx('TabBorderSize', style.tabBorderSize, 0.0, maxBorderSize, '%.0f');
                ImGui.sliderFloatEx('TabBarBorderSize', style.tabBarBorderSize, 0.0, maxBorderSize, '%.0f');
                ImGui.sliderFloatEx('TabBarOverlineSize', style.tabBarOverlineSize, 0.0, maxBorderSize > 3.0 ? maxBorderSize : 3.0, '%.0f');
                ImGui.sameLine(); helpMarker('Overline is only drawn over the selected tab when ImGuiTabBarFlags_DrawSelectedOverline is set.');
                ImGui.dragFloatEx('TabMinWidthBase', style.tabMinWidthBase, 0.5, 1.0, 500.0, '%.0f');
                ImGui.dragFloatEx('TabMinWidthShrink', style.tabMinWidthShrink, 0.5, 1.0, 500.0, '%.0f');
                ImGui.dragFloatEx('TabCloseButtonMinWidthSelected', style.tabCloseButtonMinWidthSelected, 0.5, -1.0, 100.0, (style.tabCloseButtonMinWidthSelected < 0.0) ? '%.0f (Always)' : '%.0f');
                ImGui.dragFloatEx('TabCloseButtonMinWidthUnselected', style.tabCloseButtonMinWidthUnselected, 0.5, -1.0, 100.0, (style.tabCloseButtonMinWidthUnselected < 0.0) ? '%.0f (Always)' : '%.0f');
                ImGui.sliderFloatEx('TabRounding', style.tabRounding, 0.0, 12.0, '%.0f');

                ImGui.separatorText('Tables');
                if (sliderVec2('CellPadding', style.cellPadding, 0.0, 20.0, '%.0f')) style.cellPadding = v2Vec();
                ImGui.sliderAngleEx('TableAngledHeadersAngle', style.tableAngledHeadersAngle, -50.0, 50.0);
                if (sliderVec2('TableAngledHeadersTextAlign', style.tableAngledHeadersTextAlign, 0.0, 1.0, '%.2f')) style.tableAngledHeadersTextAlign = v2Vec();

                ImGui.separatorText('Trees');
                var comboOpen = ImGui.beginCombo('TreeLinesFlags', treeLinesFlagsName(style.treeLinesFlags));
                ImGui.sameLine();
                helpMarker('[Experimental] Tree lines may not work in all situations (e.g. using a clipper) and may incurs slight traversal overhead.\n\nImGuiTreeNodeFlags_DrawLinesFull is faster than ImGuiTreeNodeFlags_DrawLinesToNode.');
                if (comboOpen) {
                    var options:Array<Int> = [ImGuiTreeNodeFlags.DrawLinesNone, ImGuiTreeNodeFlags.DrawLinesFull, ImGuiTreeNodeFlags.DrawLinesToNodes];
                    for (option in options)
                        if (ImGui.selectableEx(treeLinesFlagsName(option), style.treeLinesFlags == option, 0, ImVec2.make(0, 0)))
                            style.treeLinesFlags = option;
                    ImGui.endCombo();
                }
                ImGui.sliderFloatEx('TreeLinesSize', style.treeLinesSize, 0.0, maxBorderSize, '%.0f');
                ImGui.sliderFloatEx('TreeLinesRounding', style.treeLinesRounding, 0.0, 12.0, '%.0f');

                ImGui.separatorText('Windows');
                if (sliderVec2('WindowTitleAlign', style.windowTitleAlign, 0.0, 1.0, '%.2f')) style.windowTitleAlign = v2Vec();
                ImGui.sliderFloatEx('WindowBorderHoverPadding', style.windowBorderHoverPadding, 1.0, 20.0, '%.0f');
                var windowMenuButtonPosition:Int = style.windowMenuButtonPosition + 1;
                if (ImGui.combo('WindowMenuButtonPosition', windowMenuButtonPosition, 'None\x00Left\x00Right\x00'))
                    style.windowMenuButtonPosition = windowMenuButtonPosition - 1;

                ImGui.separatorText('Widgets');
                ImGui.sliderFloatEx('ColorMarkerSize', style.colorMarkerSize, 0.0, 8.0, '%.0f');
                var colorButtonPosition:Int = style.colorButtonPosition;
                if (ImGui.combo('ColorButtonPosition', colorButtonPosition, 'Left\x00Right\x00'))
                    style.colorButtonPosition = colorButtonPosition;
                if (sliderVec2('ButtonTextAlign', style.buttonTextAlign, 0.0, 1.0, '%.2f')) style.buttonTextAlign = v2Vec();
                ImGui.sameLine(); helpMarker('Alignment applies when a button is larger than its text content.');
                if (sliderVec2('SelectableTextAlign', style.selectableTextAlign, 0.0, 1.0, '%.2f')) style.selectableTextAlign = v2Vec();
                ImGui.sameLine(); helpMarker('Alignment applies when a selectable is larger than its text content.');
                ImGui.sliderFloatEx('SeparatorSize', style.separatorSize, 0.0, 10.0, '%.0f');
                ImGui.sliderFloatEx('SeparatorTextBorderSize', style.separatorTextBorderSize, 0.0, 10.0, '%.0f');
                if (sliderVec2('SeparatorTextAlign', style.separatorTextAlign, 0.0, 1.0, '%.2f')) style.separatorTextAlign = v2Vec();
                if (sliderVec2('SeparatorTextPadding', style.separatorTextPadding, 0.0, 40.0, '%.0f')) style.separatorTextPadding = v2Vec();
                ImGui.sliderFloatEx('LogSliderDeadzone', style.logSliderDeadzone, 0.0, 12.0, '%.0f');
                ImGui.sliderFloatEx('ImageRounding', style.imageRounding, 0.0, 12.0, '%.0f');
                ImGui.sliderFloatEx('ImageBorderSize', style.imageBorderSize, 0.0, maxBorderSize, '%.0f');

                ImGui.separatorText('Docking');
                ImGui.checkbox('DockingNodeHasCloseButton', style.dockingNodeHasCloseButton);
                ImGui.sliderFloatEx('DockingSeparatorSize', style.dockingSeparatorSize, 0.0, 12.0, '%.0f');

                ImGui.separatorText('Tooltips');
                for (n in 0...2) {
                    if (ImGui.treeNodeEx(n == 0 ? 'HoverFlagsForTooltipMouse' : 'HoverFlagsForTooltipNav')) {
                        var p:Int = (n == 0) ? style.hoverFlagsForTooltipMouse : style.hoverFlagsForTooltipNav;
                        ImGui.checkboxFlagsIntPtr('ImGuiHoveredFlags_DelayNone', p, ImGuiHoveredFlags.DelayNone);
                        ImGui.checkboxFlagsIntPtr('ImGuiHoveredFlags_DelayShort', p, ImGuiHoveredFlags.DelayShort);
                        ImGui.checkboxFlagsIntPtr('ImGuiHoveredFlags_DelayNormal', p, ImGuiHoveredFlags.DelayNormal);
                        ImGui.checkboxFlagsIntPtr('ImGuiHoveredFlags_Stationary', p, ImGuiHoveredFlags.Stationary);
                        ImGui.checkboxFlagsIntPtr('ImGuiHoveredFlags_NoSharedDelay', p, ImGuiHoveredFlags.NoSharedDelay);
                        if (n == 0) style.hoverFlagsForTooltipMouse = p;
                        else style.hoverFlagsForTooltipNav = p;
                        ImGui.treePop();
                    }
                }

                ImGui.separatorText('Misc');
                if (sliderVec2('DisplayWindowPadding', style.displayWindowPadding, 0.0, 30.0, '%.0f')) style.displayWindowPadding = v2Vec();
                ImGui.sameLine(); helpMarker('Apply to regular windows: amount which we enforce to keep visible when moving near edges of your screen.');
                if (sliderVec2('DisplaySafeAreaPadding', style.displaySafeAreaPadding, 0.0, 30.0, '%.0f')) style.displaySafeAreaPadding = v2Vec();
                ImGui.sameLine(); helpMarker('Apply to every windows, menus, popups, tooltips: amount where we avoid displaying contents. Adjust if you cannot see the edges of your screen (e.g. on a TV where scaling has not been configured).');

                ImGui.endTabItem();
            }

            if (ImGui.beginTabItem('Colors')) {

                if (ImGui.button('Export')) {
                    if (outputDest == 0)
                        ImGui.logToClipboard();
                    else
                        ImGui.logToTTY();
                    ImGui.logText('ImVec4* colors = GetStyle().Colors;\n');
                    for (i in 0...(ImGuiCol.COUNT:Int)) {
                        var col = ImGuiStyleExtra.getStyleColor(style, i);
                        var name = ImGui.getStyleColorName(i);
                        var modified = col.x != refColors[i * 4] || col.y != refColors[i * 4 + 1] || col.z != refColors[i * 4 + 2] || col.w != refColors[i * 4 + 3];
                        if (!outputOnlyModified || modified) {
                            var pad = StringTools.rpad('', ' ', name.length < 23 ? 23 - name.length : 0);
                            ImGui.logText('colors[ImGuiCol_' + name + ']' + pad + '= ImVec4(' + fmt2(col.x) + 'f, ' + fmt2(col.y) + 'f, ' + fmt2(col.z) + 'f, ' + fmt2(col.w) + 'f);\n');
                        }
                    }
                    ImGui.logFinish();
                }
                ImGui.sameLine(); ImGui.setNextItemWidth(ImGui.getFontSize() * 10); ImGui.combo('##output_type', outputDest, 'To Clipboard\x00To TTY\x00');
                ImGui.sameLine(); ImGui.checkbox('Only Modified Colors', outputOnlyModified);

                filter.draw('Filter colors', ImGui.getFontSize() * 16);

                if (ImGui.radioButton('Opaque', alphaFlags == ImGuiColorEditFlags.AlphaOpaque)) { alphaFlags = ImGuiColorEditFlags.AlphaOpaque; } ImGui.sameLine();
                if (ImGui.radioButton('Alpha', alphaFlags == ImGuiColorEditFlags.None)) { alphaFlags = ImGuiColorEditFlags.None; } ImGui.sameLine();
                if (ImGui.radioButton('Both', alphaFlags == ImGuiColorEditFlags.AlphaPreviewHalf)) { alphaFlags = ImGuiColorEditFlags.AlphaPreviewHalf; } ImGui.sameLine();
                helpMarker(
                    'In the color list:\n'
                    + 'Left-click on color square to open color picker,\n'
                    + 'Right-click to open edit options menu.');

                ImGui.setNextWindowSizeConstraints(ImVec2.make(0.0, ImGui.getTextLineHeightWithSpacing() * 10), ImVec2.make(3.402823466e38, 3.402823466e38));
                ImGui.beginChild('##colors', ImVec2.make(0, 0), ImGuiChildFlags.Borders | ImGuiChildFlags.NavFlattened, ImGuiWindowFlags.AlwaysVerticalScrollbar | ImGuiWindowFlags.AlwaysHorizontalScrollbar);
                ImGui.pushItemWidth(ImGui.getFontSize() * -12);
                for (i in 0...(ImGuiCol.COUNT:Int)) {
                    var name = ImGui.getStyleColorName(i);
                    if (!filter.passFilter(name))
                        continue;
                    ImGui.pushIDInt(i);
                    if (ImGui.button('?'))
                        ImGui.debugFlashStyleColor(i);
                    ImGui.setItemTooltip('Flash given color to identify places where it is used.');
                    ImGui.sameLine();
                    var col = ImGuiStyleExtra.getStyleColor(style, i);
                    colorScratch[0] = col.x; colorScratch[1] = col.y; colorScratch[2] = col.z; colorScratch[3] = col.w;
                    if (ImGui.colorEdit4('##color', colorScratch, ImGuiColorEditFlags.AlphaBar | alphaFlags))
                        ImGuiStyleExtra.setStyleColor(style, i, ImVec4.make(colorScratch[0], colorScratch[1], colorScratch[2], colorScratch[3]));
                    var modified = colorScratch[0] != refColors[i * 4] || colorScratch[1] != refColors[i * 4 + 1] || colorScratch[2] != refColors[i * 4 + 2] || colorScratch[3] != refColors[i * 4 + 3];
                    if (modified) {
                        var innerSpacing = style.itemInnerSpacing;
                        ImGui.sameLineEx(0.0, innerSpacing.x);
                        if (ImGui.button('Save')) {
                            refColors[i * 4] = colorScratch[0]; refColors[i * 4 + 1] = colorScratch[1];
                            refColors[i * 4 + 2] = colorScratch[2]; refColors[i * 4 + 3] = colorScratch[3];
                        }
                        ImGui.sameLineEx(0.0, innerSpacing.x);
                        if (ImGui.button('Revert'))
                            ImGuiStyleExtra.setStyleColor(style, i, ImVec4.make(refColors[i * 4], refColors[i * 4 + 1], refColors[i * 4 + 2], refColors[i * 4 + 3]));
                    }
                    var innerSpacing2 = style.itemInnerSpacing;
                    ImGui.sameLineEx(0.0, innerSpacing2.x);
                    ImGui.textUnformatted(name);
                    ImGui.popID();
                }
                ImGui.popItemWidth();
                ImGui.endChild();

                ImGui.endTabItem();
            }

            if (ImGui.beginTabItem('Fonts')) {
                // ADAPTED: ShowFontAtlas is not exposed by the C ABI, show basic font info
                ImGui.textDisabled('(adapted: ShowFontAtlas needs the font atlas API)');
                ImGui.text('FontSize = ' + ImGui.getFontSize());
                ImGui.text('style.FontSizeBase = ' + style.fontSizeBase);
                ImGui.text('style.FontScaleMain = ' + style.fontScaleMain);
                ImGui.text('style.FontScaleDpi = ' + style.fontScaleDpi);
                ImGui.endTabItem();
            }

            if (ImGui.beginTabItem('Rendering')) {
                ImGui.checkbox('Anti-aliased lines', style.antiAliasedLines);
                ImGui.sameLine();
                helpMarker('When disabling anti-aliasing lines, you\'ll probably want to disable borders in your style as well.');

                ImGui.checkbox('Anti-aliased lines use texture', style.antiAliasedLinesUseTex);
                ImGui.sameLine();
                helpMarker('Faster lines using texture data. Require backend to render with bilinear filtering (not point/nearest filtering).');

                ImGui.checkbox('Anti-aliased fill', style.antiAliasedFill);
                ImGui.pushItemWidth(ImGui.getFontSize() * 8);
                ImGui.dragFloatEx('Curve Tessellation Tolerance', style.curveTessellationTol, 0.02, 0.10, 10.0, '%.2f');
                if (style.curveTessellationTol < 0.10) style.curveTessellationTol = 0.10;

                ImGui.dragFloatEx('Circle Tessellation Max Error', style.circleTessellationMaxError, 0.005, 0.10, 5.0, '%.2f', ImGuiSliderFlags.AlwaysClamp);
                var showSamples = ImGui.isItemActive();
                if (showSamples)
                    ImGui.setNextWindowPos(ImGui.getCursorScreenPos());
                if (showSamples && ImGui.beginTooltip()) {
                    ImGui.textUnformatted('(R = radius, N = approx number of segments)');
                    ImGui.spacing();
                    var drawList = ImGui.getWindowDrawList();
                    var textSize = ImGui.calcTextSize('R: MMM\nN: MMM');
                    var minWidgetWidth = textSize.x;
                    for (n in 0...8) {
                        var radMin = 5.0;
                        var radMax = 70.0;
                        var rad = radMin + (radMax - radMin) * n / (8.0 - 1.0);

                        ImGui.beginGroup();

                        ImGui.text('R: ' + Math.round(rad) + '\nN: ' + calcCircleAutoSegmentCount(rad, style.circleTessellationMaxError));

                        var canvasWidth = minWidgetWidth > rad * 2.0 ? minWidgetWidth : rad * 2.0;
                        var offsetX = Math.ffloor(canvasWidth * 0.5);
                        var offsetY = Math.ffloor(radMax);

                        var p1 = ImGui.getCursorScreenPos();
                        ImDrawList.addCircle(drawList, ImVec2.make(p1.x + offsetX, p1.y + offsetY), rad, ImGui.getColorU32(ImGuiCol.Text));
                        ImGui.dummy(ImVec2.make(canvasWidth, radMax * 2));

                        ImGui.endGroup();
                        ImGui.sameLine();
                    }
                    ImGui.endTooltip();
                }
                ImGui.sameLine();
                helpMarker('When drawing circle primitives with "num_segments == 0" tessellation will be calculated automatically.');

                ImGui.dragFloatEx('Global Alpha', style.alpha, 0.005, 0.20, 1.0, '%.2f'); // Not exposing zero here so user doesn't "lose" the UI (zero alpha clips all widgets).
                ImGui.dragFloatEx('Disabled Alpha', style.disabledAlpha, 0.005, 0.0, 1.0, '%.2f'); ImGui.sameLine(); helpMarker('Additional alpha multiplier for disabled items (multiply over current value of Alpha).');
                ImGui.popItemWidth();

                ImGui.endTabItem();
            }

            ImGui.endTabBar();
        }
        ImGui.popItemWidth();

    }

    /** SliderFloat2 on an ImVec2 style field: fills the shared v2 scratch, returns true if edited. */
    static function sliderVec2(label:String, cur:ImVec2, vMin:Float, vMax:Float, format:String):Bool {
        v2[0] = cur.x;
        v2[1] = cur.y;
        return ImGui.sliderFloat2Ex(label, v2, vMin, vMax, format);
    }

    static inline function v2Vec():ImVec2 {
        return ImVec2.make(v2[0], v2[1]);
    }

    /** ImDrawList::_CalcCircleAutoSegmentCount reimplementation (internal API). */
    static function calcCircleAutoSegmentCount(rad:Float, maxError:Float):Int {
        var e = maxError < rad ? maxError : rad;
        var segments = Math.ceil(Math.PI / Math.acos(1 - e / rad));
        if (segments < 4) segments = 4;
        if (segments > 512) segments = 512;
        return segments;
    }

    /** Format a float with 2 decimals (printf %.2f equivalent). */
    static function fmt2(v:Float):String {
        return '' + (Math.round(v * 100) / 100);
    }

}
