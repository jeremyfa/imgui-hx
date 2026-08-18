package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/**
 * Widgets section of the demo (imgui_demo.cpp port).
 * Sub-sections are ported progressively; the remaining ones show a
 * "(not ported yet)" placeholder under their tree node.
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWindowWidgets {

    public static function show():Void {

        if (!ImGui.collapsingHeader('Widgets'))
            return;

        // The checkbox for this is inside the "Disable Blocks" section below
        var disableAll = disableSections;
        if (disableAll)
            ImGui.beginDisabled();

        basic();
        bullets();
        collapsingHeaders();
        DemoWidgetsCombos.show();
        DemoWidgetsColorPickers.show();
        DemoWidgetsDataTypes.show();

        if (disableAll)
            ImGui.endDisabled();
        disableBlocks();
        if (disableAll)
            ImGui.beginDisabled();

        DemoWidgetsDragAndDrop.show();
        DemoWidgetsDragsSliders.show();
        fonts();
        DemoWidgetsImages.show();
        DemoWidgetsListBoxes.show();
        DemoWidgetsMultiComponents.show();
        DemoWidgetsPlotting.show();
        progressBars();
        DemoWidgetsQuerying.show();
        DemoWidgetsSelectables.show();
        DemoWidgetsMultiSelect.show();
        DemoWidgetsTabs.show();
        DemoWidgetsText.show();
        textFilter();
        DemoWidgetsTextInput.show();
        DemoWidgetsTooltips.show();
        DemoWidgetsTreeNodes.show();
        DemoWidgetsVerticalSliders.show();

        if (disableAll)
            ImGui.endDisabled();

    }

    static function fonts():Void {
        if (ImGui.treeNode('Fonts')) {
            // ShowFontAtlas() is not exposed by dcimgui (debug tools helper):
            // show basic font information instead.
            ImGui.textDisabled('(ShowFontAtlas is not exposed by dcimgui, showing basic font info)');
            ImGui.text('Current font size: ' + ImGui.getFontSize());
            ImGui.pushFontFloat(DemoUtils.noFont(), ImGui.getFontSize() * 1.5);
            ImGui.text('This text uses a 1.5x font size');
            ImGui.popFont();
            ImGui.treePop();
        }
    }

    static var progressAccum:Float = 0.0;
    static var progressDir:Float = 1.0;

    static function progressBars():Void {
        if (!ImGui.treeNode('Progress Bars'))
            return;

        // Animate a simple progress bar
        var io = ImGui.getIO();
        progressAccum += progressDir * 0.4 * io.deltaTime;
        if (progressAccum >= 1.1) { progressAccum = 1.1; progressDir *= -1.0; }
        if (progressAccum <= -0.1) { progressAccum = -0.1; progressDir *= -1.0; }

        var progress = Math.min(Math.max(progressAccum, 0.0), 1.0);

        ImGui.progressBar(progress, ImVec2.make(0.0, 0.0));
        ImGui.sameLineEx(0.0, ImGui.getStyle().itemInnerSpacing.x);
        ImGui.text('Progress Bar');

        var buf = Std.int(progress * 1753) + '/' + 1753;
        ImGui.progressBar(progress, ImVec2.make(0, 0), buf);

        // Pass an animated negative value for an indeterminate progress bar
        ImGui.progressBar(-1.0 * ImGui.getTime(), ImVec2.make(0.0, 0.0), 'Searching..');
        ImGui.sameLineEx(0.0, ImGui.getStyle().itemInnerSpacing.x);
        ImGui.text('Indeterminate');

        ImGui.treePop();
    }

    static var textFilterInstance:imgui.ImGuiTextFilterHx = new imgui.ImGuiTextFilterHx();

    static function textFilter():Void {
        if (!ImGui.treeNode('Text Filter'))
            return;

        // Helper class to easy setup a text filter (pure Haxe reimplementation)
        helpMarker('Not a widget per-se, but ImGuiTextFilter is a helper to perform simple filtering on text strings.');
        ImGui.text('Filter usage:\n'
            + '  ""         display all lines\n'
            + '  "xxx"      display lines containing "xxx"\n'
            + '  "xxx,yyy"  display lines containing "xxx" or "yyy"\n'
            + '  "-xxx"     hide lines containing "xxx"');
        textFilterInstance.draw();
        var lines = ['aaa1.c', 'bbb1.c', 'ccc1.c', 'aaa2.cpp', 'bbb2.cpp', 'ccc2.cpp', 'abc.h', 'hello, world'];
        for (i in 0...lines.length)
            if (textFilterInstance.passFilter(lines[i]))
                ImGui.bulletText(lines[i]);

        ImGui.treePop();
    }

    public static var disableSections:Bool = false;

    static function disableBlocks():Void {
        if (ImGui.treeNode('Disable Blocks')) {
            ImGui.checkbox('Disable entire section above', disableSections);
            ImGui.sameLine(); helpMarker('Demonstrate using BeginDisabled()/EndDisabled() across other sections.');
            ImGui.treePop();
        }
    }

    static function stub(label:String):Void {
        if (ImGui.treeNode(label)) {
            ImGui.textDisabled('(not ported yet)');
            ImGui.treePop();
        }
    }

    // =========================================================================
    // Basic
    // =========================================================================

    static var clicked:Int = 0;
    static var check:Bool = true;
    static var e:Int = 0;
    static var counter:Int = 0;
    static var str0:String = 'Hello, world!';
    static var str1:String = '';
    static var i0:Int = 123;
    static var f0:Float = 0.001;
    static var d0:Float = 999999.00000001;
    static var f1sci:Float = 1e10;
    static var vec4a:Array<Float> = [0.10, 0.20, 0.30, 0.44];
    static var dragI1:Int = 50;
    static var dragI2:Int = 42;
    static var dragI3:Int = 128;
    static var dragF1:Float = 1.00;
    static var dragF2:Float = 0.0067;
    static var sliderI1:Int = 0;
    static var sliderF1:Float = 0.123;
    static var sliderF2:Float = 0.0;
    static var angle:Float = 0.0;
    static var elem:Int = 0;
    static final elemsNames:Array<String> = ['Fire', 'Earth', 'Air', 'Water'];
    static var col1:Array<Float> = [1.0, 0.0, 0.2];
    static var col2:Array<Float> = [0.4, 0.7, 0.0, 0.5];
    static final comboItems:Array<String> = ['AAAA', 'BBBB', 'CCCC', 'DDDD', 'EEEE', 'FFFF', 'GGGG', 'HHHH', 'IIIIIII', 'JJJJ', 'KKKKKKK'];
    static var comboCurrent:Int = 0;
    static final listboxItems:Array<String> = ['Apple', 'Banana', 'Cherry', 'Kiwi', 'Mango', 'Orange', 'Pineapple', 'Strawberry', 'Watermelon'];
    static var listboxCurrent:Int = 1;

    static function basic():Void {

        if (!ImGui.treeNode('Basic'))
            return;

        ImGui.separatorText('General');

        if (ImGui.button('Button'))
            clicked++;
        if (clicked & 1 != 0) {
            ImGui.sameLine();
            ImGui.text('Thanks for clicking me!');
        }

        ImGui.checkbox('checkbox', check);

        ImGui.radioButtonIntPtr('radio a', e, 0); ImGui.sameLine();
        ImGui.radioButtonIntPtr('radio b', e, 1); ImGui.sameLine();
        ImGui.radioButtonIntPtr('radio c', e, 2);

        ImGui.alignTextToFramePadding();
        ImGui.textLinkOpenURLEx('Hyperlink', 'https://github.com/ocornut/imgui/wiki/Error-Handling');

        // Color buttons: PushID() + changing style colors (HSV computed portably)
        for (i in 0...7) {
            if (i > 0)
                ImGui.sameLine();
            ImGui.pushIDInt(i);
            ImGui.pushStyleColorImVec4(ImGuiCol.Button, hsv(i / 7.0, 0.6, 0.6));
            ImGui.pushStyleColorImVec4(ImGuiCol.ButtonHovered, hsv(i / 7.0, 0.7, 0.7));
            ImGui.pushStyleColorImVec4(ImGuiCol.ButtonActive, hsv(i / 7.0, 0.8, 0.8));
            ImGui.button('Click');
            ImGui.popStyleColorEx(3);
            ImGui.popID();
        }

        // Align text baseline to framed widgets
        ImGui.alignTextToFramePadding();
        ImGui.text('Hold to repeat:');
        ImGui.sameLine();

        // Arrow buttons with repeater
        var spacing = ImGui.getStyle().itemInnerSpacing.x;
        ImGui.pushItemFlag(ImGuiItemFlags.ButtonRepeat, true);
        if (ImGui.arrowButton('##left', ImGuiDir.Left)) counter--;
        ImGui.sameLineEx(0.0, spacing);
        if (ImGui.arrowButton('##right', ImGuiDir.Right)) counter++;
        ImGui.popItemFlag();
        ImGui.sameLine();
        ImGui.text('' + counter);

        ImGui.button('Tooltip');
        ImGui.setItemTooltip('I am a tooltip');

        ImGui.labelText('label', 'Value');

        ImGui.separatorText('Inputs');

        {
            ImGui.inputText('input text', str0, 128);
            ImGui.sameLine(); helpMarker(
                'USER:\n'
                + 'Hold Shift or use mouse to select text.\n'
                + 'Ctrl+Left/Right to word jump.\n'
                + 'Ctrl+A or Double-Click to select all.\n'
                + 'Ctrl+X,Ctrl+C,Ctrl+V for clipboard.\n'
                + 'Ctrl+Z to undo, Ctrl+Y/Ctrl+Shift+Z to redo.\n'
                + 'Escape to revert.');

            ImGui.inputTextWithHint('input text (w/ hint)', 'enter text here', str1, 128);

            ImGui.inputInt('input int', i0);

            ImGui.inputFloatEx('input float', f0, 0.01, 1.0, '%.3f');

            ImGui.inputDoubleEx('input double', d0, 0.01, 1.0, '%.8f');

            ImGui.inputFloatEx('input scientific', f1sci, 0.0, 0.0, '%e');
            ImGui.sameLine(); helpMarker(
                'You can input value using the scientific notation,\n'
                + '  e.g. "1e+8" becomes "100000000".');

            ImGui.inputFloat3('input float3', vec4a);
        }

        ImGui.separatorText('Drags');

        {
            ImGui.dragIntEx('drag int', dragI1, 1);
            ImGui.sameLine(); helpMarker(
                'Click and drag to edit value.\n'
                + 'Hold Shift/Alt for faster/slower edit.\n'
                + 'Double-Click or Ctrl+Click to input value.');
            ImGui.dragIntEx('drag int 0..100', dragI2, 1, 0, 100, '%d%%', ImGuiSliderFlags.AlwaysClamp);
            ImGui.dragIntEx('drag int wrap 100..200', dragI3, 1, 100, 200, '%d', ImGuiSliderFlags.WrapAround);

            ImGui.dragFloatEx('drag float', dragF1, 0.005);
            ImGui.dragFloatEx('drag small float', dragF2, 0.0001, 0.0, 0.0, '%.06f ns');
        }

        ImGui.separatorText('Sliders');

        {
            ImGui.sliderInt('slider int', sliderI1, -1, 3);
            ImGui.sameLine(); helpMarker('Ctrl+Click to input value.');

            ImGui.sliderFloatEx('slider float', sliderF1, 0.0, 1.0, 'ratio = %.3f');
            ImGui.sliderFloatEx('slider float (log)', sliderF2, -10.0, 10.0, '%.4f', ImGuiSliderFlags.Logarithmic);

            ImGui.sliderAngle('slider angle', angle);

            // Using the format string to display a name instead of an integer
            var elemName = (elem >= 0 && elem < elemsNames.length) ? elemsNames[elem] : 'Unknown';
            ImGui.sliderIntEx('slider enum', elem, 0, elemsNames.length - 1, elemName);
            ImGui.sameLine(); helpMarker('Using the format string parameter to display a name instead of the underlying integer.');
        }

        ImGui.separatorText('Selectors/Pickers');

        {
            ImGui.colorEdit3('color 1', col1);
            ImGui.sameLine(); helpMarker(
                'Click on the color square to open a color picker.\n'
                + 'Click and hold to use drag and drop.\n'
                + 'Right-Click on the color square to show options.\n'
                + 'Ctrl+Click on individual component to input value.\n');

            ImGui.colorEdit4('color 2', col2);
        }

        {
            // Simplified one-liner Combo() (zero-separated items, portable)
            ImGui.combo('combo', comboCurrent, comboItems.join('\x00') + '\x00');
            ImGui.sameLine(); helpMarker(
                'Using the simplified one-liner Combo API here.\n'
                + 'Refer to the "Combo" section below for an explanation of how to use the more flexible and general BeginCombo/EndCombo API.');
        }

        {
            // Simplified ListBox: the items-array C variant is not portable, so
            // this uses the equivalent BeginListBox/Selectable pattern.
            var itemsHeight = ImGui.getTextLineHeightWithSpacing() * 4 + ImGui.getStyle().framePadding.y * 2;
            if (ImGui.beginListBox('listbox', ImVec2.make(0, itemsHeight))) {
                for (n in 0...listboxItems.length) {
                    var isSelected = (listboxCurrent == n);
                    if (ImGui.selectableEx(listboxItems[n], isSelected, 0, ImVec2.make(0, 0)))
                        listboxCurrent = n;
                    if (isSelected)
                        ImGui.setItemDefaultFocus();
                }
                ImGui.endListBox();
            }
            ImGui.sameLine(); helpMarker(
                'Using the simplified one-liner ListBox API here.\n'
                + 'Refer to the "List boxes" section below for an explanation of how to use the more flexible and general BeginListBox/EndListBox API.');
        }

        ImGui.treePop();

    }

    /** HSV to an ImVec4 color (portable stand-in for ImColor::HSV). */
    static function hsv(h:Float, s:Float, v:Float, a:Float = 1.0):ImVec4 {
        var r:Float = 0;
        var g:Float = 0;
        var b:Float = 0;
        ImGui.colorConvertHSVtoRGB(h, s, v, r, g, b);
        return ImVec4.make(r, g, b, a);
    }

    // =========================================================================
    // Bullets
    // =========================================================================

    static function bullets():Void {

        if (!ImGui.treeNode('Bullets'))
            return;

        ImGui.bulletText('Bullet point 1');
        ImGui.bulletText('Bullet point 2\nOn multiple lines');
        if (ImGui.treeNode('Tree node')) {
            ImGui.bulletText('Another bullet point');
            ImGui.treePop();
        }
        ImGui.bullet(); ImGui.text('Bullet point 3 (two calls)');
        ImGui.bullet(); ImGui.smallButton('Button');

        ImGui.treePop();

    }

    // =========================================================================
    // Collapsing Headers
    // =========================================================================

    static var closableGroup:Bool = true;

    static function collapsingHeaders():Void {

        if (!ImGui.treeNode('Collapsing Headers'))
            return;

        ImGui.checkbox('Show 2nd header', closableGroup);
        if (ImGui.collapsingHeader('Header', ImGuiTreeNodeFlags.None)) {
            ImGui.text('IsItemHovered: ' + (ImGui.isItemHovered() ? 1 : 0));
            for (i in 0...5)
                ImGui.text('Some content ' + i);
        }
        if (ImGui.collapsingHeaderBoolPtr('Header with a close button', closableGroup)) {
            ImGui.text('IsItemHovered: ' + (ImGui.isItemHovered() ? 1 : 0));
            for (i in 0...5)
                ImGui.text('More content ' + i);
        }

        ImGui.treePop();

    }

}
