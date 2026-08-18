package imgui.demo;

import imgui.ImGui;
import imgui.demo.DemoWidgetsText.imCol32;
import imgui.demo.ImGuiDemo.helpMarker;

/** Example: Custom rendering (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoAppCustomRendering {

    // Primitives
    static var sz:Float = 36.0;
    static var thickness:Float = 3.0;
    static var ngonSides:Int = 6;
    static var circleSegmentsOverride:Bool = false;
    static var circleSegmentsOverrideV:Int = 12;
    static var curveSegmentsOverride:Bool = false;
    static var curveSegmentsOverrideV:Int = 8;
    static var colf:Array<Float> = [1.0, 1.0, 0.4, 1.0];

    // Canvas
    static var points:Array<Float> = []; // Flat list of x,y pairs (2 floats per point, 4 per line)
    static var scrollingX:Float = 0.0;
    static var scrollingY:Float = 0.0;
    static var optEnableGrid:Bool = true;
    static var optEnableContextMenu:Bool = true;
    static var addingLine:Bool = false;

    // BG/FG draw lists
    static var drawBg:Bool = true;
    static var drawFg:Bool = true;

    // PathConcaveShape norms
    static var concaveNorms:Array<Float> = [0.0, 0.0, 0.3, 0.0, 0.3, 0.7, 0.7, 0.7, 0.7, 0.0, 1.0, 0.0, 1.0, 1.0, 0.0, 1.0];

    /** PathConcaveShape port. */
    static function pathConcaveShape(drawList:#if cpp cpp.Star<ImDrawList> #else ImDrawList #end, x:Float, y:Float, size:Float):Void {
        var i = 0;
        while (i < concaveNorms.length) {
            ImDrawList.pathLineTo(drawList, ImVec2.make(x + 0.5 + Std.int(size * concaveNorms[i]), y + 0.5 + Std.int(size * concaveNorms[i + 1])));
            i += 2;
        }
    }

    public static function show():Void {

        if (!ImGui.begin('Example: Custom rendering', ImGuiDemo.showAppCustomRendering)) {
            ImGui.end();
            return;
        }

        if (ImGui.beginTabBar('##TabBar')) {

            if (ImGui.beginTabItem('Primitives')) {
                ImGui.pushItemWidth(-ImGui.getFontSize() * 15);
                var drawList = ImGui.getWindowDrawList();

                ImGui.text('Gradients');
                var gradientSize = ImVec2.make(ImGui.calcItemWidth(), ImGui.getFrameHeight());
                {
                    var p0 = ImGui.getCursorScreenPos();
                    var p1 = ImVec2.make(p0.x + gradientSize.x, p0.y + gradientSize.y);
                    var colA = ImGui.getColorU32ImU32(imCol32(0, 0, 0, 255));
                    var colB = ImGui.getColorU32ImU32(imCol32(255, 255, 255, 255));
                    ImDrawList.addRectFilledMultiColor(drawList, p0, p1, colA, colB, colB, colA);
                    ImGui.invisibleButton('##gradient1', gradientSize);
                }
                {
                    var p0 = ImGui.getCursorScreenPos();
                    var p1 = ImVec2.make(p0.x + gradientSize.x, p0.y + gradientSize.y);
                    var colA = ImGui.getColorU32ImU32(imCol32(0, 255, 0, 255));
                    var colB = ImGui.getColorU32ImU32(imCol32(255, 0, 0, 255));
                    ImDrawList.addRectFilledMultiColor(drawList, p0, p1, colA, colB, colB, colA);
                    ImGui.invisibleButton('##gradient2', gradientSize);
                }

                ImGui.text('All primitives');
                ImGui.dragFloatEx('Size', sz, 0.2, 2.0, 100.0, '%.0f');
                ImGui.dragFloatEx('Thickness', thickness, 0.05, 1.0, 8.0, '%.02f');
                ImGui.sliderInt('N-gon sides', ngonSides, 3, 12);
                ImGui.checkbox('##circlesegmentoverride', circleSegmentsOverride);
                var style = ImGui.getStyle();
                var innerSpacing = style.itemInnerSpacing;
                ImGui.sameLineEx(0.0, innerSpacing.x);
                if (ImGui.sliderInt('Circle segments override', circleSegmentsOverrideV, 3, 40))
                    circleSegmentsOverride = true;
                ImGui.checkbox('##curvessegmentoverride', curveSegmentsOverride);
                ImGui.sameLineEx(0.0, innerSpacing.x);
                if (ImGui.sliderInt('Curves segments override', curveSegmentsOverrideV, 3, 40))
                    curveSegmentsOverride = true;
                ImGui.colorEdit4('Color', colf);

                var p = ImGui.getCursorScreenPos();
                var col = ImGui.getColorU32ImVec4(ImVec4.make(colf[0], colf[1], colf[2], colf[3]));
                var spacing = 10.0;
                var cornersTlBr = ImDrawFlags.RoundCornersTopLeft | ImDrawFlags.RoundCornersBottomRight;
                var rounding = sz / 5.0;
                var circleSegments = circleSegmentsOverride ? circleSegmentsOverrideV : 0;
                var curveSegments = curveSegmentsOverride ? curveSegmentsOverrideV : 0;
                // Control points for curves
                var cp30x = 0.0, cp30y = sz * 0.6, cp31x = sz * 0.5, cp31y = -sz * 0.4, cp32x = sz, cp32y = sz;
                var cp40x = 0.0, cp40y = 0.0, cp41x = sz * 1.3, cp41y = sz * 0.3, cp42x = sz - sz * 1.3, cp42y = sz - sz * 0.3, cp43x = sz, cp43y = sz;

                var x = p.x + 4.0;
                var y = p.y + 4.0;
                for (n in 0...2) {
                    var th = (n == 0) ? 1.0 : thickness;
                    ImDrawList.addNgonEx(drawList, ImVec2.make(x + sz * 0.5, y + sz * 0.5), sz * 0.5, col, ngonSides, th); x += sz + spacing;                    // N-gon
                    ImDrawList.addCircleEx(drawList, ImVec2.make(x + sz * 0.5, y + sz * 0.5), sz * 0.5, col, circleSegments, th); x += sz + spacing;             // Circle
                    ImDrawList.addEllipseEx(drawList, ImVec2.make(x + sz * 0.5, y + sz * 0.5), ImVec2.make(sz * 0.5, sz * 0.3), col, -0.3, circleSegments, th); x += sz + spacing; // Ellipse
                    ImDrawList.addRectEx(drawList, ImVec2.make(x, y), ImVec2.make(x + sz, y + sz), col, 0.0, th); x += sz + spacing;                             // Square
                    ImDrawList.addRectEx(drawList, ImVec2.make(x, y), ImVec2.make(x + sz, y + sz), col, rounding, th); x += sz + spacing;                        // Square with all rounded corners
                    ImDrawList.addRectEx(drawList, ImVec2.make(x, y), ImVec2.make(x + sz, y + sz), col, rounding, th, cornersTlBr); x += sz + spacing;           // Square with two rounded corners
                    ImDrawList.addTriangleEx(drawList, ImVec2.make(x + sz * 0.5, y), ImVec2.make(x + sz, y + sz - 0.5), ImVec2.make(x, y + sz - 0.5), col, th); x += sz + spacing; // Triangle
                    pathConcaveShape(drawList, x, y, sz); ImDrawList.pathStroke(drawList, col, th, ImDrawFlags.Closed); x += sz + spacing;                       // Concave Shape
                    ImDrawList.addLineHEx(drawList, x, x + sz, y, col, th); x += sz + spacing;                                                                   // Horizontal line
                    ImDrawList.addLineVEx(drawList, x, y, y + sz, col, th); x += spacing;                                                                        // Vertical line
                    ImDrawList.addLineEx(drawList, ImVec2.make(x, y), ImVec2.make(x + sz, y + sz), col, th); x += sz + spacing;                                  // Diagonal line

                    ImDrawList.pathArcTo(drawList, ImVec2.make(x + sz * 0.5, y + sz * 0.5), sz * 0.5, 3.141592, 3.141592 * -0.5);
                    ImDrawList.pathStroke(drawList, col, th);
                    x += sz + spacing;

                    ImDrawList.addBezierQuadratic(drawList, ImVec2.make(x + cp30x, y + cp30y), ImVec2.make(x + cp31x, y + cp31y), ImVec2.make(x + cp32x, y + cp32y), col, th, curveSegments);
                    x += sz + spacing;

                    ImDrawList.addBezierCubic(drawList, ImVec2.make(x + cp40x, y + cp40y), ImVec2.make(x + cp41x, y + cp41y), ImVec2.make(x + cp42x, y + cp42y), ImVec2.make(x + cp43x, y + cp43y), col, th, curveSegments);

                    x = p.x + 4;
                    y += sz + spacing;
                }

                ImDrawList.addNgonFilled(drawList, ImVec2.make(x + sz * 0.5, y + sz * 0.5), sz * 0.5, col, ngonSides); x += sz + spacing;                        // N-gon
                ImDrawList.addCircleFilled(drawList, ImVec2.make(x + sz * 0.5, y + sz * 0.5), sz * 0.5, col, circleSegments); x += sz + spacing;                 // Circle
                ImDrawList.addEllipseFilledEx(drawList, ImVec2.make(x + sz * 0.5, y + sz * 0.5), ImVec2.make(sz * 0.5, sz * 0.3), col, -0.3, circleSegments); x += sz + spacing; // Ellipse
                ImDrawList.addRectFilled(drawList, ImVec2.make(x, y), ImVec2.make(x + sz, y + sz), col); x += sz + spacing;                                      // Square
                ImDrawList.addRectFilledEx(drawList, ImVec2.make(x, y), ImVec2.make(x + sz, y + sz), col, 10.0); x += sz + spacing;                              // Square with all rounded corners
                ImDrawList.addRectFilledEx(drawList, ImVec2.make(x, y), ImVec2.make(x + sz, y + sz), col, 10.0, cornersTlBr); x += sz + spacing;                 // Square with two rounded corners
                ImDrawList.addTriangleFilled(drawList, ImVec2.make(x + sz * 0.5, y), ImVec2.make(x + sz, y + sz - 0.5), ImVec2.make(x, y + sz - 0.5), col); x += sz + spacing; // Triangle
                pathConcaveShape(drawList, x, y, sz); ImDrawList.pathFillConcave(drawList, col); x += sz + spacing;                                              // Concave shape
                ImDrawList.addRectFilled(drawList, ImVec2.make(x, y), ImVec2.make(x + sz, y + thickness), col); x += sz + spacing;                               // Horizontal line
                ImDrawList.addRectFilled(drawList, ImVec2.make(x, y), ImVec2.make(x + thickness, y + sz), col); x += spacing * 2.0;                              // Vertical line
                ImDrawList.addRectFilled(drawList, ImVec2.make(x, y), ImVec2.make(x + 1, y + 1), col); x += sz;                                                  // Pixel

                ImDrawList.pathArcTo(drawList, ImVec2.make(x + sz * 0.5, y + sz * 0.5), sz * 0.5, 3.141592 * -0.5, 3.141592);
                ImDrawList.pathFillConvex(drawList, col);
                x += sz + spacing;

                ImDrawList.pathLineTo(drawList, ImVec2.make(x + cp30x, y + cp30y));
                ImDrawList.pathBezierQuadraticCurveTo(drawList, ImVec2.make(x + cp31x, y + cp31y), ImVec2.make(x + cp32x, y + cp32y), curveSegments);
                ImDrawList.pathFillConvex(drawList, col);
                x += sz + spacing;

                ImDrawList.addRectFilledMultiColor(drawList, ImVec2.make(x, y), ImVec2.make(x + sz, y + sz), imCol32(0, 0, 0, 255), imCol32(255, 0, 0, 255), imCol32(255, 255, 0, 255), imCol32(0, 255, 0, 255));
                x += sz + spacing;

                ImGui.dummy(ImVec2.make((sz + spacing) * 13.2, (sz + spacing) * 3.0));
                ImGui.popItemWidth();
                ImGui.endTabItem();
            }

            if (ImGui.beginTabItem('Canvas')) {

                ImGui.checkbox('Enable grid', optEnableGrid);
                ImGui.checkbox('Enable context menu', optEnableContextMenu);
                ImGui.text('Mouse Left: drag to add lines,\nMouse Right: drag to scroll, click for context menu.');

                var canvasP0 = ImGui.getCursorScreenPos();    // ImDrawList API uses screen coordinates!
                var canvasSz = ImGui.getContentRegionAvail(); // Resize canvas to what's available
                var canvasSzX = canvasSz.x < 50.0 ? 50.0 : canvasSz.x;
                var canvasSzY = canvasSz.y < 50.0 ? 50.0 : canvasSz.y;
                var canvasP1 = ImVec2.make(canvasP0.x + canvasSzX, canvasP0.y + canvasSzY);

                var io = ImGui.getIO();
                var drawList = ImGui.getWindowDrawList();
                ImDrawList.addRectFilled(drawList, canvasP0, canvasP1, imCol32(50, 50, 50, 255));
                ImDrawList.addRect(drawList, canvasP0, canvasP1, imCol32(255, 255, 255, 255));

                ImGui.invisibleButton('canvas', ImVec2.make(canvasSzX, canvasSzY), ImGuiButtonFlags.MouseButtonLeft | ImGuiButtonFlags.MouseButtonRight);
                var isHovered = ImGui.isItemHovered(); // Hovered
                var isActive = ImGui.isItemActive();   // Held
                var originX = canvasP0.x + scrollingX; // Lock scrolled origin
                var originY = canvasP0.y + scrollingY;
                var mousePos = io.mousePos;
                var mousePosInCanvasX = mousePos.x - originX;
                var mousePosInCanvasY = mousePos.y - originY;

                if (isHovered && !addingLine && ImGui.isMouseClicked(ImGuiMouseButton.Left)) {
                    points.push(mousePosInCanvasX);
                    points.push(mousePosInCanvasY);
                    points.push(mousePosInCanvasX);
                    points.push(mousePosInCanvasY);
                    addingLine = true;
                }
                if (addingLine) {
                    points[points.length - 2] = mousePosInCanvasX;
                    points[points.length - 1] = mousePosInCanvasY;
                    if (!ImGui.isMouseDown(ImGuiMouseButton.Left))
                        addingLine = false;
                }

                var mouseThresholdForPan = optEnableContextMenu ? -1.0 : 0.0;
                if (isActive && ImGui.isMouseDragging(ImGuiMouseButton.Right, mouseThresholdForPan)) {
                    var mouseDelta = io.mouseDelta;
                    scrollingX += mouseDelta.x;
                    scrollingY += mouseDelta.y;
                }

                var dragDelta = ImGui.getMouseDragDelta(ImGuiMouseButton.Right);
                if (optEnableContextMenu && dragDelta.x == 0.0 && dragDelta.y == 0.0)
                    ImGui.openPopupOnItemClick('context', ImGuiPopupFlags.MouseButtonRight);
                if (ImGui.beginPopup('context')) {
                    if (addingLine)
                        points.resize(points.length - 4);
                    addingLine = false;
                    if (ImGui.menuItemEx('Remove one', null, false, points.length > 0)) { points.resize(points.length - 4); }
                    if (ImGui.menuItemEx('Remove all', null, false, points.length > 0)) { points.resize(0); }
                    ImGui.endPopup();
                }

                ImDrawList.pushClipRect(drawList, canvasP0, canvasP1, true);
                if (optEnableGrid) {
                    var gridStep = 64.0;
                    var gx = scrollingX % gridStep;
                    while (gx < canvasSzX) {
                        ImDrawList.addLineV(drawList, canvasP0.x + gx, canvasP0.y, canvasP1.y, imCol32(200, 200, 200, 40));
                        gx += gridStep;
                    }
                    var gy = scrollingY % gridStep;
                    while (gy < canvasSzY) {
                        ImDrawList.addLineH(drawList, canvasP0.x, canvasP1.x, canvasP0.y + gy, imCol32(200, 200, 200, 40));
                        gy += gridStep;
                    }
                }
                var n = 0;
                while (n + 3 < points.length) {
                    ImDrawList.addLineEx(drawList, ImVec2.make(originX + points[n], originY + points[n + 1]), ImVec2.make(originX + points[n + 2], originY + points[n + 3]), imCol32(255, 255, 0, 255), 2.0);
                    n += 4;
                }
                ImDrawList.popClipRect(drawList);

                ImGui.endTabItem();
            }

            if (ImGui.beginTabItem('BG/FG draw lists')) {
                ImGui.checkbox('Draw in Background draw list', drawBg);
                ImGui.sameLine(); helpMarker('The Background draw list will be rendered below every Dear ImGui windows.');
                ImGui.checkbox('Draw in Foreground draw list', drawFg);
                ImGui.sameLine(); helpMarker('The Foreground draw list will be rendered over every Dear ImGui windows.');
                var windowPos = ImGui.getWindowPos();
                var windowSize = ImGui.getWindowSize();
                var windowCenter = ImVec2.make(windowPos.x + windowSize.x * 0.5, windowPos.y + windowSize.y * 0.5);
                if (drawBg)
                    ImDrawList.addCircleEx(ImGui.getBackgroundDrawList(), windowCenter, windowSize.x * 0.6, imCol32(255, 0, 0, 200), 0, 10 + 4);
                if (drawFg)
                    ImDrawList.addCircleEx(ImGui.getForegroundDrawList(), windowCenter, windowSize.y * 0.6, imCol32(0, 255, 0, 200), 0, 10);
                ImGui.endTabItem();
            }

            if (ImGui.beginTabItem('Draw Channels')) {
                var drawList = ImGui.getWindowDrawList();
                {
                    ImGui.text('Blue shape is drawn first: appears in back');
                    ImGui.text('Red shape is drawn after: appears in front');
                    var p0 = ImGui.getCursorScreenPos();
                    ImDrawList.addRectFilled(drawList, ImVec2.make(p0.x, p0.y), ImVec2.make(p0.x + 50, p0.y + 50), imCol32(0, 0, 255, 255)); // Blue
                    ImDrawList.addRectFilled(drawList, ImVec2.make(p0.x + 25, p0.y + 25), ImVec2.make(p0.x + 75, p0.y + 75), imCol32(255, 0, 0, 255)); // Red
                    ImGui.dummy(ImVec2.make(75, 75));
                }
                ImGui.separator();
                {
                    ImGui.text('Blue shape is drawn first, into channel 1: appears in front');
                    ImGui.text('Red shape is drawn after, into channel 0: appears in back');
                    var p1 = ImGui.getCursorScreenPos();

                    ImDrawList.channelsSplit(drawList, 2);
                    ImDrawList.channelsSetCurrent(drawList, 1);
                    ImDrawList.addRectFilled(drawList, ImVec2.make(p1.x, p1.y), ImVec2.make(p1.x + 50, p1.y + 50), imCol32(0, 0, 255, 255)); // Blue
                    ImDrawList.channelsSetCurrent(drawList, 0);
                    ImDrawList.addRectFilled(drawList, ImVec2.make(p1.x + 25, p1.y + 25), ImVec2.make(p1.x + 75, p1.y + 75), imCol32(255, 0, 0, 255)); // Red

                    ImDrawList.channelsMerge(drawList);
                    ImGui.dummy(ImVec2.make(75, 75));
                    ImGui.text('After reordering, contents of channel 0 appears below channel 1.');
                }
                ImGui.endTabItem();
            }

            ImGui.endTabBar();
        }

        ImGui.end();

    }

}
