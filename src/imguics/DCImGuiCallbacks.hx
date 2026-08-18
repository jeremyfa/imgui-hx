package imguics;

// Haxe externs over the hand-written DCImGuiCallbacks.cs companion shim.

@:native('DCImGuiCallbacks') extern class DCImGuiCallbacks {
    static function GetInputTextCallbackPtr():Float;
    static function GetSizeCallbackPtr():Float;
    static function GetSelectionAdapterPtr():Float;
    static function GetComboGetterPtr():Float;
}
