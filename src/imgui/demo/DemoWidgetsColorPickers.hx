package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/** Widgets > Color/Picker Widgets (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsColorPickers {

    static var color:Array<Float> = [114.0 / 255.0, 144.0 / 255.0, 154.0 / 255.0, 200.0 / 255.0];
    static var baseFlags:Int = ImGuiColorEditFlags.None;
    static var savedPaletteInit:Bool = true;
    static var savedPalette:Array<Array<Float>> = [];
    static var backupColor:Array<Float> = [0, 0, 0, 0];
    static var noBorder:Bool = false;
    static var refColor:Bool = false;
    static var refColorV:Array<Float> = [1.0, 0.0, 1.0, 0.5];
    static var pickerMode:Int = 0;
    static var displayMode:Int = 0;
    static var colorPickerFlags:Int = ImGuiColorEditFlags.AlphaBar;
    static var colorHsv:Array<Float> = [0.23, 1.0, 1.0, 1.0]; // stored as HSV!

    public static function show():Void {

        if (!ImGui.treeNode('Color/Picker Widgets'))
            return;

        ImGui.separatorText('Options');
        ImGui.checkboxFlagsIntPtr('ImGuiColorEditFlags_NoAlpha', baseFlags, ImGuiColorEditFlags.NoAlpha);
        ImGui.checkboxFlagsIntPtr('ImGuiColorEditFlags_AlphaOpaque', baseFlags, ImGuiColorEditFlags.AlphaOpaque);
        ImGui.checkboxFlagsIntPtr('ImGuiColorEditFlags_AlphaNoBg', baseFlags, ImGuiColorEditFlags.AlphaNoBg);
        ImGui.checkboxFlagsIntPtr('ImGuiColorEditFlags_AlphaPreviewHalf', baseFlags, ImGuiColorEditFlags.AlphaPreviewHalf);
        ImGui.checkboxFlagsIntPtr('ImGuiColorEditFlags_NoOptions', baseFlags, ImGuiColorEditFlags.NoOptions); ImGui.sameLine(); helpMarker('Right-click on the individual color widget to show options.');
        ImGui.checkboxFlagsIntPtr('ImGuiColorEditFlags_NoDragDrop', baseFlags, ImGuiColorEditFlags.NoDragDrop);
        ImGui.checkboxFlagsIntPtr('ImGuiColorEditFlags_NoColorMarkers', baseFlags, ImGuiColorEditFlags.NoColorMarkers);
        ImGui.checkboxFlagsIntPtr('ImGuiColorEditFlags_HDR', baseFlags, ImGuiColorEditFlags.HDR); ImGui.sameLine(); helpMarker('Currently all this does is to lift the 0..1 limits on dragging widgets.');

        ImGui.separatorText('Inline color editor');
        ImGui.text('Color widget:');
        ImGui.sameLine(); helpMarker(
            'Click on the color square to open a color picker.\n'
            + 'Ctrl+Click on individual component to input value.\n');
        ImGui.colorEdit3('MyColor##1', color, baseFlags);

        ImGui.text('Color widget HSV with Alpha:');
        ImGui.colorEdit4('MyColor##2', color, ImGuiColorEditFlags.DisplayHSV | baseFlags);

        ImGui.text('Color widget with Float Display:');
        ImGui.colorEdit4('MyColor##2f', color, ImGuiColorEditFlags.Float | baseFlags);

        ImGui.text('Color button with Picker:');
        ImGui.sameLine(); helpMarker(
            'With the ImGuiColorEditFlags_NoInputs flag you can hide all the slider/text inputs.\n'
            + 'With the ImGuiColorEditFlags_NoLabel flag you can pass a non-empty label which will only '
            + 'be used for the tooltip and picker popup.');
        ImGui.colorEdit4('MyColor##3', color, ImGuiColorEditFlags.NoInputs | ImGuiColorEditFlags.NoLabel | baseFlags);

        ImGui.text('Color button with Custom Picker Popup:');

        // Generate a default palette. The palette will persist and can be edited.
        if (savedPaletteInit) {
            for (n in 0...32) {
                var r:Float = 0;
                var g:Float = 0;
                var b:Float = 0;
                ImGui.colorConvertHSVtoRGB(n / 31.0, 0.8, 0.8, r, g, b);
                savedPalette.push([r, g, b, 1.0]);
            }
            savedPaletteInit = false;
        }

        var openPopup = ImGui.colorButton('MyColor##3b', vec4(color), baseFlags);
        ImGui.sameLineEx(0, ImGui.getStyle().itemInnerSpacing.x);
        openPopup = ImGui.button('Palette') || openPopup;
        if (openPopup) {
            ImGui.openPopup('mypicker');
            for (i in 0...4) backupColor[i] = color[i];
        }
        if (ImGui.beginPopup('mypicker')) {
            ImGui.text('MY CUSTOM COLOR PICKER WITH AN AMAZING PALETTE!');
            ImGui.separator();
            ImGui.colorPicker4('##picker', color, baseFlags | ImGuiColorEditFlags.NoSidePreview | ImGuiColorEditFlags.NoSmallPreview);
            ImGui.sameLine();

            ImGui.beginGroup(); // Lock X position
            ImGui.text('Current');
            ImGui.colorButtonEx('##current', vec4(color), ImGuiColorEditFlags.NoPicker | ImGuiColorEditFlags.AlphaPreviewHalf, ImVec2.make(60, 40));
            ImGui.text('Previous');
            if (ImGui.colorButtonEx('##previous', vec4(backupColor), ImGuiColorEditFlags.NoPicker | ImGuiColorEditFlags.AlphaPreviewHalf, ImVec2.make(60, 40))) {
                for (i in 0...4) color[i] = backupColor[i];
            }
            ImGui.separator();
            ImGui.text('Palette');
            for (n in 0...savedPalette.length) {
                ImGui.pushIDInt(n);
                if ((n % 8) != 0)
                    ImGui.sameLineEx(0.0, ImGui.getStyle().itemSpacing.y);

                var paletteButtonFlags = ImGuiColorEditFlags.NoAlpha | ImGuiColorEditFlags.NoPicker | ImGuiColorEditFlags.NoTooltip;
                if (ImGui.colorButtonEx('##palette', vec4(savedPalette[n]), paletteButtonFlags, ImVec2.make(20, 20))) {
                    // Preserve alpha!
                    color[0] = savedPalette[n][0];
                    color[1] = savedPalette[n][1];
                    color[2] = savedPalette[n][2];
                }

                // Allow user to drop colors into each palette entry
                if (ImGui.beginDragDropTarget()) {
                    var payload = ImGui.acceptDragDropPayload('_COL3F');
                    if (DemoUtils.hasPayload(payload)) {
                        for (i in 0...3) savedPalette[n][i] = DemoUtils.payloadF32(payload, i);
                    }
                    payload = ImGui.acceptDragDropPayload('_COL4F');
                    if (DemoUtils.hasPayload(payload)) {
                        for (i in 0...4) savedPalette[n][i] = DemoUtils.payloadF32(payload, i);
                    }
                    ImGui.endDragDropTarget();
                }

                ImGui.popID();
            }
            ImGui.endGroup();
            ImGui.endPopup();
        }

        ImGui.text('Color button only:');
        ImGui.checkbox('ImGuiColorEditFlags_NoBorder', noBorder);
        ImGui.colorButtonEx('MyColor##3c', vec4(color), baseFlags | (noBorder ? ImGuiColorEditFlags.NoBorder : 0), ImVec2.make(80, 80));

        ImGui.separatorText('Color picker');

        ImGui.pushID('Color picker');
        ImGui.checkboxFlagsIntPtr('ImGuiColorEditFlags_NoAlpha', colorPickerFlags, ImGuiColorEditFlags.NoAlpha);
        ImGui.checkboxFlagsIntPtr('ImGuiColorEditFlags_AlphaBar', colorPickerFlags, ImGuiColorEditFlags.AlphaBar);
        ImGui.checkboxFlagsIntPtr('ImGuiColorEditFlags_NoSidePreview', colorPickerFlags, ImGuiColorEditFlags.NoSidePreview);
        if ((colorPickerFlags & ImGuiColorEditFlags.NoSidePreview) != 0) {
            ImGui.sameLine();
            ImGui.checkbox('With Ref Color', refColor);
            if (refColor) {
                ImGui.sameLine();
                ImGui.colorEdit4('##RefColor', refColorV, ImGuiColorEditFlags.NoInputs | baseFlags);
            }
        }

        ImGui.combo('Picker Mode', pickerMode, 'Auto/Current\x00ImGuiColorEditFlags_PickerHueBar\x00ImGuiColorEditFlags_PickerHueWheel\x00');
        ImGui.sameLine(); helpMarker('When not specified explicitly, user can right-click the picker to change mode.');

        ImGui.combo('Display Mode', displayMode, 'Auto/Current\x00ImGuiColorEditFlags_NoInputs\x00ImGuiColorEditFlags_DisplayRGB\x00ImGuiColorEditFlags_DisplayHSV\x00ImGuiColorEditFlags_DisplayHex\x00');
        ImGui.sameLine(); helpMarker(
            'ColorEdit defaults to displaying RGB inputs if you don\'t specify a display mode, '
            + 'but the user can change it with a right-click on those inputs.\n\nColorPicker defaults to displaying RGB+HSV+Hex '
            + 'if you don\'t specify a display mode.\n\nYou can change the defaults using SetColorEditOptions().');

        var flags = baseFlags | colorPickerFlags;
        if (pickerMode == 1) flags |= ImGuiColorEditFlags.PickerHueBar;
        if (pickerMode == 2) flags |= ImGuiColorEditFlags.PickerHueWheel;
        if (displayMode == 1) flags |= ImGuiColorEditFlags.NoInputs;
        if (displayMode == 2) flags |= ImGuiColorEditFlags.DisplayRGB;
        if (displayMode == 3) flags |= ImGuiColorEditFlags.DisplayHSV;
        if (displayMode == 4) flags |= ImGuiColorEditFlags.DisplayHex;

        if (refColor) {
            // Ref color crosses as a raw float pointer: build it in the shared
            // native scratch buffer (portable adaptation of `&ref_color_v.x`).
            var buf = DemoUtils.buffer;
            for (i in 0...4) imgui.NativeStructs.setF32(buf, i << 2, refColorV[i]);
            ImGui.colorPicker4('MyColor##4', color, flags, #if cpp cast buf #else cast buf #end);
        }
        else {
            ImGui.colorPicker4('MyColor##4', color, flags);
        }

        ImGui.text('Set defaults in code:');
        ImGui.sameLine(); helpMarker(
            'SetColorEditOptions() is designed to allow you to set boot-time default.\n'
            + 'We don\'t have Push/Pop functions because you can force options on a per-widget basis if needed, '
            + 'and the user can change non-forced ones with the options menu.\nWe don\'t have a getter to avoid '
            + 'encouraging you to persistently save values that aren\'t forward-compatible.');
        if (ImGui.button('Default: Uint8 + HSV + Hue Bar'))
            ImGui.setColorEditOptions(ImGuiColorEditFlags.Uint8 | ImGuiColorEditFlags.DisplayHSV | ImGuiColorEditFlags.PickerHueBar);
        if (ImGui.button('Default: Float + HDR + Hue Wheel'))
            ImGui.setColorEditOptions(ImGuiColorEditFlags.Float | ImGuiColorEditFlags.HDR | ImGuiColorEditFlags.PickerHueWheel);

        // Always display a small version of both types of pickers
        ImGui.text('Both types:');
        var availRegion = ImGui.getContentRegionAvail();
        var w = (availRegion.x - ImGui.getStyle().itemSpacing.y) * 0.40;
        ImGui.setNextItemWidth(w);
        ImGui.colorPicker3('##MyColor##5', color, ImGuiColorEditFlags.PickerHueBar | ImGuiColorEditFlags.NoSidePreview | ImGuiColorEditFlags.NoInputs | ImGuiColorEditFlags.NoAlpha);
        ImGui.sameLine();
        ImGui.setNextItemWidth(w);
        ImGui.colorPicker3('##MyColor##6', color, ImGuiColorEditFlags.PickerHueWheel | ImGuiColorEditFlags.NoSidePreview | ImGuiColorEditFlags.NoInputs | ImGuiColorEditFlags.NoAlpha);
        ImGui.popID();

        // HSV encoded support
        ImGui.spacing();
        ImGui.text('HSV encoded colors');
        ImGui.sameLine(); helpMarker(
            'By default, colors are given to ColorEdit and ColorPicker in RGB, but ImGuiColorEditFlags_InputHSV '
            + 'allows you to store colors as HSV and pass them to ColorEdit and ColorPicker as HSV. This comes with the '
            + 'added benefit that you can manipulate hue values with the picker even when saturation or value are zero.');
        ImGui.text('Color widget with InputHSV:');
        ImGui.colorEdit4('HSV shown as RGB##1', colorHsv, ImGuiColorEditFlags.DisplayRGB | ImGuiColorEditFlags.InputHSV | ImGuiColorEditFlags.Float);
        ImGui.colorEdit4('HSV shown as HSV##1', colorHsv, ImGuiColorEditFlags.DisplayHSV | ImGuiColorEditFlags.InputHSV | ImGuiColorEditFlags.Float);
        ImGui.dragFloat4Ex('Raw HSV values', colorHsv, 0.01, 0.0, 1.0);

        ImGui.treePop();

    }

    static inline function vec4(a:Array<Float>):ImVec4 {
        return ImVec4.make(a[0], a[1], a[2], a[3]);
    }

}
