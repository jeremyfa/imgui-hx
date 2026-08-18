package imgui.demo;

import imgui.ImGui;
import imgui.ImGuiTextFilterHx;
import imgui.NativeStructs;

/** ExampleTreeNode from imgui_demo.cpp (typed fields instead of offset-based access). */
class DemoTreeNode {
    public var name:String;
    public var uid:Int;
    public var parent:DemoTreeNode;
    public var childs:Array<DemoTreeNode> = [];
    public var indexInParent:Int = 0; // Maintaining this allows us to implement linear traversal more easily

    public var hasData:Bool = false; // All leaves have data
    public var dataMyBool:Bool = true;
    public var dataMyInt:Int = 128;
    public var dataMyVec2:Array<Float> = [0.0, 3.141592];

    public function new(name:String, uid:Int, parent:DemoTreeNode) {
        this.name = name;
        this.uid = uid;
        this.parent = parent;
        this.indexInParent = parent != null ? parent.childs.length : 0;
        if (parent != null)
            parent.childs.push(this);
    }
}

/** Example: Property editor (imgui_demo.cpp port, including the clipped tree path). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoAppPropertyEditor {

    static var filter:ImGuiTextFilterHx = new ImGuiTextFilterHx();
    static var selectedNode:DemoTreeNode = null;
    static var useClipper:Bool = false;
    static var demoTree:DemoTreeNode = null;

    static var clipper:#if cpp cpp.Star<ImGuiListClipper> #else ImGuiListClipper #end;
    static var clipperInited:Bool = false;

    static var categoryNames:Array<String> = ['Apple', 'Banana', 'Cherry', 'Kiwi', 'Mango', 'Orange', 'Pear', 'Pineapple', 'Strawberry', 'Watermelon'];

    /** ExampleTree_CreateDemoTree port. */
    static function createDemoTree():DemoTreeNode {
        var rootItemsCount = 20;
        var categoryCount = categoryNames.length;
        var uid = 0;
        var nodeL0 = new DemoTreeNode('<ROOT>', ++uid, null);
        for (idxL0 in 0...rootItemsCount) {
            var nameL1 = categoryNames[Std.int(idxL0 / (rootItemsCount / categoryCount))] + ' ' + (idxL0 % Std.int(rootItemsCount / categoryCount));
            var nodeL1 = new DemoTreeNode(nameL1, ++uid, nodeL0);
            var numberOfChilds = nodeL1.name.length;
            for (idxL1 in 0...numberOfChilds) {
                var nodeL2 = new DemoTreeNode('Child ' + idxL1, ++uid, nodeL1);
                nodeL2.hasData = true;
                if (idxL1 == 0) {
                    var nodeL3 = new DemoTreeNode('Sub-child 0', ++uid, nodeL2);
                    nodeL3.hasData = true;
                }
            }
        }
        return nodeL0;
    }

    public static function show():Void {

        ImGui.setNextWindowSize(ImVec2.make(430, 450), ImGuiCond.FirstUseEver);
        if (!ImGui.begin('Example: Property editor', ImGuiDemo.showAppPropertyEditor)) {
            ImGui.end();
            return;
        }

        if (demoTree == null)
            demoTree = createDemoTree();
        draw(demoTree);

        ImGui.end();

    }

    /** ExampleAppPropertyEditor::Draw port. */
    static function draw(rootNode:DemoTreeNode):Void {

        // Left side: draw tree
        if (ImGui.beginChild('##tree', ImVec2.make(300, 0), ImGuiChildFlags.ResizeX | ImGuiChildFlags.Borders | ImGuiChildFlags.NavFlattened)) {
            ImGui.pushItemFlag(ImGuiItemFlags.NoNavDefaultFocus, true);
            ImGui.checkbox('Use Clipper', useClipper);
            ImGui.sameLine();
            ImGui.text('(' + rootNode.childs.length + ' root nodes)');
            ImGui.setNextItemWidth(-1.175494351e-38);
            ImGui.setNextItemShortcut(ImGuiKey.ImGuiMod_Ctrl | ImGuiKey.F, ImGuiInputFlags.Tooltip);
            if (ImGui.inputTextWithHintEx('##Filter', 'incl,-excl', filter.inputBuf, 256, ImGuiInputTextFlags.EscapeClearsAll))
                filter.build();
            ImGui.popItemFlag();

            if (ImGui.beginTable('##list', 1, ImGuiTableFlags.RowBg)) {
                if (useClipper)
                    drawClippedTree(rootNode);
                else
                    drawTree(rootNode);
                ImGui.endTable();
            }
        }
        ImGui.endChild();

        ImGui.sameLine();

        // Right side: draw properties
        ImGui.beginGroup(); // Lock X position
        var node = selectedNode;
        if (node != null) {
            ImGui.text(node.name);
            ImGui.textDisabled('UID: 0x' + StringTools.hex(node.uid, 8));
            ImGui.separator();
            if (ImGui.beginTable('##properties', 2, ImGuiTableFlags.Resizable | ImGuiTableFlags.ScrollY)) {
                ImGui.pushIDInt(node.uid);
                ImGui.tableSetupColumn('', ImGuiTableColumnFlags.WidthFixed);
                ImGui.tableSetupColumnEx('', ImGuiTableColumnFlags.WidthStretch, 2.0); // Default twice larger
                if (node.hasData) {
                    // MyName
                    ImGui.tableNextRow();
                    ImGui.pushID('MyName');
                    ImGui.tableNextColumn();
                    ImGui.alignTextToFramePadding();
                    ImGui.textUnformatted('MyName');
                    ImGui.tableNextColumn();
                    ImGui.inputText('##Editor', node.name, 28);
                    ImGui.popID();
                    // MyBool
                    ImGui.tableNextRow();
                    ImGui.pushID('MyBool');
                    ImGui.tableNextColumn();
                    ImGui.alignTextToFramePadding();
                    ImGui.textUnformatted('MyBool');
                    ImGui.tableNextColumn();
                    ImGui.checkbox('##Editor', node.dataMyBool);
                    ImGui.popID();
                    // MyInt
                    ImGui.tableNextRow();
                    ImGui.pushID('MyInt');
                    ImGui.tableNextColumn();
                    ImGui.alignTextToFramePadding();
                    ImGui.textUnformatted('MyInt');
                    ImGui.tableNextColumn();
                    ImGui.setNextItemWidth(-1.175494351e-38);
                    ImGui.dragInt('##Editor', node.dataMyInt);
                    ImGui.popID();
                    // MyVec2
                    ImGui.tableNextRow();
                    ImGui.pushID('MyVec2');
                    ImGui.tableNextColumn();
                    ImGui.alignTextToFramePadding();
                    ImGui.textUnformatted('MyVec2');
                    ImGui.tableNextColumn();
                    ImGui.setNextItemWidth(-1.175494351e-38);
                    ImGui.sliderFloat2('##Editor', node.dataMyVec2, 0.0, 1.0);
                    ImGui.popID();
                }
                ImGui.popID();
                ImGui.endTable();
            }
        }
        ImGui.endGroup();

    }

    static inline function isNodePassingFilter(node:DemoTreeNode):Bool {
        return node.parent.parent != null || filter.passFilter(node.name);
    }

    static function drawTree(node:DemoTreeNode):Void {
        for (child in node.childs) {
            if (isNodePassingFilter(child) && drawTreeNode(child)) {
                drawTree(child);
                ImGui.treePop();
            }
        }
    }

    static function drawClippedTree(rootNode:DemoTreeNode):Void {
        var node = rootNode.childs[0]; // First node
        if (!clipperInited) {
            clipperInited = true;
            clipper = NativeStructs.createListClipper();
        }
        ImGuiListClipper.begin(clipper, 0x7FFFFFFF);
        while (ImGuiListClipper.step(clipper))
            while (clipper.userIndex < clipper.displayEnd && node != null)
                node = drawClippedTreeNodeAndAdvanceToNext(node);

        while (node != null)
            node = drawClippedTreeNodeAndAdvanceToNext(node);
        ImGuiListClipper.seekCursorForItem(clipper, clipper.userIndex);
    }

    static function drawClippedTreeNodeAndAdvanceToNext(node:DemoTreeNode):DemoTreeNode {
        if (isNodePassingFilter(node)) {
            var isOpen = false;
            if (clipper.userIndex >= clipper.displayStart && clipper.userIndex < clipper.displayEnd) {
                isOpen = drawTreeNode(node);
            }
            else {
                isOpen = (node.childs.length > 0 && ImGui.treeNodeGetOpen(node.uid));
                if (isOpen)
                    ImGui.treePush(node.name);
            }
            clipper.userIndex = clipper.userIndex + 1;

            if (isOpen)
                return node.childs[0];
        }

        var n = node;
        while (n != null) {
            if (n.indexInParent + 1 < n.parent.childs.length)
                return n.parent.childs[n.indexInParent + 1];
            n = n.parent;
            if (n.parent == null)
                break;
            ImGui.treePop();
        }
        return null;
    }

    static function drawTreeNode(node:DemoTreeNode):Bool {
        ImGui.tableNextRow();
        ImGui.tableNextColumn();
        var treeFlags = ImGuiTreeNodeFlags.None;
        treeFlags |= ImGuiTreeNodeFlags.OpenOnArrow | ImGuiTreeNodeFlags.OpenOnDoubleClick; // Standard opening mode as we are likely to want to add selection afterwards
        treeFlags |= ImGuiTreeNodeFlags.NavLeftJumpsToParent; // Left arrow support
        treeFlags |= ImGuiTreeNodeFlags.SpanFullWidth;        // Span full width for easier mouse reach
        treeFlags |= ImGuiTreeNodeFlags.DrawLinesToNodes;     // Always draw hierarchy outlines
        if (node == selectedNode)
            treeFlags |= ImGuiTreeNodeFlags.Selected;         // Draw selection highlight
        if (node.childs.length == 0)
            treeFlags |= ImGuiTreeNodeFlags.Leaf | ImGuiTreeNodeFlags.Bullet | ImGuiTreeNodeFlags.NoTreePushOnOpen;
        if (node.dataMyBool == false)
            ImGui.pushStyleColorImVec4(ImGuiCol.Text, imgui.ImGuiStyleExtra.getStyleColor(ImGui.getStyle(), ImGuiCol.TextDisabled));
        ImGui.setNextItemStorageID(node.uid); // Use node.uid as storage id
        var isOpen = ImGui.treeNodeExStr('node' + node.uid, treeFlags, node.name);
        if (node.childs.length == 0)
            isOpen = false;
        if (node.dataMyBool == false)
            ImGui.popStyleColor();
        if (ImGui.isItemFocused())
            selectedNode = node;
        return isOpen;
    }

}
