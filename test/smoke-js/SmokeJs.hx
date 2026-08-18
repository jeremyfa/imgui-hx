package;

import imgui.ImGui;

/**
 * js-target smoke test: same coverage as the cpp Smoke, THROUGH THE SAME
 * PORTABLE FACADE - proving one Haxe source drives both targets. Runs in
 * node against the emscripten-built dcimgui module.
 *
 * Build & run:  haxe smokejs.hxml && node run.js
 */
class SmokeJs {

    static var sliderValue:Float = 0.25;
    static var checkValue:Bool = true;
    static var counter:Int = 3;
    static var name:String = 'hello';
    static var tint:Array<Float> = [1, 0.5, 0.25, 1];

    @:expose('runSmoke')
    static function runSmoke(module:Dynamic):Void {

        imguijs.ImGuiJs.init(module);

        var ctx = ImGui.createContext();

        // Constructor-defaults drift check (see Smoke.hx for details):
        // compare NativeStructs replications byte per byte against the real
        // C++ constructors (dcx_*_Construct glue in the wasm module).
        checkCtorDefaults();
        var io = ImGui.getIO();

        io.displaySize = ImVec2.make(1280, 720);
        io.deltaTime = 1.0 / 60.0;
        io.backendFlags = io.backendFlags | ImGuiBackendFlags.RendererHasTextures;

        trace('Dear ImGui version: ' + ImGui.getVersion());

        ImGui.newFrame();
        ImGui.showDemoWindow();
        ImGui.render();

        var drawData = ImGui.getDrawData();
        trace('Draw lists: ' + drawData.cmdListsCount);
        trace('Vertices: ' + drawData.totalVtxCount + ', indices: ' + drawData.totalIdxCount);
        var ds = drawData.displaySize;
        trace('Display size: ' + ds.x + ' x ' + ds.y);

        var storage = { speed: 2.5 };
        var cells:Array<Float> = [0.1, 0.2];

        ImGui.newFrame();
        ImGui.setNextWindowSize(ImVec2.make(300, 200));
        var open = true;
        if (ImGui.begin('Smoke window', open)) {
            ImGui.text('Hello from generated bindings');
            ImGui.buttonEx('A button', ImVec2.make(120, 0));
            ImGui.sameLine();
            ImGui.button('Short');
            ImGui.checkbox('A checkbox', checkValue);
            ImGui.sliderFloat('Slider', sliderValue, 0.0, 1.0);
            ImGui.sliderFloat('Slider (field)', storage.speed, 0.0, 10.0);
            ImGui.sliderFloat('Slider (cell)', cells[1], 0.0, 1.0);
            ImGui.inputInt('Counter', counter);
            ImGui.inputText('Name', name, 64);
            ImGui.colorEdit4('Tint', tint);
        }
        ImGui.end();

        // Phase-1 demo-port prerequisites: portable plots, clipper, style colors
        ImGui.setNextWindowSize(ImVec2.make(300, 300));
        if (ImGui.begin('Prereqs')) {
            var samples:Array<Float> = [0.1, 0.5, 0.3, 0.9, 0.2];
            ImGui.plotLines('Plot', samples);
            ImGui.plotHistogram('Histo', samples);

            var clipper = imgui.NativeStructs.createListClipper();
            ImGuiListClipper.begin(clipper, 1000);
            var shown = 0;
            while (ImGuiListClipper.step(clipper)) {
                for (i in clipper.displayStart...clipper.displayEnd) {
                    ImGui.text('Row ' + i);
                    shown++;
                }
            }
            imgui.NativeStructs.destroyListClipper(clipper);
            if (shown <= 0 || shown >= 1000) throw 'clipper did not clip (' + shown + ')';

            var style = ImGui.getStyle();
            var col = imgui.ImGuiStyleExtra.getStyleColor(style, ImGuiCol.Text);
            imgui.ImGuiStyleExtra.setStyleColor(style, ImGuiCol.Text, ImVec4.make(1, 0, 0, 1));
            var col2 = imgui.ImGuiStyleExtra.getStyleColor(style, ImGuiCol.Text);
            if (col2.x != 1 || col2.y != 0) throw 'style color set/get failed';
            imgui.ImGuiStyleExtra.setStyleColor(style, ImGuiCol.Text, col);

            var filter = new imgui.ImGuiTextFilterHx('inc,-exc');
            if (!filter.passFilter('include me') || filter.passFilter('exc luded'.split(' ').join(''))) throw 'text filter failed';
        }
        ImGui.end();
        ImGui.render();
        trace('Second frame vertices: ' + ImGui.getDrawData().totalVtxCount);
        trace('Values after frame: open=' + open + ' check=' + checkValue + ' slider=' + sliderValue
            + ' speed=' + storage.speed + ' cell=' + cells[1] + ' counter=' + counter
            + ' name=' + name + ' tint=' + tint);


        // Cross-target callback trampolines: a combo getter fires even
        // headless (the preview label is queried through the trampoline).
        ImGui.newFrame();
        ImGui.setNextWindowSize(ImVec2.make(300, 100));
        var cbHits = 0;
        if (ImGui.begin('Callbacks')) {
            var currentItem = imgui.NativeStructs.allocBytes(4);
            imgui.NativeStructs.setI32(currentItem, 0, 1);
            var getter = imgui.ImGuiCallbacks.comboGetter(function(idx) { cbHits++; return 'Item ' + idx; });
            #if cpp
            ImGui.comboCallback('cb combo', untyped __cpp__('(int*){0}', currentItem), getter, null, 3);
            #else
            ImGui.comboCallback('cb combo', currentItem, getter, 0, 3);
            #end
        }
        ImGui.end();
        ImGui.render();
        trace('Combo getter hits: ' + cbHits);
        if (cbHits <= 0) throw 'combo getter trampoline never fired';

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

    static function main() {}


    static function checkCtorDefaults():Void {

        var M = imguijs.ImGuiJs.M;

        // ImFontConfig
        var size:Int = ImFontConfig.sizeOf();
        var ref:Int = M._malloc(size);
        M._dcx_ImFontConfig_Construct(ref);
        var cfg = imgui.NativeStructs.createFontConfig();
        compareCtorBytes('ImFontConfig', ref, (cfg:Int), size);
        imgui.NativeStructs.destroyFontConfig(cfg);
        M._free(ref);

        // ImGuiListClipper
        size = ImGuiListClipper.sizeOf();
        ref = M._malloc(size);
        M._dcx_ImGuiListClipper_Construct(ref);
        var clipper = imgui.NativeStructs.createListClipper();
        compareCtorBytes('ImGuiListClipper', ref, (clipper:Int), size);
        imgui.NativeStructs.destroyListClipper(clipper);
        M._free(ref);

        // ImGuiSelectionBasicStorage (pass the reference's default adapter so
        // the function pointer field matches too)
        size = ImGuiSelectionBasicStorage.sizeOf();
        ref = M._malloc(size);
        M._dcx_ImGuiSelectionBasicStorage_Construct(ref);
        var refStorage:ImGuiSelectionBasicStorage = ref;
        // The getp_ accessor returns the function pointer VALUE
        var refAdapter:Int = refStorage.adapterIndexToStorageId;
        var storage = imgui.NativeStructs.createSelectionBasicStorage(refAdapter);
        compareCtorBytes('ImGuiSelectionBasicStorage', ref, (storage:Int), size);
        imgui.NativeStructs.destroySelectionBasicStorage(storage);
        M._free(ref);

        trace('Ctor defaults OK');

    }

    static function compareCtorBytes(name:String, ref:Int, ours:Int, size:Int):Void {
        for (i in 0...size) {
            var a = imguijs.ImGuiJs.getU8(ref + i);
            var b = imguijs.ImGuiJs.getU8(ours + i);
            if (a != b)
                throw name + ' constructor drift at byte ' + i + ' (real ctor: ' + a + ', NativeStructs: ' + b + '): update imgui.NativeStructs defaults';
        }
    }

}
