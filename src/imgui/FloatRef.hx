package imgui;

/**
 * Portable "float*" indirection for ImGui out-params, for the rare cases where
 * a plain lvalue can't be used: a single closure acting as getter (no arg) and
 * setter (with arg).
 *
 * Most code should just pass an lvalue to the widget macros
 * (`ImGui.sliderFloat('x', this.speed, 0, 1)`), which is allocation-free.
 * A `FloatRef` closure allocates when created - cache it in a field if used
 * every frame.
 */
typedef FloatRef = (?val:Float)->Float;
