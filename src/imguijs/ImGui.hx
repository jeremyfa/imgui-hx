package imguijs;

typedef Int16 = Int;

typedef UInt16 = UInt;

typedef Float32 = Float;

typedef Char = Dynamic;

typedef Int8 = Int;

typedef UInt8 = UInt;

typedef Int64 = Int;

typedef UInt64 = UInt;

typedef VarArg = Dynamic;

typedef SizeT = Int;

typedef Star<T> = Dynamic;

typedef RawPointer<T> = Dynamic;

typedef RawConstPointer<T> = Dynamic;

typedef Reference<T> = Dynamic;

typedef Callable<T> = Dynamic;

typedef VoidPointer = Dynamic;

typedef IntPointer = Dynamic;

typedef TextPointer = Dynamic;

typedef FloatPointer = Dynamic;

typedef CharPointer = Dynamic;

typedef BoolPointer = Dynamic;

typedef FILE = Dynamic;

typedef ImGuiWindowPtr = Void;

typedef ImWchar32 = UInt;

typedef ImWchar16 = imguijs.UInt16;

typedef ImWchar = ImWchar16;

typedef ImU8 = imguijs.UInt8;

typedef ImU64 = imguijs.UInt64;

typedef ImU32 = UInt;

typedef ImU16 = imguijs.UInt16;

typedef ImTextureID = Dynamic;

typedef ImS8 = imguijs.Int8;

typedef ImS64 = imguijs.Int64;

typedef ImS32 = Int;

typedef ImS16 = imguijs.Int16;

typedef ImPoolIdx = Int;

typedef ImGuiTableDrawChannelIdx = ImU8;

typedef ImGuiTableColumnIdx = ImS8;

typedef ImGuiSizeCallback = imguijs.Callable<ImGuiSizeCallbackData -> Void>;

typedef ImGuiInputTextCallback = imguijs.Callable<ImGuiInputTextCallbackData -> Int>;

typedef ImGuiID = UInt;

typedef ImGuiErrorLogCallback = imguijs.Callable<(Dynamic, String, haxe.extern.Rest<String>) -> Void>;

typedef ImGuiContextHookCallback = imguijs.Callable<(ImGuiContext, ImGuiContextHook) -> Void>;

typedef ImFileHandle = FILE;

typedef ImDrawIdx = imguijs.UInt16;

typedef ImDrawCallback = imguijs.Callable<(ImDrawList, ImDrawCmd) -> Void>;

@:enum abstract ImGuiWindowFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoTitleBar : Int = 1;
	var NoResize : Int = 2;
	var NoMove : Int = 4;
	var NoScrollbar : Int = 8;
	var NoScrollWithMouse : Int = 16;
	var NoCollapse : Int = 32;
	var AlwaysAutoResize : Int = 64;
	var NoBackground : Int = 128;
	var NoSavedSettings : Int = 256;
	var NoMouseInputs : Int = 512;
	var MenuBar : Int = 1024;
	var HorizontalScrollbar : Int = 2048;
	var NoFocusOnAppearing : Int = 4096;
	var NoBringToFrontOnFocus : Int = 8192;
	var AlwaysVerticalScrollbar : Int = 16384;
	var AlwaysHorizontalScrollbar : Int = 32768;
	var AlwaysUseWindowPadding : Int = 65536;
	var NoNavInputs : Int = 262144;
	var NoNavFocus : Int = 524288;
	var UnsavedDocument : Int = 1048576;
	var NoNav : Int = 786432;
	var NoDecoration : Int = 43;
	var NoInputs : Int = 786944;
	var NavFlattened : Int = 8388608;
	var ChildWindow : Int = 16777216;
	var Tooltip : Int = 33554432;
	var Popup : Int = 67108864;
	var Modal : Int = 134217728;
	var ChildMenu : Int = 268435456;
}

@:enum abstract ImGuiTreeNodeFlags(Int) from Int to Int {
	var None : Int = 0;
	var Selected : Int = 1;
	var Framed : Int = 2;
	var AllowItemOverlap : Int = 4;
	var NoTreePushOnOpen : Int = 8;
	var NoAutoOpenOnLog : Int = 16;
	var DefaultOpen : Int = 32;
	var OpenOnDoubleClick : Int = 64;
	var OpenOnArrow : Int = 128;
	var Leaf : Int = 256;
	var Bullet : Int = 512;
	var FramePadding : Int = 1024;
	var SpanAvailWidth : Int = 2048;
	var SpanFullWidth : Int = 4096;
	var NavLeftJumpsBackHere : Int = 8192;
	var CollapsingHeader : Int = 26;
}

@:enum abstract ImGuiTreeNodeFlagsPrivate(Int) from Int to Int {
	var ImGuiTreeNodeFlags_ClipLabelForTrailingButton : Int = 1048576;
}

@:enum abstract ImGuiTooltipFlags(Int) from Int to Int {
	var None : Int = 0;
	var OverridePreviousTooltip : Int = 1;
}

@:enum abstract ImGuiTextFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoWidthForLargeClippedText : Int = 1;
}

@:enum abstract ImGuiTableRowFlags(Int) from Int to Int {
	var None : Int = 0;
	var Headers : Int = 1;
}

@:enum abstract ImGuiTableFlags(Int) from Int to Int {
	var None : Int = 0;
	var Resizable : Int = 1;
	var Reorderable : Int = 2;
	var Hideable : Int = 4;
	var Sortable : Int = 8;
	var NoSavedSettings : Int = 16;
	var ContextMenuInBody : Int = 32;
	var RowBg : Int = 64;
	var BordersInnerH : Int = 128;
	var BordersOuterH : Int = 256;
	var BordersInnerV : Int = 512;
	var BordersOuterV : Int = 1024;
	var BordersH : Int = 384;
	var BordersV : Int = 1536;
	var BordersInner : Int = 640;
	var BordersOuter : Int = 1280;
	var Borders : Int = 1920;
	var NoBordersInBody : Int = 2048;
	var NoBordersInBodyUntilResize : Int = 4096;
	var SizingFixedFit : Int = 8192;
	var SizingFixedSame : Int = 16384;
	var SizingStretchProp : Int = 24576;
	var SizingStretchSame : Int = 32768;
	var NoHostExtendX : Int = 65536;
	var NoHostExtendY : Int = 131072;
	var NoKeepColumnsVisible : Int = 262144;
	var PreciseWidths : Int = 524288;
	var NoClip : Int = 1048576;
	var PadOuterX : Int = 2097152;
	var NoPadOuterX : Int = 4194304;
	var NoPadInnerX : Int = 8388608;
	var ScrollX : Int = 16777216;
	var ScrollY : Int = 33554432;
	var SortMulti : Int = 67108864;
	var SortTristate : Int = 134217728;
	var SizingMask_ : Int = 57344;
}

@:enum abstract ImGuiTableColumnFlags(Int) from Int to Int {
	var None : Int = 0;
	var DefaultHide : Int = 1;
	var DefaultSort : Int = 2;
	var WidthStretch : Int = 4;
	var WidthFixed : Int = 8;
	var NoResize : Int = 16;
	var NoReorder : Int = 32;
	var NoHide : Int = 64;
	var NoClip : Int = 128;
	var NoSort : Int = 256;
	var NoSortAscending : Int = 512;
	var NoSortDescending : Int = 1024;
	var NoHeaderWidth : Int = 2048;
	var PreferSortAscending : Int = 4096;
	var PreferSortDescending : Int = 8192;
	var IndentEnable : Int = 16384;
	var IndentDisable : Int = 32768;
	var IsEnabled : Int = 1048576;
	var IsVisible : Int = 2097152;
	var IsSorted : Int = 4194304;
	var IsHovered : Int = 8388608;
	var WidthMask_ : Int = 12;
	var IndentMask_ : Int = 49152;
	var StatusMask_ : Int = 15728640;
	var NoDirectResize_ : Int = 1073741824;
}

@:enum abstract ImGuiTableBgTarget(Int) from Int to Int {
	var None : Int = 0;
	var RowBg0 : Int = 1;
	var RowBg1 : Int = 2;
	var CellBg : Int = 3;
}

@:enum abstract ImGuiTabItemFlags(Int) from Int to Int {
	var None : Int = 0;
	var UnsavedDocument : Int = 1;
	var SetSelected : Int = 2;
	var NoCloseWithMiddleMouseButton : Int = 4;
	var NoPushId : Int = 8;
	var NoTooltip : Int = 16;
	var NoReorder : Int = 32;
	var Leading : Int = 64;
	var Trailing : Int = 128;
}

@:enum abstract ImGuiTabItemFlagsPrivate(Int) from Int to Int {
	var ImGuiTabItemFlags_NoCloseButton : Int = 1048576;
	var ImGuiTabItemFlags_Button : Int = 2097152;
}

@:enum abstract ImGuiTabBarFlags(Int) from Int to Int {
	var None : Int = 0;
	var Reorderable : Int = 1;
	var AutoSelectNewTabs : Int = 2;
	var TabListPopupButton : Int = 4;
	var NoCloseWithMiddleMouseButton : Int = 8;
	var NoTabListScrollingButtons : Int = 16;
	var NoTooltip : Int = 32;
	var FittingPolicyResizeDown : Int = 64;
	var FittingPolicyScroll : Int = 128;
	var FittingPolicyMask_ : Int = 192;
	var FittingPolicyDefault_ : Int = 64;
}

@:enum abstract ImGuiTabBarFlagsPrivate(Int) from Int to Int {
	var ImGuiTabBarFlags_DockNode : Int = 1048576;
	var ImGuiTabBarFlags_IsFocused : Int = 2097152;
	var ImGuiTabBarFlags_SaveSettings : Int = 4194304;
}

@:enum abstract ImGuiStyleVar(Int) from Int to Int {
	var Alpha : Int = 0;
	var WindowPadding : Int = 1;
	var WindowRounding : Int = 2;
	var WindowBorderSize : Int = 3;
	var WindowMinSize : Int = 4;
	var WindowTitleAlign : Int = 5;
	var ChildRounding : Int = 6;
	var ChildBorderSize : Int = 7;
	var PopupRounding : Int = 8;
	var PopupBorderSize : Int = 9;
	var FramePadding : Int = 10;
	var FrameRounding : Int = 11;
	var FrameBorderSize : Int = 12;
	var ItemSpacing : Int = 13;
	var ItemInnerSpacing : Int = 14;
	var IndentSpacing : Int = 15;
	var CellPadding : Int = 16;
	var ScrollbarSize : Int = 17;
	var ScrollbarRounding : Int = 18;
	var GrabMinSize : Int = 19;
	var GrabRounding : Int = 20;
	var TabRounding : Int = 21;
	var ButtonTextAlign : Int = 22;
	var SelectableTextAlign : Int = 23;
	var COUNT : Int = 24;
}

@:enum abstract ImGuiSortDirection(Int) from Int to Int {
	var None : Int = 0;
	var Ascending : Int = 1;
	var Descending : Int = 2;
}

@:enum abstract ImGuiSliderFlags(Int) from Int to Int {
	var None : Int = 0;
	var AlwaysClamp : Int = 16;
	var Logarithmic : Int = 32;
	var NoRoundToFormat : Int = 64;
	var NoInput : Int = 128;
	var InvalidMask_ : Int = 1879048207;
}

@:enum abstract ImGuiSliderFlagsPrivate(Int) from Int to Int {
	var ImGuiSliderFlags_Vertical : Int = 1048576;
	var ImGuiSliderFlags_ReadOnly : Int = 2097152;
}

@:enum abstract ImGuiSeparatorFlags(Int) from Int to Int {
	var None : Int = 0;
	var Horizontal : Int = 1;
	var Vertical : Int = 2;
	var SpanAllColumns : Int = 4;
}

@:enum abstract ImGuiSelectableFlags(Int) from Int to Int {
	var None : Int = 0;
	var DontClosePopups : Int = 1;
	var SpanAllColumns : Int = 2;
	var AllowDoubleClick : Int = 4;
	var Disabled : Int = 8;
	var AllowItemOverlap : Int = 16;
}

@:enum abstract ImGuiSelectableFlagsPrivate(Int) from Int to Int {
	var ImGuiSelectableFlags_NoHoldingActiveID : Int = 1048576;
	var ImGuiSelectableFlags_SelectOnClick : Int = 2097152;
	var ImGuiSelectableFlags_SelectOnRelease : Int = 4194304;
	var ImGuiSelectableFlags_SpanAvailWidth : Int = 8388608;
	var ImGuiSelectableFlags_DrawHoveredWhenHeld : Int = 16777216;
	var ImGuiSelectableFlags_SetNavIdOnHover : Int = 33554432;
	var ImGuiSelectableFlags_NoPadWithHalfSpacing : Int = 67108864;
}

@:enum abstract ImGuiPopupPositionPolicy(Int) from Int to Int {
	var _Default : Int = 0;
	var _ComboBox : Int = 1;
	var _Tooltip : Int = 2;
}

@:enum abstract ImGuiPopupFlags(Int) from Int to Int {
	var None : Int = 0;
	var MouseButtonLeft : Int = 0;
	var MouseButtonRight : Int = 1;
	var MouseButtonMiddle : Int = 2;
	var MouseButtonMask_ : Int = 31;
	var MouseButtonDefault_ : Int = 1;
	var NoOpenOverExistingPopup : Int = 32;
	var NoOpenOverItems : Int = 64;
	var AnyPopupId : Int = 128;
	var AnyPopupLevel : Int = 256;
	var AnyPopup : Int = 384;
}

@:enum abstract ImGuiPlotType(Int) from Int to Int {
	var _Lines : Int = 0;
	var _Histogram : Int = 1;
}

@:enum abstract ImGuiOldColumnFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoBorder : Int = 1;
	var NoResize : Int = 2;
	var NoPreserveWidths : Int = 4;
	var NoForceWithinWindow : Int = 8;
	var GrowParentContentsSize : Int = 16;
}

@:enum abstract ImGuiNextWindowDataFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasPos : Int = 1;
	var HasSize : Int = 2;
	var HasContentSize : Int = 4;
	var HasCollapsed : Int = 8;
	var HasSizeConstraint : Int = 16;
	var HasFocus : Int = 32;
	var HasBgAlpha : Int = 64;
	var HasScroll : Int = 128;
}

@:enum abstract ImGuiNextItemDataFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasWidth : Int = 1;
	var HasOpen : Int = 2;
}

@:enum abstract ImGuiNavMoveFlags(Int) from Int to Int {
	var None : Int = 0;
	var LoopX : Int = 1;
	var LoopY : Int = 2;
	var WrapX : Int = 4;
	var WrapY : Int = 8;
	var AllowCurrentNavId : Int = 16;
	var AlsoScoreVisibleSet : Int = 32;
	var ScrollToEdge : Int = 64;
}

@:enum abstract ImGuiNavLayer(Int) from Int to Int {
	var _Main : Int = 0;
	var _Menu : Int = 1;
	var _COUNT : Int = 2;
}

@:enum abstract ImGuiNavInput(Int) from Int to Int {
	var Activate : Int = 0;
	var Cancel : Int = 1;
	var Input : Int = 2;
	var Menu : Int = 3;
	var DpadLeft : Int = 4;
	var DpadRight : Int = 5;
	var DpadUp : Int = 6;
	var DpadDown : Int = 7;
	var LStickLeft : Int = 8;
	var LStickRight : Int = 9;
	var LStickUp : Int = 10;
	var LStickDown : Int = 11;
	var FocusPrev : Int = 12;
	var FocusNext : Int = 13;
	var TweakSlow : Int = 14;
	var TweakFast : Int = 15;
	var KeyMenu_ : Int = 16;
	var KeyLeft_ : Int = 17;
	var KeyRight_ : Int = 18;
	var KeyUp_ : Int = 19;
	var KeyDown_ : Int = 20;
	var COUNT : Int = 21;
	var InternalStart_ : Int = 16;
}

@:enum abstract ImGuiNavHighlightFlags(Int) from Int to Int {
	var None : Int = 0;
	var TypeDefault : Int = 1;
	var TypeThin : Int = 2;
	var AlwaysDraw : Int = 4;
	var NoRounding : Int = 8;
}

@:enum abstract ImGuiNavForward(Int) from Int to Int {
	var _None : Int = 0;
	var _ForwardQueued : Int = 1;
	var _ForwardActive : Int = 2;
}

@:enum abstract ImGuiNavDirSourceFlags(Int) from Int to Int {
	var None : Int = 0;
	var Keyboard : Int = 1;
	var PadDPad : Int = 2;
	var PadLStick : Int = 4;
}

@:enum abstract ImGuiMouseCursor(Int) from Int to Int {
	var None : Int = -1;
	var Arrow : Int = 0;
	var TextInput : Int = 1;
	var ResizeAll : Int = 2;
	var ResizeNS : Int = 3;
	var ResizeEW : Int = 4;
	var ResizeNESW : Int = 5;
	var ResizeNWSE : Int = 6;
	var Hand : Int = 7;
	var NotAllowed : Int = 8;
	var COUNT : Int = 9;
}

@:enum abstract ImGuiMouseButton(Int) from Int to Int {
	var Left : Int = 0;
	var Right : Int = 1;
	var Middle : Int = 2;
	var COUNT : Int = 5;
}

@:enum abstract ImGuiLogType(Int) from Int to Int {
	var _None : Int = 0;
	var _TTY : Int = 1;
	var _File : Int = 2;
	var _Buffer : Int = 3;
	var _Clipboard : Int = 4;
}

@:enum abstract ImGuiLayoutType(Int) from Int to Int {
	var Horizontal : Int = 0;
	var Vertical : Int = 1;
}

@:enum abstract ImGuiKey(Int) from Int to Int {
	var Tab : Int = 0;
	var LeftArrow : Int = 1;
	var RightArrow : Int = 2;
	var UpArrow : Int = 3;
	var DownArrow : Int = 4;
	var PageUp : Int = 5;
	var PageDown : Int = 6;
	var Home : Int = 7;
	var End : Int = 8;
	var Insert : Int = 9;
	var Delete : Int = 10;
	var Backspace : Int = 11;
	var Space : Int = 12;
	var Enter : Int = 13;
	var Escape : Int = 14;
	var KeyPadEnter : Int = 15;
	var A : Int = 16;
	var C : Int = 17;
	var V : Int = 18;
	var X : Int = 19;
	var Y : Int = 20;
	var Z : Int = 21;
	var COUNT : Int = 22;
}

@:enum abstract ImGuiKeyModFlags(Int) from Int to Int {
	var None : Int = 0;
	var Ctrl : Int = 1;
	var Shift : Int = 2;
	var Alt : Int = 4;
	var Super : Int = 8;
}

@:enum abstract ImGuiItemStatusFlags(Int) from Int to Int {
	var None : Int = 0;
	var HoveredRect : Int = 1;
	var HasDisplayRect : Int = 2;
	var Edited : Int = 4;
	var ToggledSelection : Int = 8;
	var ToggledOpen : Int = 16;
	var HasDeactivated : Int = 32;
	var Deactivated : Int = 64;
}

@:enum abstract ImGuiItemFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoTabStop : Int = 1;
	var ButtonRepeat : Int = 2;
	var Disabled : Int = 4;
	var NoNav : Int = 8;
	var NoNavDefaultFocus : Int = 16;
	var SelectableDontClosePopup : Int = 32;
	var MixedValue : Int = 64;
	var ReadOnly : Int = 128;
	var Default_ : Int = 0;
}

@:enum abstract ImGuiInputTextFlags(Int) from Int to Int {
	var None : Int = 0;
	var CharsDecimal : Int = 1;
	var CharsHexadecimal : Int = 2;
	var CharsUppercase : Int = 4;
	var CharsNoBlank : Int = 8;
	var AutoSelectAll : Int = 16;
	var EnterReturnsTrue : Int = 32;
	var CallbackCompletion : Int = 64;
	var CallbackHistory : Int = 128;
	var CallbackAlways : Int = 256;
	var CallbackCharFilter : Int = 512;
	var AllowTabInput : Int = 1024;
	var CtrlEnterForNewLine : Int = 2048;
	var NoHorizontalScroll : Int = 4096;
	var AlwaysInsertMode : Int = 8192;
	var ReadOnly : Int = 16384;
	var Password : Int = 32768;
	var NoUndoRedo : Int = 65536;
	var CharsScientific : Int = 131072;
	var CallbackResize : Int = 262144;
	var CallbackEdit : Int = 524288;
	var Multiline : Int = 1048576;
	var NoMarkEdited : Int = 2097152;
}

@:enum abstract ImGuiInputSource(Int) from Int to Int {
	var _None : Int = 0;
	var _Mouse : Int = 1;
	var _Nav : Int = 2;
	var _NavKeyboard : Int = 3;
	var _NavGamepad : Int = 4;
	var _COUNT : Int = 5;
}

@:enum abstract ImGuiInputReadMode(Int) from Int to Int {
	var _Down : Int = 0;
	var _Pressed : Int = 1;
	var _Released : Int = 2;
	var _Repeat : Int = 3;
	var _RepeatSlow : Int = 4;
	var _RepeatFast : Int = 5;
}

@:enum abstract ImGuiHoveredFlags(Int) from Int to Int {
	var None : Int = 0;
	var ChildWindows : Int = 1;
	var RootWindow : Int = 2;
	var AnyWindow : Int = 4;
	var AllowWhenBlockedByPopup : Int = 8;
	var AllowWhenBlockedByActiveItem : Int = 32;
	var AllowWhenOverlapped : Int = 64;
	var AllowWhenDisabled : Int = 128;
	var RectOnly : Int = 104;
	var RootAndChildWindows : Int = 3;
}

@:enum abstract ImGuiFocusedFlags(Int) from Int to Int {
	var None : Int = 0;
	var ChildWindows : Int = 1;
	var RootWindow : Int = 2;
	var AnyWindow : Int = 4;
	var RootAndChildWindows : Int = 3;
}

@:enum abstract ImGuiDragDropFlags(Int) from Int to Int {
	var None : Int = 0;
	var SourceNoPreviewTooltip : Int = 1;
	var SourceNoDisableHover : Int = 2;
	var SourceNoHoldToOpenOthers : Int = 4;
	var SourceAllowNullID : Int = 8;
	var SourceExtern : Int = 16;
	var SourceAutoExpirePayload : Int = 32;
	var AcceptBeforeDelivery : Int = 1024;
	var AcceptNoDrawDefaultRect : Int = 2048;
	var AcceptNoPreviewTooltip : Int = 4096;
	var AcceptPeekOnly : Int = 3072;
}

@:enum abstract ImGuiDir(Int) from Int to Int {
	var None : Int = -1;
	var Left : Int = 0;
	var Right : Int = 1;
	var Up : Int = 2;
	var Down : Int = 3;
	var COUNT : Int = 4;
}

@:enum abstract ImGuiDataType(Int) from Int to Int {
	var S8 : Int = 0;
	var U8 : Int = 1;
	var S16 : Int = 2;
	var U16 : Int = 3;
	var S32 : Int = 4;
	var U32 : Int = 5;
	var S64 : Int = 6;
	var U64 : Int = 7;
	var Float : Int = 8;
	var Double : Int = 9;
	var COUNT : Int = 10;
}

@:enum abstract ImGuiDataTypePrivate(Int) from Int to Int {
	var ImGuiDataType_String : Int = 11;
	var ImGuiDataType_Pointer : Int = 12;
	var ImGuiDataType_ID : Int = 13;
}

@:enum abstract ImGuiContextHookType(Int) from Int to Int {
	var _NewFramePre : Int = 0;
	var _NewFramePost : Int = 1;
	var _EndFramePre : Int = 2;
	var _EndFramePost : Int = 3;
	var _RenderPre : Int = 4;
	var _RenderPost : Int = 5;
	var _Shutdown : Int = 6;
}

@:enum abstract ImGuiConfigFlags(Int) from Int to Int {
	var None : Int = 0;
	var NavEnableKeyboard : Int = 1;
	var NavEnableGamepad : Int = 2;
	var NavEnableSetMousePos : Int = 4;
	var NavNoCaptureKeyboard : Int = 8;
	var NoMouse : Int = 16;
	var NoMouseCursorChange : Int = 32;
	var IsSRGB : Int = 1048576;
	var IsTouchScreen : Int = 2097152;
}

@:enum abstract ImGuiCond(Int) from Int to Int {
	var None : Int = 0;
	var Always : Int = 1;
	var Once : Int = 2;
	var FirstUseEver : Int = 4;
	var Appearing : Int = 8;
}

@:enum abstract ImGuiComboFlags(Int) from Int to Int {
	var None : Int = 0;
	var PopupAlignLeft : Int = 1;
	var HeightSmall : Int = 2;
	var HeightRegular : Int = 4;
	var HeightLarge : Int = 8;
	var HeightLargest : Int = 16;
	var NoArrowButton : Int = 32;
	var NoPreview : Int = 64;
	var HeightMask_ : Int = 30;
}

@:enum abstract ImGuiColorEditFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoAlpha : Int = 2;
	var NoPicker : Int = 4;
	var NoOptions : Int = 8;
	var NoSmallPreview : Int = 16;
	var NoInputs : Int = 32;
	var NoTooltip : Int = 64;
	var NoLabel : Int = 128;
	var NoSidePreview : Int = 256;
	var NoDragDrop : Int = 512;
	var NoBorder : Int = 1024;
	var AlphaBar : Int = 65536;
	var AlphaPreview : Int = 131072;
	var AlphaPreviewHalf : Int = 262144;
	var HDR : Int = 524288;
	var DisplayRGB : Int = 1048576;
	var DisplayHSV : Int = 2097152;
	var DisplayHex : Int = 4194304;
	var Uint8 : Int = 8388608;
	var Float : Int = 16777216;
	var PickerHueBar : Int = 33554432;
	var PickerHueWheel : Int = 67108864;
	var InputRGB : Int = 134217728;
	var InputHSV : Int = 268435456;
	var _OptionsDefault : Int = 177209344;
	var _DisplayMask : Int = 7340032;
	var _DataTypeMask : Int = 25165824;
	var _PickerMask : Int = 100663296;
	var _InputMask : Int = 402653184;
}

@:enum abstract ImGuiCol(Int) from Int to Int {
	var Text : Int = 0;
	var TextDisabled : Int = 1;
	var WindowBg : Int = 2;
	var ChildBg : Int = 3;
	var PopupBg : Int = 4;
	var Border : Int = 5;
	var BorderShadow : Int = 6;
	var FrameBg : Int = 7;
	var FrameBgHovered : Int = 8;
	var FrameBgActive : Int = 9;
	var TitleBg : Int = 10;
	var TitleBgActive : Int = 11;
	var TitleBgCollapsed : Int = 12;
	var MenuBarBg : Int = 13;
	var ScrollbarBg : Int = 14;
	var ScrollbarGrab : Int = 15;
	var ScrollbarGrabHovered : Int = 16;
	var ScrollbarGrabActive : Int = 17;
	var CheckMark : Int = 18;
	var SliderGrab : Int = 19;
	var SliderGrabActive : Int = 20;
	var Button : Int = 21;
	var ButtonHovered : Int = 22;
	var ButtonActive : Int = 23;
	var Header : Int = 24;
	var HeaderHovered : Int = 25;
	var HeaderActive : Int = 26;
	var Separator : Int = 27;
	var SeparatorHovered : Int = 28;
	var SeparatorActive : Int = 29;
	var ResizeGrip : Int = 30;
	var ResizeGripHovered : Int = 31;
	var ResizeGripActive : Int = 32;
	var Tab : Int = 33;
	var TabHovered : Int = 34;
	var TabActive : Int = 35;
	var TabUnfocused : Int = 36;
	var TabUnfocusedActive : Int = 37;
	var PlotLines : Int = 38;
	var PlotLinesHovered : Int = 39;
	var PlotHistogram : Int = 40;
	var PlotHistogramHovered : Int = 41;
	var TableHeaderBg : Int = 42;
	var TableBorderStrong : Int = 43;
	var TableBorderLight : Int = 44;
	var TableRowBg : Int = 45;
	var TableRowBgAlt : Int = 46;
	var TextSelectedBg : Int = 47;
	var DragDropTarget : Int = 48;
	var NavHighlight : Int = 49;
	var NavWindowingHighlight : Int = 50;
	var NavWindowingDimBg : Int = 51;
	var ModalWindowDimBg : Int = 52;
	var COUNT : Int = 53;
}

@:enum abstract ImGuiButtonFlags(Int) from Int to Int {
	var None : Int = 0;
	var MouseButtonLeft : Int = 1;
	var MouseButtonRight : Int = 2;
	var MouseButtonMiddle : Int = 4;
	var MouseButtonMask_ : Int = 7;
	var MouseButtonDefault_ : Int = 1;
}

@:enum abstract ImGuiButtonFlagsPrivate(Int) from Int to Int {
	var ImGuiButtonFlags_PressedOnClick : Int = 16;
	var ImGuiButtonFlags_PressedOnClickRelease : Int = 32;
	var ImGuiButtonFlags_PressedOnClickReleaseAnywhere : Int = 64;
	var ImGuiButtonFlags_PressedOnRelease : Int = 128;
	var ImGuiButtonFlags_PressedOnDoubleClick : Int = 256;
	var ImGuiButtonFlags_PressedOnDragDropHold : Int = 512;
	var ImGuiButtonFlags_Repeat : Int = 1024;
	var ImGuiButtonFlags_FlattenChildren : Int = 2048;
	var ImGuiButtonFlags_AllowItemOverlap : Int = 4096;
	var ImGuiButtonFlags_DontClosePopups : Int = 8192;
	var ImGuiButtonFlags_Disabled : Int = 16384;
	var ImGuiButtonFlags_AlignTextBaseLine : Int = 32768;
	var ImGuiButtonFlags_NoKeyModifiers : Int = 65536;
	var ImGuiButtonFlags_NoHoldingActiveId : Int = 131072;
	var ImGuiButtonFlags_NoNavFocus : Int = 262144;
	var ImGuiButtonFlags_NoHoveredOnFocus : Int = 524288;
	var ImGuiButtonFlags_PressedOnMask_ : Int = 1008;
	var ImGuiButtonFlags_PressedOnDefault_ : Int = 32;
}

@:enum abstract ImGuiBackendFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasGamepad : Int = 1;
	var HasMouseCursors : Int = 2;
	var HasSetMousePos : Int = 4;
	var RendererHasVtxOffset : Int = 8;
}

@:enum abstract ImGuiAxis(Int) from Int to Int {
	var _None : Int = -1;
	var _X : Int = 0;
	var _Y : Int = 1;
}

@:enum abstract ImFontAtlasFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoPowerOfTwoHeight : Int = 1;
	var NoMouseCursors : Int = 2;
	var NoBakedLines : Int = 4;
}

@:enum abstract ImDrawListFlags(Int) from Int to Int {
	var None : Int = 0;
	var AntiAliasedLines : Int = 1;
	var AntiAliasedLinesUseTex : Int = 2;
	var AntiAliasedFill : Int = 4;
	var AllowVtxOffset : Int = 8;
}

@:enum abstract ImDrawCornerFlags(Int) from Int to Int {
	var None : Int = 0;
	var TopLeft : Int = 1;
	var TopRight : Int = 2;
	var BotLeft : Int = 4;
	var BotRight : Int = 8;
	var Top : Int = 3;
	var Bot : Int = 12;
	var Left : Int = 5;
	var Right : Int = 10;
	var All : Int = 15;
}

@:keep @:native("ImGuiDockRequest") extern class ImGuiDockRequest {

}

@:keep @:native("ImGuiDockNodeSettings") extern class ImGuiDockNodeSettings {

}

@:keep @:native("StbUndoState") extern class StbUndoState {
	@:native("undo_rec")
	var undo_rec : StbUndoRecord;
	@:native("undo_char")
	var undo_char : ImWchar;
	@:native("undo_point")
	var undo_point : imguijs.Int16;
	@:native("redo_point")
	var redo_point : imguijs.Int16;
	@:native("undo_char_point")
	var undo_char_point : Int;
	@:native("redo_char_point")
	var redo_char_point : Int;
}

@:keep @:native("StbUndoRecord") extern class StbUndoRecord {
	@:native("where")
	var where : Int;
	@:native("insert_length")
	var insert_length : Int;
	@:native("delete_length")
	var delete_length : Int;
	@:native("char_storage")
	var char_storage : Int;
}

@:keep @:native("StbTexteditRow") extern class StbTexteditRow {
	@:native("x0")
	var x0 : imguijs.Float32;
	@:native("x1")
	var x1 : imguijs.Float32;
	@:native("baseline_y_delta")
	var baseline_y_delta : imguijs.Float32;
	@:native("ymin")
	var ymin : imguijs.Float32;
	@:native("ymax")
	var ymax : imguijs.Float32;
	@:native("num_chars")
	var num_chars : Int;
}

@:keep @:native("STB_TexteditState") extern class STB_TexteditState {
	@:native("cursor")
	var cursor : Int;
	@:native("select_start")
	var select_start : Int;
	@:native("select_end")
	var select_end : Int;
	@:native("insert_mode")
	var insert_mode : imguijs.UInt8;
	@:native("row_count_per_page")
	var row_count_per_page : Int;
	@:native("cursor_at_end_of_line")
	var cursor_at_end_of_line : imguijs.UInt8;
	@:native("initialized")
	var initialized : imguijs.UInt8;
	@:native("has_preferred_x")
	var has_preferred_x : imguijs.UInt8;
	@:native("single_line")
	var single_line : imguijs.UInt8;
	@:native("padding1")
	var padding1 : imguijs.UInt8;
	@:native("padding2")
	var padding2 : imguijs.UInt8;
	@:native("padding3")
	var padding3 : imguijs.UInt8;
	@:native("preferred_x")
	var preferred_x : imguijs.Float32;
	@:native("undostate")
	var undostate : StbUndoState;
}

@:keep @:native("ImVec4") extern class ImVec4 {
	@:native("x")
	var x : imguijs.Float32;
	@:native("y")
	var y : imguijs.Float32;
	@:native("z")
	var z : imguijs.Float32;
	@:native("w")
	var w : imguijs.Float32;
	@:native("ImVec4")
	static inline extern overload function create(_x:imguijs.Float32, _y:imguijs.Float32, _z:imguijs.Float32, _w:imguijs.Float32):ImVec4 {
		return js.Syntax.code("new ImGui.ImVec4({0}, {1}, {2}, {3})", _x, _y, _z, _w);
	}
	@:native("ImVec4")
	static inline extern overload function create():ImVec4 {
		return js.Syntax.code("new ImGui.ImVec4()");
	}
}

@:keep @:native("ImVec2ih") extern class ImVec2ih {
	@:native("x")
	var x : imguijs.Int16;
	@:native("y")
	var y : imguijs.Int16;
	@:native("ImVec2ih")
	static inline extern overload function create(_x:imguijs.Int16, _y:imguijs.Int16):ImVec2ih {
		return js.Syntax.code("new ImGui.ImVec2ih({0}, {1})", _x, _y);
	}
	@:native("ImVec2ih")
	static inline extern overload function create(rhs:ImVec2):ImVec2ih {
		return js.Syntax.code("new ImGui.ImVec2ih({0})", rhs);
	}
	@:native("ImVec2ih")
	static inline extern overload function create():ImVec2ih {
		return js.Syntax.code("new ImGui.ImVec2ih()");
	}
}

@:keep @:native("ImVec2") extern class ImVec2 {
	@:native("x")
	var x : imguijs.Float32;
	@:native("y")
	var y : imguijs.Float32;
	@:native("ImVec2")
	static inline extern overload function create(_x:imguijs.Float32, _y:imguijs.Float32):ImVec2 {
		return js.Syntax.code("new ImGui.ImVec2({0}, {1})", _x, _y);
	}
	@:native("ImVec2")
	static inline extern overload function create():ImVec2 {
		return js.Syntax.code("new ImGui.ImVec2()");
	}
}

@:keep @:native("ImVec1") extern class ImVec1 {
	@:native("x")
	var x : imguijs.Float32;
	@:native("ImVec1")
	static inline extern overload function create(_x:imguijs.Float32):ImVec1 {
		return js.Syntax.code("new ImGui.ImVec1({0})", _x);
	}
	@:native("ImVec1")
	static inline extern overload function create():ImVec1 {
		return js.Syntax.code("new ImGui.ImVec1()");
	}
}

@:keep @:native("ImRect") extern class ImRect {
	@:native("Min")
	var min : ImVec2;
	@:native("Max")
	var max : ImVec2;
	@:native("TranslateY")
	function translateY(dy:imguijs.Float32):Void;
	@:native("TranslateX")
	function translateX(dx:imguijs.Float32):Void;
	@:native("Translate")
	function translate(d:ImVec2):Void;
	@:native("ToVec4")
	function toVec4(pOut:ImVec4, self:ImRect):Void;
	@:native("Overlaps")
	function overlaps(r:ImRect):Bool;
	@:native("IsInverted")
	function isInverted():Bool;
	@:native("ImRect")
	static inline extern overload function create(min:ImVec2, max:ImVec2):ImRect {
		return js.Syntax.code("new ImGui.ImRect({0}, {1})", min, max);
	}
	@:native("ImRect")
	static inline extern overload function create(v:ImVec4):ImRect {
		return js.Syntax.code("new ImGui.ImRect({0})", v);
	}
	@:native("ImRect")
	static inline extern overload function create(x1:imguijs.Float32, y1:imguijs.Float32, x2:imguijs.Float32, y2:imguijs.Float32):ImRect {
		return js.Syntax.code("new ImGui.ImRect({0}, {1}, {2}, {3})", x1, y1, x2, y2);
	}
	@:native("ImRect")
	static inline extern overload function create():ImRect {
		return js.Syntax.code("new ImGui.ImRect()");
	}
	@:native("GetWidth")
	function getWidth():imguijs.Float32;
	@:native("GetTR")
	function getTR(pOut:ImVec2, self:ImRect):Void;
	@:native("GetTL")
	function getTL(pOut:ImVec2, self:ImRect):Void;
	@:native("GetSize")
	function getSize(pOut:ImVec2, self:ImRect):Void;
	@:native("GetHeight")
	function getHeight():imguijs.Float32;
	@:native("GetCenter")
	function getCenter(pOut:ImVec2, self:ImRect):Void;
	@:native("GetBR")
	function getBR(pOut:ImVec2, self:ImRect):Void;
	@:native("GetBL")
	function getBL(pOut:ImVec2, self:ImRect):Void;
	@:native("Floor")
	function floor():Void;
	@:native("Expand")
	@:overload(function(amount:ImVec2):Void { })
	function expand(amount:imguijs.Float32):Void;
	@:native("Contains")
	@:overload(function(r:ImRect):Bool { })
	function contains(p:ImVec2):Bool;
	@:native("ClipWithFull")
	function clipWithFull(r:ImRect):Void;
	@:native("ClipWith")
	function clipWith(r:ImRect):Void;
	@:native("Add")
	@:overload(function(r:ImRect):Void { })
	function add(p:ImVec2):Void;
}

@:keep @:native("ImGuiWindowTempData") extern class ImGuiWindowTempData {
	@:native("CursorPos")
	var cursorPos : ImVec2;
	@:native("CursorPosPrevLine")
	var cursorPosPrevLine : ImVec2;
	@:native("CursorStartPos")
	var cursorStartPos : ImVec2;
	@:native("CursorMaxPos")
	var cursorMaxPos : ImVec2;
	@:native("IdealMaxPos")
	var idealMaxPos : ImVec2;
	@:native("CurrLineSize")
	var currLineSize : ImVec2;
	@:native("PrevLineSize")
	var prevLineSize : ImVec2;
	@:native("CurrLineTextBaseOffset")
	var currLineTextBaseOffset : imguijs.Float32;
	@:native("PrevLineTextBaseOffset")
	var prevLineTextBaseOffset : imguijs.Float32;
	@:native("Indent")
	var indent : ImVec1;
	@:native("ColumnsOffset")
	var columnsOffset : ImVec1;
	@:native("GroupOffset")
	var groupOffset : ImVec1;
	@:native("LastItemId")
	var lastItemId : ImGuiID;
	@:native("LastItemStatusFlags")
	var lastItemStatusFlags : ImGuiItemStatusFlags;
	@:native("LastItemRect")
	var lastItemRect : ImRect;
	@:native("LastItemDisplayRect")
	var lastItemDisplayRect : ImRect;
	@:native("NavLayerCurrent")
	var navLayerCurrent : ImGuiNavLayer;
	@:native("NavLayerActiveMask")
	var navLayerActiveMask : Int;
	@:native("NavLayerActiveMaskNext")
	var navLayerActiveMaskNext : Int;
	@:native("NavFocusScopeIdCurrent")
	var navFocusScopeIdCurrent : ImGuiID;
	@:native("NavHideHighlightOneFrame")
	var navHideHighlightOneFrame : Bool;
	@:native("NavHasScroll")
	var navHasScroll : Bool;
	@:native("MenuBarAppending")
	var menuBarAppending : Bool;
	@:native("MenuBarOffset")
	var menuBarOffset : ImVec2;
	@:native("MenuColumns")
	var menuColumns : ImGuiMenuColumns;
	@:native("TreeDepth")
	var treeDepth : Int;
	@:native("TreeJumpToParentOnPopMask")
	var treeJumpToParentOnPopMask : ImU32;
	@:native("ChildWindows")
	var childWindows : imguijs.Star<ImVectorImGuiWindowPointer>;
	@:native("StateStorage")
	var stateStorage : ImGuiStorage;
	@:native("CurrentColumns")
	var currentColumns : ImGuiOldColumns;
	@:native("CurrentTableIdx")
	var currentTableIdx : Int;
	@:native("LayoutType")
	var layoutType : ImGuiLayoutType;
	@:native("ParentLayoutType")
	var parentLayoutType : ImGuiLayoutType;
	@:native("FocusCounterRegular")
	var focusCounterRegular : Int;
	@:native("FocusCounterTabStop")
	var focusCounterTabStop : Int;
	@:native("ItemFlags")
	var itemFlags : ImGuiItemFlags;
	@:native("ItemWidth")
	var itemWidth : imguijs.Float32;
	@:native("TextWrapPos")
	var textWrapPos : imguijs.Float32;
	@:native("ItemWidthStack")
	var itemWidthStack : ImVectorfloat;
	@:native("TextWrapPosStack")
	var textWrapPosStack : ImVectorfloat;
	@:native("StackSizesOnBegin")
	var stackSizesOnBegin : ImGuiStackSizes;
}

@:keep @:native("ImGuiWindowSettings") extern class ImGuiWindowSettings {
	@:native("ID")
	var iD : ImGuiID;
	@:native("Pos")
	var pos : ImVec2ih;
	@:native("Size")
	var size : ImVec2ih;
	@:native("Collapsed")
	var collapsed : Bool;
	@:native("WantApply")
	var wantApply : Bool;
	@:native("ImGuiWindowSettings")
	static inline extern overload function create():ImGuiWindowSettings {
		return js.Syntax.code("new ImGui.ImGuiWindowSettings()");
	}
	@:native("GetName")
	function getName():imguijs.Char;
}

@:keep @:native("ImGuiWindow") extern class ImGuiWindow {
	@:native("Name")
	var name : imguijs.Char;
	@:native("ID")
	var iD : ImGuiID;
	@:native("Flags")
	var flags : ImGuiWindowFlags;
	@:native("Pos")
	var pos : ImVec2;
	@:native("Size")
	var size : ImVec2;
	@:native("SizeFull")
	var sizeFull : ImVec2;
	@:native("ContentSize")
	var contentSize : ImVec2;
	@:native("ContentSizeIdeal")
	var contentSizeIdeal : ImVec2;
	@:native("ContentSizeExplicit")
	var contentSizeExplicit : ImVec2;
	@:native("WindowPadding")
	var windowPadding : ImVec2;
	@:native("WindowRounding")
	var windowRounding : imguijs.Float32;
	@:native("WindowBorderSize")
	var windowBorderSize : imguijs.Float32;
	@:native("NameBufLen")
	var nameBufLen : Int;
	@:native("MoveId")
	var moveId : ImGuiID;
	@:native("ChildId")
	var childId : ImGuiID;
	@:native("Scroll")
	var scroll : ImVec2;
	@:native("ScrollMax")
	var scrollMax : ImVec2;
	@:native("ScrollTarget")
	var scrollTarget : ImVec2;
	@:native("ScrollTargetCenterRatio")
	var scrollTargetCenterRatio : ImVec2;
	@:native("ScrollTargetEdgeSnapDist")
	var scrollTargetEdgeSnapDist : ImVec2;
	@:native("ScrollbarSizes")
	var scrollbarSizes : ImVec2;
	@:native("ScrollbarX")
	var scrollbarX : Bool;
	@:native("ScrollbarY")
	var scrollbarY : Bool;
	@:native("Active")
	var active : Bool;
	@:native("WasActive")
	var wasActive : Bool;
	@:native("WriteAccessed")
	var writeAccessed : Bool;
	@:native("Collapsed")
	var collapsed : Bool;
	@:native("WantCollapseToggle")
	var wantCollapseToggle : Bool;
	@:native("SkipItems")
	var skipItems : Bool;
	@:native("Appearing")
	var appearing : Bool;
	@:native("Hidden")
	var hidden : Bool;
	@:native("IsFallbackWindow")
	var isFallbackWindow : Bool;
	@:native("HasCloseButton")
	var hasCloseButton : Bool;
	@:native("ResizeBorderHeld")
	var resizeBorderHeld : imguijs.Int8;
	@:native("BeginCount")
	var beginCount : imguijs.Int16;
	@:native("BeginOrderWithinParent")
	var beginOrderWithinParent : imguijs.Int16;
	@:native("BeginOrderWithinContext")
	var beginOrderWithinContext : imguijs.Int16;
	@:native("PopupId")
	var popupId : ImGuiID;
	@:native("AutoFitFramesX")
	var autoFitFramesX : ImS8;
	@:native("AutoFitFramesY")
	var autoFitFramesY : ImS8;
	@:native("AutoFitChildAxises")
	var autoFitChildAxises : ImS8;
	@:native("AutoFitOnlyGrows")
	var autoFitOnlyGrows : Bool;
	@:native("AutoPosLastDirection")
	var autoPosLastDirection : ImGuiDir;
	@:native("HiddenFramesCanSkipItems")
	var hiddenFramesCanSkipItems : ImS8;
	@:native("HiddenFramesCannotSkipItems")
	var hiddenFramesCannotSkipItems : ImS8;
	@:native("HiddenFramesForRenderOnly")
	var hiddenFramesForRenderOnly : ImS8;
	@:native("SetWindowPosAllowFlags")
	var setWindowPosAllowFlags : ImGuiCond;
	@:native("SetWindowSizeAllowFlags")
	var setWindowSizeAllowFlags : ImGuiCond;
	@:native("SetWindowCollapsedAllowFlags")
	var setWindowCollapsedAllowFlags : ImGuiCond;
	@:native("SetWindowPosVal")
	var setWindowPosVal : ImVec2;
	@:native("SetWindowPosPivot")
	var setWindowPosPivot : ImVec2;
	@:native("IDStack")
	var iDStack : ImVectorImGuiID;
	@:native("DC")
	var dC : ImGuiWindowTempData;
	@:native("OuterRectClipped")
	var outerRectClipped : ImRect;
	@:native("InnerRect")
	var innerRect : ImRect;
	@:native("InnerClipRect")
	var innerClipRect : ImRect;
	@:native("WorkRect")
	var workRect : ImRect;
	@:native("ParentWorkRect")
	var parentWorkRect : ImRect;
	@:native("ClipRect")
	var clipRect : ImRect;
	@:native("ContentRegionRect")
	var contentRegionRect : ImRect;
	@:native("HitTestHoleSize")
	var hitTestHoleSize : ImVec2ih;
	@:native("HitTestHoleOffset")
	var hitTestHoleOffset : ImVec2ih;
	@:native("LastFrameActive")
	var lastFrameActive : Int;
	@:native("LastTimeActive")
	var lastTimeActive : imguijs.Float32;
	@:native("ItemWidthDefault")
	var itemWidthDefault : imguijs.Float32;
	@:native("StateStorage")
	var stateStorage : ImGuiStorage;
	@:native("ColumnsStorage")
	var columnsStorage : ImVectorImGuiOldColumns;
	@:native("FontWindowScale")
	var fontWindowScale : imguijs.Float32;
	@:native("SettingsOffset")
	var settingsOffset : Int;
	@:native("DrawList")
	var drawList : ImDrawList;
	@:native("DrawListInst")
	var drawListInst : ImDrawList;
	@:native("ParentWindow")
	var parentWindow : ImGuiWindow;
	@:native("RootWindow")
	var rootWindow : ImGuiWindow;
	@:native("RootWindowForTitleBarHighlight")
	var rootWindowForTitleBarHighlight : ImGuiWindow;
	@:native("RootWindowForNav")
	var rootWindowForNav : ImGuiWindow;
	@:native("NavLastChildNavWindow")
	var navLastChildNavWindow : ImGuiWindow;
	@:native("NavLastIds")
	var navLastIds : ImGuiID;
	@:native("NavRectRel")
	var navRectRel : ImRect;
	@:native("MemoryDrawListIdxCapacity")
	var memoryDrawListIdxCapacity : Int;
	@:native("MemoryDrawListVtxCapacity")
	var memoryDrawListVtxCapacity : Int;
	@:native("MemoryCompacted")
	var memoryCompacted : Bool;
	@:native("TitleBarRect")
	function titleBarRect(pOut:ImRect, self:ImGuiWindow):Void;
	@:native("TitleBarHeight")
	function titleBarHeight():imguijs.Float32;
	@:native("Rect")
	function rect(pOut:ImRect, self:ImGuiWindow):Void;
	@:native("MenuBarRect")
	function menuBarRect(pOut:ImRect, self:ImGuiWindow):Void;
	@:native("MenuBarHeight")
	function menuBarHeight():imguijs.Float32;
	@:native("ImGuiWindow")
	static inline extern overload function create(context:ImGuiContext, name:String):ImGuiWindow {
		return js.Syntax.code("new ImGui.ImGuiWindow({0}, {1})", context, name);
	}
	@:native("GetIDNoKeepAlive")
	@:overload(function(str:String):ImGuiID { })
	@:overload(function(ptr:imguijs.VoidPointer):ImGuiID { })
	@:overload(function(n:Int):ImGuiID { })
	function getIDNoKeepAlive(str:String, str_end:String):ImGuiID;
	@:native("GetIDFromRectangle")
	function getIDFromRectangle(r_abs:ImRect):ImGuiID;
	@:native("GetID")
	@:overload(function(str:String):ImGuiID { })
	@:overload(function(ptr:imguijs.VoidPointer):ImGuiID { })
	@:overload(function(n:Int):ImGuiID { })
	function getID(str:String, str_end:String):ImGuiID;
	@:native("CalcFontSize")
	function calcFontSize():imguijs.Float32;
}

@:keep @:native("ImGuiTextRange") extern class ImGuiTextRange {
	@:native("b")
	var b : String;
	@:native("e")
	var e : String;
	@:native("split")
	function split(separator:imguijs.Char, out:ImVectorImGuiTextRangePointer):Void;
	@:native("empty")
	function empty():Bool;
	@:native("ImGuiTextRange")
	static inline extern overload function create(_b:String, _e:String):ImGuiTextRange {
		return js.Syntax.code("new ImGui.ImGuiTextRange({0}, {1})", _b, _e);
	}
	@:native("ImGuiTextRange")
	static inline extern overload function create():ImGuiTextRange {
		return js.Syntax.code("new ImGui.ImGuiTextRange()");
	}
}

@:keep @:native("ImGuiTextFilter") extern class ImGuiTextFilter {
	@:native("InputBuf")
	var inputBuf : imguijs.Char;
	@:native("Filters")
	var filters : ImVectorImGuiTextRange;
	@:native("CountGrep")
	var countGrep : Int;
	@:native("PassFilter")
	@:overload(function(text:String):Bool { })
	function passFilter(text:String, text_end:String):Bool;
	@:native("IsActive")
	function isActive():Bool;
	@:native("ImGuiTextFilter")
	static inline extern overload function create(default_filter:String):ImGuiTextFilter {
		return js.Syntax.code("new ImGui.ImGuiTextFilter({0})", default_filter);
	}
	@:native("Draw")
	@:overload(function(width:imguijs.Float32):Bool { })
	@:overload(function():Bool { })
	function draw(label:String, width:imguijs.Float32):Bool;
	@:native("Clear")
	function clear():Void;
	@:native("Build")
	function build():Void;
}

@:keep @:native("ImGuiTextBuffer") extern class ImGuiTextBuffer {
	@:native("Buf")
	var buf : ImVectorchar;
	@:native("size")
	function size():Int;
	@:native("reserve")
	function reserve(capacity:Int):Void;
	@:native("end")
	function end():String;
	@:native("empty")
	function empty():Bool;
	@:native("clear")
	function clear():Void;
	@:native("c_str")
	function c_str():String;
	@:native("begin")
	function begin():String;
	@:native("appendfv")
	function appendfv(fmt:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:native("appendf")
	function appendf(fmt:String, vargs:haxe.extern.Rest<Dynamic>):Void;
	@:native("append")
	@:overload(function(str:String):Void { })
	function append(str:String, str_end:String):Void;
	@:native("ImGuiTextBuffer")
	static inline extern overload function create():ImGuiTextBuffer {
		return js.Syntax.code("new ImGui.ImGuiTextBuffer()");
	}
}

@:keep @:native("ImGuiTableSortSpecs") extern class ImGuiTableSortSpecs {
	@:native("Specs")
	var specs : ImGuiTableColumnSortSpecs;
	@:native("SpecsCount")
	var specsCount : Int;
	@:native("SpecsDirty")
	var specsDirty : Bool;
	@:native("ImGuiTableSortSpecs")
	static inline extern overload function create():ImGuiTableSortSpecs {
		return js.Syntax.code("new ImGui.ImGuiTableSortSpecs()");
	}
}

@:keep @:native("ImGuiTableSettings") extern class ImGuiTableSettings {
	@:native("ID")
	var iD : ImGuiID;
	@:native("SaveFlags")
	var saveFlags : ImGuiTableFlags;
	@:native("RefScale")
	var refScale : imguijs.Float32;
	@:native("ColumnsCount")
	var columnsCount : ImGuiTableColumnIdx;
	@:native("ColumnsCountMax")
	var columnsCountMax : ImGuiTableColumnIdx;
	@:native("WantApply")
	var wantApply : Bool;
	@:native("ImGuiTableSettings")
	static inline extern overload function create():ImGuiTableSettings {
		return js.Syntax.code("new ImGui.ImGuiTableSettings()");
	}
	@:native("GetColumnSettings")
	function getColumnSettings():ImGuiTableColumnSettings;
}

@:keep @:native("ImGuiTableColumnSortSpecs") extern class ImGuiTableColumnSortSpecs {
	@:native("ColumnUserID")
	var columnUserID : ImGuiID;
	@:native("ColumnIndex")
	var columnIndex : ImS16;
	@:native("SortOrder")
	var sortOrder : ImS16;
	@:native("SortDirection")
	var sortDirection : ImGuiSortDirection;
	@:native("ImGuiTableColumnSortSpecs")
	static inline extern overload function create():ImGuiTableColumnSortSpecs {
		return js.Syntax.code("new ImGui.ImGuiTableColumnSortSpecs()");
	}
}

@:keep @:native("ImGuiTableColumnSettings") extern class ImGuiTableColumnSettings {
	@:native("WidthOrWeight")
	var widthOrWeight : imguijs.Float32;
	@:native("UserID")
	var userID : ImGuiID;
	@:native("Index")
	var index : ImGuiTableColumnIdx;
	@:native("DisplayOrder")
	var displayOrder : ImGuiTableColumnIdx;
	@:native("SortOrder")
	var sortOrder : ImGuiTableColumnIdx;
	@:native("SortDirection")
	var sortDirection : ImU8;
	@:native("IsEnabled")
	var isEnabled : ImU8;
	@:native("IsStretch")
	var isStretch : ImU8;
	@:native("ImGuiTableColumnSettings")
	static inline extern overload function create():ImGuiTableColumnSettings {
		return js.Syntax.code("new ImGui.ImGuiTableColumnSettings()");
	}
}

@:keep @:native("ImGuiTableColumn") extern class ImGuiTableColumn {
	@:native("Flags")
	var flags : ImGuiTableColumnFlags;
	@:native("WidthGiven")
	var widthGiven : imguijs.Float32;
	@:native("MinX")
	var minX : imguijs.Float32;
	@:native("MaxX")
	var maxX : imguijs.Float32;
	@:native("WidthRequest")
	var widthRequest : imguijs.Float32;
	@:native("WidthAuto")
	var widthAuto : imguijs.Float32;
	@:native("StretchWeight")
	var stretchWeight : imguijs.Float32;
	@:native("InitStretchWeightOrWidth")
	var initStretchWeightOrWidth : imguijs.Float32;
	@:native("ClipRect")
	var clipRect : ImRect;
	@:native("UserID")
	var userID : ImGuiID;
	@:native("WorkMinX")
	var workMinX : imguijs.Float32;
	@:native("WorkMaxX")
	var workMaxX : imguijs.Float32;
	@:native("ItemWidth")
	var itemWidth : imguijs.Float32;
	@:native("ContentMaxXFrozen")
	var contentMaxXFrozen : imguijs.Float32;
	@:native("ContentMaxXUnfrozen")
	var contentMaxXUnfrozen : imguijs.Float32;
	@:native("ContentMaxXHeadersUsed")
	var contentMaxXHeadersUsed : imguijs.Float32;
	@:native("ContentMaxXHeadersIdeal")
	var contentMaxXHeadersIdeal : imguijs.Float32;
	@:native("NameOffset")
	var nameOffset : ImS16;
	@:native("DisplayOrder")
	var displayOrder : ImGuiTableColumnIdx;
	@:native("IndexWithinEnabledSet")
	var indexWithinEnabledSet : ImGuiTableColumnIdx;
	@:native("PrevEnabledColumn")
	var prevEnabledColumn : ImGuiTableColumnIdx;
	@:native("NextEnabledColumn")
	var nextEnabledColumn : ImGuiTableColumnIdx;
	@:native("SortOrder")
	var sortOrder : ImGuiTableColumnIdx;
	@:native("DrawChannelCurrent")
	var drawChannelCurrent : ImGuiTableDrawChannelIdx;
	@:native("DrawChannelFrozen")
	var drawChannelFrozen : ImGuiTableDrawChannelIdx;
	@:native("DrawChannelUnfrozen")
	var drawChannelUnfrozen : ImGuiTableDrawChannelIdx;
	@:native("IsEnabled")
	var isEnabled : Bool;
	@:native("IsEnabledNextFrame")
	var isEnabledNextFrame : Bool;
	@:native("IsVisibleX")
	var isVisibleX : Bool;
	@:native("IsVisibleY")
	var isVisibleY : Bool;
	@:native("IsRequestOutput")
	var isRequestOutput : Bool;
	@:native("IsSkipItems")
	var isSkipItems : Bool;
	@:native("IsPreserveWidthAuto")
	var isPreserveWidthAuto : Bool;
	@:native("NavLayerCurrent")
	var navLayerCurrent : ImS8;
	@:native("AutoFitQueue")
	var autoFitQueue : ImU8;
	@:native("CannotSkipItemsQueue")
	var cannotSkipItemsQueue : ImU8;
	@:native("SortDirection")
	var sortDirection : ImU8;
	@:native("SortDirectionsAvailCount")
	var sortDirectionsAvailCount : ImU8;
	@:native("SortDirectionsAvailMask")
	var sortDirectionsAvailMask : ImU8;
	@:native("SortDirectionsAvailList")
	var sortDirectionsAvailList : ImU8;
	@:native("ImGuiTableColumn")
	static inline extern overload function create():ImGuiTableColumn {
		return js.Syntax.code("new ImGui.ImGuiTableColumn()");
	}
}

@:keep @:native("ImGuiTableCellData") extern class ImGuiTableCellData {
	@:native("BgColor")
	var bgColor : ImU32;
	@:native("Column")
	var column : ImGuiTableColumnIdx;
}

@:keep @:native("ImGuiTable") extern class ImGuiTable {
	@:native("ID")
	var iD : ImGuiID;
	@:native("Flags")
	var flags : ImGuiTableFlags;
	@:native("RawData")
	var rawData : imguijs.VoidPointer;
	@:native("Columns")
	var columns : ImVectorImGuiTableColumn;
	@:native("DisplayOrderToIndex")
	var displayOrderToIndex : ImVectorImGuiTableColumnIdx;
	@:native("RowCellData")
	var rowCellData : ImVectorImGuiTableCellData;
	@:native("EnabledMaskByDisplayOrder")
	var enabledMaskByDisplayOrder : ImU64;
	@:native("EnabledMaskByIndex")
	var enabledMaskByIndex : ImU64;
	@:native("VisibleMaskByIndex")
	var visibleMaskByIndex : ImU64;
	@:native("RequestOutputMaskByIndex")
	var requestOutputMaskByIndex : ImU64;
	@:native("SettingsLoadedFlags")
	var settingsLoadedFlags : ImGuiTableFlags;
	@:native("SettingsOffset")
	var settingsOffset : Int;
	@:native("LastFrameActive")
	var lastFrameActive : Int;
	@:native("ColumnsCount")
	var columnsCount : Int;
	@:native("CurrentRow")
	var currentRow : Int;
	@:native("CurrentColumn")
	var currentColumn : Int;
	@:native("InstanceCurrent")
	var instanceCurrent : ImS16;
	@:native("InstanceInteracted")
	var instanceInteracted : ImS16;
	@:native("RowPosY1")
	var rowPosY1 : imguijs.Float32;
	@:native("RowPosY2")
	var rowPosY2 : imguijs.Float32;
	@:native("RowMinHeight")
	var rowMinHeight : imguijs.Float32;
	@:native("RowTextBaseline")
	var rowTextBaseline : imguijs.Float32;
	@:native("RowIndentOffsetX")
	var rowIndentOffsetX : imguijs.Float32;
	@:native("RowFlags")
	var rowFlags : ImGuiTableRowFlags;
	@:native("LastRowFlags")
	var lastRowFlags : ImGuiTableRowFlags;
	@:native("RowBgColorCounter")
	var rowBgColorCounter : Int;
	@:native("RowBgColor")
	var rowBgColor : ImU32;
	@:native("BorderColorStrong")
	var borderColorStrong : ImU32;
	@:native("BorderColorLight")
	var borderColorLight : ImU32;
	@:native("BorderX1")
	var borderX1 : imguijs.Float32;
	@:native("BorderX2")
	var borderX2 : imguijs.Float32;
	@:native("HostIndentX")
	var hostIndentX : imguijs.Float32;
	@:native("MinColumnWidth")
	var minColumnWidth : imguijs.Float32;
	@:native("OuterPaddingX")
	var outerPaddingX : imguijs.Float32;
	@:native("CellPaddingX")
	var cellPaddingX : imguijs.Float32;
	@:native("CellPaddingY")
	var cellPaddingY : imguijs.Float32;
	@:native("CellSpacingX1")
	var cellSpacingX1 : imguijs.Float32;
	@:native("CellSpacingX2")
	var cellSpacingX2 : imguijs.Float32;
	@:native("LastOuterHeight")
	var lastOuterHeight : imguijs.Float32;
	@:native("LastFirstRowHeight")
	var lastFirstRowHeight : imguijs.Float32;
	@:native("InnerWidth")
	var innerWidth : imguijs.Float32;
	@:native("ColumnsGivenWidth")
	var columnsGivenWidth : imguijs.Float32;
	@:native("ColumnsAutoFitWidth")
	var columnsAutoFitWidth : imguijs.Float32;
	@:native("ResizedColumnNextWidth")
	var resizedColumnNextWidth : imguijs.Float32;
	@:native("ResizeLockMinContentsX2")
	var resizeLockMinContentsX2 : imguijs.Float32;
	@:native("RefScale")
	var refScale : imguijs.Float32;
	@:native("OuterRect")
	var outerRect : ImRect;
	@:native("InnerRect")
	var innerRect : ImRect;
	@:native("WorkRect")
	var workRect : ImRect;
	@:native("InnerClipRect")
	var innerClipRect : ImRect;
	@:native("BgClipRect")
	var bgClipRect : ImRect;
	@:native("Bg0ClipRectForDrawCmd")
	var bg0ClipRectForDrawCmd : ImRect;
	@:native("Bg2ClipRectForDrawCmd")
	var bg2ClipRectForDrawCmd : ImRect;
	@:native("HostClipRect")
	var hostClipRect : ImRect;
	@:native("HostBackupWorkRect")
	var hostBackupWorkRect : ImRect;
	@:native("HostBackupParentWorkRect")
	var hostBackupParentWorkRect : ImRect;
	@:native("HostBackupInnerClipRect")
	var hostBackupInnerClipRect : ImRect;
	@:native("HostBackupPrevLineSize")
	var hostBackupPrevLineSize : ImVec2;
	@:native("HostBackupCurrLineSize")
	var hostBackupCurrLineSize : ImVec2;
	@:native("HostBackupCursorMaxPos")
	var hostBackupCursorMaxPos : ImVec2;
	@:native("UserOuterSize")
	var userOuterSize : ImVec2;
	@:native("HostBackupColumnsOffset")
	var hostBackupColumnsOffset : ImVec1;
	@:native("HostBackupItemWidth")
	var hostBackupItemWidth : imguijs.Float32;
	@:native("HostBackupItemWidthStackSize")
	var hostBackupItemWidthStackSize : Int;
	@:native("OuterWindow")
	var outerWindow : ImGuiWindow;
	@:native("InnerWindow")
	var innerWindow : ImGuiWindow;
	@:native("ColumnsNames")
	var columnsNames : ImGuiTextBuffer;
	@:native("DrawSplitter")
	var drawSplitter : ImDrawListSplitter;
	@:native("SortSpecsSingle")
	var sortSpecsSingle : ImGuiTableColumnSortSpecs;
	@:native("SortSpecsMulti")
	var sortSpecsMulti : ImVectorImGuiTableColumnSortSpecs;
	@:native("SortSpecs")
	var sortSpecs : ImGuiTableSortSpecs;
	@:native("SortSpecsCount")
	var sortSpecsCount : ImGuiTableColumnIdx;
	@:native("ColumnsEnabledCount")
	var columnsEnabledCount : ImGuiTableColumnIdx;
	@:native("ColumnsEnabledFixedCount")
	var columnsEnabledFixedCount : ImGuiTableColumnIdx;
	@:native("DeclColumnsCount")
	var declColumnsCount : ImGuiTableColumnIdx;
	@:native("HoveredColumnBody")
	var hoveredColumnBody : ImGuiTableColumnIdx;
	@:native("HoveredColumnBorder")
	var hoveredColumnBorder : ImGuiTableColumnIdx;
	@:native("AutoFitSingleColumn")
	var autoFitSingleColumn : ImGuiTableColumnIdx;
	@:native("ResizedColumn")
	var resizedColumn : ImGuiTableColumnIdx;
	@:native("LastResizedColumn")
	var lastResizedColumn : ImGuiTableColumnIdx;
	@:native("HeldHeaderColumn")
	var heldHeaderColumn : ImGuiTableColumnIdx;
	@:native("ReorderColumn")
	var reorderColumn : ImGuiTableColumnIdx;
	@:native("ReorderColumnDir")
	var reorderColumnDir : ImGuiTableColumnIdx;
	@:native("LeftMostStretchedColumn")
	var leftMostStretchedColumn : ImGuiTableColumnIdx;
	@:native("RightMostStretchedColumn")
	var rightMostStretchedColumn : ImGuiTableColumnIdx;
	@:native("RightMostEnabledColumn")
	var rightMostEnabledColumn : ImGuiTableColumnIdx;
	@:native("ContextPopupColumn")
	var contextPopupColumn : ImGuiTableColumnIdx;
	@:native("FreezeRowsRequest")
	var freezeRowsRequest : ImGuiTableColumnIdx;
	@:native("FreezeRowsCount")
	var freezeRowsCount : ImGuiTableColumnIdx;
	@:native("FreezeColumnsRequest")
	var freezeColumnsRequest : ImGuiTableColumnIdx;
	@:native("FreezeColumnsCount")
	var freezeColumnsCount : ImGuiTableColumnIdx;
	@:native("RowCellDataCurrent")
	var rowCellDataCurrent : ImGuiTableColumnIdx;
	@:native("DummyDrawChannel")
	var dummyDrawChannel : ImGuiTableDrawChannelIdx;
	@:native("Bg2DrawChannelCurrent")
	var bg2DrawChannelCurrent : ImGuiTableDrawChannelIdx;
	@:native("Bg2DrawChannelUnfrozen")
	var bg2DrawChannelUnfrozen : ImGuiTableDrawChannelIdx;
	@:native("IsLayoutLocked")
	var isLayoutLocked : Bool;
	@:native("IsInsideRow")
	var isInsideRow : Bool;
	@:native("IsInitializing")
	var isInitializing : Bool;
	@:native("IsSortSpecsDirty")
	var isSortSpecsDirty : Bool;
	@:native("IsUsingHeaders")
	var isUsingHeaders : Bool;
	@:native("IsContextPopupOpen")
	var isContextPopupOpen : Bool;
	@:native("IsSettingsRequestLoad")
	var isSettingsRequestLoad : Bool;
	@:native("IsSettingsDirty")
	var isSettingsDirty : Bool;
	@:native("IsDefaultDisplayOrder")
	var isDefaultDisplayOrder : Bool;
	@:native("IsResetAllRequest")
	var isResetAllRequest : Bool;
	@:native("IsResetDisplayOrderRequest")
	var isResetDisplayOrderRequest : Bool;
	@:native("IsUnfrozenRows")
	var isUnfrozenRows : Bool;
	@:native("IsDefaultSizingPolicy")
	var isDefaultSizingPolicy : Bool;
	@:native("MemoryCompacted")
	var memoryCompacted : Bool;
	@:native("HostSkipItems")
	var hostSkipItems : Bool;
	@:native("ImGuiTable")
	static inline extern overload function create():ImGuiTable {
		return js.Syntax.code("new ImGui.ImGuiTable()");
	}
}

@:keep @:native("ImGuiTabItem") extern class ImGuiTabItem {
	@:native("ID")
	var iD : ImGuiID;
	@:native("Flags")
	var flags : ImGuiTabItemFlags;
	@:native("LastFrameVisible")
	var lastFrameVisible : Int;
	@:native("LastFrameSelected")
	var lastFrameSelected : Int;
	@:native("Offset")
	var offset : imguijs.Float32;
	@:native("Width")
	var width : imguijs.Float32;
	@:native("ContentWidth")
	var contentWidth : imguijs.Float32;
	@:native("NameOffset")
	var nameOffset : ImS16;
	@:native("BeginOrder")
	var beginOrder : ImS16;
	@:native("IndexDuringLayout")
	var indexDuringLayout : ImS16;
	@:native("WantClose")
	var wantClose : Bool;
	@:native("ImGuiTabItem")
	static inline extern overload function create():ImGuiTabItem {
		return js.Syntax.code("new ImGui.ImGuiTabItem()");
	}
}

@:keep @:native("ImGuiTabBar") extern class ImGuiTabBar {
	@:native("Tabs")
	var tabs : ImVectorImGuiTabItem;
	@:native("Flags")
	var flags : ImGuiTabBarFlags;
	@:native("ID")
	var iD : ImGuiID;
	@:native("SelectedTabId")
	var selectedTabId : ImGuiID;
	@:native("NextSelectedTabId")
	var nextSelectedTabId : ImGuiID;
	@:native("VisibleTabId")
	var visibleTabId : ImGuiID;
	@:native("CurrFrameVisible")
	var currFrameVisible : Int;
	@:native("PrevFrameVisible")
	var prevFrameVisible : Int;
	@:native("BarRect")
	var barRect : ImRect;
	@:native("CurrTabsContentsHeight")
	var currTabsContentsHeight : imguijs.Float32;
	@:native("PrevTabsContentsHeight")
	var prevTabsContentsHeight : imguijs.Float32;
	@:native("WidthAllTabs")
	var widthAllTabs : imguijs.Float32;
	@:native("WidthAllTabsIdeal")
	var widthAllTabsIdeal : imguijs.Float32;
	@:native("ScrollingAnim")
	var scrollingAnim : imguijs.Float32;
	@:native("ScrollingTarget")
	var scrollingTarget : imguijs.Float32;
	@:native("ScrollingTargetDistToVisibility")
	var scrollingTargetDistToVisibility : imguijs.Float32;
	@:native("ScrollingSpeed")
	var scrollingSpeed : imguijs.Float32;
	@:native("ScrollingRectMinX")
	var scrollingRectMinX : imguijs.Float32;
	@:native("ScrollingRectMaxX")
	var scrollingRectMaxX : imguijs.Float32;
	@:native("ReorderRequestTabId")
	var reorderRequestTabId : ImGuiID;
	@:native("ReorderRequestDir")
	var reorderRequestDir : ImS8;
	@:native("BeginCount")
	var beginCount : ImS8;
	@:native("WantLayout")
	var wantLayout : Bool;
	@:native("VisibleTabWasSubmitted")
	var visibleTabWasSubmitted : Bool;
	@:native("TabsAddedNew")
	var tabsAddedNew : Bool;
	@:native("TabsActiveCount")
	var tabsActiveCount : ImS16;
	@:native("LastTabItemIdx")
	var lastTabItemIdx : ImS16;
	@:native("ItemSpacingY")
	var itemSpacingY : imguijs.Float32;
	@:native("FramePadding")
	var framePadding : ImVec2;
	@:native("BackupCursorPos")
	var backupCursorPos : ImVec2;
	@:native("TabsNames")
	var tabsNames : ImGuiTextBuffer;
	@:native("ImGuiTabBar")
	static inline extern overload function create():ImGuiTabBar {
		return js.Syntax.code("new ImGui.ImGuiTabBar()");
	}
	@:native("GetTabOrder")
	function getTabOrder(tab:ImGuiTabItem):Int;
	@:native("GetTabName")
	function getTabName(tab:ImGuiTabItem):String;
}

@:keep @:native("ImGuiStyleMod") extern class ImGuiStyleMod {
	@:native("VarIdx")
	var varIdx : ImGuiStyleVar;
	@:native("ImGuiStyleMod")
	static inline extern overload function create(idx:ImGuiStyleVar, v:imguijs.Float32):ImGuiStyleMod {
		return js.Syntax.code("new ImGui.ImGuiStyleMod({0}, {1})", idx, v);
	}
	@:native("ImGuiStyleMod")
	static inline extern overload function create(idx:ImGuiStyleVar, v:ImVec2):ImGuiStyleMod {
		return js.Syntax.code("new ImGui.ImGuiStyleMod({0}, {1})", idx, v);
	}
	@:native("ImGuiStyleMod")
	static inline extern overload function create(idx:ImGuiStyleVar, v:Int):ImGuiStyleMod {
		return js.Syntax.code("new ImGui.ImGuiStyleMod({0}, {1})", idx, v);
	}
}

@:keep @:native("ImGuiStyle") extern class ImGuiStyle {
	@:native("Alpha")
	var alpha : imguijs.Float32;
	@:native("WindowPadding")
	var windowPadding : ImVec2;
	@:native("WindowRounding")
	var windowRounding : imguijs.Float32;
	@:native("WindowBorderSize")
	var windowBorderSize : imguijs.Float32;
	@:native("WindowMinSize")
	var windowMinSize : ImVec2;
	@:native("WindowTitleAlign")
	var windowTitleAlign : ImVec2;
	@:native("WindowMenuButtonPosition")
	var windowMenuButtonPosition : ImGuiDir;
	@:native("ChildRounding")
	var childRounding : imguijs.Float32;
	@:native("ChildBorderSize")
	var childBorderSize : imguijs.Float32;
	@:native("PopupRounding")
	var popupRounding : imguijs.Float32;
	@:native("PopupBorderSize")
	var popupBorderSize : imguijs.Float32;
	@:native("FramePadding")
	var framePadding : ImVec2;
	@:native("FrameRounding")
	var frameRounding : imguijs.Float32;
	@:native("FrameBorderSize")
	var frameBorderSize : imguijs.Float32;
	@:native("ItemSpacing")
	var itemSpacing : ImVec2;
	@:native("ItemInnerSpacing")
	var itemInnerSpacing : ImVec2;
	@:native("CellPadding")
	var cellPadding : ImVec2;
	@:native("TouchExtraPadding")
	var touchExtraPadding : ImVec2;
	@:native("IndentSpacing")
	var indentSpacing : imguijs.Float32;
	@:native("ColumnsMinSpacing")
	var columnsMinSpacing : imguijs.Float32;
	@:native("ScrollbarSize")
	var scrollbarSize : imguijs.Float32;
	@:native("ScrollbarRounding")
	var scrollbarRounding : imguijs.Float32;
	@:native("GrabMinSize")
	var grabMinSize : imguijs.Float32;
	@:native("GrabRounding")
	var grabRounding : imguijs.Float32;
	@:native("LogSliderDeadzone")
	var logSliderDeadzone : imguijs.Float32;
	@:native("TabRounding")
	var tabRounding : imguijs.Float32;
	@:native("TabBorderSize")
	var tabBorderSize : imguijs.Float32;
	@:native("TabMinWidthForCloseButton")
	var tabMinWidthForCloseButton : imguijs.Float32;
	@:native("ColorButtonPosition")
	var colorButtonPosition : ImGuiDir;
	@:native("ButtonTextAlign")
	var buttonTextAlign : ImVec2;
	@:native("SelectableTextAlign")
	var selectableTextAlign : ImVec2;
	@:native("DisplayWindowPadding")
	var displayWindowPadding : ImVec2;
	@:native("DisplaySafeAreaPadding")
	var displaySafeAreaPadding : ImVec2;
	@:native("MouseCursorScale")
	var mouseCursorScale : imguijs.Float32;
	@:native("AntiAliasedLines")
	var antiAliasedLines : Bool;
	@:native("AntiAliasedLinesUseTex")
	var antiAliasedLinesUseTex : Bool;
	@:native("AntiAliasedFill")
	var antiAliasedFill : Bool;
	@:native("CurveTessellationTol")
	var curveTessellationTol : imguijs.Float32;
	@:native("CircleSegmentMaxError")
	var circleSegmentMaxError : imguijs.Float32;
	@:native("Colors")
	var colors : ImVec4;
	@:native("ScaleAllSizes")
	function scaleAllSizes(scale_factor:imguijs.Float32):Void;
	@:native("ImGuiStyle")
	static inline extern overload function create():ImGuiStyle {
		return js.Syntax.code("new ImGui.ImGuiStyle()");
	}
}

@:keep @:native("ImGuiStoragePair") extern class ImGuiStoragePair {
	@:native("key")
	var key : ImGuiID;
	@:native("ImGuiStoragePair")
	static inline extern overload function create(_key:ImGuiID, _val_f:imguijs.Float32):ImGuiStoragePair {
		return js.Syntax.code("new ImGui.ImGuiStoragePair({0}, {1})", _key, _val_f);
	}
	@:native("ImGuiStoragePair")
	static inline extern overload function create(_key:ImGuiID, _val_p:imguijs.VoidPointer):ImGuiStoragePair {
		return js.Syntax.code("new ImGui.ImGuiStoragePair({0}, {1})", _key, _val_p);
	}
	@:native("ImGuiStoragePair")
	static inline extern overload function create(_key:ImGuiID, _val_i:Int):ImGuiStoragePair {
		return js.Syntax.code("new ImGui.ImGuiStoragePair({0}, {1})", _key, _val_i);
	}
}

@:keep @:native("ImGuiStorage") extern class ImGuiStorage {
	@:native("Data")
	var data : ImVectorImGuiStoragePair;
	@:native("SetVoidPtr")
	function setVoidPtr(key:ImGuiID, val:imguijs.VoidPointer):Void;
	@:native("SetInt")
	function setInt(key:ImGuiID, val:Int):Void;
	@:native("SetFloat")
	function setFloat(key:ImGuiID, val:imguijs.Float32):Void;
	@:native("SetBool")
	function setBool(key:ImGuiID, val:Bool):Void;
	@:native("SetAllInt")
	function setAllInt(val:Int):Void;
	@:native("GetVoidPtrRef")
	@:overload(function(key:ImGuiID):imguijs.Star<imguijs.Star<Void>> { })
	function getVoidPtrRef(key:ImGuiID, default_val:imguijs.VoidPointer):imguijs.Star<imguijs.Star<Void>>;
	@:native("GetVoidPtr")
	function getVoidPtr(key:ImGuiID):imguijs.VoidPointer;
	@:native("GetIntRef")
	@:overload(function(key:ImGuiID):imguijs.IntPointer { })
	function getIntRef(key:ImGuiID, default_val:Int):imguijs.IntPointer;
	@:native("GetInt")
	@:overload(function(key:ImGuiID):Int { })
	function getInt(key:ImGuiID, default_val:Int):Int;
	@:native("GetFloatRef")
	@:overload(function(key:ImGuiID):imguijs.FloatPointer { })
	function getFloatRef(key:ImGuiID, default_val:imguijs.Float32):imguijs.FloatPointer;
	@:native("GetFloat")
	@:overload(function(key:ImGuiID):imguijs.Float32 { })
	function getFloat(key:ImGuiID, default_val:imguijs.Float32):imguijs.Float32;
	@:native("GetBoolRef")
	@:overload(function(key:ImGuiID):imguijs.BoolPointer { })
	function getBoolRef(key:ImGuiID, default_val:Bool):imguijs.BoolPointer;
	@:native("GetBool")
	@:overload(function(key:ImGuiID):Bool { })
	function getBool(key:ImGuiID, default_val:Bool):Bool;
	@:native("Clear")
	function clear():Void;
	@:native("BuildSortByKey")
	function buildSortByKey():Void;
}

@:keep @:native("ImGuiStackSizes") extern class ImGuiStackSizes {
	@:native("SizeOfIDStack")
	var sizeOfIDStack : imguijs.Int16;
	@:native("SizeOfColorStack")
	var sizeOfColorStack : imguijs.Int16;
	@:native("SizeOfStyleVarStack")
	var sizeOfStyleVarStack : imguijs.Int16;
	@:native("SizeOfFontStack")
	var sizeOfFontStack : imguijs.Int16;
	@:native("SizeOfFocusScopeStack")
	var sizeOfFocusScopeStack : imguijs.Int16;
	@:native("SizeOfGroupStack")
	var sizeOfGroupStack : imguijs.Int16;
	@:native("SizeOfBeginPopupStack")
	var sizeOfBeginPopupStack : imguijs.Int16;
	@:native("SetToCurrentState")
	function setToCurrentState():Void;
	@:native("ImGuiStackSizes")
	static inline extern overload function create():ImGuiStackSizes {
		return js.Syntax.code("new ImGui.ImGuiStackSizes()");
	}
	@:native("CompareWithCurrentState")
	function compareWithCurrentState():Void;
}

@:keep @:native("ImGuiSizeCallbackData") extern class ImGuiSizeCallbackData {
	@:native("UserData")
	var userData : imguijs.VoidPointer;
	@:native("Pos")
	var pos : ImVec2;
	@:native("CurrentSize")
	var currentSize : ImVec2;
	@:native("DesiredSize")
	var desiredSize : ImVec2;
}

@:keep @:native("ImGuiShrinkWidthItem") extern class ImGuiShrinkWidthItem {
	@:native("Index")
	var index : Int;
	@:native("Width")
	var width : imguijs.Float32;
}

@:keep @:native("ImGuiSettingsHandler") extern class ImGuiSettingsHandler {
	@:native("TypeName")
	var typeName : String;
	@:native("TypeHash")
	var typeHash : ImGuiID;
	@:native("ClearAllFn")
	var clearAllFn : imguijs.Callable<(ImGuiContext, ImGuiSettingsHandler) -> Void>;
	@:native("ReadInitFn")
	var readInitFn : imguijs.Callable<(ImGuiContext, ImGuiSettingsHandler) -> Void>;
	@:native("ReadOpenFn")
	var readOpenFn : imguijs.Callable<(ImGuiContext, ImGuiSettingsHandler, String) -> imguijs.VoidPointer>;
	@:native("ReadLineFn")
	var readLineFn : imguijs.Callable<(ImGuiContext, ImGuiSettingsHandler, Dynamic, String) -> Void>;
	@:native("ApplyAllFn")
	var applyAllFn : imguijs.Callable<(ImGuiContext, ImGuiSettingsHandler) -> Void>;
	@:native("WriteAllFn")
	var writeAllFn : imguijs.Callable<(ImGuiContext, ImGuiSettingsHandler, ImGuiTextBuffer) -> Void>;
	@:native("UserData")
	var userData : imguijs.VoidPointer;
	@:native("ImGuiSettingsHandler")
	static inline extern overload function create():ImGuiSettingsHandler {
		return js.Syntax.code("new ImGui.ImGuiSettingsHandler()");
	}
}

@:keep @:native("ImGuiPtrOrIndex") extern class ImGuiPtrOrIndex {
	@:native("Ptr")
	var ptr : imguijs.VoidPointer;
	@:native("Index")
	var index : Int;
	@:native("ImGuiPtrOrIndex")
	static inline extern overload function create(index:Int):ImGuiPtrOrIndex {
		return js.Syntax.code("new ImGui.ImGuiPtrOrIndex({0})", index);
	}
	@:native("ImGuiPtrOrIndex")
	static inline extern overload function create(ptr:imguijs.VoidPointer):ImGuiPtrOrIndex {
		return js.Syntax.code("new ImGui.ImGuiPtrOrIndex({0})", ptr);
	}
}

@:keep @:native("ImGuiPopupData") extern class ImGuiPopupData {
	@:native("PopupId")
	var popupId : ImGuiID;
	@:native("Window")
	var window : ImGuiWindow;
	@:native("SourceWindow")
	var sourceWindow : ImGuiWindow;
	@:native("OpenFrameCount")
	var openFrameCount : Int;
	@:native("OpenParentId")
	var openParentId : ImGuiID;
	@:native("OpenPopupPos")
	var openPopupPos : ImVec2;
	@:native("OpenMousePos")
	var openMousePos : ImVec2;
	@:native("ImGuiPopupData")
	static inline extern overload function create():ImGuiPopupData {
		return js.Syntax.code("new ImGui.ImGuiPopupData()");
	}
}

@:keep @:native("ImGuiPayload") extern class ImGuiPayload {
	@:native("Data")
	var data : imguijs.VoidPointer;
	@:native("DataSize")
	var dataSize : Int;
	@:native("SourceId")
	var sourceId : ImGuiID;
	@:native("SourceParentId")
	var sourceParentId : ImGuiID;
	@:native("DataFrameCount")
	var dataFrameCount : Int;
	@:native("DataType")
	var dataType : imguijs.Char;
	@:native("Preview")
	var preview : Bool;
	@:native("Delivery")
	var delivery : Bool;
	@:native("IsPreview")
	function isPreview():Bool;
	@:native("IsDelivery")
	function isDelivery():Bool;
	@:native("IsDataType")
	function isDataType(type:String):Bool;
	@:native("ImGuiPayload")
	static inline extern overload function create():ImGuiPayload {
		return js.Syntax.code("new ImGui.ImGuiPayload()");
	}
	@:native("Clear")
	function clear():Void;
}

@:keep @:native("ImGuiOnceUponAFrame") extern class ImGuiOnceUponAFrame {
	@:native("RefFrame")
	var refFrame : Int;
	@:native("ImGuiOnceUponAFrame")
	static inline extern overload function create():ImGuiOnceUponAFrame {
		return js.Syntax.code("new ImGui.ImGuiOnceUponAFrame()");
	}
}

@:keep @:native("ImGuiOldColumns") extern class ImGuiOldColumns {
	@:native("ID")
	var iD : ImGuiID;
	@:native("Flags")
	var flags : ImGuiOldColumnFlags;
	@:native("IsFirstFrame")
	var isFirstFrame : Bool;
	@:native("IsBeingResized")
	var isBeingResized : Bool;
	@:native("Current")
	var current : Int;
	@:native("Count")
	var count : Int;
	@:native("OffMinX")
	var offMinX : imguijs.Float32;
	@:native("OffMaxX")
	var offMaxX : imguijs.Float32;
	@:native("LineMinY")
	var lineMinY : imguijs.Float32;
	@:native("LineMaxY")
	var lineMaxY : imguijs.Float32;
	@:native("HostCursorPosY")
	var hostCursorPosY : imguijs.Float32;
	@:native("HostCursorMaxPosX")
	var hostCursorMaxPosX : imguijs.Float32;
	@:native("HostInitialClipRect")
	var hostInitialClipRect : ImRect;
	@:native("HostBackupClipRect")
	var hostBackupClipRect : ImRect;
	@:native("HostBackupParentWorkRect")
	var hostBackupParentWorkRect : ImRect;
	@:native("Columns")
	var columns : ImVectorImGuiOldColumnData;
	@:native("Splitter")
	var splitter : ImDrawListSplitter;
	@:native("ImGuiOldColumns")
	static inline extern overload function create():ImGuiOldColumns {
		return js.Syntax.code("new ImGui.ImGuiOldColumns()");
	}
}

@:keep @:native("ImGuiOldColumnData") extern class ImGuiOldColumnData {
	@:native("OffsetNorm")
	var offsetNorm : imguijs.Float32;
	@:native("OffsetNormBeforeResize")
	var offsetNormBeforeResize : imguijs.Float32;
	@:native("Flags")
	var flags : ImGuiOldColumnFlags;
	@:native("ClipRect")
	var clipRect : ImRect;
	@:native("ImGuiOldColumnData")
	static inline extern overload function create():ImGuiOldColumnData {
		return js.Syntax.code("new ImGui.ImGuiOldColumnData()");
	}
}

@:keep @:native("ImGuiNextWindowData") extern class ImGuiNextWindowData {
	@:native("Flags")
	var flags : ImGuiNextWindowDataFlags;
	@:native("PosCond")
	var posCond : ImGuiCond;
	@:native("SizeCond")
	var sizeCond : ImGuiCond;
	@:native("CollapsedCond")
	var collapsedCond : ImGuiCond;
	@:native("PosVal")
	var posVal : ImVec2;
	@:native("PosPivotVal")
	var posPivotVal : ImVec2;
	@:native("SizeVal")
	var sizeVal : ImVec2;
	@:native("ContentSizeVal")
	var contentSizeVal : ImVec2;
	@:native("ScrollVal")
	var scrollVal : ImVec2;
	@:native("CollapsedVal")
	var collapsedVal : Bool;
	@:native("SizeConstraintRect")
	var sizeConstraintRect : ImRect;
	@:native("SizeCallback")
	var sizeCallback : ImGuiSizeCallback;
	@:native("SizeCallbackUserData")
	var sizeCallbackUserData : imguijs.VoidPointer;
	@:native("BgAlphaVal")
	var bgAlphaVal : imguijs.Float32;
	@:native("MenuBarOffsetMinVal")
	var menuBarOffsetMinVal : ImVec2;
	@:native("ImGuiNextWindowData")
	static inline extern overload function create():ImGuiNextWindowData {
		return js.Syntax.code("new ImGui.ImGuiNextWindowData()");
	}
	@:native("ClearFlags")
	function clearFlags():Void;
}

@:keep @:native("ImGuiNextItemData") extern class ImGuiNextItemData {
	@:native("Flags")
	var flags : ImGuiNextItemDataFlags;
	@:native("Width")
	var width : imguijs.Float32;
	@:native("FocusScopeId")
	var focusScopeId : ImGuiID;
	@:native("OpenCond")
	var openCond : ImGuiCond;
	@:native("OpenVal")
	var openVal : Bool;
	@:native("ImGuiNextItemData")
	static inline extern overload function create():ImGuiNextItemData {
		return js.Syntax.code("new ImGui.ImGuiNextItemData()");
	}
	@:native("ClearFlags")
	function clearFlags():Void;
}

@:keep @:native("ImGuiNavMoveResult") extern class ImGuiNavMoveResult {
	@:native("Window")
	var window : ImGuiWindow;
	@:native("ID")
	var iD : ImGuiID;
	@:native("FocusScopeId")
	var focusScopeId : ImGuiID;
	@:native("DistBox")
	var distBox : imguijs.Float32;
	@:native("DistCenter")
	var distCenter : imguijs.Float32;
	@:native("DistAxial")
	var distAxial : imguijs.Float32;
	@:native("RectRel")
	var rectRel : ImRect;
	@:native("ImGuiNavMoveResult")
	static inline extern overload function create():ImGuiNavMoveResult {
		return js.Syntax.code("new ImGui.ImGuiNavMoveResult()");
	}
	@:native("Clear")
	function clear():Void;
}

@:keep @:native("ImGuiMetricsConfig") extern class ImGuiMetricsConfig {
	@:native("ShowWindowsRects")
	var showWindowsRects : Bool;
	@:native("ShowWindowsBeginOrder")
	var showWindowsBeginOrder : Bool;
	@:native("ShowTablesRects")
	var showTablesRects : Bool;
	@:native("ShowDrawCmdMesh")
	var showDrawCmdMesh : Bool;
	@:native("ShowDrawCmdBoundingBoxes")
	var showDrawCmdBoundingBoxes : Bool;
	@:native("ShowWindowsRectsType")
	var showWindowsRectsType : Int;
	@:native("ShowTablesRectsType")
	var showTablesRectsType : Int;
	@:native("ImGuiMetricsConfig")
	static inline extern overload function create():ImGuiMetricsConfig {
		return js.Syntax.code("new ImGui.ImGuiMetricsConfig()");
	}
}

@:keep @:native("ImGuiMenuColumns") extern class ImGuiMenuColumns {
	@:native("Spacing")
	var spacing : imguijs.Float32;
	@:native("Width")
	var width : imguijs.Float32;
	@:native("NextWidth")
	var nextWidth : imguijs.Float32;
	@:native("Pos")
	var pos : imguijs.FloatPointer;
	@:native("NextWidths")
	var nextWidths : imguijs.FloatPointer;
	@:native("Update")
	function update(count:Int, spacing:imguijs.Float32, clear:Bool):Void;
	@:native("ImGuiMenuColumns")
	static inline extern overload function create():ImGuiMenuColumns {
		return js.Syntax.code("new ImGui.ImGuiMenuColumns()");
	}
	@:native("DeclColumns")
	function declColumns(w0:imguijs.Float32, w1:imguijs.Float32, w2:imguijs.Float32):imguijs.Float32;
	@:native("CalcExtraSpace")
	function calcExtraSpace(avail_w:imguijs.Float32):imguijs.Float32;
}

@:keep @:native("ImGuiListClipper") extern class ImGuiListClipper {
	@:native("DisplayStart")
	var displayStart : Int;
	@:native("DisplayEnd")
	var displayEnd : Int;
	@:native("ItemsCount")
	var itemsCount : Int;
	@:native("StepNo")
	var stepNo : Int;
	@:native("ItemsFrozen")
	var itemsFrozen : Int;
	@:native("ItemsHeight")
	var itemsHeight : imguijs.Float32;
	@:native("StartPosY")
	var startPosY : imguijs.Float32;
	@:native("Step")
	function step():Bool;
	@:native("ImGuiListClipper")
	static inline extern overload function create():ImGuiListClipper {
		return js.Syntax.code("new ImGui.ImGuiListClipper()");
	}
	@:native("End")
	function end():Void;
	@:native("Begin")
	@:overload(function(items_count:Int):Void { })
	function begin(items_count:Int, items_height:imguijs.Float32):Void;
}

@:keep @:native("ImGuiLastItemDataBackup") extern class ImGuiLastItemDataBackup {
	@:native("LastItemId")
	var lastItemId : ImGuiID;
	@:native("LastItemStatusFlags")
	var lastItemStatusFlags : ImGuiItemStatusFlags;
	@:native("LastItemRect")
	var lastItemRect : ImRect;
	@:native("LastItemDisplayRect")
	var lastItemDisplayRect : ImRect;
	@:native("Restore")
	function restore():Void;
	@:native("ImGuiLastItemDataBackup")
	static inline extern overload function create():ImGuiLastItemDataBackup {
		return js.Syntax.code("new ImGui.ImGuiLastItemDataBackup()");
	}
	@:native("Backup")
	function backup():Void;
}

@:keep @:native("ImGuiInputTextState") extern class ImGuiInputTextState {
	@:native("ID")
	var iD : ImGuiID;
	@:native("CurLenW")
	var curLenW : Int;
	@:native("CurLenA")
	var curLenA : Int;
	@:native("TextW")
	var textW : ImVectorImWchar;
	@:native("TextA")
	var textA : ImVectorchar;
	@:native("InitialTextA")
	var initialTextA : ImVectorchar;
	@:native("TextAIsValid")
	var textAIsValid : Bool;
	@:native("BufCapacityA")
	var bufCapacityA : Int;
	@:native("ScrollX")
	var scrollX : imguijs.Float32;
	@:native("CursorAnim")
	var cursorAnim : imguijs.Float32;
	@:native("CursorFollow")
	var cursorFollow : Bool;
	@:native("SelectedAllMouseLock")
	var selectedAllMouseLock : Bool;
	@:native("Edited")
	var edited : Bool;
	@:native("UserFlags")
	var userFlags : ImGuiInputTextFlags;
	@:native("UserCallback")
	var userCallback : ImGuiInputTextCallback;
	@:native("UserCallbackData")
	var userCallbackData : imguijs.VoidPointer;
	@:native("SelectAll")
	function selectAll():Void;
	@:native("OnKeyPressed")
	function onKeyPressed(key:Int):Void;
	@:native("ImGuiInputTextState")
	static inline extern overload function create():ImGuiInputTextState {
		return js.Syntax.code("new ImGui.ImGuiInputTextState()");
	}
	@:native("HasSelection")
	function hasSelection():Bool;
	@:native("GetUndoAvailCount")
	function getUndoAvailCount():Int;
	@:native("GetRedoAvailCount")
	function getRedoAvailCount():Int;
	@:native("CursorClamp")
	function cursorClamp():Void;
	@:native("CursorAnimReset")
	function cursorAnimReset():Void;
	@:native("ClearText")
	function clearText():Void;
	@:native("ClearSelection")
	function clearSelection():Void;
	@:native("ClearFreeMemory")
	function clearFreeMemory():Void;
}

@:keep @:native("ImGuiInputTextCallbackData") extern class ImGuiInputTextCallbackData {
	@:native("EventFlag")
	var eventFlag : ImGuiInputTextFlags;
	@:native("Flags")
	var flags : ImGuiInputTextFlags;
	@:native("UserData")
	var userData : imguijs.VoidPointer;
	@:native("EventChar")
	var eventChar : ImWchar;
	@:native("EventKey")
	var eventKey : ImGuiKey;
	@:native("Buf")
	var buf : imguijs.Char;
	@:native("BufTextLen")
	var bufTextLen : Int;
	@:native("BufSize")
	var bufSize : Int;
	@:native("BufDirty")
	var bufDirty : Bool;
	@:native("CursorPos")
	var cursorPos : Int;
	@:native("SelectionStart")
	var selectionStart : Int;
	@:native("SelectionEnd")
	var selectionEnd : Int;
	@:native("SelectAll")
	function selectAll():Void;
	@:native("InsertChars")
	@:overload(function(pos:Int, text:String):Void { })
	function insertChars(pos:Int, text:String, text_end:String):Void;
	@:native("ImGuiInputTextCallbackData")
	static inline extern overload function create():ImGuiInputTextCallbackData {
		return js.Syntax.code("new ImGui.ImGuiInputTextCallbackData()");
	}
	@:native("HasSelection")
	function hasSelection():Bool;
	@:native("DeleteChars")
	function deleteChars(pos:Int, bytes_count:Int):Void;
	@:native("ClearSelection")
	function clearSelection():Void;
}

@:keep @:native("ImGuiIO") extern class ImGuiIO {
	@:native("ConfigFlags")
	var configFlags : ImGuiConfigFlags;
	@:native("BackendFlags")
	var backendFlags : ImGuiBackendFlags;
	@:native("DisplaySize")
	var displaySize : ImVec2;
	@:native("DeltaTime")
	var deltaTime : imguijs.Float32;
	@:native("IniSavingRate")
	var iniSavingRate : imguijs.Float32;
	@:native("IniFilename")
	var iniFilename : String;
	@:native("LogFilename")
	var logFilename : String;
	@:native("MouseDoubleClickTime")
	var mouseDoubleClickTime : imguijs.Float32;
	@:native("MouseDoubleClickMaxDist")
	var mouseDoubleClickMaxDist : imguijs.Float32;
	@:native("MouseDragThreshold")
	var mouseDragThreshold : imguijs.Float32;
	@:native("KeyMap")
	var keyMap : imguijs.IntPointer;
	@:native("KeyRepeatDelay")
	var keyRepeatDelay : imguijs.Float32;
	@:native("KeyRepeatRate")
	var keyRepeatRate : imguijs.Float32;
	@:native("UserData")
	var userData : imguijs.VoidPointer;
	@:native("Fonts")
	var fonts : ImFontAtlas;
	@:native("FontGlobalScale")
	var fontGlobalScale : imguijs.Float32;
	@:native("FontAllowUserScaling")
	var fontAllowUserScaling : Bool;
	@:native("FontDefault")
	var fontDefault : ImFont;
	@:native("DisplayFramebufferScale")
	var displayFramebufferScale : ImVec2;
	@:native("MouseDrawCursor")
	var mouseDrawCursor : Bool;
	@:native("ConfigMacOSXBehaviors")
	var configMacOSXBehaviors : Bool;
	@:native("ConfigInputTextCursorBlink")
	var configInputTextCursorBlink : Bool;
	@:native("ConfigDragClickToInputText")
	var configDragClickToInputText : Bool;
	@:native("ConfigWindowsResizeFromEdges")
	var configWindowsResizeFromEdges : Bool;
	@:native("ConfigWindowsMoveFromTitleBarOnly")
	var configWindowsMoveFromTitleBarOnly : Bool;
	@:native("ConfigMemoryCompactTimer")
	var configMemoryCompactTimer : imguijs.Float32;
	@:native("BackendPlatformName")
	var backendPlatformName : String;
	@:native("BackendRendererName")
	var backendRendererName : String;
	@:native("BackendPlatformUserData")
	var backendPlatformUserData : imguijs.VoidPointer;
	@:native("BackendRendererUserData")
	var backendRendererUserData : imguijs.VoidPointer;
	@:native("BackendLanguageUserData")
	var backendLanguageUserData : imguijs.VoidPointer;
	@:native("GetClipboardTextFn")
	var getClipboardTextFn : imguijs.Callable<Dynamic -> String>;
	@:native("SetClipboardTextFn")
	var setClipboardTextFn : imguijs.Callable<(Dynamic, String) -> Void>;
	@:native("ClipboardUserData")
	var clipboardUserData : imguijs.VoidPointer;
	@:native("ImeSetInputScreenPosFn")
	var imeSetInputScreenPosFn : imguijs.Callable<(Int, Int) -> Void>;
	@:native("ImeWindowHandle")
	var imeWindowHandle : imguijs.VoidPointer;
	@:native("MousePos")
	var mousePos : ImVec2;
	@:native("MouseDown")
	var mouseDown : imguijs.BoolPointer;
	@:native("MouseWheel")
	var mouseWheel : imguijs.Float32;
	@:native("MouseWheelH")
	var mouseWheelH : imguijs.Float32;
	@:native("KeyCtrl")
	var keyCtrl : Bool;
	@:native("KeyShift")
	var keyShift : Bool;
	@:native("KeyAlt")
	var keyAlt : Bool;
	@:native("KeySuper")
	var keySuper : Bool;
	@:native("KeysDown")
	var keysDown : imguijs.BoolPointer;
	@:native("NavInputs")
	var navInputs : imguijs.FloatPointer;
	@:native("WantCaptureMouse")
	var wantCaptureMouse : Bool;
	@:native("WantCaptureKeyboard")
	var wantCaptureKeyboard : Bool;
	@:native("WantTextInput")
	var wantTextInput : Bool;
	@:native("WantSetMousePos")
	var wantSetMousePos : Bool;
	@:native("WantSaveIniSettings")
	var wantSaveIniSettings : Bool;
	@:native("NavActive")
	var navActive : Bool;
	@:native("NavVisible")
	var navVisible : Bool;
	@:native("Framerate")
	var framerate : imguijs.Float32;
	@:native("MetricsRenderVertices")
	var metricsRenderVertices : Int;
	@:native("MetricsRenderIndices")
	var metricsRenderIndices : Int;
	@:native("MetricsRenderWindows")
	var metricsRenderWindows : Int;
	@:native("MetricsActiveWindows")
	var metricsActiveWindows : Int;
	@:native("MetricsActiveAllocations")
	var metricsActiveAllocations : Int;
	@:native("MouseDelta")
	var mouseDelta : ImVec2;
	@:native("KeyMods")
	var keyMods : ImGuiKeyModFlags;
	@:native("MousePosPrev")
	var mousePosPrev : ImVec2;
	@:native("MouseClickedPos")
	var mouseClickedPos : ImVec2;
	@:native("MouseClickedTime")
	var mouseClickedTime : Float;
	@:native("MouseClicked")
	var mouseClicked : imguijs.BoolPointer;
	@:native("MouseDoubleClicked")
	var mouseDoubleClicked : imguijs.BoolPointer;
	@:native("MouseReleased")
	var mouseReleased : imguijs.BoolPointer;
	@:native("MouseDownOwned")
	var mouseDownOwned : imguijs.BoolPointer;
	@:native("MouseDownWasDoubleClick")
	var mouseDownWasDoubleClick : imguijs.BoolPointer;
	@:native("MouseDownDuration")
	var mouseDownDuration : imguijs.FloatPointer;
	@:native("MouseDownDurationPrev")
	var mouseDownDurationPrev : imguijs.FloatPointer;
	@:native("MouseDragMaxDistanceAbs")
	var mouseDragMaxDistanceAbs : ImVec2;
	@:native("MouseDragMaxDistanceSqr")
	var mouseDragMaxDistanceSqr : imguijs.FloatPointer;
	@:native("KeysDownDuration")
	var keysDownDuration : imguijs.FloatPointer;
	@:native("KeysDownDurationPrev")
	var keysDownDurationPrev : imguijs.FloatPointer;
	@:native("NavInputsDownDuration")
	var navInputsDownDuration : imguijs.FloatPointer;
	@:native("NavInputsDownDurationPrev")
	var navInputsDownDurationPrev : imguijs.FloatPointer;
	@:native("PenPressure")
	var penPressure : imguijs.Float32;
	@:native("InputQueueSurrogate")
	var inputQueueSurrogate : ImWchar16;
	@:native("InputQueueCharacters")
	var inputQueueCharacters : ImVectorImWchar;
	@:native("ImGuiIO")
	static inline extern overload function create():ImGuiIO {
		return js.Syntax.code("new ImGui.ImGuiIO()");
	}
	@:native("ClearInputCharacters")
	function clearInputCharacters():Void;
	@:native("AddInputCharactersUTF8")
	function addInputCharactersUTF8(str:String):Void;
	@:native("AddInputCharacterUTF16")
	function addInputCharacterUTF16(c:ImWchar16):Void;
	@:native("AddInputCharacter")
	function addInputCharacter(c:UInt):Void;
}

@:keep @:native("ImGuiGroupData") extern class ImGuiGroupData {
	@:native("WindowID")
	var windowID : ImGuiID;
	@:native("BackupCursorPos")
	var backupCursorPos : ImVec2;
	@:native("BackupCursorMaxPos")
	var backupCursorMaxPos : ImVec2;
	@:native("BackupIndent")
	var backupIndent : ImVec1;
	@:native("BackupGroupOffset")
	var backupGroupOffset : ImVec1;
	@:native("BackupCurrLineSize")
	var backupCurrLineSize : ImVec2;
	@:native("BackupCurrLineTextBaseOffset")
	var backupCurrLineTextBaseOffset : imguijs.Float32;
	@:native("BackupActiveIdIsAlive")
	var backupActiveIdIsAlive : ImGuiID;
	@:native("BackupActiveIdPreviousFrameIsAlive")
	var backupActiveIdPreviousFrameIsAlive : Bool;
	@:native("EmitItem")
	var emitItem : Bool;
}

@:keep @:native("ImGuiDataTypeTempStorage") extern class ImGuiDataTypeTempStorage {
	@:native("Data")
	var data : ImU8;
}

@:keep @:native("ImGuiDataTypeInfo") extern class ImGuiDataTypeInfo {
	@:native("Size")
	var size : imguijs.SizeT;
	@:native("Name")
	var name : String;
	@:native("PrintFmt")
	var printFmt : String;
	@:native("ScanFmt")
	var scanFmt : String;
}

@:keep @:native("ImGuiContextHook") extern class ImGuiContextHook {
	@:native("Type")
	var type : ImGuiContextHookType;
	@:native("Owner")
	var owner : ImGuiID;
	@:native("Callback")
	var callback : ImGuiContextHookCallback;
	@:native("UserData")
	var userData : imguijs.VoidPointer;
	@:native("ImGuiContextHook")
	static inline extern overload function create():ImGuiContextHook {
		return js.Syntax.code("new ImGui.ImGuiContextHook()");
	}
}

@:keep @:native("ImGuiContext") extern class ImGuiContext {
	@:native("Initialized")
	var initialized : Bool;
	@:native("FontAtlasOwnedByContext")
	var fontAtlasOwnedByContext : Bool;
	@:native("IO")
	var iO : ImGuiIO;
	@:native("Style")
	var style : ImGuiStyle;
	@:native("Font")
	var font : ImFont;
	@:native("FontSize")
	var fontSize : imguijs.Float32;
	@:native("FontBaseSize")
	var fontBaseSize : imguijs.Float32;
	@:native("DrawListSharedData")
	var drawListSharedData : ImDrawListSharedData;
	@:native("Time")
	var time : Float;
	@:native("FrameCount")
	var frameCount : Int;
	@:native("FrameCountEnded")
	var frameCountEnded : Int;
	@:native("FrameCountRendered")
	var frameCountRendered : Int;
	@:native("WithinFrameScope")
	var withinFrameScope : Bool;
	@:native("WithinFrameScopeWithImplicitWindow")
	var withinFrameScopeWithImplicitWindow : Bool;
	@:native("WithinEndChild")
	var withinEndChild : Bool;
	@:native("GcCompactAll")
	var gcCompactAll : Bool;
	@:native("TestEngineHookItems")
	var testEngineHookItems : Bool;
	@:native("TestEngineHookIdInfo")
	var testEngineHookIdInfo : ImGuiID;
	@:native("TestEngine")
	var testEngine : imguijs.VoidPointer;
	@:native("Windows")
	var windows : imguijs.Star<ImVectorImGuiWindowPointer>;
	@:native("WindowsFocusOrder")
	var windowsFocusOrder : imguijs.Star<ImVectorImGuiWindowPointer>;
	@:native("WindowsTempSortBuffer")
	var windowsTempSortBuffer : imguijs.Star<ImVectorImGuiWindowPointer>;
	@:native("CurrentWindowStack")
	var currentWindowStack : imguijs.Star<ImVectorImGuiWindowPointer>;
	@:native("WindowsById")
	var windowsById : ImGuiStorage;
	@:native("WindowsActiveCount")
	var windowsActiveCount : Int;
	@:native("CurrentWindow")
	var currentWindow : ImGuiWindow;
	@:native("HoveredWindow")
	var hoveredWindow : ImGuiWindow;
	@:native("HoveredRootWindow")
	var hoveredRootWindow : ImGuiWindow;
	@:native("HoveredWindowUnderMovingWindow")
	var hoveredWindowUnderMovingWindow : ImGuiWindow;
	@:native("MovingWindow")
	var movingWindow : ImGuiWindow;
	@:native("WheelingWindow")
	var wheelingWindow : ImGuiWindow;
	@:native("WheelingWindowRefMousePos")
	var wheelingWindowRefMousePos : ImVec2;
	@:native("WheelingWindowTimer")
	var wheelingWindowTimer : imguijs.Float32;
	@:native("HoveredId")
	var hoveredId : ImGuiID;
	@:native("HoveredIdPreviousFrame")
	var hoveredIdPreviousFrame : ImGuiID;
	@:native("HoveredIdAllowOverlap")
	var hoveredIdAllowOverlap : Bool;
	@:native("HoveredIdUsingMouseWheel")
	var hoveredIdUsingMouseWheel : Bool;
	@:native("HoveredIdPreviousFrameUsingMouseWheel")
	var hoveredIdPreviousFrameUsingMouseWheel : Bool;
	@:native("HoveredIdDisabled")
	var hoveredIdDisabled : Bool;
	@:native("HoveredIdTimer")
	var hoveredIdTimer : imguijs.Float32;
	@:native("HoveredIdNotActiveTimer")
	var hoveredIdNotActiveTimer : imguijs.Float32;
	@:native("ActiveId")
	var activeId : ImGuiID;
	@:native("ActiveIdIsAlive")
	var activeIdIsAlive : ImGuiID;
	@:native("ActiveIdTimer")
	var activeIdTimer : imguijs.Float32;
	@:native("ActiveIdIsJustActivated")
	var activeIdIsJustActivated : Bool;
	@:native("ActiveIdAllowOverlap")
	var activeIdAllowOverlap : Bool;
	@:native("ActiveIdNoClearOnFocusLoss")
	var activeIdNoClearOnFocusLoss : Bool;
	@:native("ActiveIdHasBeenPressedBefore")
	var activeIdHasBeenPressedBefore : Bool;
	@:native("ActiveIdHasBeenEditedBefore")
	var activeIdHasBeenEditedBefore : Bool;
	@:native("ActiveIdHasBeenEditedThisFrame")
	var activeIdHasBeenEditedThisFrame : Bool;
	@:native("ActiveIdUsingMouseWheel")
	var activeIdUsingMouseWheel : Bool;
	@:native("ActiveIdUsingNavDirMask")
	var activeIdUsingNavDirMask : ImU32;
	@:native("ActiveIdUsingNavInputMask")
	var activeIdUsingNavInputMask : ImU32;
	@:native("ActiveIdUsingKeyInputMask")
	var activeIdUsingKeyInputMask : ImU64;
	@:native("ActiveIdClickOffset")
	var activeIdClickOffset : ImVec2;
	@:native("ActiveIdWindow")
	var activeIdWindow : ImGuiWindow;
	@:native("ActiveIdSource")
	var activeIdSource : ImGuiInputSource;
	@:native("ActiveIdMouseButton")
	var activeIdMouseButton : Int;
	@:native("ActiveIdPreviousFrame")
	var activeIdPreviousFrame : ImGuiID;
	@:native("ActiveIdPreviousFrameIsAlive")
	var activeIdPreviousFrameIsAlive : Bool;
	@:native("ActiveIdPreviousFrameHasBeenEditedBefore")
	var activeIdPreviousFrameHasBeenEditedBefore : Bool;
	@:native("ActiveIdPreviousFrameWindow")
	var activeIdPreviousFrameWindow : ImGuiWindow;
	@:native("LastActiveId")
	var lastActiveId : ImGuiID;
	@:native("LastActiveIdTimer")
	var lastActiveIdTimer : imguijs.Float32;
	@:native("NextWindowData")
	var nextWindowData : ImGuiNextWindowData;
	@:native("NextItemData")
	var nextItemData : ImGuiNextItemData;
	@:native("ColorStack")
	var colorStack : ImVectorImGuiColorMod;
	@:native("StyleVarStack")
	var styleVarStack : ImVectorImGuiStyleMod;
	@:native("FontStack")
	var fontStack : imguijs.Star<ImVectorImFontPointer>;
	@:native("FocusScopeStack")
	var focusScopeStack : ImVectorImGuiID;
	@:native("ItemFlagsStack")
	var itemFlagsStack : ImVectorImGuiItemFlags;
	@:native("GroupStack")
	var groupStack : ImVectorImGuiGroupData;
	@:native("OpenPopupStack")
	var openPopupStack : ImVectorImGuiPopupData;
	@:native("BeginPopupStack")
	var beginPopupStack : ImVectorImGuiPopupData;
	@:native("NavWindow")
	var navWindow : ImGuiWindow;
	@:native("NavId")
	var navId : ImGuiID;
	@:native("NavFocusScopeId")
	var navFocusScopeId : ImGuiID;
	@:native("NavActivateId")
	var navActivateId : ImGuiID;
	@:native("NavActivateDownId")
	var navActivateDownId : ImGuiID;
	@:native("NavActivatePressedId")
	var navActivatePressedId : ImGuiID;
	@:native("NavInputId")
	var navInputId : ImGuiID;
	@:native("NavJustTabbedId")
	var navJustTabbedId : ImGuiID;
	@:native("NavJustMovedToId")
	var navJustMovedToId : ImGuiID;
	@:native("NavJustMovedToFocusScopeId")
	var navJustMovedToFocusScopeId : ImGuiID;
	@:native("NavJustMovedToKeyMods")
	var navJustMovedToKeyMods : ImGuiKeyModFlags;
	@:native("NavNextActivateId")
	var navNextActivateId : ImGuiID;
	@:native("NavInputSource")
	var navInputSource : ImGuiInputSource;
	@:native("NavScoringRect")
	var navScoringRect : ImRect;
	@:native("NavScoringCount")
	var navScoringCount : Int;
	@:native("NavLayer")
	var navLayer : ImGuiNavLayer;
	@:native("NavIdTabCounter")
	var navIdTabCounter : Int;
	@:native("NavIdIsAlive")
	var navIdIsAlive : Bool;
	@:native("NavMousePosDirty")
	var navMousePosDirty : Bool;
	@:native("NavDisableHighlight")
	var navDisableHighlight : Bool;
	@:native("NavDisableMouseHover")
	var navDisableMouseHover : Bool;
	@:native("NavAnyRequest")
	var navAnyRequest : Bool;
	@:native("NavInitRequest")
	var navInitRequest : Bool;
	@:native("NavInitRequestFromMove")
	var navInitRequestFromMove : Bool;
	@:native("NavInitResultId")
	var navInitResultId : ImGuiID;
	@:native("NavInitResultRectRel")
	var navInitResultRectRel : ImRect;
	@:native("NavMoveRequest")
	var navMoveRequest : Bool;
	@:native("NavMoveRequestFlags")
	var navMoveRequestFlags : ImGuiNavMoveFlags;
	@:native("NavMoveRequestForward")
	var navMoveRequestForward : ImGuiNavForward;
	@:native("NavMoveRequestKeyMods")
	var navMoveRequestKeyMods : ImGuiKeyModFlags;
	@:native("NavMoveDir")
	var navMoveDir : ImGuiDir;
	@:native("NavMoveDirLast")
	var navMoveDirLast : ImGuiDir;
	@:native("NavMoveClipDir")
	var navMoveClipDir : ImGuiDir;
	@:native("NavMoveResultLocal")
	var navMoveResultLocal : ImGuiNavMoveResult;
	@:native("NavMoveResultLocalVisibleSet")
	var navMoveResultLocalVisibleSet : ImGuiNavMoveResult;
	@:native("NavMoveResultOther")
	var navMoveResultOther : ImGuiNavMoveResult;
	@:native("NavWrapRequestWindow")
	var navWrapRequestWindow : ImGuiWindow;
	@:native("NavWrapRequestFlags")
	var navWrapRequestFlags : ImGuiNavMoveFlags;
	@:native("NavWindowingTarget")
	var navWindowingTarget : ImGuiWindow;
	@:native("NavWindowingTargetAnim")
	var navWindowingTargetAnim : ImGuiWindow;
	@:native("NavWindowingListWindow")
	var navWindowingListWindow : ImGuiWindow;
	@:native("NavWindowingTimer")
	var navWindowingTimer : imguijs.Float32;
	@:native("NavWindowingHighlightAlpha")
	var navWindowingHighlightAlpha : imguijs.Float32;
	@:native("NavWindowingToggleLayer")
	var navWindowingToggleLayer : Bool;
	@:native("FocusRequestCurrWindow")
	var focusRequestCurrWindow : ImGuiWindow;
	@:native("FocusRequestNextWindow")
	var focusRequestNextWindow : ImGuiWindow;
	@:native("FocusRequestCurrCounterRegular")
	var focusRequestCurrCounterRegular : Int;
	@:native("FocusRequestCurrCounterTabStop")
	var focusRequestCurrCounterTabStop : Int;
	@:native("FocusRequestNextCounterRegular")
	var focusRequestNextCounterRegular : Int;
	@:native("FocusRequestNextCounterTabStop")
	var focusRequestNextCounterTabStop : Int;
	@:native("FocusTabPressed")
	var focusTabPressed : Bool;
	@:native("DrawData")
	var drawData : ImDrawData;
	@:native("DrawDataBuilder")
	var drawDataBuilder : ImDrawDataBuilder;
	@:native("DimBgRatio")
	var dimBgRatio : imguijs.Float32;
	@:native("BackgroundDrawList")
	var backgroundDrawList : ImDrawList;
	@:native("ForegroundDrawList")
	var foregroundDrawList : ImDrawList;
	@:native("MouseCursor")
	var mouseCursor : ImGuiMouseCursor;
	@:native("DragDropActive")
	var dragDropActive : Bool;
	@:native("DragDropWithinSource")
	var dragDropWithinSource : Bool;
	@:native("DragDropWithinTarget")
	var dragDropWithinTarget : Bool;
	@:native("DragDropSourceFlags")
	var dragDropSourceFlags : ImGuiDragDropFlags;
	@:native("DragDropSourceFrameCount")
	var dragDropSourceFrameCount : Int;
	@:native("DragDropMouseButton")
	var dragDropMouseButton : Int;
	@:native("DragDropPayload")
	var dragDropPayload : ImGuiPayload;
	@:native("DragDropTargetRect")
	var dragDropTargetRect : ImRect;
	@:native("DragDropTargetId")
	var dragDropTargetId : ImGuiID;
	@:native("DragDropAcceptFlags")
	var dragDropAcceptFlags : ImGuiDragDropFlags;
	@:native("DragDropAcceptIdCurrRectSurface")
	var dragDropAcceptIdCurrRectSurface : imguijs.Float32;
	@:native("DragDropAcceptIdCurr")
	var dragDropAcceptIdCurr : ImGuiID;
	@:native("DragDropAcceptIdPrev")
	var dragDropAcceptIdPrev : ImGuiID;
	@:native("DragDropAcceptFrameCount")
	var dragDropAcceptFrameCount : Int;
	@:native("DragDropHoldJustPressedId")
	var dragDropHoldJustPressedId : ImGuiID;
	@:native("DragDropPayloadBufHeap")
	var dragDropPayloadBufHeap : ImVectorunsignedchar;
	@:native("DragDropPayloadBufLocal")
	var dragDropPayloadBufLocal : imguijs.CharPointer;
	@:native("CurrentTable")
	var currentTable : ImGuiTable;
	@:native("Tables")
	var tables : ImVectorImGuiTable;
	@:native("CurrentTableStack")
	var currentTableStack : ImVectorImGuiPtrOrIndex;
	@:native("TablesLastTimeActive")
	var tablesLastTimeActive : ImVectorfloat;
	@:native("DrawChannelsTempMergeBuffer")
	var drawChannelsTempMergeBuffer : ImVectorImDrawChannel;
	@:native("CurrentTabBar")
	var currentTabBar : ImGuiTabBar;
	@:native("TabBars")
	var tabBars : ImVectorImGuiTabBar;
	@:native("CurrentTabBarStack")
	var currentTabBarStack : ImVectorImGuiPtrOrIndex;
	@:native("ShrinkWidthBuffer")
	var shrinkWidthBuffer : ImVectorImGuiShrinkWidthItem;
	@:native("LastValidMousePos")
	var lastValidMousePos : ImVec2;
	@:native("InputTextState")
	var inputTextState : ImGuiInputTextState;
	@:native("InputTextPasswordFont")
	var inputTextPasswordFont : ImFont;
	@:native("TempInputId")
	var tempInputId : ImGuiID;
	@:native("ColorEditOptions")
	var colorEditOptions : ImGuiColorEditFlags;
	@:native("ColorEditLastHue")
	var colorEditLastHue : imguijs.Float32;
	@:native("ColorEditLastSat")
	var colorEditLastSat : imguijs.Float32;
	@:native("ColorEditLastColor")
	var colorEditLastColor : imguijs.FloatPointer;
	@:native("ColorPickerRef")
	var colorPickerRef : ImVec4;
	@:native("SliderCurrentAccum")
	var sliderCurrentAccum : imguijs.Float32;
	@:native("SliderCurrentAccumDirty")
	var sliderCurrentAccumDirty : Bool;
	@:native("DragCurrentAccumDirty")
	var dragCurrentAccumDirty : Bool;
	@:native("DragCurrentAccum")
	var dragCurrentAccum : imguijs.Float32;
	@:native("DragSpeedDefaultRatio")
	var dragSpeedDefaultRatio : imguijs.Float32;
	@:native("ScrollbarClickDeltaToGrabCenter")
	var scrollbarClickDeltaToGrabCenter : imguijs.Float32;
	@:native("TooltipOverrideCount")
	var tooltipOverrideCount : Int;
	@:native("TooltipSlowDelay")
	var tooltipSlowDelay : imguijs.Float32;
	@:native("ClipboardHandlerData")
	var clipboardHandlerData : ImVectorchar;
	@:native("MenusIdSubmittedThisFrame")
	var menusIdSubmittedThisFrame : ImVectorImGuiID;
	@:native("PlatformImePos")
	var platformImePos : ImVec2;
	@:native("PlatformImeLastPos")
	var platformImeLastPos : ImVec2;
	@:native("PlatformLocaleDecimalPoint")
	var platformLocaleDecimalPoint : imguijs.Char;
	@:native("SettingsLoaded")
	var settingsLoaded : Bool;
	@:native("SettingsDirtyTimer")
	var settingsDirtyTimer : imguijs.Float32;
	@:native("SettingsIniData")
	var settingsIniData : ImGuiTextBuffer;
	@:native("SettingsHandlers")
	var settingsHandlers : ImVectorImGuiSettingsHandler;
	@:native("SettingsWindows")
	var settingsWindows : ImVectorImGuiWindowSettings;
	@:native("SettingsTables")
	var settingsTables : ImVectorImGuiTableSettings;
	@:native("Hooks")
	var hooks : ImVectorImGuiContextHook;
	@:native("LogEnabled")
	var logEnabled : Bool;
	@:native("LogType")
	var logType : ImGuiLogType;
	@:native("LogFile")
	var logFile : ImFileHandle;
	@:native("LogBuffer")
	var logBuffer : ImGuiTextBuffer;
	@:native("LogLinePosY")
	var logLinePosY : imguijs.Float32;
	@:native("LogLineFirstItem")
	var logLineFirstItem : Bool;
	@:native("LogDepthRef")
	var logDepthRef : Int;
	@:native("LogDepthToExpand")
	var logDepthToExpand : Int;
	@:native("LogDepthToExpandDefault")
	var logDepthToExpandDefault : Int;
	@:native("DebugItemPickerActive")
	var debugItemPickerActive : Bool;
	@:native("DebugItemPickerBreakId")
	var debugItemPickerBreakId : ImGuiID;
	@:native("DebugMetricsConfig")
	var debugMetricsConfig : ImGuiMetricsConfig;
	@:native("FramerateSecPerFrame")
	var framerateSecPerFrame : imguijs.FloatPointer;
	@:native("FramerateSecPerFrameIdx")
	var framerateSecPerFrameIdx : Int;
	@:native("FramerateSecPerFrameAccum")
	var framerateSecPerFrameAccum : imguijs.Float32;
	@:native("WantCaptureMouseNextFrame")
	var wantCaptureMouseNextFrame : Int;
	@:native("WantCaptureKeyboardNextFrame")
	var wantCaptureKeyboardNextFrame : Int;
	@:native("WantTextInputNextFrame")
	var wantTextInputNextFrame : Int;
	@:native("TempBuffer")
	var tempBuffer : imguijs.Char;
	@:native("ImGuiContext")
	static inline extern overload function create(shared_font_atlas:ImFontAtlas):ImGuiContext {
		return js.Syntax.code("new ImGui.ImGuiContext({0})", shared_font_atlas);
	}
}

@:keep @:native("ImGuiColorMod") extern class ImGuiColorMod {
	@:native("Col")
	var col : ImGuiCol;
	@:native("BackupValue")
	var backupValue : ImVec4;
}

@:keep @:native("ImFontGlyphRangesBuilder") extern class ImFontGlyphRangesBuilder {
	@:native("UsedChars")
	var usedChars : ImVectorImU32;
	@:native("SetBit")
	function setBit(n:imguijs.SizeT):Void;
	@:native("ImFontGlyphRangesBuilder")
	static inline extern overload function create():ImFontGlyphRangesBuilder {
		return js.Syntax.code("new ImGui.ImFontGlyphRangesBuilder()");
	}
	@:native("GetBit")
	function getBit(n:imguijs.SizeT):Bool;
	@:native("Clear")
	function clear():Void;
	@:native("BuildRanges")
	function buildRanges(out_ranges:ImVectorImWcharPointer):Void;
	@:native("AddText")
	@:overload(function(text:String):Void { })
	function addText(text:String, text_end:String):Void;
	@:native("AddRanges")
	function addRanges(ranges:ImWchar):Void;
	@:native("AddChar")
	function addChar(c:ImWchar):Void;
}

@:keep @:native("ImFontGlyph") extern class ImFontGlyph {
	@:native("Codepoint")
	var codepoint : UInt;
	@:native("Visible")
	var visible : UInt;
	@:native("AdvanceX")
	var advanceX : imguijs.Float32;
	@:native("X0")
	var x0 : imguijs.Float32;
	@:native("Y0")
	var y0 : imguijs.Float32;
	@:native("X1")
	var x1 : imguijs.Float32;
	@:native("Y1")
	var y1 : imguijs.Float32;
	@:native("U0")
	var u0 : imguijs.Float32;
	@:native("V0")
	var v0 : imguijs.Float32;
	@:native("U1")
	var u1 : imguijs.Float32;
	@:native("V1")
	var v1 : imguijs.Float32;
}

@:keep @:native("ImFontConfig") extern class ImFontConfig {
	@:native("FontData")
	var fontData : imguijs.VoidPointer;
	@:native("FontDataSize")
	var fontDataSize : Int;
	@:native("FontDataOwnedByAtlas")
	var fontDataOwnedByAtlas : Bool;
	@:native("FontNo")
	var fontNo : Int;
	@:native("SizePixels")
	var sizePixels : imguijs.Float32;
	@:native("OversampleH")
	var oversampleH : Int;
	@:native("OversampleV")
	var oversampleV : Int;
	@:native("PixelSnapH")
	var pixelSnapH : Bool;
	@:native("GlyphExtraSpacing")
	var glyphExtraSpacing : ImVec2;
	@:native("GlyphOffset")
	var glyphOffset : ImVec2;
	@:native("GlyphRanges")
	var glyphRanges : ImWchar;
	@:native("GlyphMinAdvanceX")
	var glyphMinAdvanceX : imguijs.Float32;
	@:native("GlyphMaxAdvanceX")
	var glyphMaxAdvanceX : imguijs.Float32;
	@:native("MergeMode")
	var mergeMode : Bool;
	@:native("RasterizerFlags")
	var rasterizerFlags : UInt;
	@:native("RasterizerMultiply")
	var rasterizerMultiply : imguijs.Float32;
	@:native("EllipsisChar")
	var ellipsisChar : ImWchar;
	@:native("Name")
	var name : imguijs.Char;
	@:native("DstFont")
	var dstFont : ImFont;
	@:native("ImFontConfig")
	static inline extern overload function create():ImFontConfig {
		return js.Syntax.code("new ImGui.ImFontConfig()");
	}
}

@:keep @:native("ImFontAtlasCustomRect") extern class ImFontAtlasCustomRect {
	@:native("Width")
	var width : imguijs.UInt16;
	@:native("Height")
	var height : imguijs.UInt16;
	@:native("X")
	var x : imguijs.UInt16;
	@:native("Y")
	var y : imguijs.UInt16;
	@:native("GlyphID")
	var glyphID : UInt;
	@:native("GlyphAdvanceX")
	var glyphAdvanceX : imguijs.Float32;
	@:native("GlyphOffset")
	var glyphOffset : ImVec2;
	@:native("Font")
	var font : ImFont;
	@:native("IsPacked")
	function isPacked():Bool;
	@:native("ImFontAtlasCustomRect")
	static inline extern overload function create():ImFontAtlasCustomRect {
		return js.Syntax.code("new ImGui.ImFontAtlasCustomRect()");
	}
}

@:keep @:native("ImFontAtlas") extern class ImFontAtlas {
	@:native("Locked")
	var locked : Bool;
	@:native("Flags")
	var flags : ImFontAtlasFlags;
	@:native("TexID")
	var texID : ImTextureID;
	@:native("TexDesiredWidth")
	var texDesiredWidth : Int;
	@:native("TexGlyphPadding")
	var texGlyphPadding : Int;
	@:native("TexPixelsAlpha8")
	var texPixelsAlpha8 : imguijs.CharPointer;
	@:native("TexPixelsRGBA32")
	var texPixelsRGBA32 : UInt;
	@:native("TexWidth")
	var texWidth : Int;
	@:native("TexHeight")
	var texHeight : Int;
	@:native("TexUvScale")
	var texUvScale : ImVec2;
	@:native("TexUvWhitePixel")
	var texUvWhitePixel : ImVec2;
	@:native("Fonts")
	var fonts : imguijs.Star<ImVectorImFontPointer>;
	@:native("CustomRects")
	var customRects : ImVectorImFontAtlasCustomRect;
	@:native("ConfigData")
	var configData : ImVectorImFontConfig;
	@:native("TexUvLines")
	var texUvLines : ImVec4;
	@:native("PackIdMouseCursors")
	var packIdMouseCursors : Int;
	@:native("PackIdLines")
	var packIdLines : Int;
	@:native("SetTexID")
	function setTexID(id:ImTextureID):Void;
	@:native("IsBuilt")
	function isBuilt():Bool;
	@:native("ImFontAtlas")
	static inline extern overload function create():ImFontAtlas {
		return js.Syntax.code("new ImGui.ImFontAtlas()");
	}
	@:native("GetTexDataAsRGBA32")
	@:overload(function(out_pixels:imguijs.Star<imguijs.Star<imguijs.UInt8>>, out_width:imguijs.IntPointer, out_height:imguijs.IntPointer):Void { })
	function getTexDataAsRGBA32(out_pixels:imguijs.Star<imguijs.Star<imguijs.UInt8>>, out_width:imguijs.IntPointer, out_height:imguijs.IntPointer, out_bytes_per_pixel:imguijs.IntPointer):Void;
	@:native("GetTexDataAsAlpha8")
	@:overload(function(out_pixels:imguijs.Star<imguijs.Star<imguijs.UInt8>>, out_width:imguijs.IntPointer, out_height:imguijs.IntPointer):Void { })
	function getTexDataAsAlpha8(out_pixels:imguijs.Star<imguijs.Star<imguijs.UInt8>>, out_width:imguijs.IntPointer, out_height:imguijs.IntPointer, out_bytes_per_pixel:imguijs.IntPointer):Void;
	@:native("GetMouseCursorTexData")
	function getMouseCursorTexData(cursor:ImGuiMouseCursor, out_offset:ImVec2, out_size:ImVec2, out_uv_border:ImVec2, out_uv_fill:ImVec2):Bool;
	@:native("GetGlyphRangesVietnamese")
	function getGlyphRangesVietnamese():ImWchar;
	@:native("GetGlyphRangesThai")
	function getGlyphRangesThai():ImWchar;
	@:native("GetGlyphRangesKorean")
	function getGlyphRangesKorean():ImWchar;
	@:native("GetGlyphRangesJapanese")
	function getGlyphRangesJapanese():ImWchar;
	@:native("GetGlyphRangesDefault")
	function getGlyphRangesDefault():ImWchar;
	@:native("GetGlyphRangesCyrillic")
	function getGlyphRangesCyrillic():ImWchar;
	@:native("GetGlyphRangesChineseSimplifiedCommon")
	function getGlyphRangesChineseSimplifiedCommon():ImWchar;
	@:native("GetGlyphRangesChineseFull")
	function getGlyphRangesChineseFull():ImWchar;
	@:native("GetCustomRectByIndex")
	function getCustomRectByIndex(index:Int):ImFontAtlasCustomRect;
	@:native("ClearTexData")
	function clearTexData():Void;
	@:native("ClearInputData")
	function clearInputData():Void;
	@:native("ClearFonts")
	function clearFonts():Void;
	@:native("Clear")
	function clear():Void;
	@:native("CalcCustomRectUV")
	function calcCustomRectUV(rect:ImFontAtlasCustomRect, out_uv_min:ImVec2, out_uv_max:ImVec2):Void;
	@:native("Build")
	function build():Bool;
	@:native("AddFontFromMemoryTTF")
	@:overload(function(font_data:imguijs.VoidPointer, font_size:Int, size_pixels:imguijs.Float32, glyph_ranges:ImWchar):ImFont { })
	@:overload(function(font_data:imguijs.VoidPointer, font_size:Int, size_pixels:imguijs.Float32):ImFont { })
	function addFontFromMemoryTTF(font_data:imguijs.VoidPointer, font_size:Int, size_pixels:imguijs.Float32, font_cfg:ImFontConfig, glyph_ranges:ImWchar):ImFont;
	@:native("AddFontFromMemoryCompressedTTF")
	@:overload(function(compressed_font_data:imguijs.VoidPointer, compressed_font_size:Int, size_pixels:imguijs.Float32, glyph_ranges:ImWchar):ImFont { })
	@:overload(function(compressed_font_data:imguijs.VoidPointer, compressed_font_size:Int, size_pixels:imguijs.Float32):ImFont { })
	function addFontFromMemoryCompressedTTF(compressed_font_data:imguijs.VoidPointer, compressed_font_size:Int, size_pixels:imguijs.Float32, font_cfg:ImFontConfig, glyph_ranges:ImWchar):ImFont;
	@:native("AddFontFromMemoryCompressedBase85TTF")
	@:overload(function(compressed_font_data_base85:String, size_pixels:imguijs.Float32, glyph_ranges:ImWchar):ImFont { })
	@:overload(function(compressed_font_data_base85:String, size_pixels:imguijs.Float32):ImFont { })
	function addFontFromMemoryCompressedBase85TTF(compressed_font_data_base85:String, size_pixels:imguijs.Float32, font_cfg:ImFontConfig, glyph_ranges:ImWchar):ImFont;
	@:native("AddFontFromFileTTF")
	@:overload(function(filename:String, size_pixels:imguijs.Float32, glyph_ranges:ImWchar):ImFont { })
	@:overload(function(filename:String, size_pixels:imguijs.Float32):ImFont { })
	function addFontFromFileTTF(filename:String, size_pixels:imguijs.Float32, font_cfg:ImFontConfig, glyph_ranges:ImWchar):ImFont;
	@:native("AddFontDefault")
	@:overload(function():ImFont { })
	function addFontDefault(font_cfg:ImFontConfig):ImFont;
	@:native("AddFont")
	function addFont(font_cfg:ImFontConfig):ImFont;
	@:native("AddCustomRectRegular")
	function addCustomRectRegular(width:Int, height:Int):Int;
	@:native("AddCustomRectFontGlyph")
	@:overload(function(font:ImFont, id:ImWchar, width:Int, height:Int, advance_x:imguijs.Float32):Int { })
	function addCustomRectFontGlyph(font:ImFont, id:ImWchar, width:Int, height:Int, advance_x:imguijs.Float32, offset:ImVec2):Int;
}

@:keep @:native("ImFont") extern class ImFont {
	@:native("IndexAdvanceX")
	var indexAdvanceX : ImVectorfloat;
	@:native("FallbackAdvanceX")
	var fallbackAdvanceX : imguijs.Float32;
	@:native("FontSize")
	var fontSize : imguijs.Float32;
	@:native("IndexLookup")
	var indexLookup : ImVectorImWchar;
	@:native("Glyphs")
	var glyphs : ImVectorImFontGlyph;
	@:native("FallbackGlyph")
	var fallbackGlyph : ImFontGlyph;
	@:native("ContainerAtlas")
	var containerAtlas : ImFontAtlas;
	@:native("ConfigData")
	var configData : ImFontConfig;
	@:native("ConfigDataCount")
	var configDataCount : imguijs.Int16;
	@:native("FallbackChar")
	var fallbackChar : ImWchar;
	@:native("EllipsisChar")
	var ellipsisChar : ImWchar;
	@:native("DirtyLookupTables")
	var dirtyLookupTables : Bool;
	@:native("Scale")
	var scale : imguijs.Float32;
	@:native("Ascent")
	var ascent : imguijs.Float32;
	@:native("Descent")
	var descent : imguijs.Float32;
	@:native("MetricsTotalSurface")
	var metricsTotalSurface : Int;
	@:native("Used4kPagesMap")
	var used4kPagesMap : ImU8;
	@:native("SetGlyphVisible")
	function setGlyphVisible(c:ImWchar, visible:Bool):Void;
	@:native("SetFallbackChar")
	function setFallbackChar(c:ImWchar):Void;
	@:native("RenderText")
	@:overload(function(draw_list:ImDrawList, size:imguijs.Float32, pos:ImVec2, col:ImU32, clip_rect:ImVec4, text_begin:String, text_end:String, wrap_width:imguijs.Float32):Void { })
	@:overload(function(draw_list:ImDrawList, size:imguijs.Float32, pos:ImVec2, col:ImU32, clip_rect:ImVec4, text_begin:String, text_end:String):Void { })
	function renderText(draw_list:ImDrawList, size:imguijs.Float32, pos:ImVec2, col:ImU32, clip_rect:ImVec4, text_begin:String, text_end:String, wrap_width:imguijs.Float32, cpu_fine_clip:Bool):Void;
	@:native("RenderChar")
	function renderChar(draw_list:ImDrawList, size:imguijs.Float32, pos:ImVec2, col:ImU32, c:ImWchar):Void;
	@:native("IsLoaded")
	function isLoaded():Bool;
	@:native("IsGlyphRangeUnused")
	function isGlyphRangeUnused(c_begin:UInt, c_last:UInt):Bool;
	@:native("ImFont")
	static inline extern overload function create():ImFont {
		return js.Syntax.code("new ImGui.ImFont()");
	}
	@:native("GrowIndex")
	function growIndex(new_size:Int):Void;
	@:native("GetDebugName")
	function getDebugName():String;
	@:native("GetCharAdvance")
	function getCharAdvance(c:ImWchar):imguijs.Float32;
	@:native("FindGlyphNoFallback")
	function findGlyphNoFallback(c:ImWchar):ImFontGlyph;
	@:native("FindGlyph")
	function findGlyph(c:ImWchar):ImFontGlyph;
	@:native("ClearOutputData")
	function clearOutputData():Void;
	@:native("CalcWordWrapPositionA")
	function calcWordWrapPositionA(scale:imguijs.Float32, text:String, text_end:String, wrap_width:imguijs.Float32):String;
	@:native("CalcTextSizeA")
	@:overload(function(pOut:ImVec2, self:ImFont, size:imguijs.Float32, max_width:imguijs.Float32, wrap_width:imguijs.Float32, text_begin:String, text_end:String):Void { })
	@:overload(function(pOut:ImVec2, self:ImFont, size:imguijs.Float32, max_width:imguijs.Float32, wrap_width:imguijs.Float32, text_begin:String):Void { })
	function calcTextSizeA(pOut:ImVec2, self:ImFont, size:imguijs.Float32, max_width:imguijs.Float32, wrap_width:imguijs.Float32, text_begin:String, text_end:String, remaining:imguijs.RawConstPointer<imguijs.Char>):Void;
	@:native("BuildLookupTable")
	function buildLookupTable():Void;
	@:native("AddRemapChar")
	@:overload(function(dst:ImWchar, src:ImWchar):Void { })
	function addRemapChar(dst:ImWchar, src:ImWchar, overwrite_dst:Bool):Void;
	@:native("AddGlyph")
	function addGlyph(src_cfg:ImFontConfig, c:ImWchar, x0:imguijs.Float32, y0:imguijs.Float32, x1:imguijs.Float32, y1:imguijs.Float32, u0:imguijs.Float32, v0:imguijs.Float32, u1:imguijs.Float32, v1:imguijs.Float32, advance_x:imguijs.Float32):Void;
}

@:keep @:native("ImDrawVert") extern class ImDrawVert {
	@:native("pos")
	var pos : ImVec2;
	@:native("uv")
	var uv : ImVec2;
	@:native("col")
	var col : ImU32;
}

@:keep @:native("ImDrawListSplitter") extern class ImDrawListSplitter {
	@:native("_Current")
	var _Current : Int;
	@:native("_Count")
	var _Count : Int;
	@:native("_Channels")
	var _Channels : ImVectorImDrawChannel;
	@:native("Split")
	function split(draw_list:ImDrawList, count:Int):Void;
	@:native("SetCurrentChannel")
	function setCurrentChannel(draw_list:ImDrawList, channel_idx:Int):Void;
	@:native("Merge")
	function merge(draw_list:ImDrawList):Void;
	@:native("ImDrawListSplitter")
	static inline extern overload function create():ImDrawListSplitter {
		return js.Syntax.code("new ImGui.ImDrawListSplitter()");
	}
	@:native("ClearFreeMemory")
	function clearFreeMemory():Void;
	@:native("Clear")
	function clear():Void;
}

@:keep @:native("ImDrawListSharedData") extern class ImDrawListSharedData {
	@:native("TexUvWhitePixel")
	var texUvWhitePixel : ImVec2;
	@:native("Font")
	var font : ImFont;
	@:native("FontSize")
	var fontSize : imguijs.Float32;
	@:native("CurveTessellationTol")
	var curveTessellationTol : imguijs.Float32;
	@:native("CircleSegmentMaxError")
	var circleSegmentMaxError : imguijs.Float32;
	@:native("ClipRectFullscreen")
	var clipRectFullscreen : ImVec4;
	@:native("InitialFlags")
	var initialFlags : ImDrawListFlags;
	@:native("ArcFastVtx")
	var arcFastVtx : ImVec2;
	@:native("CircleSegmentCounts")
	var circleSegmentCounts : ImU8;
	@:native("TexUvLines")
	var texUvLines : ImVec4;
	@:native("SetCircleSegmentMaxError")
	function setCircleSegmentMaxError(max_error:imguijs.Float32):Void;
	@:native("ImDrawListSharedData")
	static inline extern overload function create():ImDrawListSharedData {
		return js.Syntax.code("new ImGui.ImDrawListSharedData()");
	}
}

@:keep @:native("ImDrawList") extern class ImDrawList {
	@:native("CmdBuffer")
	var cmdBuffer : ImVectorImDrawCmd;
	@:native("IdxBuffer")
	var idxBuffer : ImVectorImDrawIdx;
	@:native("VtxBuffer")
	var vtxBuffer : ImVectorImDrawVert;
	@:native("Flags")
	var flags : ImDrawListFlags;
	@:native("_VtxCurrentIdx")
	var _VtxCurrentIdx : UInt;
	@:native("_Data")
	var _Data : ImDrawListSharedData;
	@:native("_OwnerName")
	var _OwnerName : String;
	@:native("_VtxWritePtr")
	var _VtxWritePtr : ImDrawVert;
	@:native("_IdxWritePtr")
	var _IdxWritePtr : ImDrawIdx;
	@:native("_ClipRectStack")
	var _ClipRectStack : ImVectorImVec4;
	@:native("_TextureIdStack")
	var _TextureIdStack : ImVectorImTextureID;
	@:native("_Path")
	var _Path : ImVectorImVec2;
	@:native("_CmdHeader")
	var _CmdHeader : ImDrawCmdHeader;
	@:native("_Splitter")
	var _Splitter : ImDrawListSplitter;
	@:native("_FringeScale")
	var _FringeScale : imguijs.Float32;
	@:native("_ResetForNewFrame")
	function _ResetForNewFrame():Void;
	@:native("_PopUnusedDrawCmd")
	function _PopUnusedDrawCmd():Void;
	@:native("_OnChangedVtxOffset")
	function _OnChangedVtxOffset():Void;
	@:native("_OnChangedTextureID")
	function _OnChangedTextureID():Void;
	@:native("_OnChangedClipRect")
	function _OnChangedClipRect():Void;
	@:native("_ClearFreeMemory")
	function _ClearFreeMemory():Void;
	@:native("PushTextureID")
	function pushTextureID(texture_id:ImTextureID):Void;
	@:native("PushClipRectFullScreen")
	function pushClipRectFullScreen():Void;
	@:native("PushClipRect")
	@:overload(function(clip_rect_min:ImVec2, clip_rect_max:ImVec2):Void { })
	function pushClipRect(clip_rect_min:ImVec2, clip_rect_max:ImVec2, intersect_with_current_clip_rect:Bool):Void;
	@:native("PrimWriteVtx")
	function primWriteVtx(pos:ImVec2, uv:ImVec2, col:ImU32):Void;
	@:native("PrimWriteIdx")
	function primWriteIdx(idx:ImDrawIdx):Void;
	@:native("PrimVtx")
	function primVtx(pos:ImVec2, uv:ImVec2, col:ImU32):Void;
	@:native("PrimUnreserve")
	function primUnreserve(idx_count:Int, vtx_count:Int):Void;
	@:native("PrimReserve")
	function primReserve(idx_count:Int, vtx_count:Int):Void;
	@:native("PrimRectUV")
	function primRectUV(a:ImVec2, b:ImVec2, uv_a:ImVec2, uv_b:ImVec2, col:ImU32):Void;
	@:native("PrimRect")
	function primRect(a:ImVec2, b:ImVec2, col:ImU32):Void;
	@:native("PrimQuadUV")
	function primQuadUV(a:ImVec2, b:ImVec2, c:ImVec2, d:ImVec2, uv_a:ImVec2, uv_b:ImVec2, uv_c:ImVec2, uv_d:ImVec2, col:ImU32):Void;
	@:native("PopTextureID")
	function popTextureID():Void;
	@:native("PopClipRect")
	function popClipRect():Void;
	@:native("PathStroke")
	@:overload(function(col:ImU32, closed:Bool):Void { })
	function pathStroke(col:ImU32, closed:Bool, thickness:imguijs.Float32):Void;
	@:native("PathRect")
	@:overload(function(rect_min:ImVec2, rect_max:ImVec2, rounding_corners:ImDrawCornerFlags):Void { })
	@:overload(function(rect_min:ImVec2, rect_max:ImVec2):Void { })
	function pathRect(rect_min:ImVec2, rect_max:ImVec2, rounding:imguijs.Float32, rounding_corners:ImDrawCornerFlags):Void;
	@:native("PathLineToMergeDuplicate")
	function pathLineToMergeDuplicate(pos:ImVec2):Void;
	@:native("PathLineTo")
	function pathLineTo(pos:ImVec2):Void;
	@:native("PathFillConvex")
	function pathFillConvex(col:ImU32):Void;
	@:native("PathClear")
	function pathClear():Void;
	@:native("PathBezierQuadraticCurveTo")
	@:overload(function(p2:ImVec2, p3:ImVec2):Void { })
	function pathBezierQuadraticCurveTo(p2:ImVec2, p3:ImVec2, num_segments:Int):Void;
	@:native("PathBezierCubicCurveTo")
	@:overload(function(p2:ImVec2, p3:ImVec2, p4:ImVec2):Void { })
	function pathBezierCubicCurveTo(p2:ImVec2, p3:ImVec2, p4:ImVec2, num_segments:Int):Void;
	@:native("PathArcToFast")
	function pathArcToFast(center:ImVec2, radius:imguijs.Float32, a_min_of_12:Int, a_max_of_12:Int):Void;
	@:native("PathArcTo")
	@:overload(function(center:ImVec2, radius:imguijs.Float32, a_min:imguijs.Float32, a_max:imguijs.Float32):Void { })
	function pathArcTo(center:ImVec2, radius:imguijs.Float32, a_min:imguijs.Float32, a_max:imguijs.Float32, num_segments:Int):Void;
	@:native("ImDrawList")
	static inline extern overload function create(shared_data:ImDrawListSharedData):ImDrawList {
		return js.Syntax.code("new ImGui.ImDrawList({0})", shared_data);
	}
	@:native("GetClipRectMin")
	function getClipRectMin(pOut:ImVec2, self:ImDrawList):Void;
	@:native("GetClipRectMax")
	function getClipRectMax(pOut:ImVec2, self:ImDrawList):Void;
	@:native("CloneOutput")
	function cloneOutput():ImDrawList;
	@:native("ChannelsSplit")
	function channelsSplit(count:Int):Void;
	@:native("ChannelsSetCurrent")
	function channelsSetCurrent(n:Int):Void;
	@:native("ChannelsMerge")
	function channelsMerge():Void;
	@:native("AddTriangleFilled")
	function addTriangleFilled(p1:ImVec2, p2:ImVec2, p3:ImVec2, col:ImU32):Void;
	@:native("AddTriangle")
	@:overload(function(p1:ImVec2, p2:ImVec2, p3:ImVec2, col:ImU32):Void { })
	function addTriangle(p1:ImVec2, p2:ImVec2, p3:ImVec2, col:ImU32, thickness:imguijs.Float32):Void;
	@:native("AddText")
	@:overload(function(pos:ImVec2, col:ImU32, text_begin:String):Void { })
	@:overload(function(font:ImFont, font_size:imguijs.Float32, pos:ImVec2, col:ImU32, text_begin:String, text_end:String, wrap_width:imguijs.Float32, cpu_fine_clip_rect:ImVec4):Void { })
	@:overload(function(font:ImFont, font_size:imguijs.Float32, pos:ImVec2, col:ImU32, text_begin:String, text_end:String, wrap_width:imguijs.Float32):Void { })
	@:overload(function(font:ImFont, font_size:imguijs.Float32, pos:ImVec2, col:ImU32, text_begin:String, wrap_width:imguijs.Float32):Void { })
	@:overload(function(font:ImFont, font_size:imguijs.Float32, pos:ImVec2, col:ImU32, text_begin:String):Void { })
	function addText(pos:ImVec2, col:ImU32, text_begin:String, text_end:String):Void;
	@:native("AddRectFilledMultiColor")
	function addRectFilledMultiColor(p_min:ImVec2, p_max:ImVec2, col_upr_left:ImU32, col_upr_right:ImU32, col_bot_right:ImU32, col_bot_left:ImU32):Void;
	@:native("AddRectFilled")
	@:overload(function(p_min:ImVec2, p_max:ImVec2, col:ImU32, rounding_corners:ImDrawCornerFlags):Void { })
	@:overload(function(p_min:ImVec2, p_max:ImVec2, col:ImU32):Void { })
	function addRectFilled(p_min:ImVec2, p_max:ImVec2, col:ImU32, rounding:imguijs.Float32, rounding_corners:ImDrawCornerFlags):Void;
	@:native("AddRect")
	@:overload(function(p_min:ImVec2, p_max:ImVec2, col:ImU32, rounding_corners:ImDrawCornerFlags, thickness:imguijs.Float32):Void { })
	@:overload(function(p_min:ImVec2, p_max:ImVec2, col:ImU32, thickness:imguijs.Float32):Void { })
	@:overload(function(p_min:ImVec2, p_max:ImVec2, col:ImU32):Void { })
	function addRect(p_min:ImVec2, p_max:ImVec2, col:ImU32, rounding:imguijs.Float32, rounding_corners:ImDrawCornerFlags, thickness:imguijs.Float32):Void;
	@:native("AddQuadFilled")
	function addQuadFilled(p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:ImU32):Void;
	@:native("AddQuad")
	@:overload(function(p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:ImU32):Void { })
	function addQuad(p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:ImU32, thickness:imguijs.Float32):Void;
	@:native("AddPolyline")
	function addPolyline(points:ImVec2, num_points:Int, col:ImU32, closed:Bool, thickness:imguijs.Float32):Void;
	@:native("AddNgonFilled")
	function addNgonFilled(center:ImVec2, radius:imguijs.Float32, col:ImU32, num_segments:Int):Void;
	@:native("AddNgon")
	@:overload(function(center:ImVec2, radius:imguijs.Float32, col:ImU32, num_segments:Int):Void { })
	function addNgon(center:ImVec2, radius:imguijs.Float32, col:ImU32, num_segments:Int, thickness:imguijs.Float32):Void;
	@:native("AddLine")
	@:overload(function(p1:ImVec2, p2:ImVec2, col:ImU32):Void { })
	function addLine(p1:ImVec2, p2:ImVec2, col:ImU32, thickness:imguijs.Float32):Void;
	@:native("AddImageRounded")
	@:overload(function(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2, uv_min:ImVec2, uv_max:ImVec2, col:ImU32, rounding:imguijs.Float32):Void { })
	function addImageRounded(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2, uv_min:ImVec2, uv_max:ImVec2, col:ImU32, rounding:imguijs.Float32, rounding_corners:ImDrawCornerFlags):Void;
	@:native("AddImageQuad")
	@:overload(function(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv1:ImVec2, uv2:ImVec2, uv3:ImVec2, uv4:ImVec2):Void { })
	@:overload(function(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv2:ImVec2, uv3:ImVec2, uv4:ImVec2):Void { })
	@:overload(function(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv3:ImVec2, uv4:ImVec2):Void { })
	@:overload(function(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv4:ImVec2):Void { })
	@:overload(function(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2):Void { })
	function addImageQuad(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv1:ImVec2, uv2:ImVec2, uv3:ImVec2, uv4:ImVec2, col:ImU32):Void;
	@:native("AddImage")
	@:overload(function(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2, uv_min:ImVec2, uv_max:ImVec2):Void { })
	@:overload(function(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2, uv_min:ImVec2):Void { })
	@:overload(function(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2):Void { })
	function addImage(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2, uv_min:ImVec2, uv_max:ImVec2, col:ImU32):Void;
	@:native("AddDrawCmd")
	function addDrawCmd():Void;
	@:native("AddConvexPolyFilled")
	function addConvexPolyFilled(points:ImVec2, num_points:Int, col:ImU32):Void;
	@:native("AddCircleFilled")
	@:overload(function(center:ImVec2, radius:imguijs.Float32, col:ImU32):Void { })
	function addCircleFilled(center:ImVec2, radius:imguijs.Float32, col:ImU32, num_segments:Int):Void;
	@:native("AddCircle")
	@:overload(function(center:ImVec2, radius:imguijs.Float32, col:ImU32, thickness:imguijs.Float32):Void { })
	@:overload(function(center:ImVec2, radius:imguijs.Float32, col:ImU32):Void { })
	function addCircle(center:ImVec2, radius:imguijs.Float32, col:ImU32, num_segments:Int, thickness:imguijs.Float32):Void;
	@:native("AddCallback")
	function addCallback(callback:ImDrawCallback, callback_data:imguijs.VoidPointer):Void;
	@:native("AddBezierQuadratic")
	@:overload(function(p1:ImVec2, p2:ImVec2, p3:ImVec2, col:ImU32, thickness:imguijs.Float32):Void { })
	function addBezierQuadratic(p1:ImVec2, p2:ImVec2, p3:ImVec2, col:ImU32, thickness:imguijs.Float32, num_segments:Int):Void;
	@:native("AddBezierCubic")
	@:overload(function(p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:ImU32, thickness:imguijs.Float32):Void { })
	function addBezierCubic(p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:ImU32, thickness:imguijs.Float32, num_segments:Int):Void;
}

@:keep @:native("ImDrawDataBuilder") extern class ImDrawDataBuilder {
	@:native("Layers")
	var layers : imguijs.Star<ImVectorImDrawListPointer>;
	@:native("FlattenIntoSingleLayer")
	function flattenIntoSingleLayer():Void;
	@:native("ClearFreeMemory")
	function clearFreeMemory():Void;
	@:native("Clear")
	function clear():Void;
}

@:keep @:native("ImDrawData") extern class ImDrawData {
	@:native("Valid")
	var valid : Bool;
	@:native("CmdLists")
	var cmdLists : imguijs.RawPointer<imguijs.Star<ImDrawList>>;
	@:native("CmdListsCount")
	var cmdListsCount : Int;
	@:native("TotalIdxCount")
	var totalIdxCount : Int;
	@:native("TotalVtxCount")
	var totalVtxCount : Int;
	@:native("DisplayPos")
	var displayPos : ImVec2;
	@:native("DisplaySize")
	var displaySize : ImVec2;
	@:native("FramebufferScale")
	var framebufferScale : ImVec2;
	@:native("ScaleClipRects")
	function scaleClipRects(fb_scale:ImVec2):Void;
	@:native("ImDrawData")
	static inline extern overload function create():ImDrawData {
		return js.Syntax.code("new ImGui.ImDrawData()");
	}
	@:native("DeIndexAllBuffers")
	function deIndexAllBuffers():Void;
	@:native("Clear")
	function clear():Void;
}

@:keep @:native("ImDrawCmdHeader") extern class ImDrawCmdHeader {
	@:native("ClipRect")
	var clipRect : ImVec4;
	@:native("TextureId")
	var textureId : ImTextureID;
	@:native("VtxOffset")
	var vtxOffset : UInt;
}

@:keep @:native("ImDrawCmd") extern class ImDrawCmd {
	@:native("ClipRect")
	var clipRect : ImVec4;
	@:native("TextureId")
	var textureId : ImTextureID;
	@:native("VtxOffset")
	var vtxOffset : UInt;
	@:native("IdxOffset")
	var idxOffset : UInt;
	@:native("ElemCount")
	var elemCount : UInt;
	@:native("UserCallback")
	var userCallback : ImDrawCallback;
	@:native("UserCallbackData")
	var userCallbackData : imguijs.VoidPointer;
	@:native("ImDrawCmd")
	static inline extern overload function create():ImDrawCmd {
		return js.Syntax.code("new ImGui.ImDrawCmd()");
	}
}

@:keep @:native("ImDrawChannel") extern class ImDrawChannel {
	@:native("_CmdBuffer")
	var _CmdBuffer : ImVectorImDrawCmd;
	@:native("_IdxBuffer")
	var _IdxBuffer : ImVectorImDrawIdx;
}

@:keep @:native("ImColor") extern class ImColor {
	@:native("Value")
	var value : ImVec4;
	@:native("SetHSV")
	@:overload(function(h:imguijs.Float32, s:imguijs.Float32, v:imguijs.Float32):Void { })
	function setHSV(h:imguijs.Float32, s:imguijs.Float32, v:imguijs.Float32, a:imguijs.Float32):Void;
	@:native("ImColor")
	static inline extern overload function create(r:Int, g:Int, b:Int, a:Int):ImColor {
		return js.Syntax.code("new ImGui.ImColor({0}, {1}, {2}, {3})", r, g, b, a);
	}
	@:native("ImColor")
	static inline extern overload function create(rgba:ImU32):ImColor {
		return js.Syntax.code("new ImGui.ImColor({0})", rgba);
	}
	@:native("ImColor")
	static inline extern overload function create(r:imguijs.Float32, g:imguijs.Float32, b:imguijs.Float32, a:imguijs.Float32):ImColor {
		return js.Syntax.code("new ImGui.ImColor({0}, {1}, {2}, {3})", r, g, b, a);
	}
	@:native("ImColor")
	static inline extern overload function create(col:ImVec4):ImColor {
		return js.Syntax.code("new ImGui.ImColor({0})", col);
	}
	@:native("ImColor")
	static inline extern overload function create():ImColor {
		return js.Syntax.code("new ImGui.ImColor()");
	}
	@:native("HSV")
	@:overload(function(pOut:ImColor, h:imguijs.Float32, s:imguijs.Float32, v:imguijs.Float32):Void { })
	function hSV(pOut:ImColor, h:imguijs.Float32, s:imguijs.Float32, v:imguijs.Float32, a:imguijs.Float32):Void;
}

@:keep @:native("ImBitVector") extern class ImBitVector {
	@:native("Storage")
	var storage : ImVectorImU32;
	@:native("TestBit")
	function testBit(n:Int):Bool;
	@:native("SetBit")
	function setBit(n:Int):Void;
	@:native("Create")
	function create(sz:Int):Void;
	@:native("ClearBit")
	function clearBit(n:Int):Void;
	@:native("Clear")
	function clear():Void;
}

@:keep @:native("ImGui") extern class ImGui {
	@:native("Value")
	@:overload(function(prefix:String, v:Int):Void { })
	@:overload(function(prefix:String, v:UInt):Void { })
	@:overload(function(prefix:String, v:imguijs.Float32, float_format:String):Void { })
	@:overload(function(prefix:String, v:imguijs.Float32):Void { })
	static function value(prefix:String, b:Bool):Void;
	@:native("VSliderScalar")
	@:overload(function(label:String, size:ImVec2, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer, format:String):Bool { })
	@:overload(function(label:String, size:ImVec2, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer):Bool { })
	static function vSliderScalar(label:String, size:ImVec2, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("VSliderInt")
	@:overload(function(label:String, size:ImVec2, v:imguijs.IntPointer, v_min:Int, v_max:Int, format:String):Bool { })
	@:overload(function(label:String, size:ImVec2, v:imguijs.IntPointer, v_min:Int, v_max:Int):Bool { })
	static function vSliderInt(label:String, size:ImVec2, v:imguijs.IntPointer, v_min:Int, v_max:Int, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("VSliderFloat")
	@:overload(function(label:String, size:ImVec2, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String):Bool { })
	@:overload(function(label:String, size:ImVec2, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32):Bool { })
	static function vSliderFloat(label:String, size:ImVec2, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("Unindent")
	@:overload(function():Void { })
	static function unindent(indent_w:imguijs.Float32):Void;
	@:native("TreePush")
	@:overload(function(ptr_id:imguijs.VoidPointer):Void { })
	@:overload(function():Void { })
	static function treePush(str_id:String):Void;
	@:native("TreePop")
	static function treePop():Void;
	@:native("TreeNodeV")
	@:overload(function(ptr_id:imguijs.VoidPointer, fmt:String, args:haxe.extern.Rest<Dynamic>):Bool { })
	static function treeNodeV(str_id:String, fmt:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:native("TreeNodeExV")
	@:overload(function(ptr_id:imguijs.VoidPointer, flags:ImGuiTreeNodeFlags, fmt:String, args:haxe.extern.Rest<Dynamic>):Bool { })
	static function treeNodeExV(str_id:String, flags:ImGuiTreeNodeFlags, fmt:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:native("TreeNodeEx")
	@:overload(function(label:String):Bool { })
	@:overload(function(str_id:String, flags:ImGuiTreeNodeFlags, fmt:String, vargs:haxe.extern.Rest<Dynamic>):Bool { })
	@:overload(function(ptr_id:imguijs.VoidPointer, flags:ImGuiTreeNodeFlags, fmt:String, vargs:haxe.extern.Rest<Dynamic>):Bool { })
	static function treeNodeEx(label:String, flags:ImGuiTreeNodeFlags):Bool;
	@:native("TreeNode")
	@:overload(function(str_id:String, fmt:String, vargs:haxe.extern.Rest<Dynamic>):Bool { })
	@:overload(function(ptr_id:imguijs.VoidPointer, fmt:String, vargs:haxe.extern.Rest<Dynamic>):Bool { })
	static function treeNode(label:String):Bool;
	@:native("TextWrappedV")
	static function textWrappedV(fmt:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:native("TextWrapped")
	static function textWrapped(fmt:String, vargs:haxe.extern.Rest<Dynamic>):Void;
	@:native("TextV")
	static function textV(fmt:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:native("TextUnformatted")
	@:overload(function(text:String):Void { })
	static function textUnformatted(text:String, text_end:String):Void;
	@:native("TextDisabledV")
	static function textDisabledV(fmt:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:native("TextDisabled")
	static function textDisabled(fmt:String, vargs:haxe.extern.Rest<Dynamic>):Void;
	@:native("TextColoredV")
	static function textColoredV(col:ImVec4, fmt:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:native("TextColored")
	static function textColored(col:ImVec4, fmt:String, vargs:haxe.extern.Rest<Dynamic>):Void;
	@:native("Text")
	static function text(fmt:String, vargs:haxe.extern.Rest<Dynamic>):Void;
	@:native("TableSetupScrollFreeze")
	static function tableSetupScrollFreeze(cols:Int, rows:Int):Void;
	@:native("TableSetupColumn")
	@:overload(function(label:String, init_width_or_weight:imguijs.Float32, user_id:ImU32):Void { })
	@:overload(function(label:String, user_id:ImU32):Void { })
	@:overload(function(label:String):Void { })
	static function tableSetupColumn(label:String, flags:ImGuiTableColumnFlags, init_width_or_weight:imguijs.Float32, user_id:ImU32):Void;
	@:native("TableSetColumnIndex")
	static function tableSetColumnIndex(column_n:Int):Bool;
	@:native("TableSetBgColor")
	@:overload(function(target:ImGuiTableBgTarget, color:ImU32):Void { })
	static function tableSetBgColor(target:ImGuiTableBgTarget, color:ImU32, column_n:Int):Void;
	@:native("TableNextRow")
	@:overload(function(row_flags:ImGuiTableRowFlags):Void { })
	@:overload(function():Void { })
	static function tableNextRow(row_flags:ImGuiTableRowFlags, min_row_height:imguijs.Float32):Void;
	@:native("TableNextColumn")
	static function tableNextColumn():Bool;
	@:native("TableHeadersRow")
	static function tableHeadersRow():Void;
	@:native("TableHeader")
	static function tableHeader(label:String):Void;
	@:native("TableGetSortSpecs")
	static function tableGetSortSpecs():ImGuiTableSortSpecs;
	@:native("TableGetRowIndex")
	static function tableGetRowIndex():Int;
	@:native("TableGetColumnName")
	@:overload(function():String { })
	static function tableGetColumnName(column_n:Int):String;
	@:native("TableGetColumnIndex")
	static function tableGetColumnIndex():Int;
	@:native("TableGetColumnFlags")
	@:overload(function():ImGuiTableColumnFlags { })
	static function tableGetColumnFlags(column_n:Int):ImGuiTableColumnFlags;
	@:native("TableGetColumnCount")
	static function tableGetColumnCount():Int;
	@:native("TabItemButton")
	@:overload(function(label:String):Bool { })
	static function tabItemButton(label:String, flags:ImGuiTabItemFlags):Bool;
	@:native("StyleColorsLight")
	@:overload(function():Void { })
	static function styleColorsLight(dst:ImGuiStyle):Void;
	@:native("StyleColorsDark")
	@:overload(function():Void { })
	static function styleColorsDark(dst:ImGuiStyle):Void;
	@:native("StyleColorsClassic")
	@:overload(function():Void { })
	static function styleColorsClassic(dst:ImGuiStyle):Void;
	@:native("Spacing")
	static function spacing():Void;
	@:native("SmallButton")
	static function smallButton(label:String):Bool;
	@:native("SliderScalarN")
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer, format:String):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer):Bool { })
	static function sliderScalarN(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("SliderScalar")
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer, format:String):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer):Bool { })
	static function sliderScalar(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("SliderInt4")
	@:overload(function(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int):Bool { })
	static function sliderInt4(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("SliderInt3")
	@:overload(function(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int):Bool { })
	static function sliderInt3(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("SliderInt2")
	@:overload(function(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int):Bool { })
	static function sliderInt2(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("SliderInt")
	@:overload(function(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int):Bool { })
	static function sliderInt(label:String, v:imguijs.IntPointer, v_min:Int, v_max:Int, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("SliderFloat4")
	@:overload(function(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32):Bool { })
	static function sliderFloat4(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("SliderFloat3")
	@:overload(function(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32):Bool { })
	static function sliderFloat3(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("SliderFloat2")
	@:overload(function(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32):Bool { })
	static function sliderFloat2(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("SliderFloat")
	@:overload(function(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32):Bool { })
	static function sliderFloat(label:String, v:imguijs.FloatPointer, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("SliderAngle")
	@:overload(function(label:String, v_rad:imguijs.FloatPointer, v_degrees_min:imguijs.Float32, v_degrees_max:imguijs.Float32, format:String):Bool { })
	@:overload(function(label:String, v_rad:imguijs.FloatPointer, v_degrees_min:imguijs.Float32, v_degrees_max:imguijs.Float32):Bool { })
	@:overload(function(label:String, v_rad:imguijs.FloatPointer, v_degrees_min:imguijs.Float32):Bool { })
	@:overload(function(label:String, v_rad:imguijs.FloatPointer):Bool { })
	static function sliderAngle(label:String, v_rad:imguijs.FloatPointer, v_degrees_min:imguijs.Float32, v_degrees_max:imguijs.Float32, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("ShowUserGuide")
	static function showUserGuide():Void;
	@:native("ShowStyleSelector")
	static function showStyleSelector(label:String):Bool;
	@:native("ShowStyleEditor")
	@:overload(function():Void { })
	static function showStyleEditor(ref:ImGuiStyle):Void;
	@:native("ShowMetricsWindow")
	@:overload(function():Void { })
	static function showMetricsWindow(p_open:imguijs.BoolPointer):Void;
	@:native("ShowFontSelector")
	static function showFontSelector(label:String):Void;
	@:native("ShowDemoWindow")
	@:overload(function():Void { })
	static function showDemoWindow(p_open:imguijs.BoolPointer):Void;
	@:native("ShowAboutWindow")
	@:overload(function():Void { })
	static function showAboutWindow(p_open:imguijs.BoolPointer):Void;
	@:native("SetWindowSize")
	@:overload(function(size:ImVec2):Void { })
	@:overload(function(name:String, size:ImVec2, cond:ImGuiCond):Void { })
	@:overload(function(name:String, size:ImVec2):Void { })
	static function setWindowSize(size:ImVec2, cond:ImGuiCond):Void;
	@:native("SetWindowPos")
	@:overload(function(pos:ImVec2):Void { })
	@:overload(function(name:String, pos:ImVec2, cond:ImGuiCond):Void { })
	@:overload(function(name:String, pos:ImVec2):Void { })
	static function setWindowPos(pos:ImVec2, cond:ImGuiCond):Void;
	@:native("SetWindowFontScale")
	static function setWindowFontScale(scale:imguijs.Float32):Void;
	@:native("SetWindowFocus")
	@:overload(function(name:String):Void { })
	static function setWindowFocus():Void;
	@:native("SetWindowCollapsed")
	@:overload(function(collapsed:Bool):Void { })
	@:overload(function(name:String, collapsed:Bool, cond:ImGuiCond):Void { })
	@:overload(function(name:String, collapsed:Bool):Void { })
	static function setWindowCollapsed(collapsed:Bool, cond:ImGuiCond):Void;
	@:native("SetTooltipV")
	static function setTooltipV(fmt:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:native("SetTooltip")
	static function setTooltip(fmt:String, vargs:haxe.extern.Rest<Dynamic>):Void;
	@:native("SetTabItemClosed")
	static function setTabItemClosed(tab_or_docked_window_label:String):Void;
	@:native("SetStateStorage")
	static function setStateStorage(storage:ImGuiStorage):Void;
	@:native("SetScrollY")
	static function setScrollY(scroll_y:imguijs.Float32):Void;
	@:native("SetScrollX")
	static function setScrollX(scroll_x:imguijs.Float32):Void;
	@:native("SetScrollHereY")
	@:overload(function():Void { })
	static function setScrollHereY(center_y_ratio:imguijs.Float32):Void;
	@:native("SetScrollHereX")
	@:overload(function():Void { })
	static function setScrollHereX(center_x_ratio:imguijs.Float32):Void;
	@:native("SetScrollFromPosY")
	@:overload(function(local_y:imguijs.Float32):Void { })
	static function setScrollFromPosY(local_y:imguijs.Float32, center_y_ratio:imguijs.Float32):Void;
	@:native("SetScrollFromPosX")
	@:overload(function(local_x:imguijs.Float32):Void { })
	static function setScrollFromPosX(local_x:imguijs.Float32, center_x_ratio:imguijs.Float32):Void;
	@:native("SetNextWindowSizeConstraints")
	@:overload(function(size_min:ImVec2, size_max:ImVec2, custom_callback_data:imguijs.VoidPointer):Void { })
	@:overload(function(size_min:ImVec2, size_max:ImVec2):Void { })
	static function setNextWindowSizeConstraints(size_min:ImVec2, size_max:ImVec2, custom_callback:ImGuiSizeCallback, custom_callback_data:imguijs.VoidPointer):Void;
	@:native("SetNextWindowSize")
	@:overload(function(size:ImVec2):Void { })
	static function setNextWindowSize(size:ImVec2, cond:ImGuiCond):Void;
	@:native("SetNextWindowPos")
	@:overload(function(pos:ImVec2, pivot:ImVec2):Void { })
	@:overload(function(pos:ImVec2):Void { })
	static function setNextWindowPos(pos:ImVec2, cond:ImGuiCond, pivot:ImVec2):Void;
	@:native("SetNextWindowFocus")
	static function setNextWindowFocus():Void;
	@:native("SetNextWindowContentSize")
	static function setNextWindowContentSize(size:ImVec2):Void;
	@:native("SetNextWindowCollapsed")
	@:overload(function(collapsed:Bool):Void { })
	static function setNextWindowCollapsed(collapsed:Bool, cond:ImGuiCond):Void;
	@:native("SetNextWindowBgAlpha")
	static function setNextWindowBgAlpha(alpha:imguijs.Float32):Void;
	@:native("SetNextItemWidth")
	static function setNextItemWidth(item_width:imguijs.Float32):Void;
	@:native("SetNextItemOpen")
	@:overload(function(is_open:Bool):Void { })
	static function setNextItemOpen(is_open:Bool, cond:ImGuiCond):Void;
	@:native("SetMouseCursor")
	static function setMouseCursor(cursor_type:ImGuiMouseCursor):Void;
	@:native("SetKeyboardFocusHere")
	@:overload(function():Void { })
	static function setKeyboardFocusHere(offset:Int):Void;
	@:native("SetItemDefaultFocus")
	static function setItemDefaultFocus():Void;
	@:native("SetItemAllowOverlap")
	static function setItemAllowOverlap():Void;
	@:native("SetDragDropPayload")
	@:overload(function(type:String, data:imguijs.VoidPointer, sz:imguijs.SizeT):Bool { })
	static function setDragDropPayload(type:String, data:imguijs.VoidPointer, sz:imguijs.SizeT, cond:ImGuiCond):Bool;
	@:native("SetCursorScreenPos")
	static function setCursorScreenPos(pos:ImVec2):Void;
	@:native("SetCursorPosY")
	static function setCursorPosY(local_y:imguijs.Float32):Void;
	@:native("SetCursorPosX")
	static function setCursorPosX(local_x:imguijs.Float32):Void;
	@:native("SetCursorPos")
	static function setCursorPos(local_pos:ImVec2):Void;
	@:native("SetCurrentContext")
	static function setCurrentContext(ctx:ImGuiContext):Void;
	@:native("SetColumnWidth")
	static function setColumnWidth(column_index:Int, width:imguijs.Float32):Void;
	@:native("SetColumnOffset")
	static function setColumnOffset(column_index:Int, offset_x:imguijs.Float32):Void;
	@:native("SetColorEditOptions")
	static function setColorEditOptions(flags:ImGuiColorEditFlags):Void;
	@:native("SetClipboardText")
	static function setClipboardText(text:String):Void;
	@:native("SetAllocatorFunctions")
	@:overload(function(alloc_func:imguijs.Callable<(imguijs.SizeT, Dynamic) -> imguijs.VoidPointer>, free_func:imguijs.Callable<(Dynamic, Dynamic) -> Void>):Void { })
	static function setAllocatorFunctions(alloc_func:imguijs.Callable<(imguijs.SizeT, Dynamic) -> imguijs.VoidPointer>, free_func:imguijs.Callable<(Dynamic, Dynamic) -> Void>, user_data:imguijs.VoidPointer):Void;
	@:native("Separator")
	static function separator():Void;
	@:native("Selectable")
	@:overload(function(label:String, selected:Bool, size:ImVec2):Bool { })
	@:overload(function(label:String, size:ImVec2):Bool { })
	@:overload(function(label:String):Bool { })
	@:overload(function(label:String, p_selected:imguijs.BoolPointer, flags:ImGuiSelectableFlags, size:ImVec2):Bool { })
	@:overload(function(label:String, p_selected:imguijs.BoolPointer, size:ImVec2):Bool { })
	@:overload(function(label:String, p_selected:imguijs.BoolPointer):Bool { })
	static function selectable(label:String, selected:Bool, flags:ImGuiSelectableFlags, size:ImVec2):Bool;
	@:native("SaveIniSettingsToMemory")
	@:overload(function():String { })
	static function saveIniSettingsToMemory(out_ini_size:imguijs.SizeT):String;
	@:native("SaveIniSettingsToDisk")
	static function saveIniSettingsToDisk(ini_filename:String):Void;
	@:native("SameLine")
	@:overload(function(spacing:imguijs.Float32):Void { })
	@:overload(function():Void { })
	static function sameLine(offset_from_start_x:imguijs.Float32, spacing:imguijs.Float32):Void;
	@:native("ResetMouseDragDelta")
	@:overload(function():Void { })
	static function resetMouseDragDelta(button:ImGuiMouseButton):Void;
	@:native("Render")
	static function render():Void;
	@:native("RadioButton")
	@:overload(function(label:String, v:imguijs.IntPointer, v_button:Int):Bool { })
	static function radioButton(label:String, active:Bool):Bool;
	@:native("PushTextWrapPos")
	@:overload(function():Void { })
	static function pushTextWrapPos(wrap_local_pos_x:imguijs.Float32):Void;
	@:native("PushStyleVar")
	@:overload(function(idx:ImGuiStyleVar, val:ImVec2):Void { })
	static function pushStyleVar(idx:ImGuiStyleVar, val:imguijs.Float32):Void;
	@:native("PushStyleColor")
	@:overload(function(idx:ImGuiCol, col:ImVec4):Void { })
	static function pushStyleColor(idx:ImGuiCol, col:ImU32):Void;
	@:native("PushItemWidth")
	static function pushItemWidth(item_width:imguijs.Float32):Void;
	@:native("PushID")
	@:overload(function(str_id_begin:String, str_id_end:String):Void { })
	@:overload(function(ptr_id:imguijs.VoidPointer):Void { })
	@:overload(function(int_id:Int):Void { })
	static function pushID(str_id:String):Void;
	@:native("PushFont")
	static function pushFont(font:ImFont):Void;
	@:native("PushClipRect")
	static function pushClipRect(clip_rect_min:ImVec2, clip_rect_max:ImVec2, intersect_with_current_clip_rect:Bool):Void;
	@:native("PushButtonRepeat")
	static function pushButtonRepeat(repeat:Bool):Void;
	@:native("PushAllowKeyboardFocus")
	static function pushAllowKeyboardFocus(allow_keyboard_focus:Bool):Void;
	@:native("ProgressBar")
	@:overload(function(fraction:imguijs.Float32, size_arg:ImVec2):Void { })
	@:overload(function(fraction:imguijs.Float32):Void { })
	static function progressBar(fraction:imguijs.Float32, size_arg:ImVec2, overlay:String):Void;
	@:native("PopTextWrapPos")
	static function popTextWrapPos():Void;
	@:native("PopStyleVar")
	@:overload(function():Void { })
	static function popStyleVar(count:Int):Void;
	@:native("PopStyleColor")
	@:overload(function():Void { })
	static function popStyleColor(count:Int):Void;
	@:native("PopItemWidth")
	static function popItemWidth():Void;
	@:native("PopID")
	static function popID():Void;
	@:native("PopFont")
	static function popFont():Void;
	@:native("PopClipRect")
	static function popClipRect():Void;
	@:native("PopButtonRepeat")
	static function popButtonRepeat():Void;
	@:native("PopAllowKeyboardFocus")
	static function popAllowKeyboardFocus():Void;
	@:native("PlotLines")
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int, overlay_text:String, scale_min:imguijs.Float32, scale_max:imguijs.Float32, stride:Int):Void { })
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int, scale_min:imguijs.Float32, scale_max:imguijs.Float32, stride:Int):Void { })
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int, scale_min:imguijs.Float32, stride:Int):Void { })
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int, stride:Int):Void { })
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int):Void { })
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int, values_offset:Int, overlay_text:String, scale_min:imguijs.Float32, scale_max:imguijs.Float32, graph_size:ImVec2):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int, values_offset:Int, overlay_text:String, scale_min:imguijs.Float32, scale_max:imguijs.Float32):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int, values_offset:Int, scale_min:imguijs.Float32, scale_max:imguijs.Float32):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int, values_offset:Int, scale_min:imguijs.Float32):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int, values_offset:Int):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int):Void { })
	static function plotLines(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int, overlay_text:String, scale_min:imguijs.Float32, scale_max:imguijs.Float32, graph_size:ImVec2, stride:Int):Void;
	@:native("PlotHistogram")
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int, overlay_text:String, scale_min:imguijs.Float32, scale_max:imguijs.Float32, stride:Int):Void { })
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int, scale_min:imguijs.Float32, scale_max:imguijs.Float32, stride:Int):Void { })
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int, scale_min:imguijs.Float32, stride:Int):Void { })
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int, stride:Int):Void { })
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int):Void { })
	@:overload(function(label:String, values:imguijs.FloatPointer, values_count:Int):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int, values_offset:Int, overlay_text:String, scale_min:imguijs.Float32, scale_max:imguijs.Float32, graph_size:ImVec2):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int, values_offset:Int, overlay_text:String, scale_min:imguijs.Float32, scale_max:imguijs.Float32):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int, values_offset:Int, scale_min:imguijs.Float32, scale_max:imguijs.Float32):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int, values_offset:Int, scale_min:imguijs.Float32):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int, values_offset:Int):Void { })
	@:overload(function(label:String, values_getter:imguijs.Callable<(Dynamic, Int) -> imguijs.Float32>, data:imguijs.VoidPointer, values_count:Int):Void { })
	static function plotHistogram(label:String, values:imguijs.FloatPointer, values_count:Int, values_offset:Int, overlay_text:String, scale_min:imguijs.Float32, scale_max:imguijs.Float32, graph_size:ImVec2, stride:Int):Void;
	@:native("OpenPopupOnItemClick")
	@:overload(function(str_id:String):Void { })
	@:overload(function():Void { })
	static function openPopupOnItemClick(str_id:String, popup_flags:ImGuiPopupFlags):Void;
	@:native("OpenPopup")
	@:overload(function(str_id:String):Void { })
	static function openPopup(str_id:String, popup_flags:ImGuiPopupFlags):Void;
	@:native("NextColumn")
	static function nextColumn():Void;
	@:native("NewLine")
	static function newLine():Void;
	@:native("NewFrame")
	static function newFrame():Void;
	@:native("MenuItem")
	@:overload(function(label:String, shortcut:String, selected:Bool):Bool { })
	@:overload(function(label:String, shortcut:String):Bool { })
	@:overload(function(label:String):Bool { })
	@:overload(function(label:String, shortcut:String, p_selected:imguijs.BoolPointer, enabled:Bool):Bool { })
	@:overload(function(label:String, shortcut:String, p_selected:imguijs.BoolPointer):Bool { })
	static function menuItem(label:String, shortcut:String, selected:Bool, enabled:Bool):Bool;
	@:native("MemFree")
	static function memFree(ptr:imguijs.VoidPointer):Void;
	@:native("MemAlloc")
	static function memAlloc(size:imguijs.SizeT):imguijs.VoidPointer;
	@:native("LogToTTY")
	@:overload(function():Void { })
	static function logToTTY(auto_open_depth:Int):Void;
	@:native("LogToFile")
	@:overload(function(filename:String):Void { })
	@:overload(function():Void { })
	static function logToFile(auto_open_depth:Int, filename:String):Void;
	@:native("LogToClipboard")
	@:overload(function():Void { })
	static function logToClipboard(auto_open_depth:Int):Void;
	@:native("LogText")
	static function logText(fmt:String, vargs:haxe.extern.Rest<Dynamic>):Void;
	@:native("LogFinish")
	static function logFinish():Void;
	@:native("LogButtons")
	static function logButtons():Void;
	@:native("LoadIniSettingsFromMemory")
	@:overload(function(ini_data:String):Void { })
	static function loadIniSettingsFromMemory(ini_data:String, ini_size:imguijs.SizeT):Void;
	@:native("LoadIniSettingsFromDisk")
	static function loadIniSettingsFromDisk(ini_filename:String):Void;
	@:native("ListBoxHeader")
	@:overload(function(label:String):Bool { })
	@:overload(function(label:String, items_count:Int, height_in_items:Int):Bool { })
	@:overload(function(label:String, items_count:Int):Bool { })
	static function listBoxHeader(label:String, size:ImVec2):Bool;
	@:native("ListBoxFooter")
	static function listBoxFooter():Void;
	@:native("ListBox")
	@:overload(function(label:String, current_item:imguijs.IntPointer, items:String, items_count:Int):Bool { })
	@:overload(function(label:String, current_item:imguijs.IntPointer, items_getter:imguijs.Callable<(Dynamic, Int, imguijs.RawConstPointer<imguijs.Char>) -> Bool>, data:imguijs.VoidPointer, items_count:Int, height_in_items:Int):Bool { })
	@:overload(function(label:String, current_item:imguijs.IntPointer, items_getter:imguijs.Callable<(Dynamic, Int, imguijs.RawConstPointer<imguijs.Char>) -> Bool>, data:imguijs.VoidPointer, items_count:Int):Bool { })
	static function listBox(label:String, current_item:imguijs.IntPointer, items:String, items_count:Int, height_in_items:Int):Bool;
	@:native("LabelTextV")
	static function labelTextV(label:String, fmt:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:native("LabelText")
	static function labelText(label:String, fmt:String, vargs:haxe.extern.Rest<Dynamic>):Void;
	@:native("IsWindowHovered")
	@:overload(function():Bool { })
	static function isWindowHovered(flags:ImGuiHoveredFlags):Bool;
	@:native("IsWindowFocused")
	@:overload(function():Bool { })
	static function isWindowFocused(flags:ImGuiFocusedFlags):Bool;
	@:native("IsWindowCollapsed")
	static function isWindowCollapsed():Bool;
	@:native("IsWindowAppearing")
	static function isWindowAppearing():Bool;
	@:native("IsRectVisible")
	@:overload(function(rect_min:ImVec2, rect_max:ImVec2):Bool { })
	static function isRectVisible(size:ImVec2):Bool;
	@:native("IsPopupOpen")
	@:overload(function(str_id:String):Bool { })
	static function isPopupOpen(str_id:String, flags:ImGuiPopupFlags):Bool;
	@:native("IsMouseReleased")
	static function isMouseReleased(button:ImGuiMouseButton):Bool;
	@:native("IsMousePosValid")
	@:overload(function():Bool { })
	static function isMousePosValid(mouse_pos:ImVec2):Bool;
	@:native("IsMouseHoveringRect")
	@:overload(function(r_min:ImVec2, r_max:ImVec2):Bool { })
	static function isMouseHoveringRect(r_min:ImVec2, r_max:ImVec2, clip:Bool):Bool;
	@:native("IsMouseDragging")
	@:overload(function(button:ImGuiMouseButton):Bool { })
	static function isMouseDragging(button:ImGuiMouseButton, lock_threshold:imguijs.Float32):Bool;
	@:native("IsMouseDown")
	static function isMouseDown(button:ImGuiMouseButton):Bool;
	@:native("IsMouseDoubleClicked")
	static function isMouseDoubleClicked(button:ImGuiMouseButton):Bool;
	@:native("IsMouseClicked")
	@:overload(function(button:ImGuiMouseButton):Bool { })
	static function isMouseClicked(button:ImGuiMouseButton, repeat:Bool):Bool;
	@:native("IsKeyReleased")
	static function isKeyReleased(user_key_index:Int):Bool;
	@:native("IsKeyPressed")
	@:overload(function(user_key_index:Int):Bool { })
	static function isKeyPressed(user_key_index:Int, repeat:Bool):Bool;
	@:native("IsKeyDown")
	static function isKeyDown(user_key_index:Int):Bool;
	@:native("IsItemVisible")
	static function isItemVisible():Bool;
	@:native("IsItemToggledOpen")
	static function isItemToggledOpen():Bool;
	@:native("IsItemHovered")
	@:overload(function():Bool { })
	static function isItemHovered(flags:ImGuiHoveredFlags):Bool;
	@:native("IsItemFocused")
	static function isItemFocused():Bool;
	@:native("IsItemEdited")
	static function isItemEdited():Bool;
	@:native("IsItemDeactivatedAfterEdit")
	static function isItemDeactivatedAfterEdit():Bool;
	@:native("IsItemDeactivated")
	static function isItemDeactivated():Bool;
	@:native("IsItemClicked")
	@:overload(function():Bool { })
	static function isItemClicked(mouse_button:ImGuiMouseButton):Bool;
	@:native("IsItemActive")
	static function isItemActive():Bool;
	@:native("IsItemActivated")
	static function isItemActivated():Bool;
	@:native("IsAnyMouseDown")
	static function isAnyMouseDown():Bool;
	@:native("IsAnyItemHovered")
	static function isAnyItemHovered():Bool;
	@:native("IsAnyItemFocused")
	static function isAnyItemFocused():Bool;
	@:native("IsAnyItemActive")
	static function isAnyItemActive():Bool;
	@:native("InvisibleButton")
	@:overload(function(str_id:String, size:ImVec2):Bool { })
	static function invisibleButton(str_id:String, size:ImVec2, flags:ImGuiButtonFlags):Bool;
	@:native("InputTextWithHint")
	@:overload(function(label:String, hint:String, buf:imguijs.Char, buf_size:imguijs.SizeT, flags:ImGuiInputTextFlags, user_data:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, hint:String, buf:imguijs.Char, buf_size:imguijs.SizeT, user_data:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, hint:String, buf:imguijs.Char, buf_size:imguijs.SizeT):Bool { })
	static function inputTextWithHint(label:String, hint:String, buf:imguijs.Char, buf_size:imguijs.SizeT, flags:ImGuiInputTextFlags, callback:ImGuiInputTextCallback, user_data:imguijs.VoidPointer):Bool;
	@:native("InputTextMultiline")
	@:overload(function(label:String, buf:imguijs.Char, buf_size:imguijs.SizeT, size:ImVec2, flags:ImGuiInputTextFlags, user_data:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, buf:imguijs.Char, buf_size:imguijs.SizeT, size:ImVec2, user_data:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, buf:imguijs.Char, buf_size:imguijs.SizeT, user_data:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, buf:imguijs.Char, buf_size:imguijs.SizeT):Bool { })
	static function inputTextMultiline(label:String, buf:imguijs.Char, buf_size:imguijs.SizeT, size:ImVec2, flags:ImGuiInputTextFlags, callback:ImGuiInputTextCallback, user_data:imguijs.VoidPointer):Bool;
	@:native("InputText")
	@:overload(function(label:String, buf:imguijs.Char, buf_size:imguijs.SizeT, flags:ImGuiInputTextFlags, user_data:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, buf:imguijs.Char, buf_size:imguijs.SizeT, user_data:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, buf:imguijs.Char, buf_size:imguijs.SizeT):Bool { })
	static function inputText(label:String, buf:imguijs.Char, buf_size:imguijs.SizeT, flags:ImGuiInputTextFlags, callback:ImGuiInputTextCallback, user_data:imguijs.VoidPointer):Bool;
	@:native("InputScalarN")
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, p_step:imguijs.VoidPointer, p_step_fast:imguijs.VoidPointer, format:String):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, p_step:imguijs.VoidPointer, p_step_fast:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, p_step_fast:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int):Bool { })
	static function inputScalarN(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, p_step:imguijs.VoidPointer, p_step_fast:imguijs.VoidPointer, format:String, flags:ImGuiInputTextFlags):Bool;
	@:native("InputScalar")
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, p_step:imguijs.VoidPointer, p_step_fast:imguijs.VoidPointer, format:String):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, p_step:imguijs.VoidPointer, p_step_fast:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, p_step_fast:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer):Bool { })
	static function inputScalar(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, p_step:imguijs.VoidPointer, p_step_fast:imguijs.VoidPointer, format:String, flags:ImGuiInputTextFlags):Bool;
	@:native("InputInt4")
	@:overload(function(label:String, v:imguijs.IntPointer):Bool { })
	static function inputInt4(label:String, v:imguijs.IntPointer, flags:ImGuiInputTextFlags):Bool;
	@:native("InputInt3")
	@:overload(function(label:String, v:imguijs.IntPointer):Bool { })
	static function inputInt3(label:String, v:imguijs.IntPointer, flags:ImGuiInputTextFlags):Bool;
	@:native("InputInt2")
	@:overload(function(label:String, v:imguijs.IntPointer):Bool { })
	static function inputInt2(label:String, v:imguijs.IntPointer, flags:ImGuiInputTextFlags):Bool;
	@:native("InputInt")
	@:overload(function(label:String, v:imguijs.IntPointer, step:Int, step_fast:Int):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, step_fast:Int):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer):Bool { })
	static function inputInt(label:String, v:imguijs.IntPointer, step:Int, step_fast:Int, flags:ImGuiInputTextFlags):Bool;
	@:native("InputFloat4")
	@:overload(function(label:String, v:imguijs.FloatPointer, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer):Bool { })
	static function inputFloat4(label:String, v:imguijs.FloatPointer, format:String, flags:ImGuiInputTextFlags):Bool;
	@:native("InputFloat3")
	@:overload(function(label:String, v:imguijs.FloatPointer, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer):Bool { })
	static function inputFloat3(label:String, v:imguijs.FloatPointer, format:String, flags:ImGuiInputTextFlags):Bool;
	@:native("InputFloat2")
	@:overload(function(label:String, v:imguijs.FloatPointer, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer):Bool { })
	static function inputFloat2(label:String, v:imguijs.FloatPointer, format:String, flags:ImGuiInputTextFlags):Bool;
	@:native("InputFloat")
	@:overload(function(label:String, v:imguijs.FloatPointer, step:imguijs.Float32, step_fast:imguijs.Float32, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, step:imguijs.Float32, step_fast:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, step_fast:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer):Bool { })
	static function inputFloat(label:String, v:imguijs.FloatPointer, step:imguijs.Float32, step_fast:imguijs.Float32, format:String, flags:ImGuiInputTextFlags):Bool;
	@:native("InputDouble")
	@:overload(function(label:String, v:Float, step:Float, step_fast:Float, format:String):Bool { })
	@:overload(function(label:String, v:Float, step:Float, step_fast:Float):Bool { })
	@:overload(function(label:String, v:Float, step_fast:Float):Bool { })
	@:overload(function(label:String, v:Float):Bool { })
	static function inputDouble(label:String, v:Float, step:Float, step_fast:Float, format:String, flags:ImGuiInputTextFlags):Bool;
	@:native("Indent")
	@:overload(function():Void { })
	static function indent(indent_w:imguijs.Float32):Void;
	@:native("ImageButton")
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2, frame_padding:Int, tint_col:ImVec4):Bool { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2, tint_col:ImVec4):Bool { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2):Bool { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv1:ImVec2):Bool { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2):Bool { })
	static function imageButton(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2, frame_padding:Int, bg_col:ImVec4, tint_col:ImVec4):Bool;
	@:native("Image")
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2, tint_col:ImVec4):Void { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2):Void { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv1:ImVec2):Void { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2):Void { })
	static function image(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2, tint_col:ImVec4, border_col:ImVec4):Void;
	@:native("GetWindowWidth")
	static function getWindowWidth():imguijs.Float32;
	@:native("GetWindowSize")
	static function getWindowSize(pOut:ImVec2):Void;
	@:native("GetWindowPos")
	static function getWindowPos(pOut:ImVec2):Void;
	@:native("GetWindowHeight")
	static function getWindowHeight():imguijs.Float32;
	@:native("GetWindowDrawList")
	static function getWindowDrawList():ImDrawList;
	@:native("GetWindowContentRegionWidth")
	static function getWindowContentRegionWidth():imguijs.Float32;
	@:native("GetWindowContentRegionMin")
	static function getWindowContentRegionMin(pOut:ImVec2):Void;
	@:native("GetWindowContentRegionMax")
	static function getWindowContentRegionMax(pOut:ImVec2):Void;
	@:native("GetVersion")
	static function getVersion():String;
	@:native("GetTreeNodeToLabelSpacing")
	static function getTreeNodeToLabelSpacing():imguijs.Float32;
	@:native("GetTime")
	static function getTime():Float;
	@:native("GetTextLineHeightWithSpacing")
	static function getTextLineHeightWithSpacing():imguijs.Float32;
	@:native("GetTextLineHeight")
	static function getTextLineHeight():imguijs.Float32;
	@:native("GetStyleColorVec4")
	static function getStyleColorVec4(idx:ImGuiCol):ImVec4;
	@:native("GetStyleColorName")
	static function getStyleColorName(idx:ImGuiCol):String;
	@:native("GetStyle")
	static function getStyle():ImGuiStyle;
	@:native("GetStateStorage")
	static function getStateStorage():ImGuiStorage;
	@:native("GetScrollY")
	static function getScrollY():imguijs.Float32;
	@:native("GetScrollX")
	static function getScrollX():imguijs.Float32;
	@:native("GetScrollMaxY")
	static function getScrollMaxY():imguijs.Float32;
	@:native("GetScrollMaxX")
	static function getScrollMaxX():imguijs.Float32;
	@:native("GetMousePosOnOpeningCurrentPopup")
	static function getMousePosOnOpeningCurrentPopup(pOut:ImVec2):Void;
	@:native("GetMousePos")
	static function getMousePos(pOut:ImVec2):Void;
	@:native("GetMouseDragDelta")
	@:overload(function(pOut:ImVec2, lock_threshold:imguijs.Float32):Void { })
	@:overload(function(pOut:ImVec2):Void { })
	static function getMouseDragDelta(pOut:ImVec2, button:ImGuiMouseButton, lock_threshold:imguijs.Float32):Void;
	@:native("GetMouseCursor")
	static function getMouseCursor():ImGuiMouseCursor;
	@:native("GetKeyPressedAmount")
	static function getKeyPressedAmount(key_index:Int, repeat_delay:imguijs.Float32, rate:imguijs.Float32):Int;
	@:native("GetKeyIndex")
	static function getKeyIndex(imgui_key:ImGuiKey):Int;
	@:native("GetItemRectSize")
	static function getItemRectSize():ImVec2;
	@:native("GetItemRectMin")
	static function getItemRectMin():ImVec2;
	@:native("GetItemRectMax")
	static function getItemRectMax():ImVec2;
	@:native("GetIO")
	static function getIO():ImGuiIO;
	@:native("GetID")
	@:overload(function(str_id_begin:String, str_id_end:String):ImGuiID { })
	@:overload(function(ptr_id:imguijs.VoidPointer):ImGuiID { })
	static function getID(str_id:String):ImGuiID;
	@:native("GetFrameHeightWithSpacing")
	static function getFrameHeightWithSpacing():imguijs.Float32;
	@:native("GetFrameHeight")
	static function getFrameHeight():imguijs.Float32;
	@:native("GetFrameCount")
	static function getFrameCount():Int;
	@:native("GetForegroundDrawList")
	static function getForegroundDrawList():ImDrawList;
	@:native("GetFontTexUvWhitePixel")
	static function getFontTexUvWhitePixel(pOut:ImVec2):Void;
	@:native("GetFontSize")
	static function getFontSize():imguijs.Float32;
	@:native("GetFont")
	static function getFont():ImFont;
	@:native("GetDrawListSharedData")
	static function getDrawListSharedData():ImDrawListSharedData;
	@:native("GetDrawData")
	static function getDrawData():ImDrawData;
	@:native("GetDragDropPayload")
	static function getDragDropPayload():ImGuiPayload;
	@:native("GetCursorStartPos")
	static function getCursorStartPos(pOut:ImVec2):Void;
	@:native("GetCursorScreenPos")
	static function getCursorScreenPos(pOut:ImVec2):Void;
	@:native("GetCursorPosY")
	static function getCursorPosY():imguijs.Float32;
	@:native("GetCursorPosX")
	static function getCursorPosX():imguijs.Float32;
	@:native("GetCursorPos")
	static function getCursorPos(pOut:ImVec2):Void;
	@:native("GetCurrentContext")
	static function getCurrentContext():ImGuiContext;
	@:native("GetContentRegionMax")
	static function getContentRegionMax(pOut:ImVec2):Void;
	@:native("GetContentRegionAvail")
	static function getContentRegionAvail(pOut:ImVec2):Void;
	@:native("GetColumnsCount")
	static function getColumnsCount():Int;
	@:native("GetColumnWidth")
	@:overload(function():imguijs.Float32 { })
	static function getColumnWidth(column_index:Int):imguijs.Float32;
	@:native("GetColumnOffset")
	@:overload(function():imguijs.Float32 { })
	static function getColumnOffset(column_index:Int):imguijs.Float32;
	@:native("GetColumnIndex")
	static function getColumnIndex():Int;
	@:native("GetColorU32")
	@:overload(function(idx:ImGuiCol):ImU32 { })
	@:overload(function(col:ImVec4):ImU32 { })
	@:overload(function(col:ImU32):ImU32 { })
	static function getColorU32(idx:ImGuiCol, alpha_mul:imguijs.Float32):ImU32;
	@:native("GetClipboardText")
	static function getClipboardText():String;
	@:native("GetBackgroundDrawList")
	static function getBackgroundDrawList():ImDrawList;
	@:native("EndTooltip")
	static function endTooltip():Void;
	@:native("EndTable")
	static function endTable():Void;
	@:native("EndTabItem")
	static function endTabItem():Void;
	@:native("EndTabBar")
	static function endTabBar():Void;
	@:native("EndPopup")
	static function endPopup():Void;
	@:native("EndMenuBar")
	static function endMenuBar():Void;
	@:native("EndMenu")
	static function endMenu():Void;
	@:native("EndMainMenuBar")
	static function endMainMenuBar():Void;
	@:native("EndGroup")
	static function endGroup():Void;
	@:native("EndFrame")
	static function endFrame():Void;
	@:native("EndDragDropTarget")
	static function endDragDropTarget():Void;
	@:native("EndDragDropSource")
	static function endDragDropSource():Void;
	@:native("EndCombo")
	static function endCombo():Void;
	@:native("EndChildFrame")
	static function endChildFrame():Void;
	@:native("EndChild")
	static function endChild():Void;
	@:native("End")
	static function end():Void;
	@:native("Dummy")
	static function dummy(size:ImVec2):Void;
	@:native("DragScalarN")
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, v_speed:imguijs.Float32, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer, format:String):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, v_speed:imguijs.Float32, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, v_speed:imguijs.Float32, p_min:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, v_speed:imguijs.Float32):Bool { })
	static function dragScalarN(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, components:Int, v_speed:imguijs.Float32, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("DragScalar")
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, v_speed:imguijs.Float32, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer, format:String):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, v_speed:imguijs.Float32, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, v_speed:imguijs.Float32, p_min:imguijs.VoidPointer):Bool { })
	@:overload(function(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, v_speed:imguijs.Float32):Bool { })
	static function dragScalar(label:String, data_type:ImGuiDataType, p_data:imguijs.VoidPointer, v_speed:imguijs.Float32, p_min:imguijs.VoidPointer, p_max:imguijs.VoidPointer, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("DragIntRange2")
	@:overload(function(label:String, v_current_min:imguijs.IntPointer, v_current_max:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int, format:String, format_max:String):Bool { })
	@:overload(function(label:String, v_current_min:imguijs.IntPointer, v_current_max:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int, format_max:String):Bool { })
	@:overload(function(label:String, v_current_min:imguijs.IntPointer, v_current_max:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int):Bool { })
	@:overload(function(label:String, v_current_min:imguijs.IntPointer, v_current_max:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int):Bool { })
	@:overload(function(label:String, v_current_min:imguijs.IntPointer, v_current_max:imguijs.IntPointer, v_speed:imguijs.Float32):Bool { })
	@:overload(function(label:String, v_current_min:imguijs.IntPointer, v_current_max:imguijs.IntPointer):Bool { })
	static function dragIntRange2(label:String, v_current_min:imguijs.IntPointer, v_current_max:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int, format:String, format_max:String, flags:ImGuiSliderFlags):Bool;
	@:native("DragInt4")
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer):Bool { })
	static function dragInt4(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("DragInt3")
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer):Bool { })
	static function dragInt3(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("DragInt2")
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer):Bool { })
	static function dragInt2(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("DragInt")
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.IntPointer):Bool { })
	static function dragInt(label:String, v:imguijs.IntPointer, v_speed:imguijs.Float32, v_min:Int, v_max:Int, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("DragFloatRange2")
	@:overload(function(label:String, v_current_min:imguijs.FloatPointer, v_current_max:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String, format_max:String):Bool { })
	@:overload(function(label:String, v_current_min:imguijs.FloatPointer, v_current_max:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32, format_max:String):Bool { })
	@:overload(function(label:String, v_current_min:imguijs.FloatPointer, v_current_max:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32):Bool { })
	@:overload(function(label:String, v_current_min:imguijs.FloatPointer, v_current_max:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32):Bool { })
	@:overload(function(label:String, v_current_min:imguijs.FloatPointer, v_current_max:imguijs.FloatPointer, v_speed:imguijs.Float32):Bool { })
	@:overload(function(label:String, v_current_min:imguijs.FloatPointer, v_current_max:imguijs.FloatPointer):Bool { })
	static function dragFloatRange2(label:String, v_current_min:imguijs.FloatPointer, v_current_max:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String, format_max:String, flags:ImGuiSliderFlags):Bool;
	@:native("DragFloat4")
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer):Bool { })
	static function dragFloat4(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("DragFloat3")
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer):Bool { })
	static function dragFloat3(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("DragFloat2")
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer):Bool { })
	static function dragFloat2(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("DragFloat")
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32):Bool { })
	@:overload(function(label:String, v:imguijs.FloatPointer):Bool { })
	static function dragFloat(label:String, v:imguijs.FloatPointer, v_speed:imguijs.Float32, v_min:imguijs.Float32, v_max:imguijs.Float32, format:String, flags:ImGuiSliderFlags):Bool;
	@:native("DestroyContext")
	@:overload(function():Void { })
	static function destroyContext(ctx:ImGuiContext):Void;
	@:native("DebugCheckVersionAndDataLayout")
	static function debugCheckVersionAndDataLayout(version_str:String, sz_io:imguijs.SizeT, sz_style:imguijs.SizeT, sz_vec2:imguijs.SizeT, sz_vec4:imguijs.SizeT, sz_drawvert:imguijs.SizeT, sz_drawidx:imguijs.SizeT):Bool;
	@:native("CreateContext")
	@:overload(function():ImGuiContext { })
	static function createContext(shared_font_atlas:ImFontAtlas):ImGuiContext;
	@:native("Combo")
	@:overload(function(label:String, current_item:imguijs.IntPointer, items:String, items_count:Int):Bool { })
	@:overload(function(label:String, current_item:imguijs.IntPointer, items_separated_by_zeros:String, popup_max_height_in_items:Int):Bool { })
	@:overload(function(label:String, current_item:imguijs.IntPointer, items_separated_by_zeros:String):Bool { })
	@:overload(function(label:String, current_item:imguijs.IntPointer, items_getter:imguijs.Callable<(Dynamic, Int, imguijs.RawConstPointer<imguijs.Char>) -> Bool>, data:imguijs.VoidPointer, items_count:Int, popup_max_height_in_items:Int):Bool { })
	@:overload(function(label:String, current_item:imguijs.IntPointer, items_getter:imguijs.Callable<(Dynamic, Int, imguijs.RawConstPointer<imguijs.Char>) -> Bool>, data:imguijs.VoidPointer, items_count:Int):Bool { })
	static function combo(label:String, current_item:imguijs.IntPointer, items:String, items_count:Int, popup_max_height_in_items:Int):Bool;
	@:native("Columns")
	@:overload(function(count:Int, id:String):Void { })
	@:overload(function(id:String):Void { })
	@:overload(function():Void { })
	static function columns(count:Int, id:String, border:Bool):Void;
	@:native("ColorPicker4")
	@:overload(function(label:String, col:imguijs.FloatPointer, ref_col:imguijs.FloatPointer):Bool { })
	@:overload(function(label:String, col:imguijs.FloatPointer):Bool { })
	static function colorPicker4(label:String, col:imguijs.FloatPointer, flags:ImGuiColorEditFlags, ref_col:imguijs.FloatPointer):Bool;
	@:native("ColorPicker3")
	@:overload(function(label:String, col:imguijs.FloatPointer):Bool { })
	static function colorPicker3(label:String, col:imguijs.FloatPointer, flags:ImGuiColorEditFlags):Bool;
	@:native("ColorEdit4")
	@:overload(function(label:String, col:imguijs.FloatPointer):Bool { })
	static function colorEdit4(label:String, col:imguijs.FloatPointer, flags:ImGuiColorEditFlags):Bool;
	@:native("ColorEdit3")
	@:overload(function(label:String, col:imguijs.FloatPointer):Bool { })
	static function colorEdit3(label:String, col:imguijs.FloatPointer, flags:ImGuiColorEditFlags):Bool;
	@:native("ColorConvertU32ToFloat4")
	static function colorConvertU32ToFloat4(pOut:ImVec4, _in:ImU32):Void;
	@:native("ColorConvertRGBtoHSV")
	static function colorConvertRGBtoHSV(r:imguijs.Float32, g:imguijs.Float32, b:imguijs.Float32, out_h:imguijs.FloatPointer, out_s:imguijs.FloatPointer, out_v:imguijs.FloatPointer):Void;
	@:native("ColorConvertHSVtoRGB")
	static function colorConvertHSVtoRGB(h:imguijs.Float32, s:imguijs.Float32, v:imguijs.Float32, out_r:imguijs.FloatPointer, out_g:imguijs.FloatPointer, out_b:imguijs.FloatPointer):Void;
	@:native("ColorConvertFloat4ToU32")
	static function colorConvertFloat4ToU32(_in:ImVec4):ImU32;
	@:native("ColorButton")
	@:overload(function(desc_id:String, col:ImVec4, size:ImVec2):Bool { })
	@:overload(function(desc_id:String, col:ImVec4):Bool { })
	static function colorButton(desc_id:String, col:ImVec4, flags:ImGuiColorEditFlags, size:ImVec2):Bool;
	@:native("CollapsingHeader")
	@:overload(function(label:String):Bool { })
	@:overload(function(label:String, p_visible:imguijs.BoolPointer, flags:ImGuiTreeNodeFlags):Bool { })
	@:overload(function(label:String, p_visible:imguijs.BoolPointer):Bool { })
	static function collapsingHeader(label:String, flags:ImGuiTreeNodeFlags):Bool;
	@:native("CloseCurrentPopup")
	static function closeCurrentPopup():Void;
	@:native("CheckboxFlags")
	@:overload(function(label:String, flags:UInt, flags_value:UInt):Bool { })
	static function checkboxFlags(label:String, flags:imguijs.IntPointer, flags_value:Int):Bool;
	@:native("Checkbox")
	static function checkbox(label:String, v:imguijs.BoolPointer):Bool;
	@:native("CaptureMouseFromApp")
	@:overload(function():Void { })
	static function captureMouseFromApp(want_capture_mouse_value:Bool):Void;
	@:native("CaptureKeyboardFromApp")
	@:overload(function():Void { })
	static function captureKeyboardFromApp(want_capture_keyboard_value:Bool):Void;
	@:native("CalcTextSize")
	@:overload(function(pOut:ImVec2, text:String, text_end:String, wrap_width:imguijs.Float32):Void { })
	@:overload(function(pOut:ImVec2, text:String, wrap_width:imguijs.Float32):Void { })
	@:overload(function(pOut:ImVec2, text:String):Void { })
	static function calcTextSize(pOut:ImVec2, text:String, text_end:String, hide_text_after_double_hash:Bool, wrap_width:imguijs.Float32):Void;
	@:native("CalcListClipping")
	static function calcListClipping(items_count:Int, items_height:imguijs.Float32, out_items_display_start:imguijs.IntPointer, out_items_display_end:imguijs.IntPointer):Void;
	@:native("CalcItemWidth")
	static function calcItemWidth():imguijs.Float32;
	@:native("Button")
	@:overload(function(label:String):Bool { })
	static function button(label:String, size:ImVec2):Bool;
	@:native("BulletTextV")
	static function bulletTextV(fmt:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:native("BulletText")
	static function bulletText(fmt:String, vargs:haxe.extern.Rest<Dynamic>):Void;
	@:native("Bullet")
	static function bullet():Void;
	@:native("BeginTooltip")
	static function beginTooltip():Void;
	@:native("BeginTable")
	@:overload(function(str_id:String, column:Int, outer_size:ImVec2, inner_width:imguijs.Float32):Bool { })
	@:overload(function(str_id:String, column:Int, outer_size:ImVec2):Bool { })
	@:overload(function(str_id:String, column:Int):Bool { })
	static function beginTable(str_id:String, column:Int, flags:ImGuiTableFlags, outer_size:ImVec2, inner_width:imguijs.Float32):Bool;
	@:native("BeginTabItem")
	@:overload(function(label:String, p_open:imguijs.BoolPointer):Bool { })
	@:overload(function(label:String):Bool { })
	static function beginTabItem(label:String, p_open:imguijs.BoolPointer, flags:ImGuiTabItemFlags):Bool;
	@:native("BeginTabBar")
	@:overload(function(str_id:String):Bool { })
	static function beginTabBar(str_id:String, flags:ImGuiTabBarFlags):Bool;
	@:native("BeginPopupModal")
	@:overload(function(name:String, p_open:imguijs.BoolPointer):Bool { })
	@:overload(function(name:String):Bool { })
	static function beginPopupModal(name:String, p_open:imguijs.BoolPointer, flags:ImGuiWindowFlags):Bool;
	@:native("BeginPopupContextWindow")
	@:overload(function(str_id:String):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextWindow(str_id:String, popup_flags:ImGuiPopupFlags):Bool;
	@:native("BeginPopupContextVoid")
	@:overload(function(str_id:String):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextVoid(str_id:String, popup_flags:ImGuiPopupFlags):Bool;
	@:native("BeginPopupContextItem")
	@:overload(function(str_id:String):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextItem(str_id:String, popup_flags:ImGuiPopupFlags):Bool;
	@:native("BeginPopup")
	@:overload(function(str_id:String):Bool { })
	static function beginPopup(str_id:String, flags:ImGuiWindowFlags):Bool;
	@:native("BeginMenuBar")
	static function beginMenuBar():Bool;
	@:native("BeginMenu")
	@:overload(function(label:String):Bool { })
	static function beginMenu(label:String, enabled:Bool):Bool;
	@:native("BeginMainMenuBar")
	static function beginMainMenuBar():Bool;
	@:native("BeginGroup")
	static function beginGroup():Void;
	@:native("BeginDragDropTarget")
	static function beginDragDropTarget():Bool;
	@:native("BeginDragDropSource")
	@:overload(function():Bool { })
	static function beginDragDropSource(flags:ImGuiDragDropFlags):Bool;
	@:native("BeginCombo")
	@:overload(function(label:String, preview_value:String):Bool { })
	static function beginCombo(label:String, preview_value:String, flags:ImGuiComboFlags):Bool;
	@:native("BeginChildFrame")
	@:overload(function(id:ImGuiID, size:ImVec2):Bool { })
	static function beginChildFrame(id:ImGuiID, size:ImVec2, flags:ImGuiWindowFlags):Bool;
	@:native("BeginChild")
	@:overload(function(str_id:String, size:ImVec2, flags:ImGuiWindowFlags):Bool { })
	@:overload(function(str_id:String, size:ImVec2):Bool { })
	@:overload(function(str_id:String):Bool { })
	@:overload(function(id:ImGuiID, size:ImVec2, border:Bool, flags:ImGuiWindowFlags):Bool { })
	@:overload(function(id:ImGuiID, size:ImVec2, flags:ImGuiWindowFlags):Bool { })
	@:overload(function(id:ImGuiID, size:ImVec2):Bool { })
	@:overload(function(id:ImGuiID):Bool { })
	static function beginChild(str_id:String, size:ImVec2, border:Bool, flags:ImGuiWindowFlags):Bool;
	@:native("Begin")
	@:overload(function(name:String, p_open:imguijs.BoolPointer):Bool { })
	@:overload(function(name:String):Bool { })
	static function begin(name:String, p_open:imguijs.BoolPointer, flags:ImGuiWindowFlags):Bool;
	@:native("ArrowButton")
	static function arrowButton(str_id:String, dir:ImGuiDir):Bool;
	@:native("AlignTextToFramePadding")
	static function alignTextToFramePadding():Void;
	@:native("AcceptDragDropPayload")
	@:overload(function(type:String):ImGuiPayload { })
	static function acceptDragDropPayload(type:String, flags:ImGuiDragDropFlags):ImGuiPayload;
}

@:keep @:native("ImVector") extern class ImVector<T> {
	@:native('Data')
	var data : imguijs.RawPointer<T>;
	@:native("swap")
	function swap(rhs:ImVector<T>):Void;
	@:native("size_in_bytes")
	function size_in_bytes():Int;
	@:native("size")
	function size():Int;
	@:native("shrink")
	function shrink(new_size:Int):Void;
	@:native("resize")
	@:overload(function(new_size:Int, v:T):Void { })
	function resize(new_size:Int):Void;
	@:native("reserve")
	function reserve(new_capacity:Int):Void;
	@:native("push_front")
	function push_front(v:T):Void;
	@:native("push_back")
	function push_back(v:T):Void;
	@:native("pop_back")
	function pop_back():Void;
	@:native("max_size")
	function max_size():Int;
	@:native("insert")
	function insert(it:T, v:T):T;
	@:native("index_from_ptr")
	function index_from_ptr(it:T):Int;
	@:native("front")
	@:overload(function():T { })
	function front():T;
	@:native("find_erase_unsorted")
	function find_erase_unsorted(v:T):Bool;
	@:native("find_erase")
	function find_erase(v:T):Bool;
	@:native("find")
	@:overload(function(v:T):T { })
	function find(v:T):T;
	@:native("erase_unsorted")
	function erase_unsorted(it:T):T;
	@:native("erase")
	@:overload(function(it:T, it_last:T):T { })
	function erase(it:T):T;
	@:native("end")
	@:overload(function():T { })
	function end():T;
	@:native("empty")
	function empty():Bool;
	@:native("contains")
	function contains(v:T):Bool;
	@:native("clear")
	function clear():Void;
	@:native("capacity")
	function capacity():Int;
	@:native("begin")
	@:overload(function():T { })
	function begin():T;
	@:native("back")
	@:overload(function():T { })
	function back():T;
	@:native("_grow_capacity")
	function _grow_capacity(sz:Int):Int;
}

@:keep @:native("ImVector") extern class ImVectorImGuiWindowPointer extends ImVector<ImGuiWindow> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorfloat extends ImVector<imguijs.Float32> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiID extends ImVector<ImGuiID> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiOldColumns extends ImVector<ImGuiOldColumns> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiTextRange extends ImVector<ImGuiTextRange> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorchar extends ImVector<imguijs.Char> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiTableColumn extends ImVector<ImGuiTableColumn> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiTableColumnIdx extends ImVector<ImGuiTableColumnIdx> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiTableCellData extends ImVector<ImGuiTableCellData> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiTableColumnSortSpecs extends ImVector<ImGuiTableColumnSortSpecs> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiTabItem extends ImVector<ImGuiTabItem> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiStoragePair extends ImVector<ImGuiStoragePair> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiOldColumnData extends ImVector<ImGuiOldColumnData> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImWchar extends ImVector<ImWchar> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiColorMod extends ImVector<ImGuiColorMod> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiStyleMod extends ImVector<ImGuiStyleMod> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImFontPointer extends ImVector<ImFont> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiItemFlags extends ImVector<ImGuiItemFlags> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiGroupData extends ImVector<ImGuiGroupData> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiPopupData extends ImVector<ImGuiPopupData> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorunsignedchar extends ImVector<imguijs.UInt8> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiTable extends ImVector<ImGuiTable> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiPtrOrIndex extends ImVector<ImGuiPtrOrIndex> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImDrawChannel extends ImVector<ImDrawChannel> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiTabBar extends ImVector<ImGuiTabBar> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiShrinkWidthItem extends ImVector<ImGuiShrinkWidthItem> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiSettingsHandler extends ImVector<ImGuiSettingsHandler> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiWindowSettings extends ImVector<ImGuiWindowSettings> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiTableSettings extends ImVector<ImGuiTableSettings> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiContextHook extends ImVector<ImGuiContextHook> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImU32 extends ImVector<ImU32> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImFontAtlasCustomRect extends ImVector<ImFontAtlasCustomRect> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImFontConfig extends ImVector<ImFontConfig> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImFontGlyph extends ImVector<ImFontGlyph> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImDrawCmd extends ImVector<ImDrawCmd> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImDrawIdx extends ImVector<ImDrawIdx> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImDrawVert extends ImVector<ImDrawVert> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImVec4 extends ImVector<ImVec4> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImTextureID extends ImVector<ImTextureID> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImVec2 extends ImVector<ImVec2> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImDrawListPointer extends ImVector<ImDrawList> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiWindowPtrPointer extends ImVector<ImGuiWindowPtr> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImGuiTextRangePointer extends ImVector<ImGuiTextRange> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

@:keep @:native("ImVector") extern class ImVectorImWcharPointer extends ImVector<ImWchar> {
	@:native("ImVector")
	public function new(args:haxe.extern.Rest<Dynamic>);
}

