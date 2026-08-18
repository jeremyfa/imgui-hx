package imgui.demo;

import imgui.ImGui;
import imgui.NativeStructs;
import imgui.demo.DemoWidgetsText.imCol32;
import imgui.demo.ImGuiDemo.helpMarker;

/** Layout & Scrolling section (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWindowLayout {

    public static function show():Void {

        if (!ImGui.collapsingHeader('Layout & Scrolling'))
            return;

        childWindows();
        widgetsWidth();
        basicHorizontalLayout();
        groups();
        textBaselineAlignment();
        scrolling();
        textClipping();
        overlapMode();

    }

    // =========================================================================
    // Child windows
    // =========================================================================

    static var disableMouseWheel:Bool = false;
    static var disableMenu:Bool = false;
    static var drawLines:Int = 3;
    static var maxHeightInLines:Int = 10;
    static var offsetX:Int = 0;
    static var overrideBgColor:Bool = true;
    static var childFlags:Int = ImGuiChildFlags.Borders | ImGuiChildFlags.ResizeX | ImGuiChildFlags.ResizeY;

    static function childWindows():Void {

        if (!ImGui.treeNode('Child windows'))
            return;

        ImGui.separatorText('Child windows');

        helpMarker('Use child windows to begin into a self-contained independent scrolling/clipping regions within a host window.');
        ImGui.checkbox('Disable Mouse Wheel', disableMouseWheel);
        ImGui.checkbox('Disable Menu', disableMenu);

        {
            var windowFlags:Int = ImGuiWindowFlags.HorizontalScrollbar;
            if (disableMouseWheel)
                windowFlags |= ImGuiWindowFlags.NoScrollWithMouse;
            var avail = ImGui.getContentRegionAvail();
            ImGui.beginChild('ChildL', ImVec2.make(avail.x * 0.5, 260), ImGuiChildFlags.None, windowFlags);
            for (i in 0...100)
                ImGui.text(StringTools.lpad('' + i, '0', 4) + ': scrollable region');
            ImGui.endChild();
        }

        ImGui.sameLine();

        {
            var windowFlags:Int = ImGuiWindowFlags.None;
            if (disableMouseWheel)
                windowFlags |= ImGuiWindowFlags.NoScrollWithMouse;
            if (!disableMenu)
                windowFlags |= ImGuiWindowFlags.MenuBar;
            ImGui.pushStyleVar(ImGuiStyleVar.ChildRounding, 5.0);
            ImGui.beginChild('ChildR', ImVec2.make(0, 260), ImGuiChildFlags.Borders, windowFlags);
            if (!disableMenu && ImGui.beginMenuBar()) {
                if (ImGui.beginMenu('Menu')) {
                    ImGuiDemo.showExampleMenuFile();
                    ImGui.endMenu();
                }
                ImGui.endMenuBar();
            }
            if (ImGui.beginTable('split', 2, ImGuiTableFlags.Resizable | ImGuiTableFlags.NoSavedSettings)) {
                for (i in 0...100) {
                    ImGui.tableNextColumn();
                    ImGui.buttonEx(StringTools.lpad('' + i, '0', 3), ImVec2.make(-1.175494351e-38, 0.0));
                }
                ImGui.endTable();
            }
            ImGui.endChild();
            ImGui.popStyleVar();
        }

        ImGui.separatorText('Manual-resize');
        {
            helpMarker('Drag bottom border to resize. Double-click bottom border to auto-fit to vertical contents.');

            ImGui.pushStyleColorImVec4(ImGuiCol.ChildBg, imgui.ImGuiStyleExtra.getStyleColor(ImGui.getStyle(), ImGuiCol.FrameBg));
            if (ImGui.beginChild('ResizableChild', ImVec2.make(-1.175494351e-38, ImGui.getTextLineHeightWithSpacing() * 8), ImGuiChildFlags.Borders | ImGuiChildFlags.ResizeY))
                for (n in 0...10)
                    ImGui.text('Line ' + StringTools.lpad('' + n, '0', 4));
            ImGui.popStyleColor();
            ImGui.endChild();
        }

        ImGui.separatorText('Auto-resize with constraints');
        {
            ImGui.setNextItemWidth(ImGui.getFontSize() * 8);
            ImGui.dragIntEx('Lines Count', drawLines, 0.2);
            ImGui.setNextItemWidth(ImGui.getFontSize() * 8);
            ImGui.dragIntEx('Max Height (in Lines)', maxHeightInLines, 0.2);

            ImGui.setNextWindowSizeConstraints(
                ImVec2.make(0.0, ImGui.getTextLineHeightWithSpacing() * 1),
                ImVec2.make(3.402823466e38, ImGui.getTextLineHeightWithSpacing() * maxHeightInLines));
            if (ImGui.beginChild('ConstrainedChild', ImVec2.make(-1.175494351e-38, 0.0), ImGuiChildFlags.Borders | ImGuiChildFlags.AutoResizeY))
                for (n in 0...(drawLines > 0 ? drawLines : 0))
                    ImGui.text('Line ' + StringTools.lpad('' + n, '0', 4));
            ImGui.endChild();
        }

        ImGui.separatorText('Misc/Advanced');

        {
            ImGui.setNextItemWidth(ImGui.getFontSize() * 8);
            ImGui.dragIntEx('Offset X', offsetX, 1.0, -1000, 1000);
            ImGui.checkbox('Override ChildBg color', overrideBgColor);
            ImGui.checkboxFlagsIntPtr('ImGuiChildFlags_Borders', childFlags, ImGuiChildFlags.Borders);
            ImGui.checkboxFlagsIntPtr('ImGuiChildFlags_AlwaysUseWindowPadding', childFlags, ImGuiChildFlags.AlwaysUseWindowPadding);
            ImGui.checkboxFlagsIntPtr('ImGuiChildFlags_ResizeX', childFlags, ImGuiChildFlags.ResizeX);
            ImGui.checkboxFlagsIntPtr('ImGuiChildFlags_ResizeY', childFlags, ImGuiChildFlags.ResizeY);
            ImGui.checkboxFlagsIntPtr('ImGuiChildFlags_FrameStyle', childFlags, ImGuiChildFlags.FrameStyle);
            ImGui.sameLine(); helpMarker('Style the child window like a framed item: use FrameBg, FrameRounding, FrameBorderSize, FramePadding instead of ChildBg, ChildRounding, ChildBorderSize, WindowPadding.');
            if ((childFlags & ImGuiChildFlags.FrameStyle) != 0)
                overrideBgColor = false;

            ImGui.setCursorPosX(ImGui.getCursorPosX() + offsetX);
            if (overrideBgColor)
                ImGui.pushStyleColor(ImGuiCol.ChildBg, DemoWidgetsText.imCol32(255, 0, 0, 100));
            ImGui.beginChild('Red', ImVec2.make(200, 100), childFlags, ImGuiWindowFlags.None);
            if (overrideBgColor)
                ImGui.popStyleColor();

            for (n in 0...50)
                ImGui.text('Some test ' + n);
            ImGui.endChild();
            var childIsHovered = ImGui.isItemHovered();
            var childRectMin = ImGui.getItemRectMin();
            var childRectMax = ImGui.getItemRectMax();
            ImGui.text('Hovered: ' + (childIsHovered ? 1 : 0));
            ImGui.text('Rect of child window is: (' + Std.int(childRectMin.x) + ',' + Std.int(childRectMin.y) + ') (' + Std.int(childRectMax.x) + ',' + Std.int(childRectMax.y) + ')');
        }

        ImGui.treePop();

    }

    // =========================================================================
    // Widgets Width
    // =========================================================================

    static var widthF:Float = 0.0;
    static var showIndentedItems:Bool = true;

    static function widgetsWidth():Void {

        if (!ImGui.treeNode('Widgets Width'))
            return;

        ImGui.checkbox('Show indented items', showIndentedItems);

        inline function indented(label:String):Void {
            if (showIndentedItems) {
                ImGui.indent();
                ImGui.dragFloat(label, widthF);
                ImGui.unindent();
            }
        }

        ImGui.text('SetNextItemWidth/PushItemWidth(100)');
        ImGui.sameLine(); helpMarker('Fixed width.');
        ImGui.pushItemWidth(100);
        ImGui.dragFloat('float##1b', widthF);
        indented('float (indented)##1b');
        ImGui.popItemWidth();

        ImGui.text('SetNextItemWidth/PushItemWidth(-100)');
        ImGui.sameLine(); helpMarker('Align to right edge minus 100');
        ImGui.pushItemWidth(-100);
        ImGui.dragFloat('float##2a', widthF);
        indented('float (indented)##2b');
        ImGui.popItemWidth();

        ImGui.text('SetNextItemWidth/PushItemWidth(GetContentRegionAvail().x * 0.5f)');
        ImGui.sameLine(); helpMarker('Half of available width.\n(~ right-cursor_pos)\n(works within a column set)');
        var avail1 = ImGui.getContentRegionAvail();
        ImGui.pushItemWidth(avail1.x * 0.5);
        ImGui.dragFloat('float##3a', widthF);
        indented('float (indented)##3b');
        ImGui.popItemWidth();

        ImGui.text('SetNextItemWidth/PushItemWidth(-GetContentRegionAvail().x * 0.5f)');
        ImGui.sameLine(); helpMarker('Align to right edge minus half');
        var avail2 = ImGui.getContentRegionAvail();
        ImGui.pushItemWidth(-avail2.x * 0.5);
        ImGui.dragFloat('float##4a', widthF);
        indented('float (indented)##4b');
        ImGui.popItemWidth();

        ImGui.text('SetNextItemWidth/PushItemWidth(-Min(GetContentRegionAvail().x * 0.40f, GetFontSize() * 12))');
        var avail3 = ImGui.getContentRegionAvail();
        ImGui.pushItemWidth(-Math.min(ImGui.getFontSize() * 12, avail3.x * 0.40));
        ImGui.dragFloat('float##5a', widthF);
        indented('float (indented)##5b');
        ImGui.popItemWidth();

        ImGui.text('SetNextItemWidth/PushItemWidth(-FLT_MIN)');
        ImGui.sameLine(); helpMarker('Align to right edge');
        ImGui.pushItemWidth(-1.175494351e-38);
        ImGui.dragFloat('##float6a', widthF);
        indented('float (indented)##6b');
        ImGui.popItemWidth();

        ImGui.treePop();

    }

    // =========================================================================
    // Basic Horizontal Layout
    // =========================================================================

    static var hC1:Bool = false;
    static var hC2:Bool = false;
    static var hC3:Bool = false;
    static var hC4:Bool = false;
    static var hF0:Float = 1.0;
    static var hF1:Float = 2.0;
    static var hF2:Float = 3.0;
    static var hItem:Int = -1;
    static var hSelection:Array<Int> = [0, 1, 2, 3];

    static function basicHorizontalLayout():Void {

        if (!ImGui.treeNode('Basic Horizontal Layout'))
            return;

        ImGui.textWrapped('(Use ImGui::SameLine() to keep adding items to the right of the preceding item)');

        ImGui.text('Two items: Hello'); ImGui.sameLine();
        ImGui.textColored(ImVec4.make(1, 1, 0, 1), 'Sailor');

        ImGui.text('More spacing: Hello'); ImGui.sameLineEx(0, 20);
        ImGui.textColored(ImVec4.make(1, 1, 0, 1), 'Sailor');

        ImGui.alignTextToFramePadding();
        ImGui.text('Normal buttons'); ImGui.sameLine();
        ImGui.button('Banana'); ImGui.sameLine();
        ImGui.button('Apple'); ImGui.sameLine();
        ImGui.button('Corniflower');

        ImGui.text('Small buttons'); ImGui.sameLine();
        ImGui.smallButton('Like this one'); ImGui.sameLine();
        ImGui.text('can fit within a text block.');

        ImGui.text('Aligned');
        ImGui.sameLineEx(150); ImGui.text('x=150');
        ImGui.sameLineEx(300); ImGui.text('x=300');
        ImGui.text('Aligned');
        ImGui.sameLineEx(150); ImGui.smallButton('x=150');
        ImGui.sameLineEx(300); ImGui.smallButton('x=300');

        ImGui.checkbox('My', hC1); ImGui.sameLine();
        ImGui.checkbox('Tailor', hC2); ImGui.sameLine();
        ImGui.checkbox('Is', hC3); ImGui.sameLine();
        ImGui.checkbox('Rich', hC4);

        var textWidth = ImGui.calcTextSize('AAAAAAA');
        ImGui.pushItemWidth(textWidth.x);
        var items = ['AAAA', 'BBBB', 'CCCC', 'DDDD'];
        ImGui.combo('Combo', hItem, items.join('\x00') + '\x00'); ImGui.sameLine();
        ImGui.sliderFloat('X', hF0, 0.0, 5.0); ImGui.sameLine();
        ImGui.sliderFloat('Y', hF1, 0.0, 5.0); ImGui.sameLine();
        ImGui.sliderFloat('Z', hF2, 0.0, 5.0);

        ImGui.text('Lists:');
        for (i in 0...4) {
            if (i > 0) ImGui.sameLine();
            ImGui.pushIDInt(i);
            // (adapted: portable BeginListBox/Selectable pattern)
            if (ImGui.beginListBox('', ImVec2.make(0, 0))) {
                for (n in 0...items.length) {
                    if (ImGui.selectableEx(items[n], hSelection[i] == n, 0, ImVec2.make(0, 0)))
                        hSelection[i] = n;
                }
                ImGui.endListBox();
            }
            ImGui.popID();
        }
        ImGui.popItemWidth();

        var buttonSz = ImVec2.make(40, 40);
        ImGui.buttonEx('A', buttonSz); ImGui.sameLine();
        ImGui.dummy(buttonSz); ImGui.sameLine();
        ImGui.buttonEx('B', buttonSz);

        ImGui.text('Manual wrapping:');
        var style = ImGui.getStyle();
        var buttonsCount = 20;
        var cursorPos = ImGui.getCursorScreenPos();
        var availWrap = ImGui.getContentRegionAvail();
        var windowVisibleX2 = cursorPos.x + availWrap.x;
        for (n in 0...buttonsCount) {
            ImGui.pushIDInt(n);
            ImGui.buttonEx('Box', buttonSz);
            var rectMax = ImGui.getItemRectMax();
            var lastButtonX2 = rectMax.x;
            var nextButtonX2 = lastButtonX2 + style.itemSpacing.x + 40;
            if (n + 1 < buttonsCount && nextButtonX2 < windowVisibleX2)
                ImGui.sameLine();
            ImGui.popID();
        }

        ImGui.treePop();

    }

    // =========================================================================
    // Groups
    // =========================================================================

    static var groupsValues:Array<Float> = [0.5, 0.20, 0.80, 0.60, 0.25];

    static function groups():Void {

        if (!ImGui.treeNode('Groups'))
            return;

        helpMarker(
            'BeginGroup() basically locks the horizontal position for new line. '
            + 'EndGroup() bundles the whole group so that you can use "item" functions such as '
            + 'IsItemHovered()/IsItemActive() or SameLine() etc. on the whole group.');
        ImGui.beginGroup();
        {
            ImGui.beginGroup();
            ImGui.button('AAA');
            ImGui.sameLine();
            ImGui.button('BBB');
            ImGui.sameLine();
            ImGui.beginGroup();
            ImGui.button('CCC');
            ImGui.button('DDD');
            ImGui.endGroup();
            ImGui.sameLine();
            ImGui.button('EEE');
            ImGui.endGroup();
            ImGui.setItemTooltip('First group hovered');
        }
        var size = ImGui.getItemRectSize();
        ImGui.plotHistogramEx('##values', groupsValues, 0, null, 0.0, 1.0, size);

        var style = ImGui.getStyle();
        var itemSpacing = style.itemSpacing;
        ImGui.buttonEx('ACTION', ImVec2.make((size.x - itemSpacing.x) * 0.5, size.y));
        ImGui.sameLine();
        ImGui.buttonEx('REACTION', ImVec2.make((size.x - itemSpacing.x) * 0.5, size.y));
        ImGui.endGroup();
        ImGui.sameLine();

        ImGui.buttonEx('LEVERAGE\nBUZZWORD', size);
        ImGui.sameLine();

        if (ImGui.beginListBox('List', size)) {
            ImGui.selectableEx('Selected', true, 0, ImVec2.make(0, 0));
            ImGui.selectableEx('Not Selected', false, 0, ImVec2.make(0, 0));
            ImGui.endListBox();
        }

        ImGui.treePop();

    }

    // =========================================================================
    // Text Baseline Alignment
    // =========================================================================

    static function textBaselineAlignment():Void {

        if (!ImGui.treeNode('Text Baseline Alignment'))
            return;

        {
            ImGui.bulletText('Text baseline:');
            ImGui.sameLine(); helpMarker(
                'This is testing the vertical alignment that gets applied on text to keep it aligned with widgets. '
                + 'Lines only composed of text or "small" widgets use less vertical space than lines with framed widgets.');
            ImGui.indent();

            ImGui.text('KO Blahblah'); ImGui.sameLine();
            ImGui.button('Some framed item'); ImGui.sameLine();
            helpMarker('Baseline of button will look misaligned with text..');

            ImGui.alignTextToFramePadding();
            ImGui.text('OK Blahblah'); ImGui.sameLine();
            ImGui.button('Some framed item##2'); ImGui.sameLine();
            helpMarker('We call AlignTextToFramePadding() to vertically align the text baseline by +FramePadding.y');

            ImGui.button('TEST##1'); ImGui.sameLine();
            ImGui.text('TEST'); ImGui.sameLine();
            ImGui.smallButton('TEST##2');

            ImGui.alignTextToFramePadding();
            ImGui.text('Text aligned to framed item'); ImGui.sameLine();
            ImGui.button('Item##1'); ImGui.sameLine();
            ImGui.text('Item'); ImGui.sameLine();
            ImGui.smallButton('Item##2'); ImGui.sameLine();
            ImGui.button('Item##3');

            ImGui.unindent();
        }

        ImGui.spacing();

        {
            ImGui.bulletText('Multi-line text:');
            ImGui.indent();
            ImGui.text('One\nTwo\nThree'); ImGui.sameLine();
            ImGui.text('Hello\nWorld'); ImGui.sameLine();
            ImGui.text('Banana');

            ImGui.text('Banana'); ImGui.sameLine();
            ImGui.text('Hello\nWorld'); ImGui.sameLine();
            ImGui.text('One\nTwo\nThree');

            ImGui.button('HOP##1'); ImGui.sameLine();
            ImGui.text('Banana'); ImGui.sameLine();
            ImGui.text('Hello\nWorld'); ImGui.sameLine();
            ImGui.text('Banana');

            ImGui.button('HOP##2'); ImGui.sameLine();
            ImGui.text('Hello\nWorld'); ImGui.sameLine();
            ImGui.text('Banana');
            ImGui.unindent();
        }

        ImGui.spacing();

        {
            ImGui.bulletText('Misc items:');
            ImGui.indent();

            ImGui.buttonEx('80x80', ImVec2.make(80, 80));
            ImGui.sameLine();
            ImGui.buttonEx('50x50', ImVec2.make(50, 50));
            ImGui.sameLine();
            ImGui.button('Button()');
            ImGui.sameLine();
            ImGui.smallButton('SmallButton()');

            var style = ImGui.getStyle();
            var innerSpacing = style.itemInnerSpacing;
            var spacing = innerSpacing.x;
            ImGui.button('Button##1'); // Will make line higher
            ImGui.sameLineEx(0.0, spacing);
            if (ImGui.treeNodeEx('Node##1', ImGuiTreeNodeFlags.DrawLinesNone)) {
                for (i in 0...6)
                    ImGui.bulletText('Item ' + i + '..');
                ImGui.treePop();
            }

            var padding:Float = Std.int(ImGui.getFontSize() * 1.20); // Large padding
            ImGui.pushStyleVarY(ImGuiStyleVar.FramePadding, padding);
            ImGui.button('Button##2');
            ImGui.popStyleVar();
            ImGui.sameLineEx(0.0, spacing);
            if (ImGui.treeNodeEx('Node##2', ImGuiTreeNodeFlags.DrawLinesNone))
                ImGui.treePop();

            ImGui.alignTextToFramePadding();

            var nodeOpen = ImGui.treeNode('Node##3');
            ImGui.sameLineEx(0.0, spacing); ImGui.button('Button##3');
            if (nodeOpen) {
                for (i in 0...6)
                    ImGui.bulletText('Item ' + i + '..');
                ImGui.treePop();
            }

            ImGui.button('Button##4');
            ImGui.sameLineEx(0.0, spacing);
            ImGui.bulletText('Bullet text');

            ImGui.alignTextToFramePadding();
            ImGui.bulletText('Node');
            ImGui.sameLineEx(0.0, spacing); ImGui.button('Button##5');
            ImGui.unindent();
        }

        ImGui.treePop();

    }

    // =========================================================================
    // Scrolling
    // =========================================================================

    static var trackItem:Int = 50;
    static var enableTrack:Bool = true;
    static var enableExtraDecorations:Bool = false;
    static var scrollToOffPx:Float = 0.0;
    static var scrollToPosPx:Float = 200.0;
    static var scrollLines:Int = 7;
    static var showHorizontalContentsSizeDemoWindow:Bool = false;
    static var showHScrollbar:Bool = true;
    static var showButton:Bool = true;
    static var showTreeNodes:Bool = true;
    static var showTextWrapped:Bool = false;
    static var showColumns:Bool = true;
    static var showTabBar:Bool = true;
    static var showChild:Bool = false;
    static var explicitContentSize:Bool = false;
    static var contentsSizeX:Float = 300.0;
    static var vScrollNames:Array<String> = ['Top', '25%', 'Center', '75%', 'Bottom'];
    static var hScrollNames:Array<String> = ['Left', '25%', 'Center', '75%', 'Right'];

    static function scrolling():Void {

        if (!ImGui.treeNode('Scrolling'))
            return;

        helpMarker('Use SetScrollHereY() or SetScrollFromPosY() to scroll to a given vertical position.');

        ImGui.checkbox('Decoration', enableExtraDecorations);

        ImGui.pushItemWidth(ImGui.getFontSize() * 10);
        if (ImGui.dragIntEx('##item', trackItem, 0.25, 0, 99, 'Item = %d'))
            enableTrack = true;
        ImGui.sameLine();
        ImGui.checkbox('Track', enableTrack);

        var scrollToOff = ImGui.dragFloatEx('##off', scrollToOffPx, 1.00, 0, 3.402823466e38, '+%.0f px');
        ImGui.sameLine();
        scrollToOff = ImGui.button('Scroll Offset') || scrollToOff;

        var scrollToPos = ImGui.dragFloatEx('##pos', scrollToPosPx, 1.00, -10, 3.402823466e38, 'X/Y = %.0f px');
        ImGui.sameLine();
        scrollToPos = ImGui.button('Scroll To Pos') || scrollToPos;
        ImGui.popItemWidth();

        if (scrollToOff || scrollToPos)
            enableTrack = false;

        var style = ImGui.getStyle();
        var itemSpacing = style.itemSpacing;
        var avail = ImGui.getContentRegionAvail();
        var childW = (avail.x - 4 * itemSpacing.x) / 5;
        if (childW < 1.0)
            childW = 1.0;
        ImGui.pushID('##VerticalScrolling');
        for (i in 0...5) {
            if (i > 0) ImGui.sameLine();
            ImGui.beginGroup();
            ImGui.textUnformatted(vScrollNames[i]);

            var childFlags = enableExtraDecorations ? ImGuiWindowFlags.MenuBar : 0;
            var childIsVisible = ImGui.beginChild('##vchild' + i, ImVec2.make(childW, 200.0), ImGuiChildFlags.Borders, childFlags);
            if (ImGui.beginMenuBar()) {
                ImGui.textUnformatted('abc');
                ImGui.endMenuBar();
            }
            if (scrollToOff)
                ImGui.setScrollY(scrollToOffPx);
            if (scrollToPos) {
                var startPos = ImGui.getCursorStartPos();
                ImGui.setScrollFromPosY(startPos.y + scrollToPosPx, i * 0.25);
            }
            if (childIsVisible) { // Avoid calling SetScrollHereY when running with culled items
                for (item in 0...100) {
                    if (enableTrack && item == trackItem) {
                        ImGui.textColored(ImVec4.make(1, 1, 0, 1), 'Item ' + item);
                        ImGui.setScrollHereY(i * 0.25); // 0.0f:top, 0.5f:center, 1.0f:bottom
                    }
                    else {
                        ImGui.text('Item ' + item);
                    }
                }
            }
            var scrollY = ImGui.getScrollY();
            var scrollMaxY = ImGui.getScrollMaxY();
            ImGui.endChild();
            ImGui.text(Std.int(scrollY) + '/' + Std.int(scrollMaxY));
            ImGui.endGroup();
        }
        ImGui.popID();

        // Horizontal scroll functions
        ImGui.spacing();
        helpMarker(
            'Use SetScrollHereX() or SetScrollFromPosX() to scroll to a given horizontal position.\n\n'
            + 'Because the clipping rectangle of most window hides half worth of WindowPadding on the '
            + 'left/right, using SetScrollFromPosX(+1) will usually result in clipped text whereas the '
            + 'equivalent SetScrollFromPosY(+1) wouldn\'t.');
        ImGui.pushID('##HorizontalScrolling');
        for (i in 0...5) {
            var scrollbarSize = style.scrollbarSize;
            var windowPadding = style.windowPadding;
            var childHeight = ImGui.getTextLineHeight() + scrollbarSize + windowPadding.y * 2.0;
            var childFlags = ImGuiWindowFlags.HorizontalScrollbar | (enableExtraDecorations ? ImGuiWindowFlags.AlwaysVerticalScrollbar : 0);
            var childIsVisible = ImGui.beginChild('##hchild' + i, ImVec2.make(-100, childHeight), ImGuiChildFlags.Borders, childFlags);
            if (scrollToOff)
                ImGui.setScrollX(scrollToOffPx);
            if (scrollToPos) {
                var startPos = ImGui.getCursorStartPos();
                ImGui.setScrollFromPosX(startPos.x + scrollToPosPx, i * 0.25);
            }
            if (childIsVisible) { // Avoid calling SetScrollHereY when running with culled items
                for (item in 0...100) {
                    if (item > 0)
                        ImGui.sameLine();
                    if (enableTrack && item == trackItem) {
                        ImGui.textColored(ImVec4.make(1, 1, 0, 1), 'Item ' + item);
                        ImGui.setScrollHereX(i * 0.25); // 0.0f:left, 0.5f:center, 1.0f:right
                    }
                    else {
                        ImGui.text('Item ' + item);
                    }
                }
            }
            var scrollX = ImGui.getScrollX();
            var scrollMaxX = ImGui.getScrollMaxX();
            ImGui.endChild();
            ImGui.sameLine();
            ImGui.text(hScrollNames[i] + '\n' + Std.int(scrollX) + '/' + Std.int(scrollMaxX));
            ImGui.spacing();
        }
        ImGui.popID();

        // Miscellaneous Horizontal Scrolling Demo
        helpMarker(
            'Horizontal scrolling for a window is enabled via the ImGuiWindowFlags_HorizontalScrollbar flag.\n\n'
            + 'You may want to also explicitly specify content width by using SetNextWindowContentWidth() before Begin().');
        ImGui.sliderInt('Lines', scrollLines, 1, 15);
        ImGui.pushStyleVar(ImGuiStyleVar.FrameRounding, 3.0);
        ImGui.pushStyleVarImVec2(ImGuiStyleVar.FramePadding, ImVec2.make(2.0, 1.0));
        var scrollingChildSize = ImVec2.make(0, ImGui.getFrameHeightWithSpacing() * 7 + 30);
        ImGui.beginChild('scrolling', scrollingChildSize, ImGuiChildFlags.Borders, ImGuiWindowFlags.HorizontalScrollbar);
        for (line in 0...scrollLines) {
            var numButtons = 10 + ((line & 1) != 0 ? line * 9 : line * 3);
            for (n in 0...numButtons) {
                if (n > 0) ImGui.sameLine();
                ImGui.pushIDInt(n + line * 1000);
                var label = (n % 15 == 0) ? 'FizzBuzz' : (n % 3 == 0) ? 'Fizz' : (n % 5 == 0) ? 'Buzz' : ('' + n);
                var hue = n * 0.05;
                ImGui.pushStyleColorImVec4(ImGuiCol.Button, hsv(hue, 0.6, 0.6));
                ImGui.pushStyleColorImVec4(ImGuiCol.ButtonHovered, hsv(hue, 0.7, 0.7));
                ImGui.pushStyleColorImVec4(ImGuiCol.ButtonActive, hsv(hue, 0.8, 0.8));
                ImGui.buttonEx(label, ImVec2.make(40.0 + Math.sin(line + n) * 20.0, 0.0));
                ImGui.popStyleColorEx(3);
                ImGui.popID();
            }
        }
        var scrollX = ImGui.getScrollX();
        var scrollMaxX = ImGui.getScrollMaxX();
        ImGui.endChild();
        ImGui.popStyleVarEx(2);
        var scrollXDelta = 0.0;
        ImGui.smallButton('<<');
        if (ImGui.isItemActive())
            scrollXDelta = -ImGui.getIO().deltaTime * 1000.0;
        ImGui.sameLine();
        ImGui.text('Scroll from code'); ImGui.sameLine();
        ImGui.smallButton('>>');
        if (ImGui.isItemActive())
            scrollXDelta = ImGui.getIO().deltaTime * 1000.0;
        ImGui.sameLine();
        ImGui.text(Std.int(scrollX) + '/' + Std.int(scrollMaxX));
        if (scrollXDelta != 0.0) {
            // Demonstrate a trick: you can use Begin to set yourself in the context of another window
            ImGui.beginChild('scrolling', ImVec2.make(0, 0), 0, 0);
            ImGui.setScrollX(ImGui.getScrollX() + scrollXDelta);
            ImGui.endChild();
        }
        ImGui.spacing();

        ImGui.checkbox('Show Horizontal contents size demo window', showHorizontalContentsSizeDemoWindow);

        if (showHorizontalContentsSizeDemoWindow) {
            if (explicitContentSize)
                ImGui.setNextWindowContentSize(ImVec2.make(contentsSizeX, 0.0));
            ImGui.begin('Horizontal contents size demo window', showHorizontalContentsSizeDemoWindow, showHScrollbar ? ImGuiWindowFlags.HorizontalScrollbar : 0);
            ImGui.pushStyleVarImVec2(ImGuiStyleVar.ItemSpacing, ImVec2.make(2, 0));
            ImGui.pushStyleVarImVec2(ImGuiStyleVar.FramePadding, ImVec2.make(2, 0));
            helpMarker(
                'Test how different widgets react and impact the work rectangle growing when horizontal scrolling is enabled.\n\n'
                + 'Use \'Metrics->Tools->Show windows rectangles\' to visualize rectangles.');
            ImGui.checkbox('H-scrollbar', showHScrollbar);
            ImGui.checkbox('Button', showButton);            // Will grow contents size (unless explicitly overwritten)
            ImGui.checkbox('Tree nodes', showTreeNodes);     // Will grow contents size and display highlight over full width
            ImGui.checkbox('Text wrapped', showTextWrapped); // Will grow and use contents size
            ImGui.checkbox('Columns', showColumns);          // Will use contents size
            ImGui.checkbox('Tab bar', showTabBar);           // Will use contents size
            ImGui.checkbox('Child', showChild);              // Will grow and use contents size
            ImGui.checkbox('Explicit content size', explicitContentSize);
            ImGui.text('Scroll ' + fmt1(ImGui.getScrollX()) + '/' + fmt1(ImGui.getScrollMaxX()) + ' ' + fmt1(ImGui.getScrollY()) + '/' + fmt1(ImGui.getScrollMaxY()));
            if (explicitContentSize) {
                ImGui.sameLine();
                var textSize = ImGui.calcTextSize('123456');
                ImGui.setNextItemWidth(textSize.x);
                ImGui.dragFloat('##csx', contentsSizeX);
                var p = ImGui.getCursorScreenPos();
                var drawList = ImGui.getWindowDrawList();
                ImDrawList.addRectFilled(drawList, p, ImVec2.make(p.x + 10, p.y + 10), imCol32(255, 255, 255, 255));
                ImDrawList.addRectFilled(drawList, ImVec2.make(p.x + contentsSizeX - 10, p.y), ImVec2.make(p.x + contentsSizeX, p.y + 10), imCol32(255, 255, 255, 255));
                ImGui.dummy(ImVec2.make(0, 10));
            }
            ImGui.popStyleVarEx(2);
            ImGui.separator();
            if (showButton) {
                ImGui.buttonEx('this is a 300-wide button', ImVec2.make(300, 0));
            }
            if (showTreeNodes) {
                var open = true;
                if (ImGui.treeNode('this is a tree node')) {
                    if (ImGui.treeNode('another one of those tree node...')) {
                        ImGui.text('Some tree contents');
                        ImGui.treePop();
                    }
                    ImGui.treePop();
                }
                ImGui.collapsingHeaderBoolPtr('CollapsingHeader', open);
            }
            if (showTextWrapped) {
                ImGui.textWrapped('This text should automatically wrap on the edge of the work rectangle.');
            }
            if (showColumns) {
                ImGui.text('Tables:');
                if (ImGui.beginTable('table', 4, ImGuiTableFlags.Borders)) {
                    for (n in 0...4) {
                        ImGui.tableNextColumn();
                        var avail2 = ImGui.getContentRegionAvail();
                        ImGui.text('Width ' + fmt2(avail2.x));
                    }
                    ImGui.endTable();
                }
                ImGui.text('Columns:');
                ImGui.columnsEx(4);
                for (n in 0...4) {
                    ImGui.text('Width ' + fmt2(ImGui.getColumnWidth()));
                    ImGui.nextColumn();
                }
                ImGui.columnsEx(1);
            }
            if (showTabBar && ImGui.beginTabBar('Hello')) {
                if (ImGui.beginTabItem('OneOneOne')) { ImGui.endTabItem(); }
                if (ImGui.beginTabItem('TwoTwoTwo')) { ImGui.endTabItem(); }
                if (ImGui.beginTabItem('ThreeThreeThree')) { ImGui.endTabItem(); }
                if (ImGui.beginTabItem('FourFourFour')) { ImGui.endTabItem(); }
                ImGui.endTabBar();
            }
            if (showChild) {
                ImGui.beginChild('child', ImVec2.make(0, 0), ImGuiChildFlags.Borders, 0);
                ImGui.endChild();
            }
            ImGui.end();
        }

        ImGui.treePop();

    }

    /** ImColor::HSV replacement: HSV to RGB as an ImVec4 (alpha 1). */
    static function hsv(h:Float, s:Float, v:Float):ImVec4 {
        var r = 0.0, g = 0.0, b = 0.0;
        ImGui.colorConvertHSVtoRGB(h, s, v, r, g, b);
        return ImVec4.make(r, g, b, 1.0);
    }

    /** Format a float with 1 decimal (printf %.1f equivalent). */
    static function fmt1(v:Float):String {
        return '' + (Math.round(v * 10) / 10);
    }

    /** Format a float with 2 decimals (printf %.2f equivalent). */
    static function fmt2(v:Float):String {
        return '' + (Math.round(v * 100) / 100);
    }

    // =========================================================================
    // Text Clipping
    // =========================================================================

    static var clipSize:Array<Float> = [100.0, 100.0];
    static var clipOffsetX:Float = 30.0;
    static var clipOffsetY:Float = 30.0;

    static function textClipping():Void {

        if (!ImGui.treeNode('Text Clipping'))
            return;

        ImGui.dragFloat2Ex('size', clipSize, 0.5, 1.0, 200.0, '%.0f');
        ImGui.textWrapped('(Click and drag to scroll)');

        helpMarker(
            '(Left) Using ImGui::PushClipRect():\n'
            + 'Will alter ImGui hit-testing logic + ImDrawList rendering.\n'
            + '(use this if you want your clipping rectangle to affect interactions)\n\n'
            + '(Center) Using ImDrawList::PushClipRect():\n'
            + 'Will alter ImDrawList rendering only.\n'
            + '(use this as a shortcut if you are only using ImDrawList calls)\n\n'
            + '(Right) Using ImDrawList::AddText() with a fine ClipRect:\n'
            + 'Will alter only this specific ImDrawList::AddText() rendering.\n'
            + 'This is often used internally to avoid altering the clipping rectangle and minimize draw calls.');

        for (n in 0...3) {
            if (n > 0)
                ImGui.sameLine();

            ImGui.pushIDInt(n);
            ImGui.invisibleButton('##canvas', ImVec2.make(clipSize[0], clipSize[1]));
            if (ImGui.isItemActive() && ImGui.isMouseDragging(ImGuiMouseButton.Left)) {
                var io = ImGui.getIO();
                var mouseDelta = io.mouseDelta;
                clipOffsetX += mouseDelta.x;
                clipOffsetY += mouseDelta.y;
            }
            ImGui.popID();
            if (!ImGui.isItemVisible()) // Skip rendering as ImDrawList elements are not clipped.
                continue;

            var p0 = ImGui.getItemRectMin();
            var p1 = ImGui.getItemRectMax();
            var textStr = 'Line 1 hello\nLine 2 clip me!';
            var textPos = ImVec2.make(p0.x + clipOffsetX, p0.y + clipOffsetY);
            var drawList = ImGui.getWindowDrawList();
            switch (n) {
                case 0:
                    ImGui.pushClipRect(p0, p1, true);
                    ImDrawList.addRectFilled(drawList, p0, p1, imCol32(90, 90, 120, 255));
                    ImDrawList.addText(drawList, textPos, imCol32(255, 255, 255, 255), textStr);
                    ImGui.popClipRect();
                case 1:
                    ImDrawList.pushClipRect(drawList, p0, p1, true);
                    ImDrawList.addRectFilled(drawList, p0, p1, imCol32(90, 90, 120, 255));
                    ImDrawList.addText(drawList, textPos, imCol32(255, 255, 255, 255), textStr);
                    ImDrawList.popClipRect(drawList);
                case 2:
                    // AddText() takes a ImVec4* clip rect: write it to the scratch buffer
                    NativeStructs.setF32(DemoUtils.buffer, 0, p0.x);
                    NativeStructs.setF32(DemoUtils.buffer, 4, p0.y);
                    NativeStructs.setF32(DemoUtils.buffer, 8, p1.x);
                    NativeStructs.setF32(DemoUtils.buffer, 12, p1.y);
                    ImDrawList.addRectFilled(drawList, p0, p1, imCol32(90, 90, 120, 255));
                    #if cpp
                    ImDrawList.addTextImFontPtrEx(drawList, ImGui.getFont(), ImGui.getFontSize(), textPos, imCol32(255, 255, 255, 255), textStr, null, 0.0, untyped __cpp__('(ImVec4*){0}', DemoUtils.ptr(0)));
                    #else
                    ImDrawList.addTextImFontPtrEx(drawList, ImGui.getFont(), ImGui.getFontSize(), textPos, imCol32(255, 255, 255, 255), textStr, null, 0.0, DemoUtils.ptr(0));
                    #end
            }
        }

        ImGui.treePop();

    }

    // =========================================================================
    // Overlap Mode
    // =========================================================================

    static var enableAllowOverlap:Bool = true;

    static function overlapMode():Void {

        if (!ImGui.treeNode('Overlap Mode'))
            return;

        helpMarker(
            'Hit-testing is by default performed in item submission order, which generally is perceived as \'back-to-front\'.\n\n'
            + 'By using SetNextItemAllowOverlap() you can notify that an item may be overlapped by another. '
            + 'Doing so alters the hovering logic: items using AllowOverlap mode requires an extra frame to accept hovered state.');
        ImGui.checkbox('Enable AllowOverlap', enableAllowOverlap);

        var button1Pos = ImGui.getCursorScreenPos();
        var button2Pos = ImVec2.make(button1Pos.x + 50.0, button1Pos.y + 50.0);
        if (enableAllowOverlap)
            ImGui.setNextItemAllowOverlap();
        ImGui.buttonEx('Button 1', ImVec2.make(80, 80));
        ImGui.setCursorScreenPos(button2Pos);
        ImGui.buttonEx('Button 2', ImVec2.make(80, 80));

        if (enableAllowOverlap)
            ImGui.setNextItemAllowOverlap();
        ImGui.selectableEx('Some Selectable', false, 0, ImVec2.make(0, 0));
        ImGui.sameLine();
        ImGui.smallButton('++');

        ImGui.treePop();

    }

}
