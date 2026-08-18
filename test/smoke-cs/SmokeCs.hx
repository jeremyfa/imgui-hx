package;

import imgui.ImGui;

/**
 * cs-target smoke: COMPILE-CHECK of the same portable facade on hxcs
 * (runtime validation happens inside Unity with the native lib).
 */
class SmokeCs {

    static var sliderValue:Float = 0.25;
    static var checkValue:Bool = true;
    static var counter:Int = 3;
    static var name:String = 'hello';
    static var tint:Array<Float> = [1, 0.5, 0.25, 1];

    static function main() {

        imguics.ImGuiCs.init();

        var ctx = ImGui.createContext();

        // Constructor-defaults drift check (compile check on cs; the runtime
        // path is exercised by the cpp and js smokes).
        checkCtorDefaults();
        var io = ImGui.getIO();
        io.displaySize = ImVec2.make(1280, 720);
        io.deltaTime = 1.0 / 60.0;
        io.backendFlags = io.backendFlags | ImGuiBackendFlags.RendererHasTextures;

        trace('Dear ImGui version: ' + ImGui.getVersion());

        ImGui.newFrame();
        ImGui.showDemoWindow();
        var open = true;
        if (ImGui.begin('Smoke window', open)) {
            ImGui.text('Hello');
            ImGui.checkbox('A checkbox', checkValue);
            ImGui.sliderFloat('Slider', sliderValue, 0.0, 1.0);
            ImGui.inputInt('Counter', counter);
            ImGui.inputText('Name', name, 64);
            ImGui.colorEdit4('Tint', tint);
        }
        ImGui.end();

        var samples:Array<Float> = [0.1, 0.5, 0.3];
        ImGui.plotLines('Plot', samples);
        var clipper = imgui.NativeStructs.createListClipper();
        ImGuiListClipper.begin(clipper, 100);
        while (ImGuiListClipper.step(clipper)) {
            for (i in clipper.displayStart...clipper.displayEnd) ImGui.text('Row ' + i);
        }
        imgui.NativeStructs.destroyListClipper(clipper);
        var style = ImGui.getStyle();
        imgui.ImGuiStyleExtra.setStyleColor(style, ImGuiCol.Text, imgui.ImGuiStyleExtra.getStyleColor(style, ImGuiCol.Text));
        var filter = new imgui.ImGuiTextFilterHx('a');
        filter.passFilter('abc');

        ImGui.render();

        var drawData = ImGui.getDrawData();
        trace('Vertices: ' + drawData.totalVtxCount);

        // Full Haxe demo port (imgui.demo): render one frame headless as a
        // whole-port non-regression check.
        ImGui.newFrame();
        imgui.demo.ImGuiDemo.showDemoWindow();
        ImGui.render();
        var demoVtx = ImGui.getDrawData().totalVtxCount;
        trace('Haxe demo vertices: ' + demoVtx);
        if (demoVtx < 500) throw 'Haxe demo rendered too few vertices (' + demoVtx + ')';

        ImGui.destroyContext(ctx);
        trace('OK');

    }


    static function checkCtorDefaults():Void {

        // ImFontConfig
        var size:Int = ImFontConfig.sizeOf();
        var ref:Float = imguics.ImGuiCs.addr(imguics.DCImGui.Alloc(size));
        imguics.DCImGuiExtra.dcx_ImFontConfig_Construct(imguics.ImGuiCs.ptr(ref));
        var cfg = imgui.NativeStructs.createFontConfig();
        compareCtorBytes('ImFontConfig', ref, (cfg:Float), size);
        imgui.NativeStructs.destroyFontConfig(cfg);

        // ImGuiListClipper
        size = ImGuiListClipper.sizeOf();
        ref = imguics.ImGuiCs.addr(imguics.DCImGui.Alloc(size));
        imguics.DCImGuiExtra.dcx_ImGuiListClipper_Construct(imguics.ImGuiCs.ptr(ref));
        var clipper = imgui.NativeStructs.createListClipper();
        compareCtorBytes('ImGuiListClipper', ref, (clipper:Float), size);
        imgui.NativeStructs.destroyListClipper(clipper);

        // ImGuiSelectionBasicStorage
        size = ImGuiSelectionBasicStorage.sizeOf();
        ref = imguics.ImGuiCs.addr(imguics.DCImGui.Alloc(size));
        imguics.DCImGuiExtra.dcx_ImGuiSelectionBasicStorage_Construct(imguics.ImGuiCs.ptr(ref));
        var refStorage:ImGuiSelectionBasicStorage = ref;
        // The getp_ accessor returns the function pointer VALUE
        var refAdapter:Float = refStorage.adapterIndexToStorageId;
        var storage = imgui.NativeStructs.createSelectionBasicStorage(refAdapter);
        compareCtorBytes('ImGuiSelectionBasicStorage', ref, (storage:Float), size);
        imgui.NativeStructs.destroySelectionBasicStorage(storage);

        trace('Ctor defaults OK');

    }

    static function compareCtorBytes(name:String, ref:Float, ours:Float, size:Int):Void {
        for (i in 0...size) {
            var a = imguics.ImGuiCs.getU8(ref + i);
            var b = imguics.ImGuiCs.getU8(ours + i);
            if (a != b)
                throw name + ' constructor drift at byte ' + i + ' (real ctor: ' + a + ', NativeStructs: ' + b + '): update imgui.NativeStructs defaults';
        }
    }

}
