# Dear ImGui for Haxe

Haxe bindings for [Dear ImGui](https://github.com/ocornut/imgui).

This library is a continuation of the great work from @Aidan63 on [linc_imgui](https://github.com/Aidan63/linc_imgui).

---

imgui-hx can currently be used with the following Haxe targets:
- C++
- Javascript (using [imgui-js](https://github.com/flyover/imgui-js))

---
### Install

`haxelib git imgui-hx https://github.com/jeremyfa/imgui-hx`

### Usage (C++)

The API follows the ImGui C++ API with most functions and attributes having a haxe equivalent with the same name. When the API wants a ImTextureID (c++ void*) you can use the cpp.Pointer class and rawCast() / reinterpret() to convert to and from whatever classes your framework uses.

For functions which take and modify a float (e.g. colour edits, float inputs / sliders) the float must be a cpp.Float32 type, not a default Haxe float. When creating types such as Vec2 and Vec4 the floats passed to the create method do not need to be explicitly defined as a cpp.Float32 since it is not permanently modifying that variable.

### Usage (Javascript)

Bindings are intended to be as close as possible to original C++ imgui implementation.

That means it should be possible to write a single ImGui code that works seemlessly on both C++ and JS targets.

Please note that javascript bindings are very recent and might not match exactly what is actually available from [imgui-js](https://github.com/flyover/imgui-js). That said, this should be iteratively improved in the future.

### Reporting errors

This is a new binding so there's bound to be missing and / or non-working functions and features. If you find them please create a new issue so it can be fixed. Pull Requests are also welcome.

### Setup in project/engine

There is no setup guide at the moment, but if you want to setup and use Dear ImGui into your own project/engine, you could take a look at the [imgui plugin](https://github.com/ceramic-engine/ceramic/tree/master/plugins/imgui/runtime/src/ceramic) for ceramic engine, which contain code to make Dear ImGui work with both C++ and JS targets.

When targetting C++, it is using Dear ImGui's built-in backend (SDL + opengl) which should make integration easier on your own engine, if based on opengl as well.

When targetting JS, it loads `imgui.umd.js` and `imgui_impl.umd.js` that you can find in [imgui-js dist directory](https://github.com/flyover/imgui-js/tree/08f05fb0f47e02978e4aa52e5a2b9b206e06998d/dist). These files are required as they contain Dear ImGui Web Assembly module.

ImGui's Metal/DirectX backends are not handled in imgui-hx bindings yet, and when using SDL + opengl, it is expected that your project uses `linc_sdl` and `linc_opengl` libraries, but pull requests are welcome to make the bindings work with more various environments.

Once everything is setup, you can, in any haxe file of your project:

1. Import Dear ImGui and additional haxe helpers

```haxe
import imgui.ImGui;
import imgui.Helpers.*;
```

2. Start creating UI by adding code that is executed at every frame of your app

```haxe
var someFloatValue:Float = 0.0;

function someUpdateLoopMethod() {

    // Create a small ImGui window to edit a float value

    ImGui.begin('Hello');
    
    ImGui.sliderFloat('Some slider', fromFloat(someFloatValue), 0.0, 1.0);
    
    if (someFloatValue == 1.0) {
        ImGui.text('Float value is at MAX (1.0)');
    }
    
    ImGui.end();

}
```
