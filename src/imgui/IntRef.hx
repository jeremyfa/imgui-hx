package imgui;

/**
 * Portable "int*" indirection for ImGui out-params (see `FloatRef` for
 * details - prefer plain lvalues with the widget macros).
 */
typedef IntRef = (?val:Int)->Int;
