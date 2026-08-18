package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/**
 * Tables & Columns section (imgui_demo.cpp port).
 * Dispatcher: sub-sections live in the DemoTables* classes.
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWindowTables {

    /** CalcTextSize("A").x, refreshed each frame, used by all table sections. */
    public static var textBaseWidth:Float = 0.0;
    /** GetTextLineHeightWithSpacing(), refreshed each frame. */
    public static var textBaseHeight:Float = 0.0;

    static var disableIndent:Bool = false;

    public static function show():Void {

        if (!ImGui.collapsingHeader('Tables & Columns'))
            return;

        var textSizeA = ImGui.calcTextSize('A');
        textBaseWidth = textSizeA.x;
        textBaseHeight = ImGui.getTextLineHeightWithSpacing();

        ImGui.pushID('Tables');

        var openAction = -1;
        if (ImGui.button('Expand all'))
            openAction = 1;
        ImGui.sameLine();
        if (ImGui.button('Collapse all'))
            openAction = 0;
        ImGui.sameLine();

        ImGui.checkbox('Disable tree indentation', disableIndent);
        ImGui.sameLine();
        helpMarker('Disable the indenting of tree nodes so demo tables can use the full window width.');
        ImGui.separator();
        if (disableIndent)
            ImGui.pushStyleVar(ImGuiStyleVar.IndentSpacing, 0.0);

        DemoTablesBasic.show(openAction);
        DemoTablesLayout.show(openAction);
        DemoTablesStyling.show(openAction);
        DemoTablesSorting.show(openAction);
        DemoTablesAdvanced.show(openAction);

        ImGui.popID();

        if (disableIndent)
            ImGui.popStyleVar();

    }

    /** PushStyleCompact helper from imgui_demo.cpp. */
    public static function pushStyleCompact():Void {
        var style = ImGui.getStyle();
        var framePadding = style.framePadding;
        var itemSpacing = style.itemSpacing;
        ImGui.pushStyleVarY(ImGuiStyleVar.FramePadding, Std.int(framePadding.y * 0.60));
        ImGui.pushStyleVarY(ImGuiStyleVar.ItemSpacing, Std.int(itemSpacing.y * 0.60));
    }

    /** PopStyleCompact helper from imgui_demo.cpp. */
    public static function popStyleCompact():Void {
        ImGui.popStyleVarEx(2);
    }

    /** SetNextItemOpen based on the Expand all / Collapse all buttons. */
    public static inline function applyOpenAction(openAction:Int):Void {
        if (openAction != -1)
            ImGui.setNextItemOpen(openAction != 0);
    }

    // ImGuiTableFlags_SizingMask_ recomposed (internal-only in dcimgui)
    public static inline var SIZING_MASK:Int = ImGuiTableFlags.SizingFixedFit | ImGuiTableFlags.SizingFixedSame | ImGuiTableFlags.SizingStretchProp | ImGuiTableFlags.SizingStretchSame;
    // ImGuiTableColumnFlags_WidthMask_ recomposed (internal-only in dcimgui)
    public static inline var WIDTH_MASK:Int = ImGuiTableColumnFlags.WidthStretch | ImGuiTableColumnFlags.WidthFixed;

    static var policyValues:Array<Int> = [ImGuiTableFlags.None, ImGuiTableFlags.SizingFixedFit, ImGuiTableFlags.SizingFixedSame, ImGuiTableFlags.SizingStretchProp, ImGuiTableFlags.SizingStretchSame];
    static var policyNames:Array<String> = ['Default', 'ImGuiTableFlags_SizingFixedFit', 'ImGuiTableFlags_SizingFixedSame', 'ImGuiTableFlags_SizingStretchProp', 'ImGuiTableFlags_SizingStretchSame'];
    static var policyTooltips:Array<String> = [
        'Use default sizing policy:\n- ImGuiTableFlags_SizingFixedFit if ScrollX is on or if host window has ImGuiWindowFlags_AlwaysAutoResize.\n- ImGuiTableFlags_SizingStretchSame otherwise.',
        'Columns default to _WidthFixed (if resizable) or _WidthAuto (if not resizable), matching contents width.',
        'Columns are all the same width, matching the maximum contents width.\nImplicitly disable ImGuiTableFlags_Resizable and enable ImGuiTableFlags_NoKeepColumnsVisible.',
        'Columns default to _WidthStretch with weights proportional to their widths.',
        'Columns default to _WidthStretch with same weights.'
    ];

    /** EditTableSizingFlags helper: takes flags, returns the (possibly modified) flags. */
    public static function editTableSizingFlags(flags:Int):Int {
        var idx = 0;
        while (idx < policyValues.length) {
            if (policyValues[idx] == (flags & SIZING_MASK))
                break;
            idx++;
        }
        var previewText = (idx < policyValues.length) ? (idx > 0 ? policyNames[idx].substr('ImGuiTableFlags'.length) : policyNames[idx]) : '';
        if (ImGui.beginCombo('Sizing Policy', previewText)) {
            for (n in 0...policyValues.length)
                if (ImGui.selectableEx(policyNames[n], idx == n, 0, ImVec2.make(0, 0)))
                    flags = (flags & ~SIZING_MASK) | policyValues[n];
            ImGui.endCombo();
        }
        ImGui.sameLine();
        ImGui.textDisabled('(?)');
        if (ImGui.beginItemTooltip()) {
            ImGui.pushTextWrapPos(ImGui.getFontSize() * 50.0);
            for (m in 0...policyValues.length) {
                ImGui.separator();
                ImGui.text(policyNames[m] + ':');
                ImGui.separator();
                var style = ImGui.getStyle();
                ImGui.setCursorPosX(ImGui.getCursorPosX() + style.indentSpacing * 0.5);
                ImGui.textUnformatted(policyTooltips[m]);
            }
            ImGui.popTextWrapPos();
            ImGui.endTooltip();
        }
        return flags;
    }

    /** EditTableColumnsFlags helper: takes flags, returns the (possibly modified) flags. */
    public static function editTableColumnsFlags(flags:Int):Int {
        ImGui.checkboxFlagsIntPtr('_Disabled', flags, ImGuiTableColumnFlags.Disabled); ImGui.sameLine(); helpMarker('Master disable flag (also hide from context menu)');
        ImGui.checkboxFlagsIntPtr('_DefaultHide', flags, ImGuiTableColumnFlags.DefaultHide);
        ImGui.checkboxFlagsIntPtr('_DefaultSort', flags, ImGuiTableColumnFlags.DefaultSort);
        if (ImGui.checkboxFlagsIntPtr('_WidthStretch', flags, ImGuiTableColumnFlags.WidthStretch))
            flags &= ~(WIDTH_MASK ^ ImGuiTableColumnFlags.WidthStretch);
        if (ImGui.checkboxFlagsIntPtr('_WidthFixed', flags, ImGuiTableColumnFlags.WidthFixed))
            flags &= ~(WIDTH_MASK ^ ImGuiTableColumnFlags.WidthFixed);
        ImGui.checkboxFlagsIntPtr('_NoResize', flags, ImGuiTableColumnFlags.NoResize);
        ImGui.checkboxFlagsIntPtr('_NoReorder', flags, ImGuiTableColumnFlags.NoReorder);
        ImGui.checkboxFlagsIntPtr('_NoHide', flags, ImGuiTableColumnFlags.NoHide);
        ImGui.checkboxFlagsIntPtr('_NoClip', flags, ImGuiTableColumnFlags.NoClip);
        ImGui.checkboxFlagsIntPtr('_NoSort', flags, ImGuiTableColumnFlags.NoSort);
        ImGui.checkboxFlagsIntPtr('_NoSortAscending', flags, ImGuiTableColumnFlags.NoSortAscending);
        ImGui.checkboxFlagsIntPtr('_NoSortDescending', flags, ImGuiTableColumnFlags.NoSortDescending);
        ImGui.checkboxFlagsIntPtr('_NoHeaderLabel', flags, ImGuiTableColumnFlags.NoHeaderLabel);
        ImGui.checkboxFlagsIntPtr('_NoHeaderWidth', flags, ImGuiTableColumnFlags.NoHeaderWidth);
        ImGui.checkboxFlagsIntPtr('_PreferSortAscending', flags, ImGuiTableColumnFlags.PreferSortAscending);
        ImGui.checkboxFlagsIntPtr('_PreferSortDescending', flags, ImGuiTableColumnFlags.PreferSortDescending);
        ImGui.checkboxFlagsIntPtr('_IndentEnable', flags, ImGuiTableColumnFlags.IndentEnable); ImGui.sameLine(); helpMarker('Default for column 0');
        ImGui.checkboxFlagsIntPtr('_IndentDisable', flags, ImGuiTableColumnFlags.IndentDisable); ImGui.sameLine(); helpMarker('Default for column >0');
        ImGui.checkboxFlagsIntPtr('_AngledHeader', flags, ImGuiTableColumnFlags.AngledHeader);
        return flags;
    }

    /** ShowTableColumnsStatusFlags helper (read-only display). */
    public static function showTableColumnsStatusFlags(flags:Int):Void {
        ImGui.checkboxFlagsIntPtr('_IsEnabled', flags, ImGuiTableColumnFlags.IsEnabled);
        ImGui.checkboxFlagsIntPtr('_IsVisible', flags, ImGuiTableColumnFlags.IsVisible);
        ImGui.checkboxFlagsIntPtr('_IsSorted', flags, ImGuiTableColumnFlags.IsSorted);
        ImGui.checkboxFlagsIntPtr('_IsHovered', flags, ImGuiTableColumnFlags.IsHovered);
    }

}
