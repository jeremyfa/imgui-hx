package imgui.demo;

import imgui.ImGui;
import imgui.ImGuiTextFilterHx;
import imgui.NativeStructs;

/**
 * Example: Log (imgui_demo.cpp port).
 * ExampleAppLog is reimplemented with an Array of lines instead of
 * ImGuiTextBuffer + line offsets (same UI, idiomatic Haxe storage).
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoAppLog {

    // ExampleAppLog state
    static var lines:Array<String> = [];
    static var filter:ImGuiTextFilterHx = new ImGuiTextFilterHx();
    static var autoScroll:Bool = true; // Keep scrolling if already at the bottom.

    static var counter:Int = 0;
    static var categories:Array<String> = ['info', 'warn', 'error'];
    static var words:Array<String> = ['Bumfuzzled', 'Cattywampus', 'Snickersnee', 'Abibliophobia', 'Absquatulate', 'Nincompoop', 'Pauciloquent'];

    static var clipper:#if cpp cpp.Star<ImGuiListClipper> #else ImGuiListClipper #end;
    static var clipperInited:Bool = false;

    public static function addLog(line:String):Void {
        lines.push(line);
    }

    public static function show():Void {

        ImGui.setNextWindowSize(ImVec2.make(500, 400), ImGuiCond.FirstUseEver);
        ImGui.begin('Example: Log', ImGuiDemo.showAppLog);
        if (ImGui.smallButton('[Debug] Add 5 entries')) {
            for (_ in 0...5) {
                var category = categories[counter % categories.length];
                var word = words[counter % words.length];
                addLog('[' + StringTools.lpad('' + ImGui.getFrameCount(), '0', 5) + '] [' + category + '] Hello, current time is ' + fmt1(ImGui.getTime()) + ', here\'s a word: \'' + word + '\'');
                counter++;
            }
        }
        ImGui.end();

        draw('Example: Log');

    }

    /** ExampleAppLog::Draw port. */
    static function draw(title:String):Void {

        if (!ImGui.begin(title, ImGuiDemo.showAppLog)) {
            ImGui.end();
            return;
        }

        if (ImGui.beginPopup('Options')) {
            ImGui.checkbox('Auto-scroll', autoScroll);
            ImGui.endPopup();
        }

        if (ImGui.button('Options'))
            ImGui.openPopup('Options');
        ImGui.sameLine();
        var clear = ImGui.button('Clear');
        ImGui.sameLine();
        var copy = ImGui.button('Copy');
        ImGui.sameLine();
        filter.draw('Filter', -100.0);

        ImGui.separator();

        if (ImGui.beginChild('scrolling', ImVec2.make(0, 0), ImGuiChildFlags.None, ImGuiWindowFlags.HorizontalScrollbar)) {
            if (clear)
                lines.resize(0);
            if (copy)
                ImGui.logToClipboard();

            ImGui.pushStyleVarImVec2(ImGuiStyleVar.ItemSpacing, ImVec2.make(0, 0));
            if (filter.isActive()) {
                for (lineNo in 0...lines.length)
                    if (filter.passFilter(lines[lineNo]))
                        ImGui.textUnformatted(lines[lineNo]);
            }
            else {
                if (!clipperInited) {
                    clipperInited = true;
                    clipper = NativeStructs.createListClipper();
                }
                ImGuiListClipper.begin(clipper, lines.length);
                while (ImGuiListClipper.step(clipper))
                    for (lineNo in clipper.displayStart...clipper.displayEnd)
                        ImGui.textUnformatted(lines[lineNo]);
            }
            ImGui.popStyleVar();

            if (copy)
                ImGui.logFinish();

            if (autoScroll && ImGui.getScrollY() >= ImGui.getScrollMaxY())
                ImGui.setScrollHereY(1.0);
        }
        ImGui.endChild();
        ImGui.end();

    }

    /** Format a float with 1 decimal (printf %.1f equivalent). */
    static function fmt1(v:Float):String {
        return '' + (Math.round(v * 10) / 10);
    }

}
