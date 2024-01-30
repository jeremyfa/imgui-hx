package imguicpp;

typedef FILE = cpp.Void;

typedef ImGuiWindowPtr = cpp.Void;

typedef ImWchar32 = UInt;

typedef ImWchar16 = cpp.UInt16;

typedef ImWchar = ImWchar16;

typedef ImU8 = cpp.UInt8;

typedef ImU64 = cpp.UInt64;

typedef ImU32 = UInt;

typedef ImU16 = cpp.UInt16;

typedef ImTextureID = cpp.Star<cpp.Void>;

typedef ImS8 = cpp.Int8;

typedef ImS64 = cpp.Int64;

typedef ImS32 = Int;

typedef ImS16 = cpp.Int16;

typedef ImPoolIdx = Int;

typedef ImGuiTableDrawChannelIdx = ImU8;

typedef ImGuiTableColumnIdx = ImS8;

typedef ImGuiSizeCallback = cpp.Callable<cpp.Star<ImGuiSizeCallbackData> -> Void>;

typedef ImGuiInputTextCallback = cpp.Callable<cpp.Star<ImGuiInputTextCallbackData> -> Int>;

typedef ImGuiID = UInt;

typedef ImGuiErrorLogCallback = cpp.Callable<(cpp.Star<cpp.Void>, imguicpp.utils.VarConstCharStar, haxe.extern.Rest<String>) -> Void>;

typedef ImGuiContextHookCallback = cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiContextHook>) -> Void>;

typedef ImFileHandle = cpp.Star<FILE>;

typedef ImDrawIdx = cpp.UInt16;

typedef ImDrawCallback = cpp.Callable<(cpp.Star<ImDrawList>, cpp.Star<ImDrawCmd>) -> Void>;

enum abstract ImGuiWindowFlags(Int) from Int to Int {
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

enum abstract ImGuiTreeNodeFlags(Int) from Int to Int {
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

enum abstract ImGuiTreeNodeFlagsPrivate(Int) from Int to Int {
	var ImGuiTreeNodeFlags_ClipLabelForTrailingButton : Int = 1048576;
}

enum abstract ImGuiTooltipFlags(Int) from Int to Int {
	var None : Int = 0;
	var OverridePreviousTooltip : Int = 1;
}

enum abstract ImGuiTextFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoWidthForLargeClippedText : Int = 1;
}

enum abstract ImGuiTableRowFlags(Int) from Int to Int {
	var None : Int = 0;
	var Headers : Int = 1;
}

enum abstract ImGuiTableFlags(Int) from Int to Int {
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

enum abstract ImGuiTableColumnFlags(Int) from Int to Int {
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

enum abstract ImGuiTableBgTarget(Int) from Int to Int {
	var None : Int = 0;
	var RowBg0 : Int = 1;
	var RowBg1 : Int = 2;
	var CellBg : Int = 3;
}

enum abstract ImGuiTabItemFlags(Int) from Int to Int {
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

enum abstract ImGuiTabItemFlagsPrivate(Int) from Int to Int {
	var ImGuiTabItemFlags_NoCloseButton : Int = 1048576;
	var ImGuiTabItemFlags_Button : Int = 2097152;
}

enum abstract ImGuiTabBarFlags(Int) from Int to Int {
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

enum abstract ImGuiTabBarFlagsPrivate(Int) from Int to Int {
	var ImGuiTabBarFlags_DockNode : Int = 1048576;
	var ImGuiTabBarFlags_IsFocused : Int = 2097152;
	var ImGuiTabBarFlags_SaveSettings : Int = 4194304;
}

enum abstract ImGuiStyleVar(Int) from Int to Int {
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

enum abstract ImGuiSortDirection(Int) from Int to Int {
	var None : Int = 0;
	var Ascending : Int = 1;
	var Descending : Int = 2;
}

enum abstract ImGuiSliderFlags(Int) from Int to Int {
	var None : Int = 0;
	var AlwaysClamp : Int = 16;
	var Logarithmic : Int = 32;
	var NoRoundToFormat : Int = 64;
	var NoInput : Int = 128;
	var InvalidMask_ : Int = 1879048207;
}

enum abstract ImGuiSliderFlagsPrivate(Int) from Int to Int {
	var ImGuiSliderFlags_Vertical : Int = 1048576;
	var ImGuiSliderFlags_ReadOnly : Int = 2097152;
}

enum abstract ImGuiSeparatorFlags(Int) from Int to Int {
	var None : Int = 0;
	var Horizontal : Int = 1;
	var Vertical : Int = 2;
	var SpanAllColumns : Int = 4;
}

enum abstract ImGuiSelectableFlags(Int) from Int to Int {
	var None : Int = 0;
	var DontClosePopups : Int = 1;
	var SpanAllColumns : Int = 2;
	var AllowDoubleClick : Int = 4;
	var Disabled : Int = 8;
	var AllowItemOverlap : Int = 16;
}

enum abstract ImGuiSelectableFlagsPrivate(Int) from Int to Int {
	var ImGuiSelectableFlags_NoHoldingActiveID : Int = 1048576;
	var ImGuiSelectableFlags_SelectOnClick : Int = 2097152;
	var ImGuiSelectableFlags_SelectOnRelease : Int = 4194304;
	var ImGuiSelectableFlags_SpanAvailWidth : Int = 8388608;
	var ImGuiSelectableFlags_DrawHoveredWhenHeld : Int = 16777216;
	var ImGuiSelectableFlags_SetNavIdOnHover : Int = 33554432;
	var ImGuiSelectableFlags_NoPadWithHalfSpacing : Int = 67108864;
}

enum abstract ImGuiPopupPositionPolicy(Int) from Int to Int {
	var _Default : Int = 0;
	var _ComboBox : Int = 1;
	var _Tooltip : Int = 2;
}

enum abstract ImGuiPopupFlags(Int) from Int to Int {
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

enum abstract ImGuiPlotType(Int) from Int to Int {
	var _Lines : Int = 0;
	var _Histogram : Int = 1;
}

enum abstract ImGuiOldColumnFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoBorder : Int = 1;
	var NoResize : Int = 2;
	var NoPreserveWidths : Int = 4;
	var NoForceWithinWindow : Int = 8;
	var GrowParentContentsSize : Int = 16;
}

enum abstract ImGuiNextWindowDataFlags(Int) from Int to Int {
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

enum abstract ImGuiNextItemDataFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasWidth : Int = 1;
	var HasOpen : Int = 2;
}

enum abstract ImGuiNavMoveFlags(Int) from Int to Int {
	var None : Int = 0;
	var LoopX : Int = 1;
	var LoopY : Int = 2;
	var WrapX : Int = 4;
	var WrapY : Int = 8;
	var AllowCurrentNavId : Int = 16;
	var AlsoScoreVisibleSet : Int = 32;
	var ScrollToEdge : Int = 64;
}

enum abstract ImGuiNavLayer(Int) from Int to Int {
	var _Main : Int = 0;
	var _Menu : Int = 1;
	var _COUNT : Int = 2;
}

enum abstract ImGuiNavInput(Int) from Int to Int {
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

enum abstract ImGuiNavHighlightFlags(Int) from Int to Int {
	var None : Int = 0;
	var TypeDefault : Int = 1;
	var TypeThin : Int = 2;
	var AlwaysDraw : Int = 4;
	var NoRounding : Int = 8;
}

enum abstract ImGuiNavForward(Int) from Int to Int {
	var _None : Int = 0;
	var _ForwardQueued : Int = 1;
	var _ForwardActive : Int = 2;
}

enum abstract ImGuiNavDirSourceFlags(Int) from Int to Int {
	var None : Int = 0;
	var Keyboard : Int = 1;
	var PadDPad : Int = 2;
	var PadLStick : Int = 4;
}

enum abstract ImGuiMouseCursor(Int) from Int to Int {
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

enum abstract ImGuiMouseButton(Int) from Int to Int {
	var Left : Int = 0;
	var Right : Int = 1;
	var Middle : Int = 2;
	var COUNT : Int = 5;
}

enum abstract ImGuiLogType(Int) from Int to Int {
	var _None : Int = 0;
	var _TTY : Int = 1;
	var _File : Int = 2;
	var _Buffer : Int = 3;
	var _Clipboard : Int = 4;
}

enum abstract ImGuiLayoutType(Int) from Int to Int {
	var Horizontal : Int = 0;
	var Vertical : Int = 1;
}

enum abstract ImGuiKey(Int) from Int to Int {
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

enum abstract ImGuiKeyModFlags(Int) from Int to Int {
	var None : Int = 0;
	var Ctrl : Int = 1;
	var Shift : Int = 2;
	var Alt : Int = 4;
	var Super : Int = 8;
}

enum abstract ImGuiItemStatusFlags(Int) from Int to Int {
	var None : Int = 0;
	var HoveredRect : Int = 1;
	var HasDisplayRect : Int = 2;
	var Edited : Int = 4;
	var ToggledSelection : Int = 8;
	var ToggledOpen : Int = 16;
	var HasDeactivated : Int = 32;
	var Deactivated : Int = 64;
}

enum abstract ImGuiItemFlags(Int) from Int to Int {
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

enum abstract ImGuiInputTextFlags(Int) from Int to Int {
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

enum abstract ImGuiInputSource(Int) from Int to Int {
	var _None : Int = 0;
	var _Mouse : Int = 1;
	var _Nav : Int = 2;
	var _NavKeyboard : Int = 3;
	var _NavGamepad : Int = 4;
	var _COUNT : Int = 5;
}

enum abstract ImGuiInputReadMode(Int) from Int to Int {
	var _Down : Int = 0;
	var _Pressed : Int = 1;
	var _Released : Int = 2;
	var _Repeat : Int = 3;
	var _RepeatSlow : Int = 4;
	var _RepeatFast : Int = 5;
}

enum abstract ImGuiHoveredFlags(Int) from Int to Int {
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

enum abstract ImGuiFocusedFlags(Int) from Int to Int {
	var None : Int = 0;
	var ChildWindows : Int = 1;
	var RootWindow : Int = 2;
	var AnyWindow : Int = 4;
	var RootAndChildWindows : Int = 3;
}

enum abstract ImGuiDragDropFlags(Int) from Int to Int {
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

enum abstract ImGuiDir(Int) from Int to Int {
	var None : Int = -1;
	var Left : Int = 0;
	var Right : Int = 1;
	var Up : Int = 2;
	var Down : Int = 3;
	var COUNT : Int = 4;
}

enum abstract ImGuiDataType(Int) from Int to Int {
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

enum abstract ImGuiDataTypePrivate(Int) from Int to Int {
	var ImGuiDataType_String : Int = 11;
	var ImGuiDataType_Pointer : Int = 12;
	var ImGuiDataType_ID : Int = 13;
}

enum abstract ImGuiContextHookType(Int) from Int to Int {
	var _NewFramePre : Int = 0;
	var _NewFramePost : Int = 1;
	var _EndFramePre : Int = 2;
	var _EndFramePost : Int = 3;
	var _RenderPre : Int = 4;
	var _RenderPost : Int = 5;
	var _Shutdown : Int = 6;
}

enum abstract ImGuiConfigFlags(Int) from Int to Int {
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

enum abstract ImGuiCond(Int) from Int to Int {
	var None : Int = 0;
	var Always : Int = 1;
	var Once : Int = 2;
	var FirstUseEver : Int = 4;
	var Appearing : Int = 8;
}

enum abstract ImGuiComboFlags(Int) from Int to Int {
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

enum abstract ImGuiColorEditFlags(Int) from Int to Int {
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

enum abstract ImGuiCol(Int) from Int to Int {
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

enum abstract ImGuiButtonFlags(Int) from Int to Int {
	var None : Int = 0;
	var MouseButtonLeft : Int = 1;
	var MouseButtonRight : Int = 2;
	var MouseButtonMiddle : Int = 4;
	var MouseButtonMask_ : Int = 7;
	var MouseButtonDefault_ : Int = 1;
}

enum abstract ImGuiButtonFlagsPrivate(Int) from Int to Int {
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

enum abstract ImGuiBackendFlags(Int) from Int to Int {
	var None : Int = 0;
	var HasGamepad : Int = 1;
	var HasMouseCursors : Int = 2;
	var HasSetMousePos : Int = 4;
	var RendererHasVtxOffset : Int = 8;
}

enum abstract ImGuiAxis(Int) from Int to Int {
	var _None : Int = -1;
	var _X : Int = 0;
	var _Y : Int = 1;
}

enum abstract ImFontAtlasFlags(Int) from Int to Int {
	var None : Int = 0;
	var NoPowerOfTwoHeight : Int = 1;
	var NoMouseCursors : Int = 2;
	var NoBakedLines : Int = 4;
}

enum abstract ImDrawListFlags(Int) from Int to Int {
	var None : Int = 0;
	var AntiAliasedLines : Int = 1;
	var AntiAliasedLinesUseTex : Int = 2;
	var AntiAliasedFill : Int = 4;
	var AllowVtxOffset : Int = 8;
}

enum abstract ImDrawCornerFlags(Int) from Int to Int {
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

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiDockRequest") extern class ImGuiDockRequest {

}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiDockNodeSettings") extern class ImGuiDockNodeSettings {

}

@:keep @:structAccess @:include("imgui.h") @:native("StbUndoState") extern class StbUndoState {
	@:native("undo_rec")
	var undo_rec : cpp.RawPointer<StbUndoRecord>;
	@:native("undo_char")
	var undo_char : cpp.RawPointer<ImWchar>;
	@:native("undo_point")
	var undo_point : cpp.Int16;
	@:native("redo_point")
	var redo_point : cpp.Int16;
	@:native("undo_char_point")
	var undo_char_point : Int;
	@:native("redo_char_point")
	var redo_char_point : Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("StbUndoRecord") extern class StbUndoRecord {
	@:native("where")
	var where : Int;
	@:native("insert_length")
	var insert_length : Int;
	@:native("delete_length")
	var delete_length : Int;
	@:native("char_storage")
	var char_storage : Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("StbTexteditRow") extern class StbTexteditRow {
	@:native("x0")
	var x0 : cpp.Float32;
	@:native("x1")
	var x1 : cpp.Float32;
	@:native("baseline_y_delta")
	var baseline_y_delta : cpp.Float32;
	@:native("ymin")
	var ymin : cpp.Float32;
	@:native("ymax")
	var ymax : cpp.Float32;
	@:native("num_chars")
	var num_chars : Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("STB_TexteditState") extern class STB_TexteditState {
	@:native("cursor")
	var cursor : Int;
	@:native("select_start")
	var select_start : Int;
	@:native("select_end")
	var select_end : Int;
	@:native("insert_mode")
	var insert_mode : cpp.UInt8;
	@:native("row_count_per_page")
	var row_count_per_page : Int;
	@:native("cursor_at_end_of_line")
	var cursor_at_end_of_line : cpp.UInt8;
	@:native("initialized")
	var initialized : cpp.UInt8;
	@:native("has_preferred_x")
	var has_preferred_x : cpp.UInt8;
	@:native("single_line")
	var single_line : cpp.UInt8;
	@:native("padding1")
	var padding1 : cpp.UInt8;
	@:native("padding2")
	var padding2 : cpp.UInt8;
	@:native("padding3")
	var padding3 : cpp.UInt8;
	@:native("preferred_x")
	var preferred_x : cpp.Float32;
	@:native("undostate")
	var undostate : StbUndoState;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec4") extern class ImVec4 {
	@:native("x")
	var x : cpp.Float32;
	@:native("y")
	var y : cpp.Float32;
	@:native("z")
	var z : cpp.Float32;
	@:native("w")
	var w : cpp.Float32;
	@:native("ImVec4")
	@:overload(function(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32, _w:cpp.Float32):ImVec4 { })
	static function create():ImVec4;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec2ih") extern class ImVec2ih {
	@:native("x")
	var x : cpp.Int16;
	@:native("y")
	var y : cpp.Int16;
	@:native("ImVec2ih")
	@:overload(function(_x:cpp.Int16, _y:cpp.Int16):ImVec2ih { })
	@:overload(function(rhs:ImVec2):ImVec2ih { })
	static function create():ImVec2ih;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec2") extern class ImVec2 {
	@:native("x")
	var x : cpp.Float32;
	@:native("y")
	var y : cpp.Float32;
	@:native("ImVec2")
	@:overload(function(_x:cpp.Float32, _y:cpp.Float32):ImVec2 { })
	static function create():ImVec2;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVec1") extern class ImVec1 {
	@:native("x")
	var x : cpp.Float32;
	@:native("ImVec1")
	@:overload(function(_x:cpp.Float32):ImVec1 { })
	static function create():ImVec1;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImRect") extern class ImRect {
	@:native("Min")
	var min : ImVec2;
	@:native("Max")
	var max : ImVec2;
	@:native("TranslateY")
	function translateY(dy:cpp.Float32):cpp.Void;
	@:native("TranslateX")
	function translateX(dx:cpp.Float32):cpp.Void;
	@:native("Translate")
	function translate(d:ImVec2):cpp.Void;
	@:native("ToVec4")
	function toVec4(pOut:cpp.Star<ImVec4>, self:cpp.Star<ImRect>):cpp.Void;
	@:native("Overlaps")
	function overlaps(r:ImRect):Bool;
	@:native("IsInverted")
	function isInverted():Bool;
	@:native("ImRect")
	@:overload(function(min:ImVec2, max:ImVec2):ImRect { })
	@:overload(function(v:ImVec4):ImRect { })
	@:overload(function(x1:cpp.Float32, y1:cpp.Float32, x2:cpp.Float32, y2:cpp.Float32):ImRect { })
	static function create():ImRect;
	@:native("GetWidth")
	function getWidth():cpp.Float32;
	@:native("GetTR")
	function getTR(pOut:cpp.Star<ImVec2>, self:cpp.Star<ImRect>):cpp.Void;
	@:native("GetTL")
	function getTL(pOut:cpp.Star<ImVec2>, self:cpp.Star<ImRect>):cpp.Void;
	@:native("GetSize")
	function getSize(pOut:cpp.Star<ImVec2>, self:cpp.Star<ImRect>):cpp.Void;
	@:native("GetHeight")
	function getHeight():cpp.Float32;
	@:native("GetCenter")
	function getCenter(pOut:cpp.Star<ImVec2>, self:cpp.Star<ImRect>):cpp.Void;
	@:native("GetBR")
	function getBR(pOut:cpp.Star<ImVec2>, self:cpp.Star<ImRect>):cpp.Void;
	@:native("GetBL")
	function getBL(pOut:cpp.Star<ImVec2>, self:cpp.Star<ImRect>):cpp.Void;
	@:native("Floor")
	function floor():cpp.Void;
	@:native("Expand")
	@:overload(function(amount:ImVec2):cpp.Void { })
	function expand(amount:cpp.Float32):cpp.Void;
	@:native("Contains")
	@:overload(function(r:ImRect):Bool { })
	function contains(p:ImVec2):Bool;
	@:native("ClipWithFull")
	function clipWithFull(r:ImRect):cpp.Void;
	@:native("ClipWith")
	function clipWith(r:ImRect):cpp.Void;
	@:native("Add")
	@:overload(function(r:ImRect):cpp.Void { })
	function add(p:ImVec2):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiWindowTempData") extern class ImGuiWindowTempData {
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
	var currLineTextBaseOffset : cpp.Float32;
	@:native("PrevLineTextBaseOffset")
	var prevLineTextBaseOffset : cpp.Float32;
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
	var childWindows : cpp.Star<ImVectorImGuiWindowPointer>;
	@:native("StateStorage")
	var stateStorage : cpp.Star<ImGuiStorage>;
	@:native("CurrentColumns")
	var currentColumns : cpp.Star<ImGuiOldColumns>;
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
	var itemWidth : cpp.Float32;
	@:native("TextWrapPos")
	var textWrapPos : cpp.Float32;
	@:native("ItemWidthStack")
	var itemWidthStack : ImVectorfloat;
	@:native("TextWrapPosStack")
	var textWrapPosStack : ImVectorfloat;
	@:native("StackSizesOnBegin")
	var stackSizesOnBegin : ImGuiStackSizes;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiWindowSettings") extern class ImGuiWindowSettings {
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
	static function create():ImGuiWindowSettings;
	@:native("GetName")
	function getName():cpp.Star<cpp.Char>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiWindow") extern class ImGuiWindow {
	@:native("Name")
	var name : cpp.Star<cpp.Char>;
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
	var windowRounding : cpp.Float32;
	@:native("WindowBorderSize")
	var windowBorderSize : cpp.Float32;
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
	var resizeBorderHeld : cpp.Int8;
	@:native("BeginCount")
	var beginCount : cpp.Int16;
	@:native("BeginOrderWithinParent")
	var beginOrderWithinParent : cpp.Int16;
	@:native("BeginOrderWithinContext")
	var beginOrderWithinContext : cpp.Int16;
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
	var lastTimeActive : cpp.Float32;
	@:native("ItemWidthDefault")
	var itemWidthDefault : cpp.Float32;
	@:native("StateStorage")
	var stateStorage : ImGuiStorage;
	@:native("ColumnsStorage")
	var columnsStorage : ImVectorImGuiOldColumns;
	@:native("FontWindowScale")
	var fontWindowScale : cpp.Float32;
	@:native("SettingsOffset")
	var settingsOffset : Int;
	@:native("DrawList")
	var drawList : cpp.Star<ImDrawList>;
	@:native("DrawListInst")
	var drawListInst : ImDrawList;
	@:native("ParentWindow")
	var parentWindow : cpp.Star<ImGuiWindow>;
	@:native("RootWindow")
	var rootWindow : cpp.Star<ImGuiWindow>;
	@:native("RootWindowForTitleBarHighlight")
	var rootWindowForTitleBarHighlight : cpp.Star<ImGuiWindow>;
	@:native("RootWindowForNav")
	var rootWindowForNav : cpp.Star<ImGuiWindow>;
	@:native("NavLastChildNavWindow")
	var navLastChildNavWindow : cpp.Star<ImGuiWindow>;
	@:native("NavLastIds")
	var navLastIds : cpp.RawPointer<ImGuiID>;
	@:native("NavRectRel")
	var navRectRel : cpp.RawPointer<ImRect>;
	@:native("MemoryDrawListIdxCapacity")
	var memoryDrawListIdxCapacity : Int;
	@:native("MemoryDrawListVtxCapacity")
	var memoryDrawListVtxCapacity : Int;
	@:native("MemoryCompacted")
	var memoryCompacted : Bool;
	@:native("TitleBarRect")
	function titleBarRect(pOut:cpp.Star<ImRect>, self:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("TitleBarHeight")
	function titleBarHeight():cpp.Float32;
	@:native("Rect")
	function rect(pOut:cpp.Star<ImRect>, self:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("MenuBarRect")
	function menuBarRect(pOut:cpp.Star<ImRect>, self:cpp.Star<ImGuiWindow>):cpp.Void;
	@:native("MenuBarHeight")
	function menuBarHeight():cpp.Float32;
	@:native("ImGuiWindow")
	static function create(context:cpp.Star<ImGuiContext>, name:imguicpp.utils.VarConstCharStar):ImGuiWindow;
	@:native("GetIDNoKeepAlive")
	@:overload(function(str:imguicpp.utils.VarConstCharStar):ImGuiID { })
	@:overload(function(ptr:imguicpp.VoidPointer):ImGuiID { })
	@:overload(function(n:Int):ImGuiID { })
	function getIDNoKeepAlive(str:imguicpp.utils.VarConstCharStar, str_end:imguicpp.utils.VarConstCharStar):ImGuiID;
	@:native("GetIDFromRectangle")
	function getIDFromRectangle(r_abs:ImRect):ImGuiID;
	@:native("GetID")
	@:overload(function(str:imguicpp.utils.VarConstCharStar):ImGuiID { })
	@:overload(function(ptr:imguicpp.VoidPointer):ImGuiID { })
	@:overload(function(n:Int):ImGuiID { })
	function getID(str:imguicpp.utils.VarConstCharStar, str_end:imguicpp.utils.VarConstCharStar):ImGuiID;
	@:native("CalcFontSize")
	function calcFontSize():cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextRange") extern class ImGuiTextRange {
	@:native("b")
	var b : imguicpp.utils.VarConstCharStar;
	@:native("e")
	var e : imguicpp.utils.VarConstCharStar;
	@:native("split")
	function split(separator:cpp.Char, out:ImVectorImGuiTextRangePointer):cpp.Void;
	@:native("empty")
	function empty():Bool;
	@:native("ImGuiTextRange")
	@:overload(function(_b:imguicpp.utils.VarConstCharStar, _e:imguicpp.utils.VarConstCharStar):ImGuiTextRange { })
	static function create():ImGuiTextRange;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextFilter") extern class ImGuiTextFilter {
	@:native("InputBuf")
	var inputBuf : cpp.RawPointer<cpp.Char>;
	@:native("Filters")
	var filters : ImVectorImGuiTextRange;
	@:native("CountGrep")
	var countGrep : Int;
	@:native("PassFilter")
	@:overload(function(text:imguicpp.utils.VarConstCharStar):Bool { })
	function passFilter(text:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar):Bool;
	@:native("IsActive")
	function isActive():Bool;
	@:native("ImGuiTextFilter")
	@:overload(function():ImGuiTextFilter { })
	static function create(default_filter:imguicpp.utils.VarConstCharStar):ImGuiTextFilter;
	@:native("Draw")
	@:overload(function(width:cpp.Float32):Bool { })
	@:overload(function():Bool { })
	function draw(label:imguicpp.utils.VarConstCharStar, width:cpp.Float32):Bool;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("Build")
	function build():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTextBuffer") extern class ImGuiTextBuffer {
	@:native("Buf")
	var buf : ImVectorchar;
	@:native("size")
	function size():Int;
	@:native("reserve")
	function reserve(capacity:Int):cpp.Void;
	@:native("end")
	function end():imguicpp.utils.VarConstCharStar;
	@:native("empty")
	function empty():Bool;
	@:native("clear")
	function clear():cpp.Void;
	@:native("c_str")
	function c_str():imguicpp.utils.VarConstCharStar;
	@:native("begin")
	function begin():imguicpp.utils.VarConstCharStar;
	@:native("appendfv")
	function appendfv(fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):cpp.Void;
	@:native("appendf")
	@:overload(function(fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):cpp.Void { })
	function appendf(fmt:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("append")
	@:overload(function(str:imguicpp.utils.VarConstCharStar):cpp.Void { })
	function append(str:imguicpp.utils.VarConstCharStar, str_end:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGuiTextBuffer")
	static function create():ImGuiTextBuffer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTableSortSpecs") extern class ImGuiTableSortSpecs {
	@:native("Specs")
	var specs : cpp.Star<ImGuiTableColumnSortSpecs>;
	@:native("SpecsCount")
	var specsCount : Int;
	@:native("SpecsDirty")
	var specsDirty : Bool;
	@:native("ImGuiTableSortSpecs")
	static function create():ImGuiTableSortSpecs;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTableSettings") extern class ImGuiTableSettings {
	@:native("ID")
	var iD : ImGuiID;
	@:native("SaveFlags")
	var saveFlags : ImGuiTableFlags;
	@:native("RefScale")
	var refScale : cpp.Float32;
	@:native("ColumnsCount")
	var columnsCount : ImGuiTableColumnIdx;
	@:native("ColumnsCountMax")
	var columnsCountMax : ImGuiTableColumnIdx;
	@:native("WantApply")
	var wantApply : Bool;
	@:native("ImGuiTableSettings")
	static function create():ImGuiTableSettings;
	@:native("GetColumnSettings")
	function getColumnSettings():cpp.Star<ImGuiTableColumnSettings>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTableColumnSortSpecs") extern class ImGuiTableColumnSortSpecs {
	@:native("ColumnUserID")
	var columnUserID : ImGuiID;
	@:native("ColumnIndex")
	var columnIndex : ImS16;
	@:native("SortOrder")
	var sortOrder : ImS16;
	@:native("SortDirection")
	var sortDirection : ImGuiSortDirection;
	@:native("ImGuiTableColumnSortSpecs")
	static function create():ImGuiTableColumnSortSpecs;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTableColumnSettings") extern class ImGuiTableColumnSettings {
	@:native("WidthOrWeight")
	var widthOrWeight : cpp.Float32;
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
	static function create():ImGuiTableColumnSettings;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTableColumn") extern class ImGuiTableColumn {
	@:native("Flags")
	var flags : ImGuiTableColumnFlags;
	@:native("WidthGiven")
	var widthGiven : cpp.Float32;
	@:native("MinX")
	var minX : cpp.Float32;
	@:native("MaxX")
	var maxX : cpp.Float32;
	@:native("WidthRequest")
	var widthRequest : cpp.Float32;
	@:native("WidthAuto")
	var widthAuto : cpp.Float32;
	@:native("StretchWeight")
	var stretchWeight : cpp.Float32;
	@:native("InitStretchWeightOrWidth")
	var initStretchWeightOrWidth : cpp.Float32;
	@:native("ClipRect")
	var clipRect : ImRect;
	@:native("UserID")
	var userID : ImGuiID;
	@:native("WorkMinX")
	var workMinX : cpp.Float32;
	@:native("WorkMaxX")
	var workMaxX : cpp.Float32;
	@:native("ItemWidth")
	var itemWidth : cpp.Float32;
	@:native("ContentMaxXFrozen")
	var contentMaxXFrozen : cpp.Float32;
	@:native("ContentMaxXUnfrozen")
	var contentMaxXUnfrozen : cpp.Float32;
	@:native("ContentMaxXHeadersUsed")
	var contentMaxXHeadersUsed : cpp.Float32;
	@:native("ContentMaxXHeadersIdeal")
	var contentMaxXHeadersIdeal : cpp.Float32;
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
	static function create():ImGuiTableColumn;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTableCellData") extern class ImGuiTableCellData {
	@:native("BgColor")
	var bgColor : ImU32;
	@:native("Column")
	var column : ImGuiTableColumnIdx;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTable") extern class ImGuiTable {
	@:native("ID")
	var iD : ImGuiID;
	@:native("Flags")
	var flags : ImGuiTableFlags;
	@:native("RawData")
	var rawData : imguicpp.VoidPointer;
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
	var rowPosY1 : cpp.Float32;
	@:native("RowPosY2")
	var rowPosY2 : cpp.Float32;
	@:native("RowMinHeight")
	var rowMinHeight : cpp.Float32;
	@:native("RowTextBaseline")
	var rowTextBaseline : cpp.Float32;
	@:native("RowIndentOffsetX")
	var rowIndentOffsetX : cpp.Float32;
	@:native("RowFlags")
	var rowFlags : ImGuiTableRowFlags;
	@:native("LastRowFlags")
	var lastRowFlags : ImGuiTableRowFlags;
	@:native("RowBgColorCounter")
	var rowBgColorCounter : Int;
	@:native("RowBgColor")
	var rowBgColor : cpp.RawPointer<ImU32>;
	@:native("BorderColorStrong")
	var borderColorStrong : ImU32;
	@:native("BorderColorLight")
	var borderColorLight : ImU32;
	@:native("BorderX1")
	var borderX1 : cpp.Float32;
	@:native("BorderX2")
	var borderX2 : cpp.Float32;
	@:native("HostIndentX")
	var hostIndentX : cpp.Float32;
	@:native("MinColumnWidth")
	var minColumnWidth : cpp.Float32;
	@:native("OuterPaddingX")
	var outerPaddingX : cpp.Float32;
	@:native("CellPaddingX")
	var cellPaddingX : cpp.Float32;
	@:native("CellPaddingY")
	var cellPaddingY : cpp.Float32;
	@:native("CellSpacingX1")
	var cellSpacingX1 : cpp.Float32;
	@:native("CellSpacingX2")
	var cellSpacingX2 : cpp.Float32;
	@:native("LastOuterHeight")
	var lastOuterHeight : cpp.Float32;
	@:native("LastFirstRowHeight")
	var lastFirstRowHeight : cpp.Float32;
	@:native("InnerWidth")
	var innerWidth : cpp.Float32;
	@:native("ColumnsGivenWidth")
	var columnsGivenWidth : cpp.Float32;
	@:native("ColumnsAutoFitWidth")
	var columnsAutoFitWidth : cpp.Float32;
	@:native("ResizedColumnNextWidth")
	var resizedColumnNextWidth : cpp.Float32;
	@:native("ResizeLockMinContentsX2")
	var resizeLockMinContentsX2 : cpp.Float32;
	@:native("RefScale")
	var refScale : cpp.Float32;
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
	var hostBackupItemWidth : cpp.Float32;
	@:native("HostBackupItemWidthStackSize")
	var hostBackupItemWidthStackSize : Int;
	@:native("OuterWindow")
	var outerWindow : cpp.Star<ImGuiWindow>;
	@:native("InnerWindow")
	var innerWindow : cpp.Star<ImGuiWindow>;
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
	static function create():ImGuiTable;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTabItem") extern class ImGuiTabItem {
	@:native("ID")
	var iD : ImGuiID;
	@:native("Flags")
	var flags : ImGuiTabItemFlags;
	@:native("LastFrameVisible")
	var lastFrameVisible : Int;
	@:native("LastFrameSelected")
	var lastFrameSelected : Int;
	@:native("Offset")
	var offset : cpp.Float32;
	@:native("Width")
	var width : cpp.Float32;
	@:native("ContentWidth")
	var contentWidth : cpp.Float32;
	@:native("NameOffset")
	var nameOffset : ImS16;
	@:native("BeginOrder")
	var beginOrder : ImS16;
	@:native("IndexDuringLayout")
	var indexDuringLayout : ImS16;
	@:native("WantClose")
	var wantClose : Bool;
	@:native("ImGuiTabItem")
	static function create():ImGuiTabItem;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiTabBar") extern class ImGuiTabBar {
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
	var currTabsContentsHeight : cpp.Float32;
	@:native("PrevTabsContentsHeight")
	var prevTabsContentsHeight : cpp.Float32;
	@:native("WidthAllTabs")
	var widthAllTabs : cpp.Float32;
	@:native("WidthAllTabsIdeal")
	var widthAllTabsIdeal : cpp.Float32;
	@:native("ScrollingAnim")
	var scrollingAnim : cpp.Float32;
	@:native("ScrollingTarget")
	var scrollingTarget : cpp.Float32;
	@:native("ScrollingTargetDistToVisibility")
	var scrollingTargetDistToVisibility : cpp.Float32;
	@:native("ScrollingSpeed")
	var scrollingSpeed : cpp.Float32;
	@:native("ScrollingRectMinX")
	var scrollingRectMinX : cpp.Float32;
	@:native("ScrollingRectMaxX")
	var scrollingRectMaxX : cpp.Float32;
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
	var itemSpacingY : cpp.Float32;
	@:native("FramePadding")
	var framePadding : ImVec2;
	@:native("BackupCursorPos")
	var backupCursorPos : ImVec2;
	@:native("TabsNames")
	var tabsNames : ImGuiTextBuffer;
	@:native("ImGuiTabBar")
	static function create():ImGuiTabBar;
	@:native("GetTabOrder")
	function getTabOrder(tab:cpp.Star<ImGuiTabItem>):Int;
	@:native("GetTabName")
	function getTabName(tab:cpp.Star<ImGuiTabItem>):imguicpp.utils.VarConstCharStar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStyleMod") extern class ImGuiStyleMod {
	@:native("VarIdx")
	var varIdx : ImGuiStyleVar;
	@:native("ImGuiStyleMod")
	@:overload(function(idx:ImGuiStyleVar, v:cpp.Float32):ImGuiStyleMod { })
	@:overload(function(idx:ImGuiStyleVar, v:ImVec2):ImGuiStyleMod { })
	static function create(idx:ImGuiStyleVar, v:Int):ImGuiStyleMod;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStyle") extern class ImGuiStyle {
	@:native("Alpha")
	var alpha : cpp.Float32;
	@:native("WindowPadding")
	var windowPadding : ImVec2;
	@:native("WindowRounding")
	var windowRounding : cpp.Float32;
	@:native("WindowBorderSize")
	var windowBorderSize : cpp.Float32;
	@:native("WindowMinSize")
	var windowMinSize : ImVec2;
	@:native("WindowTitleAlign")
	var windowTitleAlign : ImVec2;
	@:native("WindowMenuButtonPosition")
	var windowMenuButtonPosition : ImGuiDir;
	@:native("ChildRounding")
	var childRounding : cpp.Float32;
	@:native("ChildBorderSize")
	var childBorderSize : cpp.Float32;
	@:native("PopupRounding")
	var popupRounding : cpp.Float32;
	@:native("PopupBorderSize")
	var popupBorderSize : cpp.Float32;
	@:native("FramePadding")
	var framePadding : ImVec2;
	@:native("FrameRounding")
	var frameRounding : cpp.Float32;
	@:native("FrameBorderSize")
	var frameBorderSize : cpp.Float32;
	@:native("ItemSpacing")
	var itemSpacing : ImVec2;
	@:native("ItemInnerSpacing")
	var itemInnerSpacing : ImVec2;
	@:native("CellPadding")
	var cellPadding : ImVec2;
	@:native("TouchExtraPadding")
	var touchExtraPadding : ImVec2;
	@:native("IndentSpacing")
	var indentSpacing : cpp.Float32;
	@:native("ColumnsMinSpacing")
	var columnsMinSpacing : cpp.Float32;
	@:native("ScrollbarSize")
	var scrollbarSize : cpp.Float32;
	@:native("ScrollbarRounding")
	var scrollbarRounding : cpp.Float32;
	@:native("GrabMinSize")
	var grabMinSize : cpp.Float32;
	@:native("GrabRounding")
	var grabRounding : cpp.Float32;
	@:native("LogSliderDeadzone")
	var logSliderDeadzone : cpp.Float32;
	@:native("TabRounding")
	var tabRounding : cpp.Float32;
	@:native("TabBorderSize")
	var tabBorderSize : cpp.Float32;
	@:native("TabMinWidthForCloseButton")
	var tabMinWidthForCloseButton : cpp.Float32;
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
	var mouseCursorScale : cpp.Float32;
	@:native("AntiAliasedLines")
	var antiAliasedLines : Bool;
	@:native("AntiAliasedLinesUseTex")
	var antiAliasedLinesUseTex : Bool;
	@:native("AntiAliasedFill")
	var antiAliasedFill : Bool;
	@:native("CurveTessellationTol")
	var curveTessellationTol : cpp.Float32;
	@:native("CircleSegmentMaxError")
	var circleSegmentMaxError : cpp.Float32;
	@:native("Colors")
	var colors : cpp.RawPointer<ImVec4>;
	@:native("ScaleAllSizes")
	function scaleAllSizes(scale_factor:cpp.Float32):cpp.Void;
	@:native("ImGuiStyle")
	static function create():ImGuiStyle;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStoragePair") extern class ImGuiStoragePair {
	@:native("key")
	var key : ImGuiID;
	@:native("ImGuiStoragePair")
	@:overload(function(_key:ImGuiID, _val_f:cpp.Float32):ImGuiStoragePair { })
	@:overload(function(_key:ImGuiID, _val_p:imguicpp.VoidPointer):ImGuiStoragePair { })
	static function create(_key:ImGuiID, _val_i:Int):ImGuiStoragePair;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStorage") extern class ImGuiStorage {
	@:native("Data")
	var data : ImVectorImGuiStoragePair;
	@:native("SetVoidPtr")
	function setVoidPtr(key:ImGuiID, val:imguicpp.VoidPointer):cpp.Void;
	@:native("SetInt")
	function setInt(key:ImGuiID, val:Int):cpp.Void;
	@:native("SetFloat")
	function setFloat(key:ImGuiID, val:cpp.Float32):cpp.Void;
	@:native("SetBool")
	function setBool(key:ImGuiID, val:Bool):cpp.Void;
	@:native("SetAllInt")
	function setAllInt(val:Int):cpp.Void;
	@:native("GetVoidPtrRef")
	@:overload(function(key:ImGuiID):cpp.Star<cpp.Star<cpp.Void>> { })
	function getVoidPtrRef(key:ImGuiID, default_val:imguicpp.VoidPointer):cpp.Star<cpp.Star<cpp.Void>>;
	@:native("GetVoidPtr")
	function getVoidPtr(key:ImGuiID):imguicpp.VoidPointer;
	@:native("GetIntRef")
	@:overload(function(key:ImGuiID):imguicpp.IntPointer { })
	function getIntRef(key:ImGuiID, default_val:Int):imguicpp.IntPointer;
	@:native("GetInt")
	@:overload(function(key:ImGuiID):Int { })
	function getInt(key:ImGuiID, default_val:Int):Int;
	@:native("GetFloatRef")
	@:overload(function(key:ImGuiID):imguicpp.FloatPointer { })
	function getFloatRef(key:ImGuiID, default_val:cpp.Float32):imguicpp.FloatPointer;
	@:native("GetFloat")
	@:overload(function(key:ImGuiID):cpp.Float32 { })
	function getFloat(key:ImGuiID, default_val:cpp.Float32):cpp.Float32;
	@:native("GetBoolRef")
	@:overload(function(key:ImGuiID):imguicpp.BoolPointer { })
	function getBoolRef(key:ImGuiID, default_val:Bool):imguicpp.BoolPointer;
	@:native("GetBool")
	@:overload(function(key:ImGuiID):Bool { })
	function getBool(key:ImGuiID, default_val:Bool):Bool;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("BuildSortByKey")
	function buildSortByKey():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiStackSizes") extern class ImGuiStackSizes {
	@:native("SizeOfIDStack")
	var sizeOfIDStack : cpp.Int16;
	@:native("SizeOfColorStack")
	var sizeOfColorStack : cpp.Int16;
	@:native("SizeOfStyleVarStack")
	var sizeOfStyleVarStack : cpp.Int16;
	@:native("SizeOfFontStack")
	var sizeOfFontStack : cpp.Int16;
	@:native("SizeOfFocusScopeStack")
	var sizeOfFocusScopeStack : cpp.Int16;
	@:native("SizeOfGroupStack")
	var sizeOfGroupStack : cpp.Int16;
	@:native("SizeOfBeginPopupStack")
	var sizeOfBeginPopupStack : cpp.Int16;
	@:native("SetToCurrentState")
	function setToCurrentState():cpp.Void;
	@:native("ImGuiStackSizes")
	static function create():ImGuiStackSizes;
	@:native("CompareWithCurrentState")
	function compareWithCurrentState():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiSizeCallbackData") extern class ImGuiSizeCallbackData {
	@:native("UserData")
	var userData : imguicpp.VoidPointer;
	@:native("Pos")
	var pos : ImVec2;
	@:native("CurrentSize")
	var currentSize : ImVec2;
	@:native("DesiredSize")
	var desiredSize : ImVec2;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiShrinkWidthItem") extern class ImGuiShrinkWidthItem {
	@:native("Index")
	var index : Int;
	@:native("Width")
	var width : cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiSettingsHandler") extern class ImGuiSettingsHandler {
	@:native("TypeName")
	var typeName : imguicpp.utils.VarConstCharStar;
	@:native("TypeHash")
	var typeHash : ImGuiID;
	@:native("ClearAllFn")
	var clearAllFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>) -> Void>;
	@:native("ReadInitFn")
	var readInitFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>) -> Void>;
	@:native("ReadOpenFn")
	var readOpenFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>, imguicpp.utils.VarConstCharStar) -> imguicpp.VoidPointer>;
	@:native("ReadLineFn")
	var readLineFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>, cpp.Star<cpp.Void>, imguicpp.utils.VarConstCharStar) -> Void>;
	@:native("ApplyAllFn")
	var applyAllFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>) -> Void>;
	@:native("WriteAllFn")
	var writeAllFn : cpp.Callable<(cpp.Star<ImGuiContext>, cpp.Star<ImGuiSettingsHandler>, cpp.Star<ImGuiTextBuffer>) -> Void>;
	@:native("UserData")
	var userData : imguicpp.VoidPointer;
	@:native("ImGuiSettingsHandler")
	static function create():ImGuiSettingsHandler;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiPtrOrIndex") extern class ImGuiPtrOrIndex {
	@:native("Ptr")
	var ptr : imguicpp.VoidPointer;
	@:native("Index")
	var index : Int;
	@:native("ImGuiPtrOrIndex")
	@:overload(function(index:Int):ImGuiPtrOrIndex { })
	static function create(ptr:imguicpp.VoidPointer):ImGuiPtrOrIndex;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiPopupData") extern class ImGuiPopupData {
	@:native("PopupId")
	var popupId : ImGuiID;
	@:native("Window")
	var window : cpp.Star<ImGuiWindow>;
	@:native("SourceWindow")
	var sourceWindow : cpp.Star<ImGuiWindow>;
	@:native("OpenFrameCount")
	var openFrameCount : Int;
	@:native("OpenParentId")
	var openParentId : ImGuiID;
	@:native("OpenPopupPos")
	var openPopupPos : ImVec2;
	@:native("OpenMousePos")
	var openMousePos : ImVec2;
	@:native("ImGuiPopupData")
	static function create():ImGuiPopupData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiPayload") extern class ImGuiPayload {
	@:native("Data")
	var data : imguicpp.VoidPointer;
	@:native("DataSize")
	var dataSize : Int;
	@:native("SourceId")
	var sourceId : ImGuiID;
	@:native("SourceParentId")
	var sourceParentId : ImGuiID;
	@:native("DataFrameCount")
	var dataFrameCount : Int;
	@:native("DataType")
	var dataType : cpp.RawPointer<cpp.Char>;
	@:native("Preview")
	var preview : Bool;
	@:native("Delivery")
	var delivery : Bool;
	@:native("IsPreview")
	function isPreview():Bool;
	@:native("IsDelivery")
	function isDelivery():Bool;
	@:native("IsDataType")
	function isDataType(type:imguicpp.utils.VarConstCharStar):Bool;
	@:native("ImGuiPayload")
	static function create():ImGuiPayload;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiOnceUponAFrame") extern class ImGuiOnceUponAFrame {
	@:native("RefFrame")
	var refFrame : Int;
	@:native("ImGuiOnceUponAFrame")
	static function create():ImGuiOnceUponAFrame;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiOldColumns") extern class ImGuiOldColumns {
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
	var offMinX : cpp.Float32;
	@:native("OffMaxX")
	var offMaxX : cpp.Float32;
	@:native("LineMinY")
	var lineMinY : cpp.Float32;
	@:native("LineMaxY")
	var lineMaxY : cpp.Float32;
	@:native("HostCursorPosY")
	var hostCursorPosY : cpp.Float32;
	@:native("HostCursorMaxPosX")
	var hostCursorMaxPosX : cpp.Float32;
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
	static function create():ImGuiOldColumns;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiOldColumnData") extern class ImGuiOldColumnData {
	@:native("OffsetNorm")
	var offsetNorm : cpp.Float32;
	@:native("OffsetNormBeforeResize")
	var offsetNormBeforeResize : cpp.Float32;
	@:native("Flags")
	var flags : ImGuiOldColumnFlags;
	@:native("ClipRect")
	var clipRect : ImRect;
	@:native("ImGuiOldColumnData")
	static function create():ImGuiOldColumnData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiNextWindowData") extern class ImGuiNextWindowData {
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
	var sizeCallbackUserData : imguicpp.VoidPointer;
	@:native("BgAlphaVal")
	var bgAlphaVal : cpp.Float32;
	@:native("MenuBarOffsetMinVal")
	var menuBarOffsetMinVal : ImVec2;
	@:native("ImGuiNextWindowData")
	static function create():ImGuiNextWindowData;
	@:native("ClearFlags")
	function clearFlags():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiNextItemData") extern class ImGuiNextItemData {
	@:native("Flags")
	var flags : ImGuiNextItemDataFlags;
	@:native("Width")
	var width : cpp.Float32;
	@:native("FocusScopeId")
	var focusScopeId : ImGuiID;
	@:native("OpenCond")
	var openCond : ImGuiCond;
	@:native("OpenVal")
	var openVal : Bool;
	@:native("ImGuiNextItemData")
	static function create():ImGuiNextItemData;
	@:native("ClearFlags")
	function clearFlags():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiNavMoveResult") extern class ImGuiNavMoveResult {
	@:native("Window")
	var window : cpp.Star<ImGuiWindow>;
	@:native("ID")
	var iD : ImGuiID;
	@:native("FocusScopeId")
	var focusScopeId : ImGuiID;
	@:native("DistBox")
	var distBox : cpp.Float32;
	@:native("DistCenter")
	var distCenter : cpp.Float32;
	@:native("DistAxial")
	var distAxial : cpp.Float32;
	@:native("RectRel")
	var rectRel : ImRect;
	@:native("ImGuiNavMoveResult")
	static function create():ImGuiNavMoveResult;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiMetricsConfig") extern class ImGuiMetricsConfig {
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
	static function create():ImGuiMetricsConfig;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiMenuColumns") extern class ImGuiMenuColumns {
	@:native("Spacing")
	var spacing : cpp.Float32;
	@:native("Width")
	var width : cpp.Float32;
	@:native("NextWidth")
	var nextWidth : cpp.Float32;
	@:native("Pos")
	var pos : imguicpp.FloatPointer;
	@:native("NextWidths")
	var nextWidths : imguicpp.FloatPointer;
	@:native("Update")
	function update(count:Int, spacing:cpp.Float32, clear:Bool):cpp.Void;
	@:native("ImGuiMenuColumns")
	static function create():ImGuiMenuColumns;
	@:native("DeclColumns")
	function declColumns(w0:cpp.Float32, w1:cpp.Float32, w2:cpp.Float32):cpp.Float32;
	@:native("CalcExtraSpace")
	function calcExtraSpace(avail_w:cpp.Float32):cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiListClipper") extern class ImGuiListClipper {
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
	var itemsHeight : cpp.Float32;
	@:native("StartPosY")
	var startPosY : cpp.Float32;
	@:native("Step")
	function step():Bool;
	@:native("ImGuiListClipper")
	static function create():ImGuiListClipper;
	@:native("End")
	function end():cpp.Void;
	@:native("Begin")
	@:overload(function(items_count:Int):cpp.Void { })
	function begin(items_count:Int, items_height:cpp.Float32):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiLastItemDataBackup") extern class ImGuiLastItemDataBackup {
	@:native("LastItemId")
	var lastItemId : ImGuiID;
	@:native("LastItemStatusFlags")
	var lastItemStatusFlags : ImGuiItemStatusFlags;
	@:native("LastItemRect")
	var lastItemRect : ImRect;
	@:native("LastItemDisplayRect")
	var lastItemDisplayRect : ImRect;
	@:native("Restore")
	function restore():cpp.Void;
	@:native("ImGuiLastItemDataBackup")
	static function create():ImGuiLastItemDataBackup;
	@:native("Backup")
	function backup():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiInputTextState") extern class ImGuiInputTextState {
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
	var scrollX : cpp.Float32;
	@:native("CursorAnim")
	var cursorAnim : cpp.Float32;
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
	var userCallbackData : imguicpp.VoidPointer;
	@:native("SelectAll")
	function selectAll():cpp.Void;
	@:native("OnKeyPressed")
	function onKeyPressed(key:Int):cpp.Void;
	@:native("ImGuiInputTextState")
	static function create():ImGuiInputTextState;
	@:native("HasSelection")
	function hasSelection():Bool;
	@:native("GetUndoAvailCount")
	function getUndoAvailCount():Int;
	@:native("GetRedoAvailCount")
	function getRedoAvailCount():Int;
	@:native("CursorClamp")
	function cursorClamp():cpp.Void;
	@:native("CursorAnimReset")
	function cursorAnimReset():cpp.Void;
	@:native("ClearText")
	function clearText():cpp.Void;
	@:native("ClearSelection")
	function clearSelection():cpp.Void;
	@:native("ClearFreeMemory")
	function clearFreeMemory():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiInputTextCallbackData") extern class ImGuiInputTextCallbackData {
	@:native("EventFlag")
	var eventFlag : ImGuiInputTextFlags;
	@:native("Flags")
	var flags : ImGuiInputTextFlags;
	@:native("UserData")
	var userData : imguicpp.VoidPointer;
	@:native("EventChar")
	var eventChar : ImWchar;
	@:native("EventKey")
	var eventKey : ImGuiKey;
	@:native("Buf")
	var buf : cpp.Star<cpp.Char>;
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
	function selectAll():cpp.Void;
	@:native("InsertChars")
	@:overload(function(pos:Int, text:imguicpp.utils.VarConstCharStar):cpp.Void { })
	function insertChars(pos:Int, text:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGuiInputTextCallbackData")
	static function create():ImGuiInputTextCallbackData;
	@:native("HasSelection")
	function hasSelection():Bool;
	@:native("DeleteChars")
	function deleteChars(pos:Int, bytes_count:Int):cpp.Void;
	@:native("ClearSelection")
	function clearSelection():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiIO") extern class ImGuiIO {
	@:native("ConfigFlags")
	var configFlags : ImGuiConfigFlags;
	@:native("BackendFlags")
	var backendFlags : ImGuiBackendFlags;
	@:native("DisplaySize")
	var displaySize : ImVec2;
	@:native("DeltaTime")
	var deltaTime : cpp.Float32;
	@:native("IniSavingRate")
	var iniSavingRate : cpp.Float32;
	@:native("IniFilename")
	var iniFilename : imguicpp.utils.VarConstCharStar;
	@:native("LogFilename")
	var logFilename : imguicpp.utils.VarConstCharStar;
	@:native("MouseDoubleClickTime")
	var mouseDoubleClickTime : cpp.Float32;
	@:native("MouseDoubleClickMaxDist")
	var mouseDoubleClickMaxDist : cpp.Float32;
	@:native("MouseDragThreshold")
	var mouseDragThreshold : cpp.Float32;
	@:native("KeyMap")
	var keyMap : imguicpp.IntPointer;
	@:native("KeyRepeatDelay")
	var keyRepeatDelay : cpp.Float32;
	@:native("KeyRepeatRate")
	var keyRepeatRate : cpp.Float32;
	@:native("UserData")
	var userData : imguicpp.VoidPointer;
	@:native("Fonts")
	var fonts : cpp.Star<ImFontAtlas>;
	@:native("FontGlobalScale")
	var fontGlobalScale : cpp.Float32;
	@:native("FontAllowUserScaling")
	var fontAllowUserScaling : Bool;
	@:native("FontDefault")
	var fontDefault : cpp.Star<ImFont>;
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
	var configMemoryCompactTimer : cpp.Float32;
	@:native("BackendPlatformName")
	var backendPlatformName : imguicpp.utils.VarConstCharStar;
	@:native("BackendRendererName")
	var backendRendererName : imguicpp.utils.VarConstCharStar;
	@:native("BackendPlatformUserData")
	var backendPlatformUserData : imguicpp.VoidPointer;
	@:native("BackendRendererUserData")
	var backendRendererUserData : imguicpp.VoidPointer;
	@:native("BackendLanguageUserData")
	var backendLanguageUserData : imguicpp.VoidPointer;
	@:native("GetClipboardTextFn")
	var getClipboardTextFn : cpp.Callable<cpp.Star<cpp.Void> -> imguicpp.utils.VarConstCharStar>;
	@:native("SetClipboardTextFn")
	var setClipboardTextFn : cpp.Callable<(cpp.Star<cpp.Void>, imguicpp.utils.VarConstCharStar) -> Void>;
	@:native("ClipboardUserData")
	var clipboardUserData : imguicpp.VoidPointer;
	@:native("ImeSetInputScreenPosFn")
	var imeSetInputScreenPosFn : cpp.Callable<(Int, Int) -> Void>;
	@:native("ImeWindowHandle")
	var imeWindowHandle : imguicpp.VoidPointer;
	@:native("MousePos")
	var mousePos : ImVec2;
	@:native("MouseDown")
	var mouseDown : imguicpp.BoolPointer;
	@:native("MouseWheel")
	var mouseWheel : cpp.Float32;
	@:native("MouseWheelH")
	var mouseWheelH : cpp.Float32;
	@:native("KeyCtrl")
	var keyCtrl : Bool;
	@:native("KeyShift")
	var keyShift : Bool;
	@:native("KeyAlt")
	var keyAlt : Bool;
	@:native("KeySuper")
	var keySuper : Bool;
	@:native("KeysDown")
	var keysDown : imguicpp.BoolPointer;
	@:native("NavInputs")
	var navInputs : imguicpp.FloatPointer;
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
	var framerate : cpp.Float32;
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
	var mouseClickedPos : cpp.RawPointer<ImVec2>;
	@:native("MouseClickedTime")
	var mouseClickedTime : cpp.RawPointer<Float>;
	@:native("MouseClicked")
	var mouseClicked : imguicpp.BoolPointer;
	@:native("MouseDoubleClicked")
	var mouseDoubleClicked : imguicpp.BoolPointer;
	@:native("MouseReleased")
	var mouseReleased : imguicpp.BoolPointer;
	@:native("MouseDownOwned")
	var mouseDownOwned : imguicpp.BoolPointer;
	@:native("MouseDownWasDoubleClick")
	var mouseDownWasDoubleClick : imguicpp.BoolPointer;
	@:native("MouseDownDuration")
	var mouseDownDuration : imguicpp.FloatPointer;
	@:native("MouseDownDurationPrev")
	var mouseDownDurationPrev : imguicpp.FloatPointer;
	@:native("MouseDragMaxDistanceAbs")
	var mouseDragMaxDistanceAbs : cpp.RawPointer<ImVec2>;
	@:native("MouseDragMaxDistanceSqr")
	var mouseDragMaxDistanceSqr : imguicpp.FloatPointer;
	@:native("KeysDownDuration")
	var keysDownDuration : imguicpp.FloatPointer;
	@:native("KeysDownDurationPrev")
	var keysDownDurationPrev : imguicpp.FloatPointer;
	@:native("NavInputsDownDuration")
	var navInputsDownDuration : imguicpp.FloatPointer;
	@:native("NavInputsDownDurationPrev")
	var navInputsDownDurationPrev : imguicpp.FloatPointer;
	@:native("PenPressure")
	var penPressure : cpp.Float32;
	@:native("InputQueueSurrogate")
	var inputQueueSurrogate : ImWchar16;
	@:native("InputQueueCharacters")
	var inputQueueCharacters : ImVectorImWchar;
	@:native("ImGuiIO")
	static function create():ImGuiIO;
	@:native("ClearInputCharacters")
	function clearInputCharacters():cpp.Void;
	@:native("AddInputCharactersUTF8")
	function addInputCharactersUTF8(str:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("AddInputCharacterUTF16")
	function addInputCharacterUTF16(c:ImWchar16):cpp.Void;
	@:native("AddInputCharacter")
	function addInputCharacter(c:UInt):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiGroupData") extern class ImGuiGroupData {
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
	var backupCurrLineTextBaseOffset : cpp.Float32;
	@:native("BackupActiveIdIsAlive")
	var backupActiveIdIsAlive : ImGuiID;
	@:native("BackupActiveIdPreviousFrameIsAlive")
	var backupActiveIdPreviousFrameIsAlive : Bool;
	@:native("EmitItem")
	var emitItem : Bool;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiDataTypeTempStorage") extern class ImGuiDataTypeTempStorage {
	@:native("Data")
	var data : cpp.RawPointer<ImU8>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiDataTypeInfo") extern class ImGuiDataTypeInfo {
	@:native("Size")
	var size : cpp.SizeT;
	@:native("Name")
	var name : imguicpp.utils.VarConstCharStar;
	@:native("PrintFmt")
	var printFmt : imguicpp.utils.VarConstCharStar;
	@:native("ScanFmt")
	var scanFmt : imguicpp.utils.VarConstCharStar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiContextHook") extern class ImGuiContextHook {
	@:native("Type")
	var type : ImGuiContextHookType;
	@:native("Owner")
	var owner : ImGuiID;
	@:native("Callback")
	var callback : ImGuiContextHookCallback;
	@:native("UserData")
	var userData : imguicpp.VoidPointer;
	@:native("ImGuiContextHook")
	static function create():ImGuiContextHook;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiContext") extern class ImGuiContext {
	@:native("Initialized")
	var initialized : Bool;
	@:native("FontAtlasOwnedByContext")
	var fontAtlasOwnedByContext : Bool;
	@:native("IO")
	var iO : ImGuiIO;
	@:native("Style")
	var style : ImGuiStyle;
	@:native("Font")
	var font : cpp.Star<ImFont>;
	@:native("FontSize")
	var fontSize : cpp.Float32;
	@:native("FontBaseSize")
	var fontBaseSize : cpp.Float32;
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
	var testEngine : imguicpp.VoidPointer;
	@:native("Windows")
	var windows : cpp.Star<ImVectorImGuiWindowPointer>;
	@:native("WindowsFocusOrder")
	var windowsFocusOrder : cpp.Star<ImVectorImGuiWindowPointer>;
	@:native("WindowsTempSortBuffer")
	var windowsTempSortBuffer : cpp.Star<ImVectorImGuiWindowPointer>;
	@:native("CurrentWindowStack")
	var currentWindowStack : cpp.Star<ImVectorImGuiWindowPointer>;
	@:native("WindowsById")
	var windowsById : ImGuiStorage;
	@:native("WindowsActiveCount")
	var windowsActiveCount : Int;
	@:native("CurrentWindow")
	var currentWindow : cpp.Star<ImGuiWindow>;
	@:native("HoveredWindow")
	var hoveredWindow : cpp.Star<ImGuiWindow>;
	@:native("HoveredRootWindow")
	var hoveredRootWindow : cpp.Star<ImGuiWindow>;
	@:native("HoveredWindowUnderMovingWindow")
	var hoveredWindowUnderMovingWindow : cpp.Star<ImGuiWindow>;
	@:native("MovingWindow")
	var movingWindow : cpp.Star<ImGuiWindow>;
	@:native("WheelingWindow")
	var wheelingWindow : cpp.Star<ImGuiWindow>;
	@:native("WheelingWindowRefMousePos")
	var wheelingWindowRefMousePos : ImVec2;
	@:native("WheelingWindowTimer")
	var wheelingWindowTimer : cpp.Float32;
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
	var hoveredIdTimer : cpp.Float32;
	@:native("HoveredIdNotActiveTimer")
	var hoveredIdNotActiveTimer : cpp.Float32;
	@:native("ActiveId")
	var activeId : ImGuiID;
	@:native("ActiveIdIsAlive")
	var activeIdIsAlive : ImGuiID;
	@:native("ActiveIdTimer")
	var activeIdTimer : cpp.Float32;
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
	var activeIdWindow : cpp.Star<ImGuiWindow>;
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
	var activeIdPreviousFrameWindow : cpp.Star<ImGuiWindow>;
	@:native("LastActiveId")
	var lastActiveId : ImGuiID;
	@:native("LastActiveIdTimer")
	var lastActiveIdTimer : cpp.Float32;
	@:native("NextWindowData")
	var nextWindowData : ImGuiNextWindowData;
	@:native("NextItemData")
	var nextItemData : ImGuiNextItemData;
	@:native("ColorStack")
	var colorStack : ImVectorImGuiColorMod;
	@:native("StyleVarStack")
	var styleVarStack : ImVectorImGuiStyleMod;
	@:native("FontStack")
	var fontStack : cpp.Star<ImVectorImFontPointer>;
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
	var navWindow : cpp.Star<ImGuiWindow>;
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
	var navWrapRequestWindow : cpp.Star<ImGuiWindow>;
	@:native("NavWrapRequestFlags")
	var navWrapRequestFlags : ImGuiNavMoveFlags;
	@:native("NavWindowingTarget")
	var navWindowingTarget : cpp.Star<ImGuiWindow>;
	@:native("NavWindowingTargetAnim")
	var navWindowingTargetAnim : cpp.Star<ImGuiWindow>;
	@:native("NavWindowingListWindow")
	var navWindowingListWindow : cpp.Star<ImGuiWindow>;
	@:native("NavWindowingTimer")
	var navWindowingTimer : cpp.Float32;
	@:native("NavWindowingHighlightAlpha")
	var navWindowingHighlightAlpha : cpp.Float32;
	@:native("NavWindowingToggleLayer")
	var navWindowingToggleLayer : Bool;
	@:native("FocusRequestCurrWindow")
	var focusRequestCurrWindow : cpp.Star<ImGuiWindow>;
	@:native("FocusRequestNextWindow")
	var focusRequestNextWindow : cpp.Star<ImGuiWindow>;
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
	var dimBgRatio : cpp.Float32;
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
	var dragDropAcceptIdCurrRectSurface : cpp.Float32;
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
	var dragDropPayloadBufLocal : imguicpp.CharPointer;
	@:native("CurrentTable")
	var currentTable : cpp.Star<ImGuiTable>;
	@:native("Tables")
	var tables : ImVectorImGuiTable;
	@:native("CurrentTableStack")
	var currentTableStack : ImVectorImGuiPtrOrIndex;
	@:native("TablesLastTimeActive")
	var tablesLastTimeActive : ImVectorfloat;
	@:native("DrawChannelsTempMergeBuffer")
	var drawChannelsTempMergeBuffer : ImVectorImDrawChannel;
	@:native("CurrentTabBar")
	var currentTabBar : cpp.Star<ImGuiTabBar>;
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
	var colorEditLastHue : cpp.Float32;
	@:native("ColorEditLastSat")
	var colorEditLastSat : cpp.Float32;
	@:native("ColorEditLastColor")
	var colorEditLastColor : imguicpp.FloatPointer;
	@:native("ColorPickerRef")
	var colorPickerRef : ImVec4;
	@:native("SliderCurrentAccum")
	var sliderCurrentAccum : cpp.Float32;
	@:native("SliderCurrentAccumDirty")
	var sliderCurrentAccumDirty : Bool;
	@:native("DragCurrentAccumDirty")
	var dragCurrentAccumDirty : Bool;
	@:native("DragCurrentAccum")
	var dragCurrentAccum : cpp.Float32;
	@:native("DragSpeedDefaultRatio")
	var dragSpeedDefaultRatio : cpp.Float32;
	@:native("ScrollbarClickDeltaToGrabCenter")
	var scrollbarClickDeltaToGrabCenter : cpp.Float32;
	@:native("TooltipOverrideCount")
	var tooltipOverrideCount : Int;
	@:native("TooltipSlowDelay")
	var tooltipSlowDelay : cpp.Float32;
	@:native("ClipboardHandlerData")
	var clipboardHandlerData : ImVectorchar;
	@:native("MenusIdSubmittedThisFrame")
	var menusIdSubmittedThisFrame : ImVectorImGuiID;
	@:native("PlatformImePos")
	var platformImePos : ImVec2;
	@:native("PlatformImeLastPos")
	var platformImeLastPos : ImVec2;
	@:native("PlatformLocaleDecimalPoint")
	var platformLocaleDecimalPoint : cpp.Char;
	@:native("SettingsLoaded")
	var settingsLoaded : Bool;
	@:native("SettingsDirtyTimer")
	var settingsDirtyTimer : cpp.Float32;
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
	var logLinePosY : cpp.Float32;
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
	var framerateSecPerFrame : imguicpp.FloatPointer;
	@:native("FramerateSecPerFrameIdx")
	var framerateSecPerFrameIdx : Int;
	@:native("FramerateSecPerFrameAccum")
	var framerateSecPerFrameAccum : cpp.Float32;
	@:native("WantCaptureMouseNextFrame")
	var wantCaptureMouseNextFrame : Int;
	@:native("WantCaptureKeyboardNextFrame")
	var wantCaptureKeyboardNextFrame : Int;
	@:native("WantTextInputNextFrame")
	var wantTextInputNextFrame : Int;
	@:native("TempBuffer")
	var tempBuffer : cpp.RawPointer<cpp.Char>;
	@:native("ImGuiContext")
	static function create(shared_font_atlas:cpp.Star<ImFontAtlas>):ImGuiContext;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImGuiColorMod") extern class ImGuiColorMod {
	@:native("Col")
	var col : ImGuiCol;
	@:native("BackupValue")
	var backupValue : ImVec4;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontGlyphRangesBuilder") extern class ImFontGlyphRangesBuilder {
	@:native("UsedChars")
	var usedChars : ImVectorImU32;
	@:native("SetBit")
	function setBit(n:cpp.SizeT):cpp.Void;
	@:native("ImFontGlyphRangesBuilder")
	static function create():ImFontGlyphRangesBuilder;
	@:native("GetBit")
	function getBit(n:cpp.SizeT):Bool;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("BuildRanges")
	function buildRanges(out_ranges:ImVectorImWcharPointer):cpp.Void;
	@:native("AddText")
	@:overload(function(text:imguicpp.utils.VarConstCharStar):cpp.Void { })
	function addText(text:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("AddRanges")
	function addRanges(ranges:cpp.Star<ImWchar>):cpp.Void;
	@:native("AddChar")
	function addChar(c:ImWchar):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontGlyph") extern class ImFontGlyph {
	@:native("Codepoint")
	var codepoint : UInt;
	@:native("Visible")
	var visible : UInt;
	@:native("AdvanceX")
	var advanceX : cpp.Float32;
	@:native("X0")
	var x0 : cpp.Float32;
	@:native("Y0")
	var y0 : cpp.Float32;
	@:native("X1")
	var x1 : cpp.Float32;
	@:native("Y1")
	var y1 : cpp.Float32;
	@:native("U0")
	var u0 : cpp.Float32;
	@:native("V0")
	var v0 : cpp.Float32;
	@:native("U1")
	var u1 : cpp.Float32;
	@:native("V1")
	var v1 : cpp.Float32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontConfig") extern class ImFontConfig {
	@:native("FontData")
	var fontData : imguicpp.VoidPointer;
	@:native("FontDataSize")
	var fontDataSize : Int;
	@:native("FontDataOwnedByAtlas")
	var fontDataOwnedByAtlas : Bool;
	@:native("FontNo")
	var fontNo : Int;
	@:native("SizePixels")
	var sizePixels : cpp.Float32;
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
	var glyphRanges : cpp.Star<ImWchar>;
	@:native("GlyphMinAdvanceX")
	var glyphMinAdvanceX : cpp.Float32;
	@:native("GlyphMaxAdvanceX")
	var glyphMaxAdvanceX : cpp.Float32;
	@:native("MergeMode")
	var mergeMode : Bool;
	@:native("RasterizerFlags")
	var rasterizerFlags : UInt;
	@:native("RasterizerMultiply")
	var rasterizerMultiply : cpp.Float32;
	@:native("EllipsisChar")
	var ellipsisChar : ImWchar;
	@:native("Name")
	var name : cpp.RawPointer<cpp.Char>;
	@:native("DstFont")
	var dstFont : cpp.Star<ImFont>;
	@:native("ImFontConfig")
	static function create():ImFontConfig;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontAtlasCustomRect") extern class ImFontAtlasCustomRect {
	@:native("Width")
	var width : cpp.UInt16;
	@:native("Height")
	var height : cpp.UInt16;
	@:native("X")
	var x : cpp.UInt16;
	@:native("Y")
	var y : cpp.UInt16;
	@:native("GlyphID")
	var glyphID : UInt;
	@:native("GlyphAdvanceX")
	var glyphAdvanceX : cpp.Float32;
	@:native("GlyphOffset")
	var glyphOffset : ImVec2;
	@:native("Font")
	var font : cpp.Star<ImFont>;
	@:native("IsPacked")
	function isPacked():Bool;
	@:native("ImFontAtlasCustomRect")
	static function create():ImFontAtlasCustomRect;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFontAtlas") extern class ImFontAtlas {
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
	var texPixelsAlpha8 : imguicpp.CharPointer;
	@:native("TexPixelsRGBA32")
	var texPixelsRGBA32 : cpp.Star<UInt>;
	@:native("TexWidth")
	var texWidth : Int;
	@:native("TexHeight")
	var texHeight : Int;
	@:native("TexUvScale")
	var texUvScale : ImVec2;
	@:native("TexUvWhitePixel")
	var texUvWhitePixel : ImVec2;
	@:native("Fonts")
	var fonts : cpp.Star<ImVectorImFontPointer>;
	@:native("CustomRects")
	var customRects : ImVectorImFontAtlasCustomRect;
	@:native("ConfigData")
	var configData : ImVectorImFontConfig;
	@:native("TexUvLines")
	var texUvLines : cpp.RawPointer<ImVec4>;
	@:native("PackIdMouseCursors")
	var packIdMouseCursors : Int;
	@:native("PackIdLines")
	var packIdLines : Int;
	@:native("SetTexID")
	function setTexID(id:ImTextureID):cpp.Void;
	@:native("IsBuilt")
	function isBuilt():Bool;
	@:native("ImFontAtlas")
	static function create():ImFontAtlas;
	@:native("GetTexDataAsRGBA32")
	@:overload(function(out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, out_width:imguicpp.IntPointer, out_height:imguicpp.IntPointer):cpp.Void { })
	function getTexDataAsRGBA32(out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, out_width:imguicpp.IntPointer, out_height:imguicpp.IntPointer, out_bytes_per_pixel:imguicpp.IntPointer):cpp.Void;
	@:native("GetTexDataAsAlpha8")
	@:overload(function(out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, out_width:imguicpp.IntPointer, out_height:imguicpp.IntPointer):cpp.Void { })
	function getTexDataAsAlpha8(out_pixels:cpp.Star<cpp.Star<cpp.UInt8>>, out_width:imguicpp.IntPointer, out_height:imguicpp.IntPointer, out_bytes_per_pixel:imguicpp.IntPointer):cpp.Void;
	@:native("GetMouseCursorTexData")
	function getMouseCursorTexData(cursor:ImGuiMouseCursor, out_offset:cpp.Star<ImVec2>, out_size:cpp.Star<ImVec2>, out_uv_border:cpp.RawPointer<ImVec2>, out_uv_fill:cpp.RawPointer<ImVec2>):Bool;
	@:native("GetGlyphRangesVietnamese")
	function getGlyphRangesVietnamese():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesThai")
	function getGlyphRangesThai():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesKorean")
	function getGlyphRangesKorean():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesJapanese")
	function getGlyphRangesJapanese():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesDefault")
	function getGlyphRangesDefault():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesCyrillic")
	function getGlyphRangesCyrillic():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesChineseSimplifiedCommon")
	function getGlyphRangesChineseSimplifiedCommon():cpp.Star<ImWchar>;
	@:native("GetGlyphRangesChineseFull")
	function getGlyphRangesChineseFull():cpp.Star<ImWchar>;
	@:native("GetCustomRectByIndex")
	function getCustomRectByIndex(index:Int):cpp.Star<ImFontAtlasCustomRect>;
	@:native("ClearTexData")
	function clearTexData():cpp.Void;
	@:native("ClearInputData")
	function clearInputData():cpp.Void;
	@:native("ClearFonts")
	function clearFonts():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
	@:native("CalcCustomRectUV")
	function calcCustomRectUV(rect:cpp.Star<ImFontAtlasCustomRect>, out_uv_min:cpp.Star<ImVec2>, out_uv_max:cpp.Star<ImVec2>):cpp.Void;
	@:native("Build")
	function build():Bool;
	@:native("AddFontFromMemoryTTF")
	@:overload(function(font_data:imguicpp.VoidPointer, font_size:Int, size_pixels:cpp.Float32, glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(font_data:imguicpp.VoidPointer, font_size:Int, size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromMemoryTTF(font_data:imguicpp.VoidPointer, font_size:Int, size_pixels:cpp.Float32, font_cfg:cpp.Star<ImFontConfig>, glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontFromMemoryCompressedTTF")
	@:overload(function(compressed_font_data:imguicpp.VoidPointer, compressed_font_size:Int, size_pixels:cpp.Float32, glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(compressed_font_data:imguicpp.VoidPointer, compressed_font_size:Int, size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromMemoryCompressedTTF(compressed_font_data:imguicpp.VoidPointer, compressed_font_size:Int, size_pixels:cpp.Float32, font_cfg:cpp.Star<ImFontConfig>, glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontFromMemoryCompressedBase85TTF")
	@:overload(function(compressed_font_data_base85:imguicpp.utils.VarConstCharStar, size_pixels:cpp.Float32, glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(compressed_font_data_base85:imguicpp.utils.VarConstCharStar, size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromMemoryCompressedBase85TTF(compressed_font_data_base85:imguicpp.utils.VarConstCharStar, size_pixels:cpp.Float32, font_cfg:cpp.Star<ImFontConfig>, glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontFromFileTTF")
	@:overload(function(filename:imguicpp.utils.VarConstCharStar, size_pixels:cpp.Float32, glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont> { })
	@:overload(function(filename:imguicpp.utils.VarConstCharStar, size_pixels:cpp.Float32):cpp.Star<ImFont> { })
	function addFontFromFileTTF(filename:imguicpp.utils.VarConstCharStar, size_pixels:cpp.Float32, font_cfg:cpp.Star<ImFontConfig>, glyph_ranges:cpp.Star<ImWchar>):cpp.Star<ImFont>;
	@:native("AddFontDefault")
	@:overload(function():cpp.Star<ImFont> { })
	function addFontDefault(font_cfg:cpp.Star<ImFontConfig>):cpp.Star<ImFont>;
	@:native("AddFont")
	function addFont(font_cfg:cpp.Star<ImFontConfig>):cpp.Star<ImFont>;
	@:native("AddCustomRectRegular")
	function addCustomRectRegular(width:Int, height:Int):Int;
	@:native("AddCustomRectFontGlyph")
	@:overload(function(font:cpp.Star<ImFont>, id:ImWchar, width:Int, height:Int, advance_x:cpp.Float32):Int { })
	function addCustomRectFontGlyph(font:cpp.Star<ImFont>, id:ImWchar, width:Int, height:Int, advance_x:cpp.Float32, offset:ImVec2):Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImFont") extern class ImFont {
	@:native("IndexAdvanceX")
	var indexAdvanceX : ImVectorfloat;
	@:native("FallbackAdvanceX")
	var fallbackAdvanceX : cpp.Float32;
	@:native("FontSize")
	var fontSize : cpp.Float32;
	@:native("IndexLookup")
	var indexLookup : ImVectorImWchar;
	@:native("Glyphs")
	var glyphs : ImVectorImFontGlyph;
	@:native("FallbackGlyph")
	var fallbackGlyph : cpp.Star<ImFontGlyph>;
	@:native("ContainerAtlas")
	var containerAtlas : cpp.Star<ImFontAtlas>;
	@:native("ConfigData")
	var configData : cpp.Star<ImFontConfig>;
	@:native("ConfigDataCount")
	var configDataCount : cpp.Int16;
	@:native("FallbackChar")
	var fallbackChar : ImWchar;
	@:native("EllipsisChar")
	var ellipsisChar : ImWchar;
	@:native("DirtyLookupTables")
	var dirtyLookupTables : Bool;
	@:native("Scale")
	var scale : cpp.Float32;
	@:native("Ascent")
	var ascent : cpp.Float32;
	@:native("Descent")
	var descent : cpp.Float32;
	@:native("MetricsTotalSurface")
	var metricsTotalSurface : Int;
	@:native("Used4kPagesMap")
	var used4kPagesMap : cpp.RawPointer<ImU8>;
	@:native("SetGlyphVisible")
	function setGlyphVisible(c:ImWchar, visible:Bool):cpp.Void;
	@:native("SetFallbackChar")
	function setFallbackChar(c:ImWchar):cpp.Void;
	@:native("RenderText")
	@:overload(function(draw_list:cpp.Star<ImDrawList>, size:cpp.Float32, pos:ImVec2, col:ImU32, clip_rect:ImVec4, text_begin:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar, wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(draw_list:cpp.Star<ImDrawList>, size:cpp.Float32, pos:ImVec2, col:ImU32, clip_rect:ImVec4, text_begin:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar):cpp.Void { })
	function renderText(draw_list:cpp.Star<ImDrawList>, size:cpp.Float32, pos:ImVec2, col:ImU32, clip_rect:ImVec4, text_begin:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar, wrap_width:cpp.Float32, cpu_fine_clip:Bool):cpp.Void;
	@:native("RenderChar")
	function renderChar(draw_list:cpp.Star<ImDrawList>, size:cpp.Float32, pos:ImVec2, col:ImU32, c:ImWchar):cpp.Void;
	@:native("IsLoaded")
	function isLoaded():Bool;
	@:native("IsGlyphRangeUnused")
	function isGlyphRangeUnused(c_begin:UInt, c_last:UInt):Bool;
	@:native("ImFont")
	static function create():ImFont;
	@:native("GrowIndex")
	function growIndex(new_size:Int):cpp.Void;
	@:native("GetDebugName")
	function getDebugName():imguicpp.utils.VarConstCharStar;
	@:native("GetCharAdvance")
	function getCharAdvance(c:ImWchar):cpp.Float32;
	@:native("FindGlyphNoFallback")
	function findGlyphNoFallback(c:ImWchar):cpp.Star<ImFontGlyph>;
	@:native("FindGlyph")
	function findGlyph(c:ImWchar):cpp.Star<ImFontGlyph>;
	@:native("ClearOutputData")
	function clearOutputData():cpp.Void;
	@:native("CalcWordWrapPositionA")
	function calcWordWrapPositionA(scale:cpp.Float32, text:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar, wrap_width:cpp.Float32):imguicpp.utils.VarConstCharStar;
	@:native("CalcTextSizeA")
	@:overload(function(pOut:cpp.Star<ImVec2>, self:cpp.Star<ImFont>, size:cpp.Float32, max_width:cpp.Float32, wrap_width:cpp.Float32, text_begin:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(pOut:cpp.Star<ImVec2>, self:cpp.Star<ImFont>, size:cpp.Float32, max_width:cpp.Float32, wrap_width:cpp.Float32, text_begin:imguicpp.utils.VarConstCharStar):cpp.Void { })
	function calcTextSizeA(pOut:cpp.Star<ImVec2>, self:cpp.Star<ImFont>, size:cpp.Float32, max_width:cpp.Float32, wrap_width:cpp.Float32, text_begin:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar, remaining:cpp.Star<cpp.RawConstPointer<cpp.Char>>):cpp.Void;
	@:native("BuildLookupTable")
	function buildLookupTable():cpp.Void;
	@:native("AddRemapChar")
	@:overload(function(dst:ImWchar, src:ImWchar):cpp.Void { })
	function addRemapChar(dst:ImWchar, src:ImWchar, overwrite_dst:Bool):cpp.Void;
	@:native("AddGlyph")
	function addGlyph(src_cfg:cpp.Star<ImFontConfig>, c:ImWchar, x0:cpp.Float32, y0:cpp.Float32, x1:cpp.Float32, y1:cpp.Float32, u0:cpp.Float32, v0:cpp.Float32, u1:cpp.Float32, v1:cpp.Float32, advance_x:cpp.Float32):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawVert") extern class ImDrawVert {
	@:native("pos")
	var pos : ImVec2;
	@:native("uv")
	var uv : ImVec2;
	@:native("col")
	var col : ImU32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawListSplitter") extern class ImDrawListSplitter {
	@:native("_Current")
	var _Current : Int;
	@:native("_Count")
	var _Count : Int;
	@:native("_Channels")
	var _Channels : ImVectorImDrawChannel;
	@:native("Split")
	function split(draw_list:cpp.Star<ImDrawList>, count:Int):cpp.Void;
	@:native("SetCurrentChannel")
	function setCurrentChannel(draw_list:cpp.Star<ImDrawList>, channel_idx:Int):cpp.Void;
	@:native("Merge")
	function merge(draw_list:cpp.Star<ImDrawList>):cpp.Void;
	@:native("ImDrawListSplitter")
	static function create():ImDrawListSplitter;
	@:native("ClearFreeMemory")
	function clearFreeMemory():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawListSharedData") extern class ImDrawListSharedData {
	@:native("TexUvWhitePixel")
	var texUvWhitePixel : ImVec2;
	@:native("Font")
	var font : cpp.Star<ImFont>;
	@:native("FontSize")
	var fontSize : cpp.Float32;
	@:native("CurveTessellationTol")
	var curveTessellationTol : cpp.Float32;
	@:native("CircleSegmentMaxError")
	var circleSegmentMaxError : cpp.Float32;
	@:native("ClipRectFullscreen")
	var clipRectFullscreen : ImVec4;
	@:native("InitialFlags")
	var initialFlags : ImDrawListFlags;
	@:native("ArcFastVtx")
	var arcFastVtx : cpp.RawPointer<ImVec2>;
	@:native("CircleSegmentCounts")
	var circleSegmentCounts : cpp.RawPointer<ImU8>;
	@:native("TexUvLines")
	var texUvLines : cpp.Star<ImVec4>;
	@:native("SetCircleSegmentMaxError")
	function setCircleSegmentMaxError(max_error:cpp.Float32):cpp.Void;
	@:native("ImDrawListSharedData")
	static function create():ImDrawListSharedData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawList") extern class ImDrawList {
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
	var _Data : cpp.Star<ImDrawListSharedData>;
	@:native("_OwnerName")
	var _OwnerName : imguicpp.utils.VarConstCharStar;
	@:native("_VtxWritePtr")
	var _VtxWritePtr : cpp.Star<ImDrawVert>;
	@:native("_IdxWritePtr")
	var _IdxWritePtr : cpp.Star<ImDrawIdx>;
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
	var _FringeScale : cpp.Float32;
	@:native("_ResetForNewFrame")
	function _ResetForNewFrame():cpp.Void;
	@:native("_PopUnusedDrawCmd")
	function _PopUnusedDrawCmd():cpp.Void;
	@:native("_OnChangedVtxOffset")
	function _OnChangedVtxOffset():cpp.Void;
	@:native("_OnChangedTextureID")
	function _OnChangedTextureID():cpp.Void;
	@:native("_OnChangedClipRect")
	function _OnChangedClipRect():cpp.Void;
	@:native("_ClearFreeMemory")
	function _ClearFreeMemory():cpp.Void;
	@:native("PushTextureID")
	function pushTextureID(texture_id:ImTextureID):cpp.Void;
	@:native("PushClipRectFullScreen")
	function pushClipRectFullScreen():cpp.Void;
	@:native("PushClipRect")
	@:overload(function(clip_rect_min:ImVec2, clip_rect_max:ImVec2):cpp.Void { })
	function pushClipRect(clip_rect_min:ImVec2, clip_rect_max:ImVec2, intersect_with_current_clip_rect:Bool):cpp.Void;
	@:native("PrimWriteVtx")
	function primWriteVtx(pos:ImVec2, uv:ImVec2, col:ImU32):cpp.Void;
	@:native("PrimWriteIdx")
	function primWriteIdx(idx:ImDrawIdx):cpp.Void;
	@:native("PrimVtx")
	function primVtx(pos:ImVec2, uv:ImVec2, col:ImU32):cpp.Void;
	@:native("PrimUnreserve")
	function primUnreserve(idx_count:Int, vtx_count:Int):cpp.Void;
	@:native("PrimReserve")
	function primReserve(idx_count:Int, vtx_count:Int):cpp.Void;
	@:native("PrimRectUV")
	function primRectUV(a:ImVec2, b:ImVec2, uv_a:ImVec2, uv_b:ImVec2, col:ImU32):cpp.Void;
	@:native("PrimRect")
	function primRect(a:ImVec2, b:ImVec2, col:ImU32):cpp.Void;
	@:native("PrimQuadUV")
	function primQuadUV(a:ImVec2, b:ImVec2, c:ImVec2, d:ImVec2, uv_a:ImVec2, uv_b:ImVec2, uv_c:ImVec2, uv_d:ImVec2, col:ImU32):cpp.Void;
	@:native("PopTextureID")
	function popTextureID():cpp.Void;
	@:native("PopClipRect")
	function popClipRect():cpp.Void;
	@:native("PathStroke")
	@:overload(function(col:ImU32, closed:Bool):cpp.Void { })
	function pathStroke(col:ImU32, closed:Bool, thickness:cpp.Float32):cpp.Void;
	@:native("PathRect")
	@:overload(function(rect_min:ImVec2, rect_max:ImVec2, rounding_corners:ImDrawCornerFlags):cpp.Void { })
	@:overload(function(rect_min:ImVec2, rect_max:ImVec2):cpp.Void { })
	function pathRect(rect_min:ImVec2, rect_max:ImVec2, rounding:cpp.Float32, rounding_corners:ImDrawCornerFlags):cpp.Void;
	@:native("PathLineToMergeDuplicate")
	function pathLineToMergeDuplicate(pos:ImVec2):cpp.Void;
	@:native("PathLineTo")
	function pathLineTo(pos:ImVec2):cpp.Void;
	@:native("PathFillConvex")
	function pathFillConvex(col:ImU32):cpp.Void;
	@:native("PathClear")
	function pathClear():cpp.Void;
	@:native("PathBezierQuadraticCurveTo")
	@:overload(function(p2:ImVec2, p3:ImVec2):cpp.Void { })
	function pathBezierQuadraticCurveTo(p2:ImVec2, p3:ImVec2, num_segments:Int):cpp.Void;
	@:native("PathBezierCubicCurveTo")
	@:overload(function(p2:ImVec2, p3:ImVec2, p4:ImVec2):cpp.Void { })
	function pathBezierCubicCurveTo(p2:ImVec2, p3:ImVec2, p4:ImVec2, num_segments:Int):cpp.Void;
	@:native("PathArcToFast")
	function pathArcToFast(center:ImVec2, radius:cpp.Float32, a_min_of_12:Int, a_max_of_12:Int):cpp.Void;
	@:native("PathArcTo")
	@:overload(function(center:ImVec2, radius:cpp.Float32, a_min:cpp.Float32, a_max:cpp.Float32):cpp.Void { })
	function pathArcTo(center:ImVec2, radius:cpp.Float32, a_min:cpp.Float32, a_max:cpp.Float32, num_segments:Int):cpp.Void;
	@:native("ImDrawList")
	static function create(shared_data:cpp.Star<ImDrawListSharedData>):ImDrawList;
	@:native("GetClipRectMin")
	function getClipRectMin(pOut:cpp.Star<ImVec2>, self:cpp.Star<ImDrawList>):cpp.Void;
	@:native("GetClipRectMax")
	function getClipRectMax(pOut:cpp.Star<ImVec2>, self:cpp.Star<ImDrawList>):cpp.Void;
	@:native("CloneOutput")
	function cloneOutput():cpp.Star<ImDrawList>;
	@:native("ChannelsSplit")
	function channelsSplit(count:Int):cpp.Void;
	@:native("ChannelsSetCurrent")
	function channelsSetCurrent(n:Int):cpp.Void;
	@:native("ChannelsMerge")
	function channelsMerge():cpp.Void;
	@:native("AddTriangleFilled")
	function addTriangleFilled(p1:ImVec2, p2:ImVec2, p3:ImVec2, col:ImU32):cpp.Void;
	@:native("AddTriangle")
	@:overload(function(p1:ImVec2, p2:ImVec2, p3:ImVec2, col:ImU32):cpp.Void { })
	function addTriangle(p1:ImVec2, p2:ImVec2, p3:ImVec2, col:ImU32, thickness:cpp.Float32):cpp.Void;
	@:native("AddText")
	@:overload(function(pos:ImVec2, col:ImU32, text_begin:imguicpp.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(font:cpp.Star<ImFont>, font_size:cpp.Float32, pos:ImVec2, col:ImU32, text_begin:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar, wrap_width:cpp.Float32, cpu_fine_clip_rect:cpp.Star<ImVec4>):cpp.Void { })
	@:overload(function(font:cpp.Star<ImFont>, font_size:cpp.Float32, pos:ImVec2, col:ImU32, text_begin:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar, wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(font:cpp.Star<ImFont>, font_size:cpp.Float32, pos:ImVec2, col:ImU32, text_begin:imguicpp.utils.VarConstCharStar, wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(font:cpp.Star<ImFont>, font_size:cpp.Float32, pos:ImVec2, col:ImU32, text_begin:imguicpp.utils.VarConstCharStar):cpp.Void { })
	function addText(pos:ImVec2, col:ImU32, text_begin:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("AddRectFilledMultiColor")
	function addRectFilledMultiColor(p_min:ImVec2, p_max:ImVec2, col_upr_left:ImU32, col_upr_right:ImU32, col_bot_right:ImU32, col_bot_left:ImU32):cpp.Void;
	@:native("AddRectFilled")
	@:overload(function(p_min:ImVec2, p_max:ImVec2, col:ImU32, rounding_corners:ImDrawCornerFlags):cpp.Void { })
	@:overload(function(p_min:ImVec2, p_max:ImVec2, col:ImU32):cpp.Void { })
	function addRectFilled(p_min:ImVec2, p_max:ImVec2, col:ImU32, rounding:cpp.Float32, rounding_corners:ImDrawCornerFlags):cpp.Void;
	@:native("AddRect")
	@:overload(function(p_min:ImVec2, p_max:ImVec2, col:ImU32, rounding_corners:ImDrawCornerFlags, thickness:cpp.Float32):cpp.Void { })
	@:overload(function(p_min:ImVec2, p_max:ImVec2, col:ImU32, thickness:cpp.Float32):cpp.Void { })
	@:overload(function(p_min:ImVec2, p_max:ImVec2, col:ImU32):cpp.Void { })
	function addRect(p_min:ImVec2, p_max:ImVec2, col:ImU32, rounding:cpp.Float32, rounding_corners:ImDrawCornerFlags, thickness:cpp.Float32):cpp.Void;
	@:native("AddQuadFilled")
	function addQuadFilled(p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:ImU32):cpp.Void;
	@:native("AddQuad")
	@:overload(function(p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:ImU32):cpp.Void { })
	function addQuad(p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:ImU32, thickness:cpp.Float32):cpp.Void;
	@:native("AddPolyline")
	function addPolyline(points:cpp.Star<ImVec2>, num_points:Int, col:ImU32, closed:Bool, thickness:cpp.Float32):cpp.Void;
	@:native("AddNgonFilled")
	function addNgonFilled(center:ImVec2, radius:cpp.Float32, col:ImU32, num_segments:Int):cpp.Void;
	@:native("AddNgon")
	@:overload(function(center:ImVec2, radius:cpp.Float32, col:ImU32, num_segments:Int):cpp.Void { })
	function addNgon(center:ImVec2, radius:cpp.Float32, col:ImU32, num_segments:Int, thickness:cpp.Float32):cpp.Void;
	@:native("AddLine")
	@:overload(function(p1:ImVec2, p2:ImVec2, col:ImU32):cpp.Void { })
	function addLine(p1:ImVec2, p2:ImVec2, col:ImU32, thickness:cpp.Float32):cpp.Void;
	@:native("AddImageRounded")
	@:overload(function(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2, uv_min:ImVec2, uv_max:ImVec2, col:ImU32, rounding:cpp.Float32):cpp.Void { })
	function addImageRounded(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2, uv_min:ImVec2, uv_max:ImVec2, col:ImU32, rounding:cpp.Float32, rounding_corners:ImDrawCornerFlags):cpp.Void;
	@:native("AddImageQuad")
	@:overload(function(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv1:ImVec2, uv2:ImVec2, uv3:ImVec2, uv4:ImVec2):cpp.Void { })
	@:overload(function(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv2:ImVec2, uv3:ImVec2, uv4:ImVec2):cpp.Void { })
	@:overload(function(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv3:ImVec2, uv4:ImVec2):cpp.Void { })
	@:overload(function(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv4:ImVec2):cpp.Void { })
	@:overload(function(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2):cpp.Void { })
	function addImageQuad(user_texture_id:ImTextureID, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv1:ImVec2, uv2:ImVec2, uv3:ImVec2, uv4:ImVec2, col:ImU32):cpp.Void;
	@:native("AddImage")
	@:overload(function(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2, uv_min:ImVec2, uv_max:ImVec2):cpp.Void { })
	@:overload(function(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2, uv_min:ImVec2):cpp.Void { })
	@:overload(function(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2):cpp.Void { })
	function addImage(user_texture_id:ImTextureID, p_min:ImVec2, p_max:ImVec2, uv_min:ImVec2, uv_max:ImVec2, col:ImU32):cpp.Void;
	@:native("AddDrawCmd")
	function addDrawCmd():cpp.Void;
	@:native("AddConvexPolyFilled")
	function addConvexPolyFilled(points:cpp.Star<ImVec2>, num_points:Int, col:ImU32):cpp.Void;
	@:native("AddCircleFilled")
	@:overload(function(center:ImVec2, radius:cpp.Float32, col:ImU32):cpp.Void { })
	function addCircleFilled(center:ImVec2, radius:cpp.Float32, col:ImU32, num_segments:Int):cpp.Void;
	@:native("AddCircle")
	@:overload(function(center:ImVec2, radius:cpp.Float32, col:ImU32, thickness:cpp.Float32):cpp.Void { })
	@:overload(function(center:ImVec2, radius:cpp.Float32, col:ImU32):cpp.Void { })
	function addCircle(center:ImVec2, radius:cpp.Float32, col:ImU32, num_segments:Int, thickness:cpp.Float32):cpp.Void;
	@:native("AddCallback")
	function addCallback(callback:ImDrawCallback, callback_data:imguicpp.VoidPointer):cpp.Void;
	@:native("AddBezierQuadratic")
	@:overload(function(p1:ImVec2, p2:ImVec2, p3:ImVec2, col:ImU32, thickness:cpp.Float32):cpp.Void { })
	function addBezierQuadratic(p1:ImVec2, p2:ImVec2, p3:ImVec2, col:ImU32, thickness:cpp.Float32, num_segments:Int):cpp.Void;
	@:native("AddBezierCubic")
	@:overload(function(p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:ImU32, thickness:cpp.Float32):cpp.Void { })
	function addBezierCubic(p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:ImU32, thickness:cpp.Float32, num_segments:Int):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawDataBuilder") extern class ImDrawDataBuilder {
	@:native("Layers")
	var layers : cpp.Star<ImVectorImDrawListPointer>;
	@:native("FlattenIntoSingleLayer")
	function flattenIntoSingleLayer():cpp.Void;
	@:native("ClearFreeMemory")
	function clearFreeMemory():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawData") extern class ImDrawData {
	@:native("Valid")
	var valid : Bool;
	@:native("CmdLists")
	var cmdLists : cpp.RawPointer<cpp.Star<ImDrawList>>;
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
	function scaleClipRects(fb_scale:ImVec2):cpp.Void;
	@:native("ImDrawData")
	static function create():ImDrawData;
	@:native("DeIndexAllBuffers")
	function deIndexAllBuffers():cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawCmdHeader") extern class ImDrawCmdHeader {
	@:native("ClipRect")
	var clipRect : ImVec4;
	@:native("TextureId")
	var textureId : ImTextureID;
	@:native("VtxOffset")
	var vtxOffset : UInt;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawCmd") extern class ImDrawCmd {
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
	var userCallbackData : imguicpp.VoidPointer;
	@:native("ImDrawCmd")
	static function create():ImDrawCmd;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImDrawChannel") extern class ImDrawChannel {
	@:native("_CmdBuffer")
	var _CmdBuffer : ImVectorImDrawCmd;
	@:native("_IdxBuffer")
	var _IdxBuffer : ImVectorImDrawIdx;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImColor") extern class ImColor {
	@:native("Value")
	var value : ImVec4;
	@:native("SetHSV")
	@:overload(function(h:cpp.Float32, s:cpp.Float32, v:cpp.Float32):cpp.Void { })
	function setHSV(h:cpp.Float32, s:cpp.Float32, v:cpp.Float32, a:cpp.Float32):cpp.Void;
	@:native("ImColor")
	@:overload(function(r:Int, g:Int, b:Int, a:Int):ImColor { })
	@:overload(function(r:Int, g:Int, b:Int):ImColor { })
	@:overload(function(rgba:ImU32):ImColor { })
	@:overload(function(r:cpp.Float32, g:cpp.Float32, b:cpp.Float32, a:cpp.Float32):ImColor { })
	@:overload(function(r:cpp.Float32, g:cpp.Float32, b:cpp.Float32):ImColor { })
	@:overload(function(col:ImVec4):ImColor { })
	static function create():ImColor;
	@:native("HSV")
	@:overload(function(pOut:cpp.Star<ImColor>, h:cpp.Float32, s:cpp.Float32, v:cpp.Float32):cpp.Void { })
	function hSV(pOut:cpp.Star<ImColor>, h:cpp.Float32, s:cpp.Float32, v:cpp.Float32, a:cpp.Float32):cpp.Void;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImBitVector") extern class ImBitVector {
	@:native("Storage")
	var storage : ImVectorImU32;
	@:native("TestBit")
	function testBit(n:Int):Bool;
	@:native("SetBit")
	function setBit(n:Int):cpp.Void;
	@:native("Create")
	function create(sz:Int):cpp.Void;
	@:native("ClearBit")
	function clearBit(n:Int):cpp.Void;
	@:native("Clear")
	function clear():cpp.Void;
}

@:keep @:structAccess @:include("linc_imgui.h") @:build(imguicpp.linc.Linc.xml('imgui')) @:build(imguicpp.linc.Linc.touch()) extern class ImGui {
	@:native("ImGui::Value")
	@:overload(function(prefix:imguicpp.utils.VarConstCharStar, v:Int):cpp.Void { })
	@:overload(function(prefix:imguicpp.utils.VarConstCharStar, v:UInt):cpp.Void { })
	@:overload(function(prefix:imguicpp.utils.VarConstCharStar, v:cpp.Float32, float_format:imguicpp.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(prefix:imguicpp.utils.VarConstCharStar, v:cpp.Float32):cpp.Void { })
	static function value(prefix:imguicpp.utils.VarConstCharStar, b:Bool):cpp.Void;
	@:native("ImGui::linc_VSliderScalar")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, size:ImVec2, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, size:ImVec2, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer):Bool { })
	static function vSliderScalar(label:imguicpp.utils.VarConstCharStar, size:ImVec2, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_VSliderInt")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, size:ImVec2, v:imguicpp.IntPointer, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, size:ImVec2, v:imguicpp.IntPointer, v_min:Int, v_max:Int):Bool { })
	static function vSliderInt(label:imguicpp.utils.VarConstCharStar, size:ImVec2, v:imguicpp.IntPointer, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_VSliderFloat")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, size:ImVec2, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, size:ImVec2, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32):Bool { })
	static function vSliderFloat(label:imguicpp.utils.VarConstCharStar, size:ImVec2, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::Unindent")
	@:overload(function():cpp.Void { })
	static function unindent(indent_w:cpp.Float32):cpp.Void;
	@:native("ImGui::linc_TreePush")
	@:overload(function(ptr_id:imguicpp.VoidPointer):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function treePush(str_id:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::TreePop")
	static function treePop():cpp.Void;
	@:native("ImGui::linc_TreeNodeV")
	@:overload(function(ptr_id:imguicpp.VoidPointer, fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):Bool { })
	static function treeNodeV(str_id:imguicpp.utils.VarConstCharStar, fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):Bool;
	@:native("ImGui::linc_TreeNodeExV")
	@:overload(function(ptr_id:imguicpp.VoidPointer, flags:ImGuiTreeNodeFlags, fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):Bool { })
	static function treeNodeExV(str_id:imguicpp.utils.VarConstCharStar, flags:ImGuiTreeNodeFlags, fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):Bool;
	@:native("ImGui::linc_TreeNodeEx")
	@:overload(function(label:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar, flags:ImGuiTreeNodeFlags, fmt:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar, flags:ImGuiTreeNodeFlags, fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):Bool { })
	@:overload(function(ptr_id:imguicpp.VoidPointer, flags:ImGuiTreeNodeFlags, fmt:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(ptr_id:imguicpp.VoidPointer, flags:ImGuiTreeNodeFlags, fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):Bool { })
	static function treeNodeEx(label:imguicpp.utils.VarConstCharStar, flags:ImGuiTreeNodeFlags):Bool;
	@:native("ImGui::linc_TreeNode")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar, fmt:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar, fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):Bool { })
	@:overload(function(ptr_id:imguicpp.VoidPointer, fmt:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(ptr_id:imguicpp.VoidPointer, fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):Bool { })
	static function treeNode(label:imguicpp.utils.VarConstCharStar):Bool;
	@:native("ImGui::TextWrappedV")
	static function textWrappedV(fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):cpp.Void;
	@:native("ImGui::linc_TextWrapped")
	@:overload(function(fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):cpp.Void { })
	static function textWrapped(fmt:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::TextV")
	static function textV(fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):cpp.Void;
	@:native("ImGui::TextUnformatted")
	@:overload(function(text:imguicpp.utils.VarConstCharStar):cpp.Void { })
	static function textUnformatted(text:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::TextDisabledV")
	static function textDisabledV(fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):cpp.Void;
	@:native("ImGui::linc_TextDisabled")
	@:overload(function(fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):cpp.Void { })
	static function textDisabled(fmt:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::TextColoredV")
	static function textColoredV(col:ImVec4, fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):cpp.Void;
	@:native("ImGui::linc_TextColored")
	@:overload(function(col:ImVec4, fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):cpp.Void { })
	static function textColored(col:ImVec4, fmt:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::linc_Text")
	@:overload(function(fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):cpp.Void { })
	static function text(fmt:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::TableSetupScrollFreeze")
	static function tableSetupScrollFreeze(cols:Int, rows:Int):cpp.Void;
	@:native("ImGui::TableSetupColumn")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, init_width_or_weight:cpp.Float32, user_id:ImU32):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, user_id:ImU32):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar):cpp.Void { })
	static function tableSetupColumn(label:imguicpp.utils.VarConstCharStar, flags:ImGuiTableColumnFlags, init_width_or_weight:cpp.Float32, user_id:ImU32):cpp.Void;
	@:native("ImGui::TableSetColumnIndex")
	static function tableSetColumnIndex(column_n:Int):Bool;
	@:native("ImGui::TableSetBgColor")
	@:overload(function(target:ImGuiTableBgTarget, color:ImU32):cpp.Void { })
	static function tableSetBgColor(target:ImGuiTableBgTarget, color:ImU32, column_n:Int):cpp.Void;
	@:native("ImGui::TableNextRow")
	@:overload(function(row_flags:ImGuiTableRowFlags):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function tableNextRow(row_flags:ImGuiTableRowFlags, min_row_height:cpp.Float32):cpp.Void;
	@:native("ImGui::TableNextColumn")
	static function tableNextColumn():Bool;
	@:native("ImGui::TableHeadersRow")
	static function tableHeadersRow():cpp.Void;
	@:native("ImGui::TableHeader")
	static function tableHeader(label:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::TableGetSortSpecs")
	static function tableGetSortSpecs():cpp.Star<ImGuiTableSortSpecs>;
	@:native("ImGui::TableGetRowIndex")
	static function tableGetRowIndex():Int;
	@:native("ImGui::TableGetColumnName")
	@:overload(function():imguicpp.utils.VarConstCharStar { })
	static function tableGetColumnName(column_n:Int):imguicpp.utils.VarConstCharStar;
	@:native("ImGui::TableGetColumnIndex")
	static function tableGetColumnIndex():Int;
	@:native("ImGui::TableGetColumnFlags")
	@:overload(function():ImGuiTableColumnFlags { })
	static function tableGetColumnFlags(column_n:Int):ImGuiTableColumnFlags;
	@:native("ImGui::TableGetColumnCount")
	static function tableGetColumnCount():Int;
	@:native("ImGui::TabItemButton")
	@:overload(function(label:imguicpp.utils.VarConstCharStar):Bool { })
	static function tabItemButton(label:imguicpp.utils.VarConstCharStar, flags:ImGuiTabItemFlags):Bool;
	@:native("ImGui::StyleColorsLight")
	@:overload(function():cpp.Void { })
	static function styleColorsLight(dst:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::StyleColorsDark")
	@:overload(function():cpp.Void { })
	static function styleColorsDark(dst:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::StyleColorsClassic")
	@:overload(function():cpp.Void { })
	static function styleColorsClassic(dst:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::Spacing")
	static function spacing():cpp.Void;
	@:native("ImGui::SmallButton")
	static function smallButton(label:imguicpp.utils.VarConstCharStar):Bool;
	@:native("ImGui::linc_SliderScalarN")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer):Bool { })
	static function sliderScalarN(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_SliderScalar")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer):Bool { })
	static function sliderScalar(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_SliderInt4")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int):Bool { })
	static function sliderInt4(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_SliderInt3")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int):Bool { })
	static function sliderInt3(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_SliderInt2")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int):Bool { })
	static function sliderInt2(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_SliderInt")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int):Bool { })
	static function sliderInt(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_SliderFloat4")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32):Bool { })
	static function sliderFloat4(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_SliderFloat3")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32):Bool { })
	static function sliderFloat3(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_SliderFloat2")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32):Bool { })
	static function sliderFloat2(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_SliderFloat")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32):Bool { })
	static function sliderFloat(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_SliderAngle")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_rad:imguicpp.FloatPointer, v_degrees_min:cpp.Float32, v_degrees_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_rad:imguicpp.FloatPointer, v_degrees_min:cpp.Float32, v_degrees_max:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_rad:imguicpp.FloatPointer, v_degrees_min:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_rad:imguicpp.FloatPointer):Bool { })
	static function sliderAngle(label:imguicpp.utils.VarConstCharStar, v_rad:imguicpp.FloatPointer, v_degrees_min:cpp.Float32, v_degrees_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::ShowUserGuide")
	static function showUserGuide():cpp.Void;
	@:native("ImGui::ShowStyleSelector")
	static function showStyleSelector(label:imguicpp.utils.VarConstCharStar):Bool;
	@:native("ImGui::ShowStyleEditor")
	@:overload(function():cpp.Void { })
	static function showStyleEditor(ref:cpp.Star<ImGuiStyle>):cpp.Void;
	@:native("ImGui::linc_ShowMetricsWindow")
	@:overload(function():cpp.Void { })
	static function showMetricsWindow(p_open:imguicpp.BoolPointer):cpp.Void;
	@:native("ImGui::ShowFontSelector")
	static function showFontSelector(label:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::linc_ShowDemoWindow")
	@:overload(function():cpp.Void { })
	static function showDemoWindow(p_open:imguicpp.BoolPointer):cpp.Void;
	@:native("ImGui::linc_ShowAboutWindow")
	@:overload(function():cpp.Void { })
	static function showAboutWindow(p_open:imguicpp.BoolPointer):cpp.Void;
	@:native("ImGui::SetWindowSize")
	@:overload(function(size:ImVec2):cpp.Void { })
	@:overload(function(name:imguicpp.utils.VarConstCharStar, size:ImVec2, cond:ImGuiCond):cpp.Void { })
	@:overload(function(name:imguicpp.utils.VarConstCharStar, size:ImVec2):cpp.Void { })
	static function setWindowSize(size:ImVec2, cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetWindowPos")
	@:overload(function(pos:ImVec2):cpp.Void { })
	@:overload(function(name:imguicpp.utils.VarConstCharStar, pos:ImVec2, cond:ImGuiCond):cpp.Void { })
	@:overload(function(name:imguicpp.utils.VarConstCharStar, pos:ImVec2):cpp.Void { })
	static function setWindowPos(pos:ImVec2, cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetWindowFontScale")
	static function setWindowFontScale(scale:cpp.Float32):cpp.Void;
	@:native("ImGui::SetWindowFocus")
	@:overload(function(name:imguicpp.utils.VarConstCharStar):cpp.Void { })
	static function setWindowFocus():cpp.Void;
	@:native("ImGui::SetWindowCollapsed")
	@:overload(function(collapsed:Bool):cpp.Void { })
	@:overload(function(name:imguicpp.utils.VarConstCharStar, collapsed:Bool, cond:ImGuiCond):cpp.Void { })
	@:overload(function(name:imguicpp.utils.VarConstCharStar, collapsed:Bool):cpp.Void { })
	static function setWindowCollapsed(collapsed:Bool, cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetTooltipV")
	static function setTooltipV(fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):cpp.Void;
	@:native("ImGui::linc_SetTooltip")
	@:overload(function(fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):cpp.Void { })
	static function setTooltip(fmt:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::SetTabItemClosed")
	static function setTabItemClosed(tab_or_docked_window_label:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::SetStateStorage")
	static function setStateStorage(storage:cpp.Star<ImGuiStorage>):cpp.Void;
	@:native("ImGui::SetScrollY")
	static function setScrollY(scroll_y:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollX")
	static function setScrollX(scroll_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollHereY")
	@:overload(function():cpp.Void { })
	static function setScrollHereY(center_y_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollHereX")
	@:overload(function():cpp.Void { })
	static function setScrollHereX(center_x_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollFromPosY")
	@:overload(function(local_y:cpp.Float32):cpp.Void { })
	static function setScrollFromPosY(local_y:cpp.Float32, center_y_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::SetScrollFromPosX")
	@:overload(function(local_x:cpp.Float32):cpp.Void { })
	static function setScrollFromPosX(local_x:cpp.Float32, center_x_ratio:cpp.Float32):cpp.Void;
	@:native("ImGui::linc_SetNextWindowSizeConstraints")
	@:overload(function(size_min:ImVec2, size_max:ImVec2, custom_callback_data:imguicpp.VoidPointer):cpp.Void { })
	@:overload(function(size_min:ImVec2, size_max:ImVec2):cpp.Void { })
	static function setNextWindowSizeConstraints(size_min:ImVec2, size_max:ImVec2, custom_callback:ImGuiSizeCallback, custom_callback_data:imguicpp.VoidPointer):cpp.Void;
	@:native("ImGui::SetNextWindowSize")
	@:overload(function(size:ImVec2):cpp.Void { })
	static function setNextWindowSize(size:ImVec2, cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetNextWindowPos")
	@:overload(function(pos:ImVec2, pivot:ImVec2):cpp.Void { })
	@:overload(function(pos:ImVec2):cpp.Void { })
	static function setNextWindowPos(pos:ImVec2, cond:ImGuiCond, pivot:ImVec2):cpp.Void;
	@:native("ImGui::SetNextWindowFocus")
	static function setNextWindowFocus():cpp.Void;
	@:native("ImGui::SetNextWindowContentSize")
	static function setNextWindowContentSize(size:ImVec2):cpp.Void;
	@:native("ImGui::SetNextWindowCollapsed")
	@:overload(function(collapsed:Bool):cpp.Void { })
	static function setNextWindowCollapsed(collapsed:Bool, cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetNextWindowBgAlpha")
	static function setNextWindowBgAlpha(alpha:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextItemWidth")
	static function setNextItemWidth(item_width:cpp.Float32):cpp.Void;
	@:native("ImGui::SetNextItemOpen")
	@:overload(function(is_open:Bool):cpp.Void { })
	static function setNextItemOpen(is_open:Bool, cond:ImGuiCond):cpp.Void;
	@:native("ImGui::SetMouseCursor")
	static function setMouseCursor(cursor_type:ImGuiMouseCursor):cpp.Void;
	@:native("ImGui::SetKeyboardFocusHere")
	@:overload(function():cpp.Void { })
	static function setKeyboardFocusHere(offset:Int):cpp.Void;
	@:native("ImGui::SetItemDefaultFocus")
	static function setItemDefaultFocus():cpp.Void;
	@:native("ImGui::SetItemAllowOverlap")
	static function setItemAllowOverlap():cpp.Void;
	@:native("ImGui::linc_SetDragDropPayload")
	@:overload(function(type:imguicpp.utils.VarConstCharStar, data:imguicpp.VoidPointer, sz:cpp.SizeT):Bool { })
	static function setDragDropPayload(type:imguicpp.utils.VarConstCharStar, data:imguicpp.VoidPointer, sz:cpp.SizeT, cond:ImGuiCond):Bool;
	@:native("ImGui::SetCursorScreenPos")
	static function setCursorScreenPos(pos:ImVec2):cpp.Void;
	@:native("ImGui::SetCursorPosY")
	static function setCursorPosY(local_y:cpp.Float32):cpp.Void;
	@:native("ImGui::SetCursorPosX")
	static function setCursorPosX(local_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetCursorPos")
	static function setCursorPos(local_pos:ImVec2):cpp.Void;
	@:native("ImGui::SetCurrentContext")
	static function setCurrentContext(ctx:cpp.Star<ImGuiContext>):cpp.Void;
	@:native("ImGui::SetColumnWidth")
	static function setColumnWidth(column_index:Int, width:cpp.Float32):cpp.Void;
	@:native("ImGui::SetColumnOffset")
	static function setColumnOffset(column_index:Int, offset_x:cpp.Float32):cpp.Void;
	@:native("ImGui::SetColorEditOptions")
	static function setColorEditOptions(flags:ImGuiColorEditFlags):cpp.Void;
	@:native("ImGui::SetClipboardText")
	static function setClipboardText(text:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::linc_SetAllocatorFunctions")
	@:overload(function(alloc_func:cpp.Callable<(cpp.SizeT, cpp.Star<cpp.Void>) -> imguicpp.VoidPointer>, free_func:cpp.Callable<(cpp.Star<cpp.Void>, cpp.Star<cpp.Void>) -> Void>):cpp.Void { })
	static function setAllocatorFunctions(alloc_func:cpp.Callable<(cpp.SizeT, cpp.Star<cpp.Void>) -> imguicpp.VoidPointer>, free_func:cpp.Callable<(cpp.Star<cpp.Void>, cpp.Star<cpp.Void>) -> Void>, user_data:imguicpp.VoidPointer):cpp.Void;
	@:native("ImGui::Separator")
	static function separator():cpp.Void;
	@:native("ImGui::linc_Selectable")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, selected:Bool, size:ImVec2):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, size:ImVec2):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, p_selected:imguicpp.BoolPointer, flags:ImGuiSelectableFlags, size:ImVec2):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, p_selected:imguicpp.BoolPointer, size:ImVec2):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, p_selected:imguicpp.BoolPointer):Bool { })
	static function selectable(label:imguicpp.utils.VarConstCharStar, selected:Bool, flags:ImGuiSelectableFlags, size:ImVec2):Bool;
	@:native("ImGui::SaveIniSettingsToMemory")
	@:overload(function():imguicpp.utils.VarConstCharStar { })
	static function saveIniSettingsToMemory(out_ini_size:cpp.Star<cpp.SizeT>):imguicpp.utils.VarConstCharStar;
	@:native("ImGui::SaveIniSettingsToDisk")
	static function saveIniSettingsToDisk(ini_filename:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::SameLine")
	@:overload(function(spacing:cpp.Float32):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function sameLine(offset_from_start_x:cpp.Float32, spacing:cpp.Float32):cpp.Void;
	@:native("ImGui::ResetMouseDragDelta")
	@:overload(function():cpp.Void { })
	static function resetMouseDragDelta(button:ImGuiMouseButton):cpp.Void;
	@:native("ImGui::Render")
	static function render():cpp.Void;
	@:native("ImGui::linc_RadioButton")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_button:Int):Bool { })
	static function radioButton(label:imguicpp.utils.VarConstCharStar, active:Bool):Bool;
	@:native("ImGui::PushTextWrapPos")
	@:overload(function():cpp.Void { })
	static function pushTextWrapPos(wrap_local_pos_x:cpp.Float32):cpp.Void;
	@:native("ImGui::PushStyleVar")
	@:overload(function(idx:ImGuiStyleVar, val:ImVec2):cpp.Void { })
	static function pushStyleVar(idx:ImGuiStyleVar, val:cpp.Float32):cpp.Void;
	@:native("ImGui::PushStyleColor")
	@:overload(function(idx:ImGuiCol, col:ImVec4):cpp.Void { })
	static function pushStyleColor(idx:ImGuiCol, col:ImU32):cpp.Void;
	@:native("ImGui::PushItemWidth")
	static function pushItemWidth(item_width:cpp.Float32):cpp.Void;
	@:native("ImGui::linc_PushID")
	@:overload(function(str_id_begin:imguicpp.utils.VarConstCharStar, str_id_end:imguicpp.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(ptr_id:imguicpp.VoidPointer):cpp.Void { })
	@:overload(function(int_id:Int):cpp.Void { })
	static function pushID(str_id:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::PushFont")
	static function pushFont(font:cpp.Star<ImFont>):cpp.Void;
	@:native("ImGui::PushClipRect")
	static function pushClipRect(clip_rect_min:ImVec2, clip_rect_max:ImVec2, intersect_with_current_clip_rect:Bool):cpp.Void;
	@:native("ImGui::PushButtonRepeat")
	static function pushButtonRepeat(repeat:Bool):cpp.Void;
	@:native("ImGui::PushAllowKeyboardFocus")
	static function pushAllowKeyboardFocus(allow_keyboard_focus:Bool):cpp.Void;
	@:native("ImGui::ProgressBar")
	@:overload(function(fraction:cpp.Float32, size_arg:ImVec2):cpp.Void { })
	@:overload(function(fraction:cpp.Float32):cpp.Void { })
	static function progressBar(fraction:cpp.Float32, size_arg:ImVec2, overlay:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::PopTextWrapPos")
	static function popTextWrapPos():cpp.Void;
	@:native("ImGui::PopStyleVar")
	@:overload(function():cpp.Void { })
	static function popStyleVar(count:Int):cpp.Void;
	@:native("ImGui::PopStyleColor")
	@:overload(function():cpp.Void { })
	static function popStyleColor(count:Int):cpp.Void;
	@:native("ImGui::PopItemWidth")
	static function popItemWidth():cpp.Void;
	@:native("ImGui::PopID")
	static function popID():cpp.Void;
	@:native("ImGui::PopFont")
	static function popFont():cpp.Void;
	@:native("ImGui::PopClipRect")
	static function popClipRect():cpp.Void;
	@:native("ImGui::PopButtonRepeat")
	static function popButtonRepeat():cpp.Void;
	@:native("ImGui::PopAllowKeyboardFocus")
	static function popAllowKeyboardFocus():cpp.Void;
	@:native("ImGui::linc_PlotLines")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int, overlay_text:imguicpp.utils.VarConstCharStar, scale_min:cpp.Float32, scale_max:cpp.Float32, stride:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int, scale_min:cpp.Float32, scale_max:cpp.Float32, stride:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int, scale_min:cpp.Float32, stride:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int, stride:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int, values_offset:Int, overlay_text:imguicpp.utils.VarConstCharStar, scale_min:cpp.Float32, scale_max:cpp.Float32, graph_size:ImVec2):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int, values_offset:Int, overlay_text:imguicpp.utils.VarConstCharStar, scale_min:cpp.Float32, scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int, values_offset:Int, scale_min:cpp.Float32, scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int, values_offset:Int, scale_min:cpp.Float32):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int, values_offset:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int):cpp.Void { })
	static function plotLines(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int, overlay_text:imguicpp.utils.VarConstCharStar, scale_min:cpp.Float32, scale_max:cpp.Float32, graph_size:ImVec2, stride:Int):cpp.Void;
	@:native("ImGui::linc_PlotHistogram")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int, overlay_text:imguicpp.utils.VarConstCharStar, scale_min:cpp.Float32, scale_max:cpp.Float32, stride:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int, scale_min:cpp.Float32, scale_max:cpp.Float32, stride:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int, scale_min:cpp.Float32, stride:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int, stride:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int, values_offset:Int, overlay_text:imguicpp.utils.VarConstCharStar, scale_min:cpp.Float32, scale_max:cpp.Float32, graph_size:ImVec2):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int, values_offset:Int, overlay_text:imguicpp.utils.VarConstCharStar, scale_min:cpp.Float32, scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int, values_offset:Int, scale_min:cpp.Float32, scale_max:cpp.Float32):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int, values_offset:Int, scale_min:cpp.Float32):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int, values_offset:Int):cpp.Void { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, values_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int) -> cpp.Float32>, data:imguicpp.VoidPointer, values_count:Int):cpp.Void { })
	static function plotHistogram(label:imguicpp.utils.VarConstCharStar, values:imguicpp.FloatPointer, values_count:Int, values_offset:Int, overlay_text:imguicpp.utils.VarConstCharStar, scale_min:cpp.Float32, scale_max:cpp.Float32, graph_size:ImVec2, stride:Int):cpp.Void;
	@:native("ImGui::OpenPopupOnItemClick")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function openPopupOnItemClick(str_id:imguicpp.utils.VarConstCharStar, popup_flags:ImGuiPopupFlags):cpp.Void;
	@:native("ImGui::OpenPopup")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar):cpp.Void { })
	static function openPopup(str_id:imguicpp.utils.VarConstCharStar, popup_flags:ImGuiPopupFlags):cpp.Void;
	@:native("ImGui::NextColumn")
	static function nextColumn():cpp.Void;
	@:native("ImGui::NewLine")
	static function newLine():cpp.Void;
	@:native("ImGui::NewFrame")
	static function newFrame():cpp.Void;
	@:native("ImGui::linc_MenuItem")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, shortcut:imguicpp.utils.VarConstCharStar, selected:Bool):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, shortcut:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, shortcut:imguicpp.utils.VarConstCharStar, p_selected:imguicpp.BoolPointer, enabled:Bool):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, shortcut:imguicpp.utils.VarConstCharStar, p_selected:imguicpp.BoolPointer):Bool { })
	static function menuItem(label:imguicpp.utils.VarConstCharStar, shortcut:imguicpp.utils.VarConstCharStar, selected:Bool, enabled:Bool):Bool;
	@:native("ImGui::linc_MemFree")
	static function memFree(ptr:imguicpp.VoidPointer):cpp.Void;
	@:native("ImGui::MemAlloc")
	static function memAlloc(size:cpp.SizeT):imguicpp.VoidPointer;
	@:native("ImGui::LogToTTY")
	@:overload(function():cpp.Void { })
	static function logToTTY(auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LogToFile")
	@:overload(function(filename:imguicpp.utils.VarConstCharStar):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function logToFile(auto_open_depth:Int, filename:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::LogToClipboard")
	@:overload(function():cpp.Void { })
	static function logToClipboard(auto_open_depth:Int):cpp.Void;
	@:native("ImGui::LogText")
	@:overload(function(fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):cpp.Void { })
	static function logText(fmt:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::LogFinish")
	static function logFinish():cpp.Void;
	@:native("ImGui::LogButtons")
	static function logButtons():cpp.Void;
	@:native("ImGui::LoadIniSettingsFromMemory")
	@:overload(function(ini_data:imguicpp.utils.VarConstCharStar):cpp.Void { })
	static function loadIniSettingsFromMemory(ini_data:imguicpp.utils.VarConstCharStar, ini_size:cpp.SizeT):cpp.Void;
	@:native("ImGui::LoadIniSettingsFromDisk")
	static function loadIniSettingsFromDisk(ini_filename:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::ListBoxHeader")
	@:overload(function(label:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, items_count:Int, height_in_items:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, items_count:Int):Bool { })
	static function listBoxHeader(label:imguicpp.utils.VarConstCharStar, size:ImVec2):Bool;
	@:native("ImGui::ListBoxFooter")
	static function listBoxFooter():cpp.Void;
	@:native("ImGui::linc_ListBox")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, current_item:imguicpp.IntPointer, items:cpp.RawPointer<imguicpp.utils.VarConstCharStar>, items_count:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, current_item:imguicpp.IntPointer, items_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int, cpp.Star<cpp.RawConstPointer<cpp.Char>>) -> Bool>, data:imguicpp.VoidPointer, items_count:Int, height_in_items:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, current_item:imguicpp.IntPointer, items_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int, cpp.Star<cpp.RawConstPointer<cpp.Char>>) -> Bool>, data:imguicpp.VoidPointer, items_count:Int):Bool { })
	static function listBox(label:imguicpp.utils.VarConstCharStar, current_item:imguicpp.IntPointer, items:cpp.RawPointer<imguicpp.utils.VarConstCharStar>, items_count:Int, height_in_items:Int):Bool;
	@:native("ImGui::LabelTextV")
	static function labelTextV(label:imguicpp.utils.VarConstCharStar, fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):cpp.Void;
	@:native("ImGui::linc_LabelText")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):cpp.Void { })
	static function labelText(label:imguicpp.utils.VarConstCharStar, fmt:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::IsWindowHovered")
	@:overload(function():Bool { })
	static function isWindowHovered(flags:ImGuiHoveredFlags):Bool;
	@:native("ImGui::IsWindowFocused")
	@:overload(function():Bool { })
	static function isWindowFocused(flags:ImGuiFocusedFlags):Bool;
	@:native("ImGui::IsWindowCollapsed")
	static function isWindowCollapsed():Bool;
	@:native("ImGui::IsWindowAppearing")
	static function isWindowAppearing():Bool;
	@:native("ImGui::IsRectVisible")
	@:overload(function(rect_min:ImVec2, rect_max:ImVec2):Bool { })
	static function isRectVisible(size:ImVec2):Bool;
	@:native("ImGui::IsPopupOpen")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar):Bool { })
	static function isPopupOpen(str_id:imguicpp.utils.VarConstCharStar, flags:ImGuiPopupFlags):Bool;
	@:native("ImGui::IsMouseReleased")
	static function isMouseReleased(button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsMousePosValid")
	@:overload(function():Bool { })
	static function isMousePosValid(mouse_pos:cpp.Star<ImVec2>):Bool;
	@:native("ImGui::IsMouseHoveringRect")
	@:overload(function(r_min:ImVec2, r_max:ImVec2):Bool { })
	static function isMouseHoveringRect(r_min:ImVec2, r_max:ImVec2, clip:Bool):Bool;
	@:native("ImGui::IsMouseDragging")
	@:overload(function(button:ImGuiMouseButton):Bool { })
	static function isMouseDragging(button:ImGuiMouseButton, lock_threshold:cpp.Float32):Bool;
	@:native("ImGui::IsMouseDown")
	static function isMouseDown(button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsMouseDoubleClicked")
	static function isMouseDoubleClicked(button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsMouseClicked")
	@:overload(function(button:ImGuiMouseButton):Bool { })
	static function isMouseClicked(button:ImGuiMouseButton, repeat:Bool):Bool;
	@:native("ImGui::IsKeyReleased")
	static function isKeyReleased(user_key_index:Int):Bool;
	@:native("ImGui::IsKeyPressed")
	@:overload(function(user_key_index:Int):Bool { })
	static function isKeyPressed(user_key_index:Int, repeat:Bool):Bool;
	@:native("ImGui::IsKeyDown")
	static function isKeyDown(user_key_index:Int):Bool;
	@:native("ImGui::IsItemVisible")
	static function isItemVisible():Bool;
	@:native("ImGui::IsItemToggledOpen")
	static function isItemToggledOpen():Bool;
	@:native("ImGui::IsItemHovered")
	@:overload(function():Bool { })
	static function isItemHovered(flags:ImGuiHoveredFlags):Bool;
	@:native("ImGui::IsItemFocused")
	static function isItemFocused():Bool;
	@:native("ImGui::IsItemEdited")
	static function isItemEdited():Bool;
	@:native("ImGui::IsItemDeactivatedAfterEdit")
	static function isItemDeactivatedAfterEdit():Bool;
	@:native("ImGui::IsItemDeactivated")
	static function isItemDeactivated():Bool;
	@:native("ImGui::IsItemClicked")
	@:overload(function():Bool { })
	static function isItemClicked(mouse_button:ImGuiMouseButton):Bool;
	@:native("ImGui::IsItemActive")
	static function isItemActive():Bool;
	@:native("ImGui::IsItemActivated")
	static function isItemActivated():Bool;
	@:native("ImGui::IsAnyMouseDown")
	static function isAnyMouseDown():Bool;
	@:native("ImGui::IsAnyItemHovered")
	static function isAnyItemHovered():Bool;
	@:native("ImGui::IsAnyItemFocused")
	static function isAnyItemFocused():Bool;
	@:native("ImGui::IsAnyItemActive")
	static function isAnyItemActive():Bool;
	@:native("ImGui::InvisibleButton")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar, size:ImVec2):Bool { })
	static function invisibleButton(str_id:imguicpp.utils.VarConstCharStar, size:ImVec2, flags:ImGuiButtonFlags):Bool;
	@:native("ImGui::linc_InputTextWithHint")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, hint:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT, flags:ImGuiInputTextFlags, user_data:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, hint:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT, user_data:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, hint:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT):Bool { })
	static function inputTextWithHint(label:imguicpp.utils.VarConstCharStar, hint:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT, flags:ImGuiInputTextFlags, callback:ImGuiInputTextCallback, user_data:imguicpp.VoidPointer):Bool;
	@:native("ImGui::linc_InputTextMultiline")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT, size:ImVec2, flags:ImGuiInputTextFlags, user_data:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT, size:ImVec2, user_data:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT, user_data:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT):Bool { })
	static function inputTextMultiline(label:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT, size:ImVec2, flags:ImGuiInputTextFlags, callback:ImGuiInputTextCallback, user_data:imguicpp.VoidPointer):Bool;
	@:native("ImGui::linc_InputText")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT, flags:ImGuiInputTextFlags, user_data:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT, user_data:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT):Bool { })
	static function inputText(label:imguicpp.utils.VarConstCharStar, buf:cpp.Star<cpp.Char>, buf_size:cpp.SizeT, flags:ImGuiInputTextFlags, callback:ImGuiInputTextCallback, user_data:imguicpp.VoidPointer):Bool;
	@:native("ImGui::linc_InputScalarN")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, p_step:imguicpp.VoidPointer, p_step_fast:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, p_step:imguicpp.VoidPointer, p_step_fast:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, p_step_fast:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int):Bool { })
	static function inputScalarN(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, p_step:imguicpp.VoidPointer, p_step_fast:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar, flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::linc_InputScalar")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, p_step:imguicpp.VoidPointer, p_step_fast:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, p_step:imguicpp.VoidPointer, p_step_fast:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, p_step_fast:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer):Bool { })
	static function inputScalar(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, p_step:imguicpp.VoidPointer, p_step_fast:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar, flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::linc_InputInt4")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer):Bool { })
	static function inputInt4(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::linc_InputInt3")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer):Bool { })
	static function inputInt3(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::linc_InputInt2")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer):Bool { })
	static function inputInt2(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::linc_InputInt")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, step:Int, step_fast:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, step_fast:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer):Bool { })
	static function inputInt(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, step:Int, step_fast:Int, flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::linc_InputFloat4")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer):Bool { })
	static function inputFloat4(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, format:imguicpp.utils.VarConstCharStar, flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::linc_InputFloat3")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer):Bool { })
	static function inputFloat3(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, format:imguicpp.utils.VarConstCharStar, flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::linc_InputFloat2")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer):Bool { })
	static function inputFloat2(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, format:imguicpp.utils.VarConstCharStar, flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::linc_InputFloat")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, step:cpp.Float32, step_fast:cpp.Float32, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, step:cpp.Float32, step_fast:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, step_fast:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer):Bool { })
	static function inputFloat(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, step:cpp.Float32, step_fast:cpp.Float32, format:imguicpp.utils.VarConstCharStar, flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::InputDouble")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:cpp.Star<Float>, step:Float, step_fast:Float, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:cpp.Star<Float>, step:Float, step_fast:Float):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:cpp.Star<Float>, step_fast:Float):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:cpp.Star<Float>):Bool { })
	static function inputDouble(label:imguicpp.utils.VarConstCharStar, v:cpp.Star<Float>, step:Float, step_fast:Float, format:imguicpp.utils.VarConstCharStar, flags:ImGuiInputTextFlags):Bool;
	@:native("ImGui::Indent")
	@:overload(function():cpp.Void { })
	static function indent(indent_w:cpp.Float32):cpp.Void;
	@:native("ImGui::ImageButton")
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2, frame_padding:Int, tint_col:ImVec4):Bool { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2, tint_col:ImVec4):Bool { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2):Bool { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv1:ImVec2):Bool { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2):Bool { })
	static function imageButton(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2, frame_padding:Int, bg_col:ImVec4, tint_col:ImVec4):Bool;
	@:native("ImGui::Image")
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2, tint_col:ImVec4):cpp.Void { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2):cpp.Void { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2, uv1:ImVec2):cpp.Void { })
	@:overload(function(user_texture_id:ImTextureID, size:ImVec2):cpp.Void { })
	static function image(user_texture_id:ImTextureID, size:ImVec2, uv0:ImVec2, uv1:ImVec2, tint_col:ImVec4, border_col:ImVec4):cpp.Void;
	@:native("ImGui::GetWindowWidth")
	static function getWindowWidth():cpp.Float32;
	@:native("ImGui::GetWindowSize")
	static function getWindowSize(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetWindowPos")
	static function getWindowPos(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetWindowHeight")
	static function getWindowHeight():cpp.Float32;
	@:native("ImGui::GetWindowDrawList")
	static function getWindowDrawList():cpp.Star<ImDrawList>;
	@:native("ImGui::GetWindowContentRegionWidth")
	static function getWindowContentRegionWidth():cpp.Float32;
	@:native("ImGui::GetWindowContentRegionMin")
	static function getWindowContentRegionMin(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetWindowContentRegionMax")
	static function getWindowContentRegionMax(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetVersion")
	static function getVersion():imguicpp.utils.VarConstCharStar;
	@:native("ImGui::GetTreeNodeToLabelSpacing")
	static function getTreeNodeToLabelSpacing():cpp.Float32;
	@:native("ImGui::GetTime")
	static function getTime():Float;
	@:native("ImGui::GetTextLineHeightWithSpacing")
	static function getTextLineHeightWithSpacing():cpp.Float32;
	@:native("ImGui::GetTextLineHeight")
	static function getTextLineHeight():cpp.Float32;
	@:native("ImGui::GetStyleColorVec4")
	static function getStyleColorVec4(idx:ImGuiCol):cpp.Reference<ImVec4>;
	@:native("ImGui::GetStyleColorName")
	static function getStyleColorName(idx:ImGuiCol):imguicpp.utils.VarConstCharStar;
	@:native("ImGui::GetStyle")
	static function getStyle():cpp.Reference<ImGuiStyle>;
	@:native("ImGui::GetStateStorage")
	static function getStateStorage():cpp.Star<ImGuiStorage>;
	@:native("ImGui::GetScrollY")
	static function getScrollY():cpp.Float32;
	@:native("ImGui::GetScrollX")
	static function getScrollX():cpp.Float32;
	@:native("ImGui::GetScrollMaxY")
	static function getScrollMaxY():cpp.Float32;
	@:native("ImGui::GetScrollMaxX")
	static function getScrollMaxX():cpp.Float32;
	@:native("ImGui::GetMousePosOnOpeningCurrentPopup")
	static function getMousePosOnOpeningCurrentPopup(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetMousePos")
	static function getMousePos(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetMouseDragDelta")
	@:overload(function(pOut:cpp.Star<ImVec2>, lock_threshold:cpp.Float32):cpp.Void { })
	@:overload(function(pOut:cpp.Star<ImVec2>):cpp.Void { })
	static function getMouseDragDelta(pOut:cpp.Star<ImVec2>, button:ImGuiMouseButton, lock_threshold:cpp.Float32):cpp.Void;
	@:native("ImGui::GetMouseCursor")
	static function getMouseCursor():ImGuiMouseCursor;
	@:native("ImGui::GetKeyPressedAmount")
	static function getKeyPressedAmount(key_index:Int, repeat_delay:cpp.Float32, rate:cpp.Float32):Int;
	@:native("ImGui::GetKeyIndex")
	static function getKeyIndex(imgui_key:ImGuiKey):Int;
	@:native("ImGui::GetItemRectSize")
	static function getItemRectSize():ImVec2;
	@:native("ImGui::GetItemRectMin")
	static function getItemRectMin():ImVec2;
	@:native("ImGui::GetItemRectMax")
	static function getItemRectMax():ImVec2;
	@:native("ImGui::GetIO")
	static function getIO():cpp.Reference<ImGuiIO>;
	@:native("ImGui::linc_GetID")
	@:overload(function(str_id_begin:imguicpp.utils.VarConstCharStar, str_id_end:imguicpp.utils.VarConstCharStar):ImGuiID { })
	@:overload(function(ptr_id:imguicpp.VoidPointer):ImGuiID { })
	static function getID(str_id:imguicpp.utils.VarConstCharStar):ImGuiID;
	@:native("ImGui::GetFrameHeightWithSpacing")
	static function getFrameHeightWithSpacing():cpp.Float32;
	@:native("ImGui::GetFrameHeight")
	static function getFrameHeight():cpp.Float32;
	@:native("ImGui::GetFrameCount")
	static function getFrameCount():Int;
	@:native("ImGui::GetForegroundDrawList")
	static function getForegroundDrawList():cpp.Star<ImDrawList>;
	@:native("ImGui::GetFontTexUvWhitePixel")
	static function getFontTexUvWhitePixel(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetFontSize")
	static function getFontSize():cpp.Float32;
	@:native("ImGui::GetFont")
	static function getFont():cpp.Star<ImFont>;
	@:native("ImGui::GetDrawListSharedData")
	static function getDrawListSharedData():cpp.Star<ImDrawListSharedData>;
	@:native("ImGui::GetDrawData")
	static function getDrawData():cpp.Star<ImDrawData>;
	@:native("ImGui::GetDragDropPayload")
	static function getDragDropPayload():cpp.Star<ImGuiPayload>;
	@:native("ImGui::GetCursorStartPos")
	static function getCursorStartPos(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetCursorScreenPos")
	static function getCursorScreenPos(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetCursorPosY")
	static function getCursorPosY():cpp.Float32;
	@:native("ImGui::GetCursorPosX")
	static function getCursorPosX():cpp.Float32;
	@:native("ImGui::GetCursorPos")
	static function getCursorPos(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetCurrentContext")
	static function getCurrentContext():cpp.Star<ImGuiContext>;
	@:native("ImGui::GetContentRegionMax")
	static function getContentRegionMax(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetContentRegionAvail")
	static function getContentRegionAvail(pOut:cpp.Star<ImVec2>):cpp.Void;
	@:native("ImGui::GetColumnsCount")
	static function getColumnsCount():Int;
	@:native("ImGui::GetColumnWidth")
	@:overload(function():cpp.Float32 { })
	static function getColumnWidth(column_index:Int):cpp.Float32;
	@:native("ImGui::GetColumnOffset")
	@:overload(function():cpp.Float32 { })
	static function getColumnOffset(column_index:Int):cpp.Float32;
	@:native("ImGui::GetColumnIndex")
	static function getColumnIndex():Int;
	@:native("ImGui::GetColorU32")
	@:overload(function(idx:ImGuiCol):ImU32 { })
	@:overload(function(col:ImVec4):ImU32 { })
	@:overload(function(col:ImU32):ImU32 { })
	static function getColorU32(idx:ImGuiCol, alpha_mul:cpp.Float32):ImU32;
	@:native("ImGui::GetClipboardText")
	static function getClipboardText():imguicpp.utils.VarConstCharStar;
	@:native("ImGui::GetBackgroundDrawList")
	static function getBackgroundDrawList():cpp.Star<ImDrawList>;
	@:native("ImGui::EndTooltip")
	static function endTooltip():cpp.Void;
	@:native("ImGui::EndTable")
	static function endTable():cpp.Void;
	@:native("ImGui::EndTabItem")
	static function endTabItem():cpp.Void;
	@:native("ImGui::EndTabBar")
	static function endTabBar():cpp.Void;
	@:native("ImGui::EndPopup")
	static function endPopup():cpp.Void;
	@:native("ImGui::EndMenuBar")
	static function endMenuBar():cpp.Void;
	@:native("ImGui::EndMenu")
	static function endMenu():cpp.Void;
	@:native("ImGui::EndMainMenuBar")
	static function endMainMenuBar():cpp.Void;
	@:native("ImGui::EndGroup")
	static function endGroup():cpp.Void;
	@:native("ImGui::EndFrame")
	static function endFrame():cpp.Void;
	@:native("ImGui::EndDragDropTarget")
	static function endDragDropTarget():cpp.Void;
	@:native("ImGui::EndDragDropSource")
	static function endDragDropSource():cpp.Void;
	@:native("ImGui::EndCombo")
	static function endCombo():cpp.Void;
	@:native("ImGui::EndChildFrame")
	static function endChildFrame():cpp.Void;
	@:native("ImGui::EndChild")
	static function endChild():cpp.Void;
	@:native("ImGui::linc_End")
	static function end():cpp.Void;
	@:native("ImGui::Dummy")
	static function dummy(size:ImVec2):cpp.Void;
	@:native("ImGui::linc_DragScalarN")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, v_speed:cpp.Float32, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, v_speed:cpp.Float32, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, v_speed:cpp.Float32, p_min:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, v_speed:cpp.Float32):Bool { })
	static function dragScalarN(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, components:Int, v_speed:cpp.Float32, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_DragScalar")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, v_speed:cpp.Float32, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, v_speed:cpp.Float32, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, v_speed:cpp.Float32, p_min:imguicpp.VoidPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, v_speed:cpp.Float32):Bool { })
	static function dragScalar(label:imguicpp.utils.VarConstCharStar, data_type:ImGuiDataType, p_data:imguicpp.VoidPointer, v_speed:cpp.Float32, p_min:imguicpp.VoidPointer, p_max:imguicpp.VoidPointer, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_DragIntRange2")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.IntPointer, v_current_max:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar, format_max:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.IntPointer, v_current_max:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int, format_max:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.IntPointer, v_current_max:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.IntPointer, v_current_max:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.IntPointer, v_current_max:imguicpp.IntPointer, v_speed:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.IntPointer, v_current_max:imguicpp.IntPointer):Bool { })
	static function dragIntRange2(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.IntPointer, v_current_max:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar, format_max:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_DragInt4")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer):Bool { })
	static function dragInt4(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_DragInt3")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer):Bool { })
	static function dragInt3(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_DragInt2")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer):Bool { })
	static function dragInt2(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_DragInt")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer):Bool { })
	static function dragInt(label:imguicpp.utils.VarConstCharStar, v:imguicpp.IntPointer, v_speed:cpp.Float32, v_min:Int, v_max:Int, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_DragFloatRange2")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.FloatPointer, v_current_max:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, format_max:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.FloatPointer, v_current_max:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32, format_max:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.FloatPointer, v_current_max:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.FloatPointer, v_current_max:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.FloatPointer, v_current_max:imguicpp.FloatPointer, v_speed:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.FloatPointer, v_current_max:imguicpp.FloatPointer):Bool { })
	static function dragFloatRange2(label:imguicpp.utils.VarConstCharStar, v_current_min:imguicpp.FloatPointer, v_current_max:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, format_max:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_DragFloat4")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer):Bool { })
	static function dragFloat4(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_DragFloat3")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer):Bool { })
	static function dragFloat3(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_DragFloat2")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer):Bool { })
	static function dragFloat2(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::linc_DragFloat")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer):Bool { })
	static function dragFloat(label:imguicpp.utils.VarConstCharStar, v:imguicpp.FloatPointer, v_speed:cpp.Float32, v_min:cpp.Float32, v_max:cpp.Float32, format:imguicpp.utils.VarConstCharStar, flags:ImGuiSliderFlags):Bool;
	@:native("ImGui::DestroyContext")
	@:overload(function():cpp.Void { })
	static function destroyContext(ctx:cpp.Star<ImGuiContext>):cpp.Void;
	@:native("ImGui::DebugCheckVersionAndDataLayout")
	static function debugCheckVersionAndDataLayout(version_str:imguicpp.utils.VarConstCharStar, sz_io:cpp.SizeT, sz_style:cpp.SizeT, sz_vec2:cpp.SizeT, sz_vec4:cpp.SizeT, sz_drawvert:cpp.SizeT, sz_drawidx:cpp.SizeT):Bool;
	@:native("ImGui::CreateContext")
	@:overload(function():cpp.Star<ImGuiContext> { })
	static function createContext(shared_font_atlas:cpp.Star<ImFontAtlas>):cpp.Star<ImGuiContext>;
	@:native("ImGui::linc_Combo")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, current_item:imguicpp.IntPointer, items:cpp.RawPointer<imguicpp.utils.VarConstCharStar>, items_count:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, current_item:imguicpp.IntPointer, items_separated_by_zeros:imguicpp.utils.VarConstCharStar, popup_max_height_in_items:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, current_item:imguicpp.IntPointer, items_separated_by_zeros:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, current_item:imguicpp.IntPointer, items_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int, cpp.Star<cpp.RawConstPointer<cpp.Char>>) -> Bool>, data:imguicpp.VoidPointer, items_count:Int, popup_max_height_in_items:Int):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, current_item:imguicpp.IntPointer, items_getter:cpp.Callable<(cpp.Star<cpp.Void>, Int, cpp.Star<cpp.RawConstPointer<cpp.Char>>) -> Bool>, data:imguicpp.VoidPointer, items_count:Int):Bool { })
	static function combo(label:imguicpp.utils.VarConstCharStar, current_item:imguicpp.IntPointer, items:cpp.RawPointer<imguicpp.utils.VarConstCharStar>, items_count:Int, popup_max_height_in_items:Int):Bool;
	@:native("ImGui::Columns")
	@:overload(function(count:Int, id:imguicpp.utils.VarConstCharStar):cpp.Void { })
	@:overload(function(id:imguicpp.utils.VarConstCharStar):cpp.Void { })
	@:overload(function():cpp.Void { })
	static function columns(count:Int, id:imguicpp.utils.VarConstCharStar, border:Bool):cpp.Void;
	@:native("ImGui::linc_ColorPicker4")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, col:imguicpp.FloatPointer, ref_col:imguicpp.FloatPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, col:imguicpp.FloatPointer):Bool { })
	static function colorPicker4(label:imguicpp.utils.VarConstCharStar, col:imguicpp.FloatPointer, flags:ImGuiColorEditFlags, ref_col:imguicpp.FloatPointer):Bool;
	@:native("ImGui::linc_ColorPicker3")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, col:imguicpp.FloatPointer):Bool { })
	static function colorPicker3(label:imguicpp.utils.VarConstCharStar, col:imguicpp.FloatPointer, flags:ImGuiColorEditFlags):Bool;
	@:native("ImGui::linc_ColorEdit4")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, col:imguicpp.FloatPointer):Bool { })
	static function colorEdit4(label:imguicpp.utils.VarConstCharStar, col:imguicpp.FloatPointer, flags:ImGuiColorEditFlags):Bool;
	@:native("ImGui::linc_ColorEdit3")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, col:imguicpp.FloatPointer):Bool { })
	static function colorEdit3(label:imguicpp.utils.VarConstCharStar, col:imguicpp.FloatPointer, flags:ImGuiColorEditFlags):Bool;
	@:native("ImGui::ColorConvertU32ToFloat4")
	static function colorConvertU32ToFloat4(pOut:cpp.Star<ImVec4>, _in:ImU32):cpp.Void;
	@:native("ImGui::linc_ColorConvertRGBtoHSV")
	static function colorConvertRGBtoHSV(r:cpp.Float32, g:cpp.Float32, b:cpp.Float32, out_h:imguicpp.FloatPointer, out_s:imguicpp.FloatPointer, out_v:imguicpp.FloatPointer):cpp.Void;
	@:native("ImGui::linc_ColorConvertHSVtoRGB")
	static function colorConvertHSVtoRGB(h:cpp.Float32, s:cpp.Float32, v:cpp.Float32, out_r:imguicpp.FloatPointer, out_g:imguicpp.FloatPointer, out_b:imguicpp.FloatPointer):cpp.Void;
	@:native("ImGui::ColorConvertFloat4ToU32")
	static function colorConvertFloat4ToU32(_in:ImVec4):ImU32;
	@:native("ImGui::ColorButton")
	@:overload(function(desc_id:imguicpp.utils.VarConstCharStar, col:ImVec4, size:ImVec2):Bool { })
	@:overload(function(desc_id:imguicpp.utils.VarConstCharStar, col:ImVec4):Bool { })
	static function colorButton(desc_id:imguicpp.utils.VarConstCharStar, col:ImVec4, flags:ImGuiColorEditFlags, size:ImVec2):Bool;
	@:native("ImGui::linc_CollapsingHeader")
	@:overload(function(label:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, p_visible:imguicpp.BoolPointer, flags:ImGuiTreeNodeFlags):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar, p_visible:imguicpp.BoolPointer):Bool { })
	static function collapsingHeader(label:imguicpp.utils.VarConstCharStar, flags:ImGuiTreeNodeFlags):Bool;
	@:native("ImGui::CloseCurrentPopup")
	static function closeCurrentPopup():cpp.Void;
	@:native("ImGui::linc_CheckboxFlags")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, flags:cpp.Star<UInt>, flags_value:UInt):Bool { })
	static function checkboxFlags(label:imguicpp.utils.VarConstCharStar, flags:imguicpp.IntPointer, flags_value:Int):Bool;
	@:native("ImGui::linc_Checkbox")
	static function checkbox(label:imguicpp.utils.VarConstCharStar, v:imguicpp.BoolPointer):Bool;
	@:native("ImGui::CaptureMouseFromApp")
	@:overload(function():cpp.Void { })
	static function captureMouseFromApp(want_capture_mouse_value:Bool):cpp.Void;
	@:native("ImGui::CaptureKeyboardFromApp")
	@:overload(function():cpp.Void { })
	static function captureKeyboardFromApp(want_capture_keyboard_value:Bool):cpp.Void;
	@:native("ImGui::CalcTextSize")
	@:overload(function(pOut:cpp.Star<ImVec2>, text:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar, wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(pOut:cpp.Star<ImVec2>, text:imguicpp.utils.VarConstCharStar, wrap_width:cpp.Float32):cpp.Void { })
	@:overload(function(pOut:cpp.Star<ImVec2>, text:imguicpp.utils.VarConstCharStar):cpp.Void { })
	static function calcTextSize(pOut:cpp.Star<ImVec2>, text:imguicpp.utils.VarConstCharStar, text_end:imguicpp.utils.VarConstCharStar, hide_text_after_double_hash:Bool, wrap_width:cpp.Float32):cpp.Void;
	@:native("ImGui::linc_CalcListClipping")
	static function calcListClipping(items_count:Int, items_height:cpp.Float32, out_items_display_start:imguicpp.IntPointer, out_items_display_end:imguicpp.IntPointer):cpp.Void;
	@:native("ImGui::CalcItemWidth")
	static function calcItemWidth():cpp.Float32;
	@:native("ImGui::Button")
	@:overload(function(label:imguicpp.utils.VarConstCharStar):Bool { })
	static function button(label:imguicpp.utils.VarConstCharStar, size:ImVec2):Bool;
	@:native("ImGui::BulletTextV")
	static function bulletTextV(fmt:imguicpp.utils.VarConstCharStar, args:cpp.VarArg):cpp.Void;
	@:native("ImGui::linc_BulletText")
	@:overload(function(fmt:imguicpp.utils.VarConstCharStar, vargs:cpp.VarArg):cpp.Void { })
	static function bulletText(fmt:imguicpp.utils.VarConstCharStar):cpp.Void;
	@:native("ImGui::Bullet")
	static function bullet():cpp.Void;
	@:native("ImGui::BeginTooltip")
	static function beginTooltip():cpp.Void;
	@:native("ImGui::BeginTable")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar, column:Int, outer_size:ImVec2, inner_width:cpp.Float32):Bool { })
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar, column:Int, outer_size:ImVec2):Bool { })
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar, column:Int):Bool { })
	static function beginTable(str_id:imguicpp.utils.VarConstCharStar, column:Int, flags:ImGuiTableFlags, outer_size:ImVec2, inner_width:cpp.Float32):Bool;
	@:native("ImGui::linc_BeginTabItem")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, p_open:imguicpp.BoolPointer):Bool { })
	@:overload(function(label:imguicpp.utils.VarConstCharStar):Bool { })
	static function beginTabItem(label:imguicpp.utils.VarConstCharStar, p_open:imguicpp.BoolPointer, flags:ImGuiTabItemFlags):Bool;
	@:native("ImGui::BeginTabBar")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar):Bool { })
	static function beginTabBar(str_id:imguicpp.utils.VarConstCharStar, flags:ImGuiTabBarFlags):Bool;
	@:native("ImGui::linc_BeginPopupModal")
	@:overload(function(name:imguicpp.utils.VarConstCharStar, p_open:imguicpp.BoolPointer):Bool { })
	@:overload(function(name:imguicpp.utils.VarConstCharStar):Bool { })
	static function beginPopupModal(name:imguicpp.utils.VarConstCharStar, p_open:imguicpp.BoolPointer, flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginPopupContextWindow")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextWindow(str_id:imguicpp.utils.VarConstCharStar, popup_flags:ImGuiPopupFlags):Bool;
	@:native("ImGui::BeginPopupContextVoid")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextVoid(str_id:imguicpp.utils.VarConstCharStar, popup_flags:ImGuiPopupFlags):Bool;
	@:native("ImGui::BeginPopupContextItem")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function():Bool { })
	static function beginPopupContextItem(str_id:imguicpp.utils.VarConstCharStar, popup_flags:ImGuiPopupFlags):Bool;
	@:native("ImGui::BeginPopup")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar):Bool { })
	static function beginPopup(str_id:imguicpp.utils.VarConstCharStar, flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginMenuBar")
	static function beginMenuBar():Bool;
	@:native("ImGui::BeginMenu")
	@:overload(function(label:imguicpp.utils.VarConstCharStar):Bool { })
	static function beginMenu(label:imguicpp.utils.VarConstCharStar, enabled:Bool):Bool;
	@:native("ImGui::BeginMainMenuBar")
	static function beginMainMenuBar():Bool;
	@:native("ImGui::BeginGroup")
	static function beginGroup():cpp.Void;
	@:native("ImGui::BeginDragDropTarget")
	static function beginDragDropTarget():Bool;
	@:native("ImGui::BeginDragDropSource")
	@:overload(function():Bool { })
	static function beginDragDropSource(flags:ImGuiDragDropFlags):Bool;
	@:native("ImGui::BeginCombo")
	@:overload(function(label:imguicpp.utils.VarConstCharStar, preview_value:imguicpp.utils.VarConstCharStar):Bool { })
	static function beginCombo(label:imguicpp.utils.VarConstCharStar, preview_value:imguicpp.utils.VarConstCharStar, flags:ImGuiComboFlags):Bool;
	@:native("ImGui::BeginChildFrame")
	@:overload(function(id:ImGuiID, size:ImVec2):Bool { })
	static function beginChildFrame(id:ImGuiID, size:ImVec2, flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::BeginChild")
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar, size:ImVec2, flags:ImGuiWindowFlags):Bool { })
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar, size:ImVec2):Bool { })
	@:overload(function(str_id:imguicpp.utils.VarConstCharStar):Bool { })
	@:overload(function(id:ImGuiID, size:ImVec2, border:Bool, flags:ImGuiWindowFlags):Bool { })
	@:overload(function(id:ImGuiID, size:ImVec2, flags:ImGuiWindowFlags):Bool { })
	@:overload(function(id:ImGuiID, size:ImVec2):Bool { })
	@:overload(function(id:ImGuiID):Bool { })
	static function beginChild(str_id:imguicpp.utils.VarConstCharStar, size:ImVec2, border:Bool, flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::linc_Begin")
	@:overload(function(name:imguicpp.utils.VarConstCharStar, p_open:imguicpp.BoolPointer):Bool { })
	@:overload(function(name:imguicpp.utils.VarConstCharStar):Bool { })
	static function begin(name:imguicpp.utils.VarConstCharStar, p_open:imguicpp.BoolPointer, flags:ImGuiWindowFlags):Bool;
	@:native("ImGui::ArrowButton")
	static function arrowButton(str_id:imguicpp.utils.VarConstCharStar, dir:ImGuiDir):Bool;
	@:native("ImGui::AlignTextToFramePadding")
	static function alignTextToFramePadding():cpp.Void;
	@:native("ImGui::AcceptDragDropPayload")
	@:overload(function(type:imguicpp.utils.VarConstCharStar):cpp.Star<ImGuiPayload> { })
	static function acceptDragDropPayload(type:imguicpp.utils.VarConstCharStar, flags:ImGuiDragDropFlags):cpp.Star<ImGuiPayload>;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector") extern class ImVector<T> {
	@:native('Data')
	var data : cpp.RawPointer<T>;
	@:native("swap")
	function swap(rhs:cpp.Star<ImVector<T>>):cpp.Void;
	@:native("size_in_bytes")
	function size_in_bytes():Int;
	@:native("size")
	function size():Int;
	@:native("shrink")
	function shrink(new_size:Int):cpp.Void;
	@:native("resize")
	@:overload(function(new_size:Int, v:T):cpp.Void { })
	function resize(new_size:Int):cpp.Void;
	@:native("reserve")
	function reserve(new_capacity:Int):cpp.Void;
	@:native("push_front")
	function push_front(v:T):cpp.Void;
	@:native("push_back")
	function push_back(v:T):cpp.Void;
	@:native("pop_back")
	function pop_back():cpp.Void;
	@:native("max_size")
	function max_size():Int;
	@:native("insert")
	function insert(it:cpp.Star<T>, v:T):cpp.Star<T>;
	@:native("index_from_ptr")
	function index_from_ptr(it:cpp.Star<T>):Int;
	@:native("front")
	@:overload(function():cpp.Reference<T> { })
	function front():cpp.Reference<T>;
	@:native("find_erase_unsorted")
	function find_erase_unsorted(v:T):Bool;
	@:native("find_erase")
	function find_erase(v:T):Bool;
	@:native("find")
	@:overload(function(v:T):cpp.Star<T> { })
	function find(v:T):cpp.Star<T>;
	@:native("erase_unsorted")
	function erase_unsorted(it:cpp.Star<T>):cpp.Star<T>;
	@:native("erase")
	@:overload(function(it:cpp.Star<T>, it_last:cpp.Star<T>):cpp.Star<T> { })
	function erase(it:cpp.Star<T>):cpp.Star<T>;
	@:native("end")
	@:overload(function():cpp.Star<T> { })
	function end():cpp.Star<T>;
	@:native("empty")
	function empty():Bool;
	@:native("contains")
	function contains(v:T):Bool;
	@:native("clear")
	function clear():cpp.Void;
	@:native("capacity")
	function capacity():Int;
	@:native("begin")
	@:overload(function():cpp.Star<T> { })
	function begin():cpp.Star<T>;
	@:native("back")
	@:overload(function():cpp.Reference<T> { })
	function back():cpp.Reference<T>;
	@:native("_grow_capacity")
	function _grow_capacity(sz:Int):Int;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiWindow*>") extern class ImVectorImGuiWindowPointer extends ImVector<cpp.Star<ImGuiWindow>> {
	@:native("ImVector<ImGuiWindow*>")
	@:overload(function(src:ImVectorImGuiWindowPointer):ImVectorImGuiWindowPointer { })
	static function create():ImVectorImGuiWindowPointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<float>") extern class ImVectorfloat extends ImVector<cpp.Float32> {
	@:native("ImVector<float>")
	@:overload(function(src:ImVectorfloat):ImVectorfloat { })
	static function create():ImVectorfloat;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiID>") extern class ImVectorImGuiID extends ImVector<ImGuiID> {
	@:native("ImVector<ImGuiID>")
	@:overload(function(src:ImVectorImGuiID):ImVectorImGuiID { })
	static function create():ImVectorImGuiID;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiOldColumns>") extern class ImVectorImGuiOldColumns extends ImVector<ImGuiOldColumns> {
	@:native("ImVector<ImGuiOldColumns>")
	@:overload(function(src:ImVectorImGuiOldColumns):ImVectorImGuiOldColumns { })
	static function create():ImVectorImGuiOldColumns;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTextRange>") extern class ImVectorImGuiTextRange extends ImVector<ImGuiTextRange> {
	@:native("ImVector<ImGuiTextRange>")
	@:overload(function(src:ImVectorImGuiTextRange):ImVectorImGuiTextRange { })
	static function create():ImVectorImGuiTextRange;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<char>") extern class ImVectorchar extends ImVector<cpp.Char> {
	@:native("ImVector<char>")
	@:overload(function(src:ImVectorchar):ImVectorchar { })
	static function create():ImVectorchar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTableColumn>") extern class ImVectorImGuiTableColumn extends ImVector<ImGuiTableColumn> {
	@:native("ImVector<ImGuiTableColumn>")
	@:overload(function(src:ImVectorImGuiTableColumn):ImVectorImGuiTableColumn { })
	static function create():ImVectorImGuiTableColumn;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTableColumnIdx>") extern class ImVectorImGuiTableColumnIdx extends ImVector<ImGuiTableColumnIdx> {
	@:native("ImVector<ImGuiTableColumnIdx>")
	@:overload(function(src:ImVectorImGuiTableColumnIdx):ImVectorImGuiTableColumnIdx { })
	static function create():ImVectorImGuiTableColumnIdx;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTableCellData>") extern class ImVectorImGuiTableCellData extends ImVector<ImGuiTableCellData> {
	@:native("ImVector<ImGuiTableCellData>")
	@:overload(function(src:ImVectorImGuiTableCellData):ImVectorImGuiTableCellData { })
	static function create():ImVectorImGuiTableCellData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTableColumnSortSpecs>") extern class ImVectorImGuiTableColumnSortSpecs extends ImVector<ImGuiTableColumnSortSpecs> {
	@:native("ImVector<ImGuiTableColumnSortSpecs>")
	@:overload(function(src:ImVectorImGuiTableColumnSortSpecs):ImVectorImGuiTableColumnSortSpecs { })
	static function create():ImVectorImGuiTableColumnSortSpecs;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTabItem>") extern class ImVectorImGuiTabItem extends ImVector<ImGuiTabItem> {
	@:native("ImVector<ImGuiTabItem>")
	@:overload(function(src:ImVectorImGuiTabItem):ImVectorImGuiTabItem { })
	static function create():ImVectorImGuiTabItem;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiStoragePair>") extern class ImVectorImGuiStoragePair extends ImVector<ImGuiStoragePair> {
	@:native("ImVector<ImGuiStoragePair>")
	@:overload(function(src:ImVectorImGuiStoragePair):ImVectorImGuiStoragePair { })
	static function create():ImVectorImGuiStoragePair;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiOldColumnData>") extern class ImVectorImGuiOldColumnData extends ImVector<ImGuiOldColumnData> {
	@:native("ImVector<ImGuiOldColumnData>")
	@:overload(function(src:ImVectorImGuiOldColumnData):ImVectorImGuiOldColumnData { })
	static function create():ImVectorImGuiOldColumnData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImWchar>") extern class ImVectorImWchar extends ImVector<ImWchar> {
	@:native("ImVector<ImWchar>")
	@:overload(function(src:ImVectorImWchar):ImVectorImWchar { })
	static function create():ImVectorImWchar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiColorMod>") extern class ImVectorImGuiColorMod extends ImVector<ImGuiColorMod> {
	@:native("ImVector<ImGuiColorMod>")
	@:overload(function(src:ImVectorImGuiColorMod):ImVectorImGuiColorMod { })
	static function create():ImVectorImGuiColorMod;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiStyleMod>") extern class ImVectorImGuiStyleMod extends ImVector<ImGuiStyleMod> {
	@:native("ImVector<ImGuiStyleMod>")
	@:overload(function(src:ImVectorImGuiStyleMod):ImVectorImGuiStyleMod { })
	static function create():ImVectorImGuiStyleMod;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFont*>") extern class ImVectorImFontPointer extends ImVector<cpp.Star<ImFont>> {
	@:native("ImVector<ImFont*>")
	@:overload(function(src:ImVectorImFontPointer):ImVectorImFontPointer { })
	static function create():ImVectorImFontPointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiItemFlags>") extern class ImVectorImGuiItemFlags extends ImVector<ImGuiItemFlags> {
	@:native("ImVector<ImGuiItemFlags>")
	@:overload(function(src:ImVectorImGuiItemFlags):ImVectorImGuiItemFlags { })
	static function create():ImVectorImGuiItemFlags;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiGroupData>") extern class ImVectorImGuiGroupData extends ImVector<ImGuiGroupData> {
	@:native("ImVector<ImGuiGroupData>")
	@:overload(function(src:ImVectorImGuiGroupData):ImVectorImGuiGroupData { })
	static function create():ImVectorImGuiGroupData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiPopupData>") extern class ImVectorImGuiPopupData extends ImVector<ImGuiPopupData> {
	@:native("ImVector<ImGuiPopupData>")
	@:overload(function(src:ImVectorImGuiPopupData):ImVectorImGuiPopupData { })
	static function create():ImVectorImGuiPopupData;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<unsigned char>") extern class ImVectorunsignedchar extends ImVector<cpp.UInt8> {
	@:native("ImVector<unsigned char>")
	@:overload(function(src:ImVectorunsignedchar):ImVectorunsignedchar { })
	static function create():ImVectorunsignedchar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTable>") extern class ImVectorImGuiTable extends ImVector<ImGuiTable> {
	@:native("ImVector<ImGuiTable>")
	@:overload(function(src:ImVectorImGuiTable):ImVectorImGuiTable { })
	static function create():ImVectorImGuiTable;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiPtrOrIndex>") extern class ImVectorImGuiPtrOrIndex extends ImVector<ImGuiPtrOrIndex> {
	@:native("ImVector<ImGuiPtrOrIndex>")
	@:overload(function(src:ImVectorImGuiPtrOrIndex):ImVectorImGuiPtrOrIndex { })
	static function create():ImVectorImGuiPtrOrIndex;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawChannel>") extern class ImVectorImDrawChannel extends ImVector<ImDrawChannel> {
	@:native("ImVector<ImDrawChannel>")
	@:overload(function(src:ImVectorImDrawChannel):ImVectorImDrawChannel { })
	static function create():ImVectorImDrawChannel;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTabBar>") extern class ImVectorImGuiTabBar extends ImVector<ImGuiTabBar> {
	@:native("ImVector<ImGuiTabBar>")
	@:overload(function(src:ImVectorImGuiTabBar):ImVectorImGuiTabBar { })
	static function create():ImVectorImGuiTabBar;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiShrinkWidthItem>") extern class ImVectorImGuiShrinkWidthItem extends ImVector<ImGuiShrinkWidthItem> {
	@:native("ImVector<ImGuiShrinkWidthItem>")
	@:overload(function(src:ImVectorImGuiShrinkWidthItem):ImVectorImGuiShrinkWidthItem { })
	static function create():ImVectorImGuiShrinkWidthItem;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiSettingsHandler>") extern class ImVectorImGuiSettingsHandler extends ImVector<ImGuiSettingsHandler> {
	@:native("ImVector<ImGuiSettingsHandler>")
	@:overload(function(src:ImVectorImGuiSettingsHandler):ImVectorImGuiSettingsHandler { })
	static function create():ImVectorImGuiSettingsHandler;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiWindowSettings>") extern class ImVectorImGuiWindowSettings extends ImVector<ImGuiWindowSettings> {
	@:native("ImVector<ImGuiWindowSettings>")
	@:overload(function(src:ImVectorImGuiWindowSettings):ImVectorImGuiWindowSettings { })
	static function create():ImVectorImGuiWindowSettings;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTableSettings>") extern class ImVectorImGuiTableSettings extends ImVector<ImGuiTableSettings> {
	@:native("ImVector<ImGuiTableSettings>")
	@:overload(function(src:ImVectorImGuiTableSettings):ImVectorImGuiTableSettings { })
	static function create():ImVectorImGuiTableSettings;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiContextHook>") extern class ImVectorImGuiContextHook extends ImVector<ImGuiContextHook> {
	@:native("ImVector<ImGuiContextHook>")
	@:overload(function(src:ImVectorImGuiContextHook):ImVectorImGuiContextHook { })
	static function create():ImVectorImGuiContextHook;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImU32>") extern class ImVectorImU32 extends ImVector<ImU32> {
	@:native("ImVector<ImU32>")
	@:overload(function(src:ImVectorImU32):ImVectorImU32 { })
	static function create():ImVectorImU32;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontAtlasCustomRect>") extern class ImVectorImFontAtlasCustomRect extends ImVector<ImFontAtlasCustomRect> {
	@:native("ImVector<ImFontAtlasCustomRect>")
	@:overload(function(src:ImVectorImFontAtlasCustomRect):ImVectorImFontAtlasCustomRect { })
	static function create():ImVectorImFontAtlasCustomRect;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontConfig>") extern class ImVectorImFontConfig extends ImVector<ImFontConfig> {
	@:native("ImVector<ImFontConfig>")
	@:overload(function(src:ImVectorImFontConfig):ImVectorImFontConfig { })
	static function create():ImVectorImFontConfig;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImFontGlyph>") extern class ImVectorImFontGlyph extends ImVector<ImFontGlyph> {
	@:native("ImVector<ImFontGlyph>")
	@:overload(function(src:ImVectorImFontGlyph):ImVectorImFontGlyph { })
	static function create():ImVectorImFontGlyph;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawCmd>") extern class ImVectorImDrawCmd extends ImVector<ImDrawCmd> {
	@:native("ImVector<ImDrawCmd>")
	@:overload(function(src:ImVectorImDrawCmd):ImVectorImDrawCmd { })
	static function create():ImVectorImDrawCmd;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawIdx>") extern class ImVectorImDrawIdx extends ImVector<ImDrawIdx> {
	@:native("ImVector<ImDrawIdx>")
	@:overload(function(src:ImVectorImDrawIdx):ImVectorImDrawIdx { })
	static function create():ImVectorImDrawIdx;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawVert>") extern class ImVectorImDrawVert extends ImVector<ImDrawVert> {
	@:native("ImVector<ImDrawVert>")
	@:overload(function(src:ImVectorImDrawVert):ImVectorImDrawVert { })
	static function create():ImVectorImDrawVert;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImVec4>") extern class ImVectorImVec4 extends ImVector<ImVec4> {
	@:native("ImVector<ImVec4>")
	@:overload(function(src:ImVectorImVec4):ImVectorImVec4 { })
	static function create():ImVectorImVec4;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImTextureID>") extern class ImVectorImTextureID extends ImVector<ImTextureID> {
	@:native("ImVector<ImTextureID>")
	@:overload(function(src:ImVectorImTextureID):ImVectorImTextureID { })
	static function create():ImVectorImTextureID;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImVec2>") extern class ImVectorImVec2 extends ImVector<ImVec2> {
	@:native("ImVector<ImVec2>")
	@:overload(function(src:ImVectorImVec2):ImVectorImVec2 { })
	static function create():ImVectorImVec2;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImDrawList*>") extern class ImVectorImDrawListPointer extends ImVector<cpp.Star<ImDrawList>> {
	@:native("ImVector<ImDrawList*>")
	@:overload(function(src:ImVectorImDrawListPointer):ImVectorImDrawListPointer { })
	static function create():ImVectorImDrawListPointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiWindowPtr*>") extern class ImVectorImGuiWindowPtrPointer extends ImVector<cpp.Star<ImGuiWindowPtr>> {
	@:native("ImVector<ImGuiWindowPtr*>")
	@:overload(function(src:ImVectorImGuiWindowPtrPointer):ImVectorImGuiWindowPtrPointer { })
	static function create():ImVectorImGuiWindowPtrPointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImGuiTextRange*>") extern class ImVectorImGuiTextRangePointer extends ImVector<cpp.Star<ImGuiTextRange>> {
	@:native("ImVector<ImGuiTextRange*>")
	@:overload(function(src:ImVectorImGuiTextRangePointer):ImVectorImGuiTextRangePointer { })
	static function create():ImVectorImGuiTextRangePointer;
}

@:keep @:structAccess @:include("imgui.h") @:native("ImVector<ImWchar*>") extern class ImVectorImWcharPointer extends ImVector<cpp.Star<ImWchar>> {
	@:native("ImVector<ImWchar*>")
	@:overload(function(src:ImVectorImWcharPointer):ImVectorImWcharPointer { })
	static function create():ImVectorImWcharPointer;
}

