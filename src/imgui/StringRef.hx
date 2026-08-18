package imgui;

/**
 * Portable string-buffer indirection for ImGui text inputs (see `FloatRef`
 * for details - prefer plain lvalues with the widget macros).
 */
typedef StringRef = (?val:String)->String;
