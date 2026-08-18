package imgui;

/**
 * Portable "bool*" indirection for ImGui out-params (see `FloatRef` for
 * details - prefer plain lvalues with the widget macros).
 */
typedef BoolRef = (?val:Bool)->Bool;
