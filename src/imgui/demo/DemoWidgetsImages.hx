package imgui.demo;

import imgui.ImGui;

/** Widgets > Images (imgui_demo.cpp port). */
#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class DemoWidgetsImages {

    static var pressedCount:Int = 0;

    public static function show():Void {

        if (!ImGui.treeNode('Images'))
            return;

        var io = ImGui.getIO();
        ImGui.textWrapped(
            'Below we are displaying the font texture (which is the only texture we have access to in this demo). '
            + 'Use the \'ImTextureID\' type as storage to pass pointers or identifier to your own texture data. '
            + 'Hover the texture for a zoomed view!');

        // Grab the current texture identifier used by the font atlas.
        var atlas = io.fonts;
        var myTexId = atlas.texRef;
        var texData = atlas.texData;
        var myTexW:Float = texData.width;
        var myTexH:Float = texData.height;
        ImGui.text(myTexW + 'x' + myTexH);

        // Basic drawing
        ImGui.separatorText('Image()/ImageWithBg() function');
        var uvMin = ImVec2.make(0.0, 0.0); // Top-left
        var uvMax = ImVec2.make(1.0, 1.0); // Lower-right
        ImGui.pushStyleVar(ImGuiStyleVar.ImageBorderSize, Math.max(1.0, ImGui.getStyle().imageBorderSize));
        ImGui.imageWithBgEx(myTexId, ImVec2.make(myTexW, myTexH), uvMin, uvMax, ImVec4.make(0, 0, 0, 1), ImVec4.make(1, 1, 1, 1));
        ImGui.popStyleVar();

        ImGui.separatorText('Interactive Image Viewer');
        // (the viewer state is shared with 'Examples > Image Viewer')
        var availViewer = ImGui.getContentRegionAvail();
        var canvasSize = ImVec2.make(availViewer.x, myTexH * 2.0);
        DemoAppImageViewer.drawOptions();
        DemoAppImageViewer.drawCanvas(canvasSize, myTexId, Std.int(myTexW), Std.int(myTexH));

        ImGui.separatorText('Textured Buttons');
        ImGui.textWrapped('And now some textured buttons..');
        for (i in 0...8) {
            ImGui.pushIDInt(i);
            if (i > 0)
                ImGui.pushStyleVarImVec2(ImGuiStyleVar.FramePadding, ImVec2.make(i - 1.0, i - 1.0));
            var size = ImVec2.make(32.0, 32.0);
            var uv0 = ImVec2.make(0.0, 0.0);
            var uv1 = ImVec2.make(32.0 / myTexW, 32.0 / myTexH);
            var bgCol = ImVec4.make(0.0, 0.0, 0.0, 1.0);
            var tintCol = ImVec4.make(1.0, 1.0, 1.0, 1.0);
            if (ImGui.imageButtonEx('', myTexId, size, uv0, uv1, bgCol, tintCol))
                pressedCount += 1;
            if (i > 0)
                ImGui.popStyleVar();
            ImGui.popID();
            ImGui.sameLine();
        }
        ImGui.newLine();
        ImGui.text('Pressed ' + pressedCount + ' times.');

        ImGui.treePop();

    }

}
