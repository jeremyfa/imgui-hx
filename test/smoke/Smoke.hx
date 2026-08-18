package;

import imgui.ImGui;

/**
 * Phase-2 smoke test: exercises the GENERATED externs end to end, headless -
 * create a context, declare a textures-capable renderer (1.92 protocol), run a
 * full frame with the demo window, and read back the draw data. If the externs
 * are miswired (names, types, struct field access), this crashes or prints
 * garbage instead.
 *
 * Build & run:  haxe smoke.hxml && ./out/Smoke
 */
@:cppInclude('linc_imgui.h')
class Smoke {

    static function main() {

        var ctx = ImGui.createContext();
        var io = ImGui.getIO();

        // Constructor-defaults drift check: NativeStructs replicates C++
        // constructor semantics by hand (dcimgui structs have no ctor); an
        // upstream default change would otherwise fail SILENTLY (see the
        // ImFontConfig.ExtraSizeScale incident). Compare byte per byte
        // against the real C++ constructors (dcx_*_Construct glue).
        checkCtorDefaults();

        io.displaySize = ImVec2.make(1280, 720);
        io.deltaTime = 1.0 / 60.0;
        // We act as a 1.92-style renderer: font textures are delivered through
        // ImDrawData->Textures (ImTextureData protocol), no upfront atlas build.
        io.backendFlags = io.backendFlags | ImGuiBackendFlags.RendererHasTextures;

        var version:String = ImGui.getVersion();
        trace('Dear ImGui version: ' + version);

        ImGui.newFrame();
        ImGui.showDemoWindow();
        ImGui.render();

        var drawData = ImGui.getDrawData();
        trace('Draw lists: ' + drawData.cmdListsCount);
        trace('Vertices: ' + drawData.totalVtxCount + ', indices: ' + drawData.totalIdxCount);
        trace('Display size: ' + drawData.displaySize.x + ' x ' + drawData.displaySize.y);

        // A couple of widget calls through generated bindings (defaults + Ex variants),
        // exercising every out-param path of the portable facade:
        // lvalues (local, field, array element), Ref closures, string buffer, arrays.
        var sliderValue:Float = 0.25;
        var checkValue:Bool = true;
        var counter:Int = 3;
        var name:String = 'hello';
        var tint:Array<Float> = [1, 0.5, 0.25, 1];
        var storage = { speed: 2.5 };
        var cells:Array<Float> = [0.1, 0.2];
        var refHits = 0;
        var sliderRef:imgui.FloatRef = (?val:Float) -> {
            if (val != null) { refHits++; sliderValue = val; }
            return sliderValue;
        };

        ImGui.newFrame();
        ImGui.setNextWindowSize(ImVec2.make(300, 200));
        var open = true;
        if (ImGui.begin('Smoke window', open)) {
            ImGui.text('Hello from generated bindings');
            ImGui.buttonEx('A button', ImVec2.make(120, 0));
            ImGui.sameLine();
            ImGui.button('Short');
            ImGui.checkbox('A checkbox', checkValue);                       // Bool lvalue (local)
            ImGui.sliderFloat('Slider', sliderValue, 0.0, 1.0);             // Float lvalue (local)
            ImGui.sliderFloat('Slider (ref)', sliderRef, 0.0, 1.0);         // FloatRef closure
            ImGui.sliderFloat('Slider (field)', storage.speed, 0.0, 10.0);  // field through receiver
            ImGui.sliderFloat('Slider (cell)', cells[1], 0.0, 1.0);         // array element
            ImGui.inputInt('Counter', counter);                             // Int lvalue
            ImGui.inputText('Name', name, 64);                              // string buffer
            ImGui.colorEdit4('Tint', tint);                                 // float[4]
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
            + ' name=' + name + ' tint=' + tint + ' refHits=' + refHits);


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


    static function checkCtorDefaults():Void {

        // ImFontConfig
        var size:Int = untyped __cpp__('(int)sizeof(ImFontConfig)');
        var ref = imgui.NativeStructs.allocBytes(size);
        untyped __cpp__('dcx_ImFontConfig_Construct((void*){0})', ref);
        var cfg = imgui.NativeStructs.createFontConfig();
        compareCtorBytes('ImFontConfig', ref, untyped __cpp__('(unsigned char*)({0})', cfg), size);
        imgui.NativeStructs.destroyFontConfig(cfg);

        // ImGuiListClipper
        size = untyped __cpp__('(int)sizeof(ImGuiListClipper)');
        ref = imgui.NativeStructs.allocBytes(size);
        untyped __cpp__('dcx_ImGuiListClipper_Construct((void*){0})', ref);
        var clipper = imgui.NativeStructs.createListClipper();
        compareCtorBytes('ImGuiListClipper', ref, untyped __cpp__('(unsigned char*)({0})', clipper), size);
        imgui.NativeStructs.destroyListClipper(clipper);

        // ImGuiSelectionBasicStorage (pass the reference's default adapter so
        // the function pointer field matches too)
        size = untyped __cpp__('(int)sizeof(ImGuiSelectionBasicStorage)');
        ref = imgui.NativeStructs.allocBytes(size);
        untyped __cpp__('dcx_ImGuiSelectionBasicStorage_Construct((void*){0})', ref);
        var refAdapter:cpp.RawPointer<cpp.Void> = untyped __cpp__('(void*)(((ImGuiSelectionBasicStorage*){0})->AdapterIndexToStorageId)', ref);
        var storage = imgui.NativeStructs.createSelectionBasicStorage(refAdapter);
        compareCtorBytes('ImGuiSelectionBasicStorage', ref, untyped __cpp__('(unsigned char*)({0})', storage), size);
        imgui.NativeStructs.destroySelectionBasicStorage(storage);

        trace('Ctor defaults OK');

    }

    static function compareCtorBytes(name:String, ref:cpp.RawPointer<cpp.UInt8>, ours:cpp.RawPointer<cpp.UInt8>, size:Int):Void {
        for (i in 0...size) {
            var a = imgui.NativeStructs.getU8(ref, i);
            var b = imgui.NativeStructs.getU8(ours, i);
            if (a != b)
                throw name + ' constructor drift at byte ' + i + ' (real ctor: ' + a + ', NativeStructs: ' + b + '): update imgui.NativeStructs defaults';
        }
    }

}
