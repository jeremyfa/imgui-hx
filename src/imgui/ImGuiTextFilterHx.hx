package imgui;

import imgui.ImGui;

/**
 * Pure-Haxe reimplementation of ImGuiTextFilter (the native struct is flagged
 * internal by dear_bindings and is not bound). Same filter semantics as the
 * original: comma-separated terms, a leading '-' excludes, empty filter
 * passes everything. Portable on every target by construction.
 *
 * Usage (like the C++ helper):
 *
 *     var filter = new ImGuiTextFilterHx();
 *     filter.draw('Filter (inc,-exc)');
 *     if (filter.passFilter('hello')) { ... }
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class ImGuiTextFilterHx {

    public var inputBuf:String = '';

    var includes:Array<String> = [];
    var excludes:Array<String> = [];

    public function new(defaultFilter:String = '') {
        if (defaultFilter != null && defaultFilter.length > 0) {
            inputBuf = defaultFilter;
            build();
        }
    }

    /** Show the filter input box. Returns true when the filter changed. */
    public function draw(label:String = 'Filter (inc,-exc)', width:Float = 0):Bool {
        if (width != 0) {
            ImGui.setNextItemWidth(width);
        }
        var before = inputBuf;
        ImGui.inputText(label, inputBuf, 256);
        var changed = inputBuf != before;
        if (changed) build();
        return changed;
    }

    /** Split the input into include/exclude terms. */
    public function build():Void {
        includes.resize(0);
        excludes.resize(0);
        for (part in inputBuf.split(',')) {
            var term = StringTools.trim(part);
            if (term.length == 0) continue;
            if (term.charCodeAt(0) == '-'.code) {
                if (term.length > 1) excludes.push(term.substr(1).toLowerCase());
            }
            else {
                includes.push(term.toLowerCase());
            }
        }
    }

    public function passFilter(text:String):Bool {
        if (text == null) text = '';
        var lower:String = null;
        for (term in excludes) {
            if (lower == null) lower = text.toLowerCase();
            if (lower.indexOf(term) != -1) return false;
        }
        if (includes.length == 0) return true;
        for (term in includes) {
            if (lower == null) lower = text.toLowerCase();
            if (lower.indexOf(term) != -1) return true;
        }
        return false;
    }

    public function isActive():Bool {
        return includes.length > 0 || excludes.length > 0;
    }

    public function clear():Void {
        inputBuf = '';
        build();
    }

}
