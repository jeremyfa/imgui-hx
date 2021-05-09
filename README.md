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
