package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/** Widgets > Text (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsText {

    static var customSize:Float = 16.0;
    static var customScale:Float = 1.0;
    static var wrapWidth:Float = 200.0;
    static var utf8Buf:String = '日本語';

    public static function show():Void {

        if (!ImGui.treeNode('Text'))
            return;

        if (ImGui.treeNode('Colorful Text')) {
            ImGui.textColored(ImVec4.make(1.0, 0.0, 1.0, 1.0), 'Pink');
            ImGui.textColored(ImVec4.make(1.0, 1.0, 0.0, 1.0), 'Yellow');
            ImGui.textDisabled('Disabled');
            ImGui.sameLine(); helpMarker('The TextDisabled color is stored in ImGuiStyle.');
            ImGui.treePop();
        }

        if (ImGui.treeNode('Font Size')) {
            var style = ImGui.getStyle();
            var globalScale = style.fontScaleMain * style.fontScaleDpi;
            ImGui.text('style.FontScaleMain = ' + style.fontScaleMain);
            ImGui.text('style.FontScaleDpi = ' + style.fontScaleDpi);
            ImGui.text('global_scale = ~' + globalScale);
            ImGui.text('FontSize = ' + ImGui.getFontSize());

            ImGui.separatorText('');
            ImGui.sliderFloatEx('custom_size', customSize, 10.0, 100.0, '%.0f');
            ImGui.text('ImGui.pushFontFloat(DemoUtils.noFont(), custom_size);');
            ImGui.pushFontFloat(DemoUtils.noFont(), customSize);
            ImGui.text('FontSize = ' + ImGui.getFontSize() + ' (== ' + customSize + ' * global_scale)');
            ImGui.popFont();

            ImGui.separatorText('');
            ImGui.sliderFloatEx('custom_scale', customScale, 0.5, 4.0, '%.2f');
            ImGui.text('ImGui.pushFontFloat(DemoUtils.noFont(), style.fontSizeBase * custom_scale);');
            ImGui.pushFontFloat(DemoUtils.noFont(), style.fontSizeBase * customScale);
            ImGui.text('FontSize = ' + ImGui.getFontSize() + ' (== style.FontSizeBase * ' + customScale + ' * global_scale)');
            ImGui.popFont();

            ImGui.separatorText('');
            var scaling = 0.5;
            while (scaling <= 4.0) {
                ImGui.pushFontFloat(DemoUtils.noFont(), style.fontSizeBase * scaling);
                ImGui.text('FontSize = ' + ImGui.getFontSize() + ' (== style.FontSizeBase * ' + scaling + ' * global_scale)');
                ImGui.popFont();
                scaling += 0.5;
            }

            ImGui.treePop();
        }

        if (ImGui.treeNode('Word Wrapping')) {
            ImGui.textWrapped(
                'This text should automatically wrap on the edge of the window. The current implementation '
                + 'for text wrapping follows simple rules suitable for English and possibly other languages.');
            ImGui.spacing();

            ImGui.sliderFloatEx('Wrap width', wrapWidth, -20, 600, '%.0f');

            var drawList = ImGui.getWindowDrawList();
            for (n in 0...2) {
                ImGui.text('Test paragraph ' + n + ':');
                var pos = ImGui.getCursorScreenPos();
                var markerMin = ImVec2.make(pos.x + wrapWidth, pos.y);
                var markerMax = ImVec2.make(pos.x + wrapWidth + 10, pos.y + ImGui.getTextLineHeight());
                var cursorPos = ImGui.getCursorPos();
                ImGui.pushTextWrapPos(cursorPos.x + wrapWidth);
                if (n == 0)
                    ImGui.text('The lazy dog is a good dog. This paragraph should fit within ' + Std.int(wrapWidth) + ' pixels. Testing a 1 character word. The quick brown fox jumps over the lazy dog.');
                else
                    ImGui.text('aaaaaaaa bbbbbbbb, c cccccccc,dddddddd. d eeeeeeee   ffffffff. gggggggg!hhhhhhhh');

                var rectMin = ImGui.getItemRectMin();
                var rectMax = ImGui.getItemRectMax();
                ImDrawList.addRect(drawList, rectMin, rectMax, imCol32(255, 255, 0, 255));
                ImDrawList.addRectFilled(drawList, markerMin, markerMax, imCol32(255, 0, 255, 255));
                ImGui.popTextWrapPos();
            }

            ImGui.treePop();
        }

        if (ImGui.treeNode('UTF-8 Text')) {
            ImGui.textWrapped(
                'CJK text will only appear if the font was loaded with the appropriate CJK character ranges. '
                + 'Call io.Fonts->AddFontFromFileTTF() manually to load extra character ranges. '
                + 'Read docs/FONTS.md for details.');
            ImGui.text('Hiragana: かきくけこ (kakikukeko)');
            ImGui.text('Kanjis: 日本語 (nihongo)');
            ImGui.inputText('UTF-8 input', utf8Buf, 32);
            ImGui.treePop();
        }

        ImGui.treePop();

    }

    /** IM_COL32 (ImGui packs R | G<<8 | B<<16 | A<<24). */
    public static inline function imCol32(r:Int, g:Int, b:Int, a:Int):Int {
        return r | (g << 8) | (b << 16) | (a << 24);
    }

}
