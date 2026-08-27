package imgui;

import imgui.ImGui;

/**
 * Programmatic docking: build a default layout in code instead of asking the
 * user to arrange panels by hand on first run.
 *
 * Dear ImGui's DockBuilder API lives in `imgui_internal.h`, which dear_bindings
 * does not process, so this is backed by the hand-written
 * `dcimgui_extra_dockbuilder.cpp` helpers compiled into every target.
 *
 * Typical use, once (guarded by whether the layout already exists):
 *
 *     final root = ImGui.getID('MyDockSpace');
 *     ImGuiDockBuilder.removeNode(root);                    // clear any previous tree
 *     ImGuiDockBuilder.addNode(root, ImGuiDockNodeFlags.DockSpace);
 *     ImGuiDockBuilder.setNodeSize(root, size);
 *     final left = ImGuiDockBuilder.splitNode(root, ImGuiDir.Left, 0.25);
 *     final right = ImGuiDockBuilder.lastOppositeNode();    // the other half
 *     ImGuiDockBuilder.dockWindow('Devices', left);
 *     ImGuiDockBuilder.dockWindow('Logs', right);
 *     ImGuiDockBuilder.finish(root);
 *
 * All of it must run between frames (typically right after `newFrame`, before
 * the dockspace is submitted) and `finish()` must close the sequence.
 *
 * Caution: this is upstream's internal API. It is stable in practice (the
 * DockBuilder surface has not changed in years) but it carries no
 * compatibility promise, unlike the public API.
 */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class ImGuiDockBuilder {

    /** Ids produced by the last `splitNode`: [0] at dir, [1] opposite. */
    static var splitIds:Array<UInt> = [0, 0];

    #if cs
    static var csSplitIds:cs.NativeArray<UInt> = new cs.NativeArray<UInt>(2);
    #end

    /**
     * Create (or fetch) a dock node. Pass `ImGuiDockNodeFlags.DockSpace` for a
     * node meant to host a `dockSpace()` call.
     */
    public static function addNode(nodeId:ImGuiID = 0, flags:Int = 0):UInt {

        #if cpp
        return untyped __cpp__('dcx_DockBuilderAddNode({0}, {1})', nodeId, flags);
        #elseif js
        return imguijs.ImGuiJs.M._dcx_DockBuilderAddNode(nodeId, flags);
        #elseif cs
        return imguics.DCImGuiExtra.dcx_DockBuilderAddNode(nodeId, flags);
        #else
        return 0;
        #end

    }

    /**
     * Create a node meant to host a `dockSpace()` call.
     *
     * Separate from `addNode` because the flag that marks a node as a dockspace
     * is internal to Dear ImGui and absent from the public flag enum: it is
     * applied on the native side so callers never hardcode its value.
     */
    public static function addDockSpaceNode(nodeId:ImGuiID = 0, extraFlags:Int = 0):UInt {

        #if cpp
        return untyped __cpp__('dcx_DockBuilderAddDockSpaceNode({0}, {1})', nodeId, extraFlags);
        #elseif js
        return imguijs.ImGuiJs.M._dcx_DockBuilderAddDockSpaceNode(nodeId, extraFlags);
        #elseif cs
        return imguics.DCImGuiExtra.dcx_DockBuilderAddDockSpaceNode(nodeId, extraFlags);
        #else
        return 0;
        #end

    }

    /** Remove a node and everything under it, undocking its windows. */
    public static function removeNode(nodeId:ImGuiID):Void {

        #if cpp
        untyped __cpp__('dcx_DockBuilderRemoveNode({0})', nodeId);
        #elseif js
        imguijs.ImGuiJs.M._dcx_DockBuilderRemoveNode(nodeId);
        #elseif cs
        imguics.DCImGuiExtra.dcx_DockBuilderRemoveNode(nodeId);
        #end

    }

    /** Drop the splits under a node, keeping its docked windows on the root. */
    public static function removeNodeChildNodes(nodeId:ImGuiID):Void {

        #if cpp
        untyped __cpp__('dcx_DockBuilderRemoveNodeChildNodes({0})', nodeId);
        #elseif js
        imguijs.ImGuiJs.M._dcx_DockBuilderRemoveNodeChildNodes(nodeId);
        #elseif cs
        imguics.DCImGuiExtra.dcx_DockBuilderRemoveNodeChildNodes(nodeId);
        #end

    }

    public static function setNodePos(nodeId:ImGuiID, pos:ImVec2):Void {

        #if cpp
        untyped __cpp__('dcx_DockBuilderSetNodePos({0}, (float){1}, (float){2})', nodeId, pos.x, pos.y);
        #elseif js
        imguijs.ImGuiJs.M._dcx_DockBuilderSetNodePos(nodeId, pos.x, pos.y);
        #elseif cs
        imguics.DCImGuiExtra.dcx_DockBuilderSetNodePos(nodeId, pos.x, pos.y);
        #end

    }

    /**
     * Size a node. Do this before splitting it: upstream warns that split
     * ratios are unreliable on a node whose size is not set yet.
     */
    public static function setNodeSize(nodeId:ImGuiID, size:ImVec2):Void {

        #if cpp
        untyped __cpp__('dcx_DockBuilderSetNodeSize({0}, (float){1}, (float){2})', nodeId, size.x, size.y);
        #elseif js
        imguijs.ImGuiJs.M._dcx_DockBuilderSetNodeSize(nodeId, size.x, size.y);
        #elseif cs
        imguics.DCImGuiExtra.dcx_DockBuilderSetNodeSize(nodeId, size.x, size.y);
        #end

    }

    /**
     * Split a node in two. Returns the id of the piece on `splitDir`; the other
     * piece is available from `lastOppositeNode()` right after this call.
     * Returns 0 (and leaves both ids at 0) when the node does not exist.
     *
     * `sizeRatioForNodeAtDir` is the fraction taken by the piece at `splitDir`.
     */
    public static function splitNode(nodeId:ImGuiID, splitDir:ImGuiDir, sizeRatioForNodeAtDir:Float):UInt {

        #if cpp
        var atDir:UInt = 0;
        var atOpposite:UInt = 0;
        untyped __cpp__('{ unsigned int _ids[2] = {0, 0}; dcx_DockBuilderSplitNode({0}, {1}, (float){2}, _ids); {3} = _ids[0]; {4} = _ids[1]; }',
            nodeId, (splitDir:Int), sizeRatioForNodeAtDir, atDir, atOpposite);
        splitIds[0] = atDir;
        splitIds[1] = atOpposite;
        return atDir;
        #elseif js
        // Two consecutive u32 in the shared numeric scratch
        final scratch = imguijs.ImGuiJs.numScratch;
        imguijs.ImGuiJs.M._dcx_DockBuilderSplitNode(nodeId, (splitDir:Int), sizeRatioForNodeAtDir, scratch);
        splitIds[0] = Std.int(imguijs.ImGuiJs.getU32(scratch));
        splitIds[1] = Std.int(imguijs.ImGuiJs.getU32(scratch + 4));
        return splitIds[0];
        #elseif cs
        imguics.DCImGuiExtra.dcx_DockBuilderSplitNode(nodeId, (splitDir:Int), sizeRatioForNodeAtDir, csSplitIds);
        splitIds[0] = csSplitIds[0];
        splitIds[1] = csSplitIds[1];
        return splitIds[0];
        #else
        return 0;
        #end

    }

    /** Whether a node with that id currently exists. */
    public static function nodeExists(nodeId:ImGuiID):Bool {

        #if cpp
        return untyped __cpp__('dcx_DockBuilderNodeExists({0}) != 0', nodeId);
        #elseif js
        return imguijs.ImGuiJs.M._dcx_DockBuilderNodeExists(nodeId) != 0;
        #elseif cs
        return imguics.DCImGuiExtra.dcx_DockBuilderNodeExists(nodeId) != 0;
        #else
        return false;
        #end

    }

    /** The piece opposite to `splitDir` from the last `splitNode` call. */
    public static function lastOppositeNode():UInt {

        return splitIds[1];

    }

    /** Dock a window (by its exact name) into a node. */
    public static function dockWindow(windowName:String, nodeId:ImGuiID):Void {

        #if cpp
        untyped __cpp__('dcx_DockBuilderDockWindow({0}, {1})', windowName.utf8_str(), nodeId);
        #elseif js
        // Same string marshalling as the generated bindings: a call-scoped
        // bump region, no allocation per call
        imguijs.ImGuiJs.M._dcx_DockBuilderDockWindow(imguijs.ImGuiJs.str(windowName), nodeId);
        #elseif cs
        imguics.DCImGuiExtra.dcx_DockBuilderDockWindow(windowName, nodeId);
        #end

    }

    /** Close a build sequence. Nothing takes effect reliably without it. */
    public static function finish(nodeId:ImGuiID):Void {

        #if cpp
        untyped __cpp__('dcx_DockBuilderFinish({0})', nodeId);
        #elseif js
        imguijs.ImGuiJs.M._dcx_DockBuilderFinish(nodeId);
        #elseif cs
        imguics.DCImGuiExtra.dcx_DockBuilderFinish(nodeId);
        #end

    }

    /** Central node of the tree rooted at `nodeId`, or 0 when there is none. */
    public static function getCentralNode(nodeId:ImGuiID):UInt {

        #if cpp
        return untyped __cpp__('dcx_DockBuilderGetCentralNode({0})', nodeId);
        #elseif js
        return imguijs.ImGuiJs.M._dcx_DockBuilderGetCentralNode(nodeId);
        #elseif cs
        return imguics.DCImGuiExtra.dcx_DockBuilderGetCentralNode(nodeId);
        #else
        return 0;
        #end

    }

}
