package imgui.demo;

import imgui.ImGui;
import imgui.demo.ImGuiDemo.helpMarker;

/** Widgets > Tree Nodes (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsTreeNodes {

    static var linesBaseFlags:Int = ImGuiTreeNodeFlags.DrawLinesFull | ImGuiTreeNodeFlags.DefaultOpen;
    static var advBaseFlags:Int = ImGuiTreeNodeFlags.OpenOnArrow | ImGuiTreeNodeFlags.OpenOnDoubleClick | ImGuiTreeNodeFlags.SpanAvailWidth;
    static var alignLabelWithCurrentXPosition:Bool = false;
    static var testDragAndDrop:Bool = false;
    static var selectionMask:Int = (1 << 2);

    public static function show():Void {

        if (!ImGui.treeNode('Tree Nodes'))
            return;

        if (ImGui.treeNode('Basic trees')) {
            for (i in 0...5) {
                if (i == 0)
                    ImGui.setNextItemOpen(true, ImGuiCond.Once);

                // (The original uses TreeNode("", "Child %d", i) with an empty
                // str id inside PushID(); labels are unique here so this is
                // equivalent.)
                ImGui.pushIDInt(i);
                if (ImGui.treeNode('Child ' + i + '###child')) {
                    ImGui.text('blah blah');
                    ImGui.sameLine();
                    if (ImGui.smallButton('button')) {}
                    ImGui.treePop();
                }
                ImGui.popID();
            }
            ImGui.treePop();
        }

        if (ImGui.treeNode('Hierarchy lines')) {
            helpMarker('Default option for DrawLinesXXX is stored in style.TreeLinesFlags');
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_DrawLinesNone', linesBaseFlags, ImGuiTreeNodeFlags.DrawLinesNone);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_DrawLinesFull', linesBaseFlags, ImGuiTreeNodeFlags.DrawLinesFull);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_DrawLinesToNodes', linesBaseFlags, ImGuiTreeNodeFlags.DrawLinesToNodes);

            if (ImGui.treeNodeEx('Parent', linesBaseFlags)) {
                if (ImGui.treeNodeEx('Child 1', linesBaseFlags)) {
                    ImGui.button('Button for Child 1');
                    ImGui.treePop();
                }
                if (ImGui.treeNodeEx('Child 2', linesBaseFlags)) {
                    ImGui.button('Button for Child 2');
                    ImGui.treePop();
                }
                ImGui.text('Remaining contents');
                ImGui.text('Remaining contents');
                ImGui.treePop();
            }

            ImGui.treePop();
        }

        if (ImGui.treeNode('Clipping Large Trees')) {
            ImGui.textWrapped(
                '- Using ImGuiListClipper with trees is a less easy than on arrays or grids.\n'
                + '- Refer to \'Demo->Examples->Property Editor\' for an example of how to do that.\n'
                + '- Discuss in #3823');
            ImGui.treePop();
        }

        if (ImGui.treeNode('Advanced, with Selectable nodes')) {
            helpMarker(
                'This is a more typical looking tree with selectable nodes.\n'
                + 'Click to select, Ctrl+Click to toggle, click on arrows or double-click to open.');
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_OpenOnArrow', advBaseFlags, ImGuiTreeNodeFlags.OpenOnArrow);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_OpenOnDoubleClick', advBaseFlags, ImGuiTreeNodeFlags.OpenOnDoubleClick);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_SpanAvailWidth', advBaseFlags, ImGuiTreeNodeFlags.SpanAvailWidth); ImGui.sameLine(); helpMarker('Extend hit area to all available width instead of allowing more items to be laid out after the node.');
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_SpanFullWidth', advBaseFlags, ImGuiTreeNodeFlags.SpanFullWidth);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_SpanLabelWidth', advBaseFlags, ImGuiTreeNodeFlags.SpanLabelWidth); ImGui.sameLine(); helpMarker('Reduce hit area to the text label and a bit of margin.');
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_SpanAllColumns', advBaseFlags, ImGuiTreeNodeFlags.SpanAllColumns); ImGui.sameLine(); helpMarker('For use in Tables only.');
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_AllowOverlap', advBaseFlags, ImGuiTreeNodeFlags.AllowOverlap);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_Framed', advBaseFlags, ImGuiTreeNodeFlags.Framed); ImGui.sameLine(); helpMarker('Draw frame with background (e.g. for CollapsingHeader)');
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_FramePadding', advBaseFlags, ImGuiTreeNodeFlags.FramePadding);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_NavLeftJumpsToParent', advBaseFlags, ImGuiTreeNodeFlags.NavLeftJumpsToParent);

            helpMarker('Default option for DrawLinesXXX is stored in style.TreeLinesFlags');
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_DrawLinesNone', advBaseFlags, ImGuiTreeNodeFlags.DrawLinesNone);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_DrawLinesFull', advBaseFlags, ImGuiTreeNodeFlags.DrawLinesFull);
            ImGui.checkboxFlagsIntPtr('ImGuiTreeNodeFlags_DrawLinesToNodes', advBaseFlags, ImGuiTreeNodeFlags.DrawLinesToNodes);

            ImGui.checkbox('Align label with current X position', alignLabelWithCurrentXPosition);
            ImGui.checkbox('Test tree node as drag source', testDragAndDrop);
            ImGui.text('Hello!');
            if (alignLabelWithCurrentXPosition)
                ImGui.unindentEx(ImGui.getTreeNodeToLabelSpacing());

            var nodeClicked = -1;
            for (i in 0...6) {
                var nodeFlags = advBaseFlags;
                var isSelected = (selectionMask & (1 << i)) != 0;
                if (isSelected)
                    nodeFlags |= ImGuiTreeNodeFlags.Selected;
                if (i < 3) {
                    // Items 0..2 are Tree Nodes
                    var nodeOpen = ImGui.treeNodeEx('Selectable Node ' + i, nodeFlags);
                    if (ImGui.isItemClicked() && !ImGui.isItemToggledOpen())
                        nodeClicked = i;
                    if (testDragAndDrop && ImGui.beginDragDropSource()) {
                        ImGui.setDragDropPayload('_TREENODE', DemoUtils.noPtr(), 0);
                        ImGui.text('This is a drag and drop source');
                        ImGui.endDragDropSource();
                    }
                    if (i == 2 && (advBaseFlags & ImGuiTreeNodeFlags.SpanLabelWidth) != 0) {
                        ImGui.sameLine();
                        if (ImGui.smallButton('button')) {}
                    }
                    if (nodeOpen) {
                        ImGui.bulletText('Blah blah\nBlah Blah');
                        ImGui.sameLine();
                        ImGui.smallButton('Button');
                        ImGui.treePop();
                    }
                }
                else {
                    // Items 3..5 are Tree Leaves
                    nodeFlags |= ImGuiTreeNodeFlags.Leaf | ImGuiTreeNodeFlags.NoTreePushOnOpen;
                    ImGui.treeNodeEx('Selectable Leaf ' + i, nodeFlags);
                    if (ImGui.isItemClicked() && !ImGui.isItemToggledOpen())
                        nodeClicked = i;
                    if (testDragAndDrop && ImGui.beginDragDropSource()) {
                        ImGui.setDragDropPayload('_TREENODE', DemoUtils.noPtr(), 0);
                        ImGui.text('This is a drag and drop source');
                        ImGui.endDragDropSource();
                    }
                }
            }
            if (nodeClicked != -1) {
                // Update selection state (process outside of the tree loop)
                var io = ImGui.getIO();
                if (io.keyCtrl)
                    selectionMask ^= (1 << nodeClicked); // Ctrl+Click to toggle
                else
                    selectionMask = (1 << nodeClicked); // Click to single-select
            }
            if (alignLabelWithCurrentXPosition)
                ImGui.indentEx(ImGui.getTreeNodeToLabelSpacing());
            ImGui.treePop();
        }

        ImGui.treePop();

    }

}
