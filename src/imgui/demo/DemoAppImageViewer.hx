package imgui.demo;

import imgui.ImGui;
import imgui.demo.DemoWidgetsText.imCol32;

/**
 * Example: Image Viewer (imgui_demo.cpp port).
 * The nearest/linear sampler draw callbacks are ADAPTED (omitted): ImDrawList
 * AddCallback needs the cross-target callback support (planned follow-up).
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoAppImageViewer {

    // ExampleImageViewerData
    static var imageBgColor:Int = imCol32(100, 100, 100, 255);
    static var gridColor:Int = imCol32(255, 255, 255, 100);
    static var gridEnabled:Bool = true;
    static var viewReset:Bool = true;
    static var viewOffsetX:Float = 0.0; // in image space
    static var viewOffsetY:Float = 0.0;
    static var zoom:Float = 10.0;
    static var zoomMin:Float = 1.0;
    static var zoomMax:Float = 10000.0;

    public static function show():Void {

        var io = ImGui.getIO();
        var atlas = io.fonts;
        var texRef = atlas.texRef; // We don't have access to other textures in this demo!
        var texData = atlas.texData;
        var texW:Int = texData.width;
        var texH:Int = texData.height;
        if (ImGui.begin('Example: Image Viewer', ImGuiDemo.showAppImageViewer)) {
            drawOptions();
            var canvasSize = ImGui.getContentRegionAvail();
            var canvasMinW = ImGui.isWindowAppearing() ? 3.0 * texW : 1.0;
            var canvasMinH = ImGui.isWindowAppearing() ? 4.0 * texH : 1.0;
            var sizeX = canvasSize.x > canvasMinW ? canvasSize.x : canvasMinW;
            var sizeY = canvasSize.y > canvasMinH ? canvasSize.y : canvasMinH;
            drawCanvas(ImVec2.make(sizeX, sizeY), texRef, texW, texH);
        }
        ImGui.end();

    }

    /** ExampleImageViewer_DrawOptions port. */
    public static function drawOptions():Void {
        ImGui.setNextItemShortcut(ImGuiKey.G, ImGuiInputFlags.Tooltip);
        ImGui.checkbox('Grid', gridEnabled);
        ImGui.sameLine();
        ImGui.setNextItemWidth(ImGui.getFontSize() * 10.0);
        var zoom100 = zoom * 100.0;
        if (ImGui.dragFloatEx('##Zoom', zoom100, 5.0, zoomMin * 100.0, zoomMax * 100.0, '%.0f%%', ImGuiSliderFlags.AlwaysClamp))
            zoom = zoom100 / 100.0;
    }

    /** ExampleImageViewer_DrawCanvas port. */
    public static function drawCanvas(canvasSize:ImVec2, imageTexRef:ImTextureRef, imageW:Int, imageH:Int):Void {

        var io = ImGui.getIO();
        var drawList = ImGui.getWindowDrawList();

        ImGui.invisibleButton('##Canvas', canvasSize);
        var canvasMin = ImGui.getItemRectMin();
        var canvasMax = ImGui.getItemRectMax();

        if (viewReset) {
            viewOffsetX = (canvasSize.x * 0.5 / zoom) - 0.5; // Add half a pixel padding
            viewOffsetY = (canvasSize.y * 0.5 / zoom) - 0.5;
        }
        viewReset = false;

        if (ImGui.setItemKeyOwner(ImGuiKey.MouseWheelY)) {
            if (io.mouseWheel != 0.0) {
                var z = zoom * (1.0 + io.mouseWheel * 0.10);
                zoom = z < zoomMin ? zoomMin : (z > zoomMax ? zoomMax : z);
            }
        }
        var z = zoom;
        if (ImGui.isItemActive() && ImGui.isMouseDragging(0)) {
            var mouseDelta = io.mouseDelta;
            viewOffsetX -= mouseDelta.x / z;
            viewOffsetY -= mouseDelta.y / z;
        }

        var imageMinX:Float = Std.int((canvasMin.x - (viewOffsetX * z)) + (canvasSize.x * 0.5));
        var imageMinY:Float = Std.int((canvasMin.y - (viewOffsetY * z)) + (canvasSize.y * 0.5));
        var imageMaxX:Float = Std.int(imageMinX + imageW * z);
        var imageMaxY:Float = Std.int(imageMinY + imageH * z);
        ImDrawList.addRect(drawList, ImVec2.make(canvasMin.x - 1.0, canvasMin.y - 1.0), ImVec2.make(canvasMax.x + 1.0, canvasMax.y + 1.0), imCol32(255, 255, 255, 255));
        ImDrawList.pushClipRect(drawList, canvasMin, canvasMax, true);
        ImDrawList.addRectFilled(drawList, ImVec2.make(imageMinX, imageMinY), ImVec2.make(imageMaxX, imageMaxY), imageBgColor);
        // (adapted: nearest/linear sampler AddCallback omitted, needs cross-target callbacks)
        ImDrawList.addImage(drawList, imageTexRef, ImVec2.make(imageMinX, imageMinY), ImVec2.make(imageMaxX, imageMaxY));

        if (gridEnabled && z > 6.0) {
            var step = z;
            var px = Std.int((canvasMin.x - imageMinX) / step);
            while (px <= Std.int((canvasMax.x - imageMinX) / step)) {
                ImDrawList.addLineVEx(drawList, imageMinX + px * step, canvasMin.y, canvasMax.y, gridColor, 1.0);
                px++;
            }
            var py = Std.int((canvasMin.y - imageMinY) / step);
            while (py <= Std.int((canvasMax.y - imageMinY) / step)) {
                ImDrawList.addLineHEx(drawList, canvasMin.x, canvasMax.x, imageMinY + py * step, gridColor, 1.0);
                py++;
            }
        }
        ImDrawList.popClipRect(drawList);

    }

}
