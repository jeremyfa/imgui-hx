package imguicpp;

// =============================================================================
// GENERATED FILE - do not edit by hand.
// Produced by gen/Gen.hx from lib/dcimgui/dcimgui.json (dear_bindings metadata
// for the vendored Dear ImGui docking branch). Regenerate with:
//   cd gen && haxe gen.hxml
// =============================================================================

typedef ImGuiOpaqueCallback = cpp.RawPointer<cpp.Void>;

typedef ImDrawIdx = cpp.UInt16;
typedef ImGuiID = UInt;
typedef ImS8 = cpp.Int8;
typedef ImU8 = cpp.UInt8;
typedef ImU16 = cpp.UInt16;
typedef ImS32 = Int;
typedef ImU32 = UInt;
typedef ImS64 = cpp.Int64;
typedef ImU64 = cpp.UInt64;
typedef ImDrawTextFlags = Int;
typedef ImGuiKeyChord = Int;
typedef ImWchar32 = UInt;
typedef ImWchar16 = cpp.UInt16;
typedef ImWchar = cpp.UInt16;
typedef ImGuiSelectionUserData = cpp.Int64;
typedef ImTextureID = cpp.UInt64;
typedef ImFontAtlasRectId = Int;

enum abstract ImGuiWindowFlags(Int) from Int to Int {
    var None = 0;
    /** Disable title-bar */
    var NoTitleBar = 1;
    /** Disable user resizing with the lower-right grip */
    var NoResize = 2;
    /** Disable user moving the window */
    var NoMove = 4;
    /** Disable scrollbars (window can still scroll with mouse or programmatically) */
    var NoScrollbar = 8;
    /** Disable user vertically scrolling with mouse wheel. On child window, mouse wheel will be forwarded to the parent unless NoScrollbar is also set. */
    var NoScrollWithMouse = 16;
    /** Disable user collapsing window by double-clicking on it. Also referred to as Window Menu Button (e.g. within a docking node). */
    var NoCollapse = 32;
    /** Resize every window to its content every frame */
    var AlwaysAutoResize = 64;
    /** Disable drawing background color (WindowBg, etc.) and outside border. Similar as using SetNextWindowBgAlpha(0.0f). */
    var NoBackground = 128;
    /** Never load/save settings in .ini file */
    var NoSavedSettings = 256;
    /** Disable catching mouse, hovering test with pass through. */
    var NoMouseInputs = 512;
    /** Has a menu-bar */
    var MenuBar = 1024;
    /** Allow horizontal scrollbar to appear (off by default). You may use SetNextWindowContentSize(ImVec2(width,0.0f)); prior to calling Begin() to specify width. Read code in imgui_demo in the "Horizontal Scrolling" section. */
    var HorizontalScrollbar = 2048;
    /** Disable taking focus when transitioning from hidden to visible state */
    var NoFocusOnAppearing = 4096;
    /** Disable bringing window to front when taking focus (e.g. clicking on it or programmatically giving it focus) */
    var NoBringToFrontOnFocus = 8192;
    /** Always show vertical scrollbar (even if ContentSize.y < Size.y) */
    var AlwaysVerticalScrollbar = 16384;
    /** Always show horizontal scrollbar (even if ContentSize.x < Size.x) */
    var AlwaysHorizontalScrollbar = 32768;
    /** No keyboard/gamepad navigation within the window */
    var NoNavInputs = 65536;
    /** No focusing toward this window with keyboard/gamepad navigation (e.g. skipped by Ctrl+Tab) */
    var NoNavFocus = 131072;
    /** Display a dot next to the title. When used in a tab/docking context, tab is selected when clicking the X + closure is not assumed (will wait for user to stop submitting the tab). Otherwise closure is assumed when pressing the X, so if you keep submitting the tab may reappear at end of tab bar. */
    var UnsavedDocument = 262144;
    /** Disable docking of this window */
    var NoDocking = 524288;
    var NoNav = 196608;
    var NoDecoration = 43;
    var NoInputs = 197120;
}

enum abstract ImGuiChildFlags(Int) from Int to Int {
    var None = 0;
    /** Show an outer border and enable WindowPadding. (IMPORTANT: this is always == 1 == true for legacy reason) */
    var Borders = 1;
    /** Pad with style.WindowPadding even if no border are drawn (no padding by default for non-bordered child windows because it makes more sense) */
    var AlwaysUseWindowPadding = 2;
    /** Allow resize from right border (layout direction). Enable .ini saving (unless ImGuiWindowFlags_NoSavedSettings passed to window flags) */
    var ResizeX = 4;
    /** Allow resize from bottom border (layout direction). " */
    var ResizeY = 8;
    /** Enable auto-resizing width. Read "IMPORTANT: Size measurement" details above. */
    var AutoResizeX = 16;
    /** Enable auto-resizing height. Read "IMPORTANT: Size measurement" details above. */
    var AutoResizeY = 32;
    /** Combined with AutoResizeX/AutoResizeY. Always measure size even when child is hidden, always return true, always disable clipping optimization! NOT RECOMMENDED. */
    var AlwaysAutoResize = 64;
    /** Style the child window like a framed item: use FrameBg, FrameRounding, FrameBorderSize, FramePadding instead of ChildBg, ChildRounding, ChildBorderSize, WindowPadding. */
    var FrameStyle = 128;
    /** [BETA] Share focus scope, allow keyboard/gamepad navigation to cross over parent border to this child or between sibling child windows. */
    var NavFlattened = 256;
}

enum abstract ImGuiItemFlags(Int) from Int to Int {
    /** (Default) */
    var None = 0;
    /** false    // Disable keyboard tabbing. This is a "lighter" version of ImGuiItemFlags_NoNav. */
    var NoTabStop = 1;
    /** false    // Disable any form of focusing (keyboard/gamepad directional navigation and SetKeyboardFocusHere() calls). */
    var NoNav = 2;
    /** false    // Disable item being a candidate for default focus (e.g. used by title bar items). */
    var NoNavDefaultFocus = 4;
    /** false    // Any button-like behavior will have repeat mode enabled (based on io.KeyRepeatDelay and io.KeyRepeatRate values). Note that you can also call IsItemActive() after any button to tell if it is being held. */
    var ButtonRepeat = 8;
    /** true     // MenuItem()/Selectable() automatically close their parent popup window. */
    var AutoClosePopups = 16;
    /** false    // Allow submitting an item with the same identifier as an item already submitted this frame without triggering a warning tooltip if io.ConfigDebugHighlightIdConflicts is set. */
    var AllowDuplicateId = 32;
    /** false    // [Internal] Disable interactions. DOES NOT affect visuals. This is used by BeginDisabled()/EndDisabled() and only provided here so you can read back via GetItemFlags(). */
    var Disabled = 64;
}

enum abstract ImGuiInputTextFlags(Int) from Int to Int {
    var None = 0;
    /** Allow 0123456789.+-* / */
    var CharsDecimal = 1;
    /** Allow 0123456789ABCDEFabcdef */
    var CharsHexadecimal = 2;
    /** Allow 0123456789.+-* /eE (Scientific notation input) */
    var CharsScientific = 4;
    /** Turn a..z into A..Z */
    var CharsUppercase = 8;
    /** Filter out spaces, tabs */
    var CharsNoBlank = 16;
    /** Pressing TAB input a '\t' character into the text field */
    var AllowTabInput = 32;
    /** Return 'true' when Enter is pressed (as opposed to every time the value was modified). Consider using IsItemDeactivatedAfterEdit() instead! */
    var EnterReturnsTrue = 64;
    /** Escape key clears content if not empty, and deactivate otherwise (contrast to default behavior of Escape to revert) */
    var EscapeClearsAll = 128;
    /** In multi-line mode: validate with Enter, add new line with Ctrl+Enter (default is opposite: validate with Ctrl+Enter, add line with Enter). Note that Shift+Enter always enter a new line either way. */
    var CtrlEnterForNewLine = 256;
    /** Read-only mode */
    var ReadOnly = 512;
    /** Password mode, display all characters as '*', disable copy */
    var Password = 1024;
    /** Overwrite mode */
    var AlwaysOverwrite = 2048;
    /** Select entire text when first taking mouse focus */
    var AutoSelectAll = 4096;
    /** InputFloat(), InputInt(), InputScalar() etc. only: parse empty string as zero value. */
    var ParseEmptyRefVal = 8192;
    /** InputFloat(), InputInt(), InputScalar() etc. only: when value is zero, do not display it. Generally used with ImGuiInputTextFlags_ParseEmptyRefVal. */
    var DisplayEmptyRefVal = 16384;
    /** Disable following the cursor horizontally */
    var NoHorizontalScroll = 32768;
    /** Disable undo/redo. Note that input text owns the text data while active, if you want to provide your own undo/redo stack you need e.g. to call ClearActiveID(). */
    var NoUndoRedo = 65536;
    /** When text doesn't fit, elide left side to ensure right side stays visible. Useful for path/filenames. Single-line only! */
    var ElideLeft = 131072;
    /** Callback on pressing TAB (for completion handling) */
    var CallbackCompletion = 262144;
    /** Callback on pressing Up/Down arrows (for history handling) */
    var CallbackHistory = 524288;
    /** Callback on each iteration. User code may query cursor position, modify text buffer. */
    var CallbackAlways = 1048576;
    /** Callback on character inputs to replace or discard them. Modify 'EventChar' to replace or discard, or return 1 in callback to discard. */
    var CallbackCharFilter = 2097152;
    /** Callback on buffer capacity changes request (beyond 'buf_size' parameter value), allowing the string to grow. Notify when the string wants to be resized (for string types which hold a cache of their Size). You will be provided a new BufSize in the callback and NEED to honor it. (see misc/cpp/imgui_stdlib.h for an example of using this) */
    var CallbackResize = 4194304;
    /** Callback on any edit. Note that InputText() already returns true on edit + you can always use IsItemEdited(). The callback is useful to manipulate the underlying buffer while focus is active. */
    var CallbackEdit = 8388608;
    /** InputTextMultiline(): word-wrap lines that are too long. */
    var WordWrap = 16777216;
}

enum abstract ImGuiTreeNodeFlags(Int) from Int to Int {
    var None = 0;
    /** Draw as selected */
    var Selected = 1;
    /** Draw frame with background (e.g. for CollapsingHeader) */
    var Framed = 2;
    /** Hit testing will allow subsequent widgets to overlap this one. Require previous frame HoveredId to match before being usable. Shortcut to calling SetNextItemAllowOverlap(). */
    var AllowOverlap = 4;
    /** Don't do a TreePush() when open (e.g. for CollapsingHeader) = no extra indent nor pushing on ID stack */
    var NoTreePushOnOpen = 8;
    /** Don't automatically and temporarily open node when Logging is active (by default logging will automatically open tree nodes) */
    var NoAutoOpenOnLog = 16;
    /** Default node to be open */
    var DefaultOpen = 32;
    /** Open on double-click instead of simple click (default for multi-select unless any _OpenOnXXX behavior is set explicitly). Both behaviors may be combined. */
    var OpenOnDoubleClick = 64;
    /** Open when clicking on the arrow part (default for multi-select unless any _OpenOnXXX behavior is set explicitly). Both behaviors may be combined. */
    var OpenOnArrow = 128;
    /** No collapsing, no arrow (use as a convenience for leaf nodes). Note: will always open a tree/id scope and return true. If you never use that scope, add ImGuiTreeNodeFlags_NoTreePushOnOpen. */
    var Leaf = 256;
    /** Display a bullet instead of arrow. IMPORTANT: node can still be marked open/close if you don't set the _Leaf flag! */
    var Bullet = 512;
    /** Use FramePadding (even for an unframed text node) to vertically align text baseline to regular widget height. Equivalent to calling AlignTextToFramePadding() before the node. */
    var FramePadding = 1024;
    /** Extend hit box to the right-most edge, even if not framed. This is not the default in order to allow adding other items on the same line without using AllowOverlap mode. */
    var SpanAvailWidth = 2048;
    /** Extend hit box to the left-most and right-most edges (cover the indent area). */
    var SpanFullWidth = 4096;
    /** Narrow hit box + narrow hovering highlight, will only cover the label text. */
    var SpanLabelWidth = 8192;
    /** Frame will span all columns of its container table (label will still fit in current column) */
    var SpanAllColumns = 16384;
    /** Label will span all columns of its container table */
    var LabelSpanAllColumns = 32768;
    /** Nav: left arrow moves back to parent. This is processed in TreePop() when there's an unfulfilled Left nav request remaining. */
    var NavLeftJumpsToParent = 131072;
    var CollapsingHeader = 26;
    /** No lines drawn */
    var DrawLinesNone = 262144;
    /** Horizontal lines to child nodes. Vertical line drawn down to TreePop() position: cover full contents. Faster (for large trees). */
    var DrawLinesFull = 524288;
    /** Horizontal lines to child nodes. Vertical line drawn down to bottom-most child node. Slower (for large trees). */
    var DrawLinesToNodes = 1048576;
    /** Renamed in 1.92.0 */
    var NavLeftJumpsBackHere = 131072;
    /** Renamed in 1.90.7 */
    var SpanTextWidth = 8192;
}

enum abstract ImGuiPopupFlags(Int) from Int to Int {
    var None = 0;
    /** For BeginPopupContext*(): open on Left Mouse release. Only one button allowed! */
    var MouseButtonLeft = 4;
    /** For BeginPopupContext*(): open on Right Mouse release. Only one button allowed! (default) */
    var MouseButtonRight = 8;
    /** For BeginPopupContext*(): open on Middle Mouse release. Only one button allowed! */
    var MouseButtonMiddle = 12;
    /** For OpenPopup*(), BeginPopupContext*(): don't reopen same popup if already open (won't reposition, won't reinitialize navigation) */
    var NoReopen = 32;
    /** For OpenPopup*(), BeginPopupContext*(): don't open if there's already a popup at the same level of the popup stack */
    var NoOpenOverExistingPopup = 128;
    /** For BeginPopupContextWindow(): don't return true when hovering items, only when hovering empty space */
    var NoOpenOverItems = 256;
    /** For IsPopupOpen(): ignore the ImGuiID parameter and test for any popup. */
    var AnyPopupId = 1024;
    /** For IsPopupOpen(): search/test at any level of the popup stack (default test in the current level) */
    var AnyPopupLevel = 2048;
    var AnyPopup = 3072;
}

enum abstract ImGuiSelectableFlags(Int) from Int to Int {
    var None = 0;
    /** Clicking this doesn't close parent popup window (overrides ImGuiItemFlags_AutoClosePopups) */
    var NoAutoClosePopups = 1;
    /** Frame will span all columns of its container table (text will still fit in current column) */
    var SpanAllColumns = 2;
    /** Generate press events on double clicks too */
    var AllowDoubleClick = 4;
    /** Cannot be selected, display grayed out text */
    var Disabled = 8;
    /** Hit testing will allow subsequent widgets to overlap this one. Require previous frame HoveredId to match before being usable. Shortcut to calling SetNextItemAllowOverlap(). */
    var AllowOverlap = 16;
    /** Make the item be displayed as if it is hovered */
    var Highlight = 32;
    /** Auto-select when moved into, unless Ctrl is held. Automatic when in a BeginMultiSelect() block. */
    var SelectOnNav = 64;
    /** Renamed in 1.91.0 */
    var DontClosePopups = 1;
}

enum abstract ImGuiComboFlags(Int) from Int to Int {
    var None = 0;
    /** Align the popup toward the left by default */
    var PopupAlignLeft = 1;
    /** Max ~4 items visible. Tip: If you want your combo popup to be a specific size you can use SetNextWindowSizeConstraints() prior to calling BeginCombo() */
    var HeightSmall = 2;
    /** Max ~8 items visible (default) */
    var HeightRegular = 4;
    /** Max ~20 items visible */
    var HeightLarge = 8;
    /** As many fitting items as possible */
    var HeightLargest = 16;
    /** Display on the preview box without the square arrow button */
    var NoArrowButton = 32;
    /** Display only a square arrow button */
    var NoPreview = 64;
    /** Width dynamically calculated from preview contents */
    var WidthFitPreview = 128;
}

enum abstract ImGuiTabBarFlags(Int) from Int to Int {
    var None = 0;
    /** Allow manually dragging tabs to re-order them + New tabs are appended at the end of list */
    var Reorderable = 1;
    /** Automatically select new tabs when they appear */
    var AutoSelectNewTabs = 2;
    /** Disable buttons to open the tab list popup */
    var TabListPopupButton = 4;
    /** Disable behavior of closing tabs (that are submitted with p_open != NULL) with middle mouse button. You may handle this behavior manually on user's side with if (IsItemHovered() && IsMouseClicked(2)) *p_open = false. */
    var NoCloseWithMiddleMouseButton = 8;
    /** Disable scrolling buttons (apply when fitting policy is ImGuiTabBarFlags_FittingPolicyScroll) */
    var NoTabListScrollingButtons = 16;
    /** Disable tooltips when hovering a tab */
    var NoTooltip = 32;
    /** Draw selected overline markers over selected tab */
    var DrawSelectedOverline = 64;
    /** Shrink down tabs when they don't fit, until width is style.TabMinWidthShrink, then enable scrolling. Setting TabMinWidthShrink to FLT_MAX makes this behave like ImGuiTabBarFlags_FittingPolicyScroll. */
    var FittingPolicyMixed = 128;
    /** Shrink down tabs when they don't fit */
    var FittingPolicyShrink = 256;
    /** Enable scrolling buttons when tabs don't fit */
    var FittingPolicyScroll = 512;
    /** Renamed in 1.92.2 */
    var FittingPolicyResizeDown = 256;
}

enum abstract ImGuiTabItemFlags(Int) from Int to Int {
    var None = 0;
    /** Display a dot next to the title + set ImGuiTabItemFlags_NoAssumedClosure. */
    var UnsavedDocument = 1;
    /** Trigger flag to programmatically make the tab selected when calling BeginTabItem() */
    var SetSelected = 2;
    /** Disable behavior of closing tabs (that are submitted with p_open != NULL) with middle mouse button. You may handle this behavior manually on user's side with if (IsItemHovered() && IsMouseClicked(2)) *p_open = false. */
    var NoCloseWithMiddleMouseButton = 4;
    /** Don't call PushID()/PopID() on BeginTabItem()/EndTabItem() */
    var NoPushId = 8;
    /** Disable tooltip for the given tab */
    var NoTooltip = 16;
    /** Disable reordering this tab or having another tab cross over this tab */
    var NoReorder = 32;
    /** Enforce the tab position to the left of the tab bar (after the tab list popup button) */
    var Leading = 64;
    /** Enforce the tab position to the right of the tab bar (before the scrolling buttons) */
    var Trailing = 128;
    /** Tab is selected when trying to close + closure is not immediately assumed (will wait for user to stop submitting the tab). Otherwise closure is assumed when pressing the X, so if you keep submitting the tab may reappear at end of tab bar. */
    var NoAssumedClosure = 256;
}

enum abstract ImGuiFocusedFlags(Int) from Int to Int {
    var None = 0;
    /** Return true if any children of the window is focused */
    var ChildWindows = 1;
    /** Test from root window (top most parent of the current hierarchy) */
    var RootWindow = 2;
    /** Return true if any window is focused. Important: If you are trying to tell how to dispatch your low-level inputs, do NOT use this. Use 'io.WantCaptureMouse' instead! Please read the FAQ! */
    var AnyWindow = 4;
    /** Do not consider popup hierarchy (do not treat popup emitter as parent of popup) (when used with _ChildWindows or _RootWindow) */
    var NoPopupHierarchy = 8;
    /** Consider docking hierarchy (treat dockspace host as parent of docked window) (when used with _ChildWindows or _RootWindow) */
    var DockHierarchy = 16;
    var RootAndChildWindows = 3;
}

enum abstract ImGuiHoveredFlags(Int) from Int to Int {
    /** Return true if directly over the item/window, not obstructed by another window, not obstructed by an active popup or modal blocking inputs under them. */
    var None = 0;
    /** IsWindowHovered() only: Return true if any children of the window is hovered */
    var ChildWindows = 1;
    /** IsWindowHovered() only: Test from root window (top most parent of the current hierarchy) */
    var RootWindow = 2;
    /** IsWindowHovered() only: Return true if any window is hovered */
    var AnyWindow = 4;
    /** IsWindowHovered() only: Do not consider popup hierarchy (do not treat popup emitter as parent of popup) (when used with _ChildWindows or _RootWindow) */
    var NoPopupHierarchy = 8;
    /** IsWindowHovered() only: Consider docking hierarchy (treat dockspace host as parent of docked window) (when used with _ChildWindows or _RootWindow) */
    var DockHierarchy = 16;
    /** Return true even if a popup window is normally blocking access to this item/window */
    var AllowWhenBlockedByPopup = 32;
    /** Return true even if an active item is blocking access to this item/window. Useful for Drag and Drop patterns. */
    var AllowWhenBlockedByActiveItem = 128;
    /** IsItemHovered() only: Return true even if the item uses AllowOverlap mode and is overlapped by another hoverable item. */
    var AllowWhenOverlappedByItem = 256;
    /** IsItemHovered() only: Return true even if the position is obstructed or overlapped by another window. */
    var AllowWhenOverlappedByWindow = 512;
    /** IsItemHovered() only: Return true even if the item is disabled */
    var AllowWhenDisabled = 1024;
    /** IsItemHovered() only: Disable using keyboard/gamepad navigation state when active, always query mouse */
    var NoNavOverride = 2048;
    var AllowWhenOverlapped = 768;
    var RectOnly = 928;
    var RootAndChildWindows = 3;
    /** Shortcut for standard flags when using IsItemHovered() + SetTooltip() sequence. */
    var ForTooltip = 4096;
    /** Require mouse to be stationary for style.HoverStationaryDelay (~0.15 sec) _at least one time_. After this, can move on same item/window. Using the stationary test tends to reduces the need for a long delay. */
    var Stationary = 8192;
    /** IsItemHovered() only: Return true immediately (default). As this is the default you generally ignore this. */
    var DelayNone = 16384;
    /** IsItemHovered() only: Return true after style.HoverDelayShort elapsed (~0.15 sec) (shared between items) + requires mouse to be stationary for style.HoverStationaryDelay (once per item). */
    var DelayShort = 32768;
    /** IsItemHovered() only: Return true after style.HoverDelayNormal elapsed (~0.40 sec) (shared between items) + requires mouse to be stationary for style.HoverStationaryDelay (once per item). */
    var DelayNormal = 65536;
    /** IsItemHovered() only: Disable shared delay system where moving from one item to the next keeps the previous timer for a short time (standard for tooltips with long delays) */
    var NoSharedDelay = 131072;
}

enum abstract ImGuiDockNodeFlags(Int) from Int to Int {
    var None = 0;
    /** // Don't display the dockspace node but keep it alive. Windows docked into this dockspace node won't be undocked. */
    var KeepAliveOnly = 1;
    /** // Disable docking over the Central Node, which will be always kept empty. */
    var NoDockingOverCentralNode = 4;
    /** // Enable passthru dockspace: 1) DockSpace() will render a ImGuiCol_WindowBg background covering everything excepted the Central Node when empty. Meaning the host window should probably use SetNextWindowBgAlpha(0.0f) prior to Begin() when using this. 2) When Central Node is empty: let inputs pass-through + won't display a DockingEmptyBg background. See demo for details. */
    var PassthruCentralNode = 8;
    /** // Disable other windows/nodes from splitting this node. */
    var NoDockingSplit = 16;
    /** Saved // Disable resizing node using the splitter/separators. Useful with programmatically setup dockspaces. */
    var NoResize = 32;
    /** // Tab bar will automatically hide when there is a single window in the dock node. */
    var AutoHideTabBar = 64;
    /** // Disable undocking this node. */
    var NoUndocking = 128;
    /** Renamed in 1.90 */
    var NoSplit = 16;
    /** Renamed in 1.90 */
    var NoDockingInCentralNode = 4;
}

enum abstract ImGuiDragDropFlags(Int) from Int to Int {
    var None = 0;
    /** Disable preview tooltip. By default, a successful call to BeginDragDropSource opens a tooltip so you can display a preview or description of the source contents. This flag disables this behavior. */
    var SourceNoPreviewTooltip = 1;
    /** By default, when dragging we clear data so that IsItemHovered() will return false, to avoid subsequent user code submitting tooltips. This flag disables this behavior so you can still call IsItemHovered() on the source item. */
    var SourceNoDisableHover = 2;
    /** Disable the behavior that allows to open tree nodes and collapsing header by holding over them while dragging a source item. */
    var SourceNoHoldToOpenOthers = 4;
    /** Allow items such as Text(), Image() that have no unique identifier to be used as drag source, by manufacturing a temporary identifier based on their window-relative position. This is extremely unusual within the dear imgui ecosystem and so we made it explicit. */
    var SourceAllowNullID = 8;
    /** External source (from outside of dear imgui), won't attempt to read current item/window info. Will always return true. Only one Extern source can be active simultaneously. */
    var SourceExtern = 16;
    /** Automatically expire the payload if the source cease to be submitted (otherwise payloads are persisting while being dragged) */
    var PayloadAutoExpire = 32;
    /** Hint to specify that the payload may not be copied outside current dear imgui context. */
    var PayloadNoCrossContext = 64;
    /** Hint to specify that the payload may not be copied outside current process. */
    var PayloadNoCrossProcess = 128;
    /** AcceptDragDropPayload() will returns true even before the mouse button is released. You can then call IsDelivery() to test if the payload needs to be delivered. */
    var AcceptBeforeDelivery = 1024;
    /** Do not draw the default highlight rectangle when hovering over target. */
    var AcceptNoDrawDefaultRect = 2048;
    /** Request hiding the BeginDragDropSource tooltip from the BeginDragDropTarget site. */
    var AcceptNoPreviewTooltip = 4096;
    /** Accepting item will render as if hovered. Useful for e.g. a Button() used as a drop target. */
    var AcceptDrawAsHovered = 8192;
    /** For peeking ahead and inspecting the payload before delivery. */
    var AcceptPeekOnly = 3072;
    /** Renamed in 1.90.9 */
    var SourceAutoExpirePayload = 32;
}

enum abstract ImGuiDataType(Int) from Int to Int {
    /** signed char / char (with sensible compilers) */
    var S8 = 0;
    /** unsigned char */
    var U8 = 1;
    /** short */
    var S16 = 2;
    /** unsigned short */
    var U16 = 3;
    /** int */
    var S32 = 4;
    /** unsigned int */
    var U32 = 5;
    /** long long / __int64 */
    var S64 = 6;
    /** unsigned long long / unsigned __int64 */
    var U64 = 7;
    /** float */
    var Float = 8;
    /** double */
    var Double = 9;
    /** bool (provided for user convenience, not supported by scalar widgets) */
    var Bool = 10;
    /** char* (provided for user convenience, not supported by scalar widgets) */
    var String = 11;
    var COUNT = 12;
}

/** Forward declared enum type ImGuiDir */
enum abstract ImGuiDir(Int) from Int to Int {
    var None = -1;
    var Left = 0;
    var Right = 1;
    var Up = 2;
    var Down = 3;
    var COUNT = 4;
}

/** Forward declared enum type ImGuiSortDirection */
enum abstract ImGuiSortDirection(Int) from Int to Int {
    var None = 0;
    /** Ascending = 0->9, A->Z etc. */
    var Ascending = 1;
    /** Descending = 9->0, Z->A etc. */
    var Descending = 2;
}

/** Forward declared enum type ImGuiKey */
enum abstract ImGuiKey(Int) from Int to Int {
    var None = 0;
    /** First valid key value (other than 0) */
    var NamedKey_BEGIN = 512;
    /** == ImGuiKey_NamedKey_BEGIN */
    var Tab = 512;
    var LeftArrow = 513;
    var RightArrow = 514;
    var UpArrow = 515;
    var DownArrow = 516;
    var PageUp = 517;
    var PageDown = 518;
    var Home = 519;
    var End = 520;
    var Insert = 521;
    var Delete = 522;
    var Backspace = 523;
    var Space = 524;
    var Enter = 525;
    var Escape = 526;
    var LeftCtrl = 527;
    var LeftShift = 528;
    var LeftAlt = 529;
    /** Also see ImGuiMod_Ctrl, ImGuiMod_Shift, ImGuiMod_Alt, ImGuiMod_Super below! */
    var LeftSuper = 530;
    var RightCtrl = 531;
    var RightShift = 532;
    var RightAlt = 533;
    var RightSuper = 534;
    var Menu = 535;
    var _0 = 536;
    var _1 = 537;
    var _2 = 538;
    var _3 = 539;
    var _4 = 540;
    var _5 = 541;
    var _6 = 542;
    var _7 = 543;
    var _8 = 544;
    var _9 = 545;
    var A = 546;
    var B = 547;
    var C = 548;
    var D = 549;
    var E = 550;
    var F = 551;
    var G = 552;
    var H = 553;
    var I = 554;
    var J = 555;
    var K = 556;
    var L = 557;
    var M = 558;
    var N = 559;
    var O = 560;
    var P = 561;
    var Q = 562;
    var R = 563;
    var S = 564;
    var T = 565;
    var U = 566;
    var V = 567;
    var W = 568;
    var X = 569;
    var Y = 570;
    var Z = 571;
    var F1 = 572;
    var F2 = 573;
    var F3 = 574;
    var F4 = 575;
    var F5 = 576;
    var F6 = 577;
    var F7 = 578;
    var F8 = 579;
    var F9 = 580;
    var F10 = 581;
    var F11 = 582;
    var F12 = 583;
    var F13 = 584;
    var F14 = 585;
    var F15 = 586;
    var F16 = 587;
    var F17 = 588;
    var F18 = 589;
    var F19 = 590;
    var F20 = 591;
    var F21 = 592;
    var F22 = 593;
    var F23 = 594;
    var F24 = 595;
    /** ' */
    var Apostrophe = 596;
    /** , */
    var Comma = 597;
    /** - */
    var Minus = 598;
    /** . */
    var Period = 599;
    /** / */
    var Slash = 600;
    /** ; */
    var Semicolon = 601;
    /** = */
    var Equal = 602;
    /** [ */
    var LeftBracket = 603;
    /** \ (this text inhibit multiline comment caused by backslash) */
    var Backslash = 604;
    /** ] */
    var RightBracket = 605;
    /** ` */
    var GraveAccent = 606;
    var CapsLock = 607;
    var ScrollLock = 608;
    var NumLock = 609;
    var PrintScreen = 610;
    var Pause = 611;
    var Keypad0 = 612;
    var Keypad1 = 613;
    var Keypad2 = 614;
    var Keypad3 = 615;
    var Keypad4 = 616;
    var Keypad5 = 617;
    var Keypad6 = 618;
    var Keypad7 = 619;
    var Keypad8 = 620;
    var Keypad9 = 621;
    var KeypadDecimal = 622;
    var KeypadDivide = 623;
    var KeypadMultiply = 624;
    var KeypadSubtract = 625;
    var KeypadAdd = 626;
    var KeypadEnter = 627;
    var KeypadEqual = 628;
    /** Available on some keyboard/mouses. Often referred as "Browser Back" */
    var AppBack = 629;
    var AppForward = 630;
    /** Non-US backslash. */
    var Oem102 = 631;
    /** Menu        | +       | Options  | */
    var GamepadStart = 632;
    /** View        | -       | Share    | */
    var GamepadBack = 633;
    /** X           | Y       | Square   | Toggle Menu. Hold for Windowing mode (Focus/Move/Resize windows) */
    var GamepadFaceLeft = 634;
    /** B           | A       | Circle   | Cancel / Close / Exit */
    var GamepadFaceRight = 635;
    /** Y           | X       | Triangle | Open Context Menu */
    var GamepadFaceUp = 636;
    /** A           | B       | Cross    | Activate / Open / Toggle. Hold for 0.60f to Activate in Text Input mode (e.g. wired to an on-screen keyboard). */
    var GamepadFaceDown = 637;
    /** D-pad Left  | "       | "        | Move / Tweak / Resize Window (in Windowing mode) */
    var GamepadDpadLeft = 638;
    /** D-pad Right | "       | "        | Move / Tweak / Resize Window (in Windowing mode) */
    var GamepadDpadRight = 639;
    /** D-pad Up    | "       | "        | Move / Tweak / Resize Window (in Windowing mode) */
    var GamepadDpadUp = 640;
    /** D-pad Down  | "       | "        | Move / Tweak / Resize Window (in Windowing mode) */
    var GamepadDpadDown = 641;
    /** L Bumper    | L       | L1       | Tweak Slower / Focus Previous (in Windowing mode) */
    var GamepadL1 = 642;
    /** R Bumper    | R       | R1       | Tweak Faster / Focus Next (in Windowing mode) */
    var GamepadR1 = 643;
    /** L Trigger   | ZL      | L2       | [Analog] */
    var GamepadL2 = 644;
    /** R Trigger   | ZR      | R2       | [Analog] */
    var GamepadR2 = 645;
    /** L Stick     | L3      | L3       | */
    var GamepadL3 = 646;
    /** R Stick     | R3      | R3       | */
    var GamepadR3 = 647;
    /** |         |          | [Analog] Move Window (in Windowing mode) */
    var GamepadLStickLeft = 648;
    /** |         |          | [Analog] Move Window (in Windowing mode) */
    var GamepadLStickRight = 649;
    /** |         |          | [Analog] Move Window (in Windowing mode) */
    var GamepadLStickUp = 650;
    /** |         |          | [Analog] Move Window (in Windowing mode) */
    var GamepadLStickDown = 651;
    /** |         |          | [Analog] */
    var GamepadRStickLeft = 652;
    /** |         |          | [Analog] */
    var GamepadRStickRight = 653;
    /** |         |          | [Analog] */
    var GamepadRStickUp = 654;
    /** |         |          | [Analog] */
    var GamepadRStickDown = 655;
    var MouseLeft = 656;
    var MouseRight = 657;
    var MouseMiddle = 658;
    var MouseX1 = 659;
    var MouseX2 = 660;
    var MouseWheelX = 661;
    var MouseWheelY = 662;
    var ImGuiMod_None = 0;
    /** Ctrl (non-macOS), Cmd (macOS) */
    var ImGuiMod_Ctrl = 4096;
    /** Shift */
    var ImGuiMod_Shift = 8192;
    /** Option/Menu */
    var ImGuiMod_Alt = 16384;
    /** Windows/Super (non-macOS), Ctrl (macOS) */
    var ImGuiMod_Super = 32768;
    /** Obsoleted in 1.91.5 because it was misleading (since named keys don't start at 0 anymore) */
    var COUNT = 667;
    /** Removed in 1.90.7, you can now simply use ImGuiMod_Ctrl */
    var ImGuiMod_Shortcut = 4096;
}

enum abstract ImGuiInputFlags(Int) from Int to Int {
    var None = 0;
    /** Enable repeat. Return true on successive repeats. Default for legacy IsKeyPressed(). NOT Default for legacy IsMouseClicked(). MUST BE == 1. */
    var Repeat = 1;
    /** Route to active item only. */
    var RouteActive = 1024;
    /** Route to windows in the focus stack (DEFAULT). Deep-most focused window takes inputs. Active item takes inputs over deep-most focused window. */
    var RouteFocused = 2048;
    /** Global route (unless a focused window or active item registered the route). */
    var RouteGlobal = 4096;
    /** Do not register route, poll keys directly. */
    var RouteAlways = 8192;
    /** Option: global route: higher priority than focused route (unless active item in focused route). */
    var RouteOverFocused = 16384;
    /** Option: global route: higher priority than active item. Unlikely you need to use that: will interfere with every active items, e.g. Ctrl+A registered by InputText will be overridden by this. May not be fully honored as user/internal code is likely to always assume they can access keys when active. */
    var RouteOverActive = 32768;
    /** Option: global route: will not be applied if underlying background/void is focused (== no Dear ImGui windows are focused). Useful for overlay applications. */
    var RouteUnlessBgFocused = 65536;
    /** Option: route evaluated from the point of view of root window rather than current window. */
    var RouteFromRootWindow = 131072;
    /** Automatically display a tooltip when hovering item [BETA] Unsure of right api (opt-in/opt-out) */
    var Tooltip = 262144;
}

enum abstract ImGuiConfigFlags(Int) from Int to Int {
    var None = 0;
    /** Master keyboard navigation enable flag. Enable full Tabbing + directional arrows + Space/Enter to activate. Note: some features such as basic Tabbing and CtrL+Tab are enabled by regardless of this flag (and may be disabled via other means, see #4828, #9218). */
    var NavEnableKeyboard = 1;
    /** Master gamepad navigation enable flag. Backend also needs to set ImGuiBackendFlags_HasGamepad. */
    var NavEnableGamepad = 2;
    /** Instruct dear imgui to disable mouse inputs and interactions. */
    var NoMouse = 16;
    /** Instruct backend to not alter mouse cursor shape and visibility. Use if the backend cursor changes are interfering with yours and you don't want to use SetMouseCursor() to change mouse cursor. You may want to honor requests from imgui by reading GetMouseCursor() yourself instead. */
    var NoMouseCursorChange = 32;
    /** Instruct dear imgui to disable keyboard inputs and interactions. This is done by ignoring keyboard events and clearing existing states. */
    var NoKeyboard = 64;
    /** Docking enable flags. */
    var DockingEnable = 128;
    /** Viewport enable flags (require both ImGuiBackendFlags_PlatformHasViewports + ImGuiBackendFlags_RendererHasViewports set by the respective backends) */
    var ViewportsEnable = 1024;
    /** Application is SRGB-aware. */
    var IsSRGB = 1048576;
    /** Application is using a touch screen instead of a mouse. */
    var IsTouchScreen = 2097152;
    /** [moved/renamed in 1.91.4] -> use bool io.ConfigNavMoveSetMousePos */
    var NavEnableSetMousePos = 4;
    /** [moved/renamed in 1.91.4] -> use bool io.ConfigNavCaptureKeyboard */
    var NavNoCaptureKeyboard = 8;
    /** [moved/renamed in 1.92.0] -> use bool io.ConfigDpiScaleFonts */
    var DpiEnableScaleFonts = 16384;
    /** [moved/renamed in 1.92.0] -> use bool io.ConfigDpiScaleViewports */
    var DpiEnableScaleViewports = 32768;
}

enum abstract ImGuiBackendFlags(Int) from Int to Int {
    var None = 0;
    /** Backend Platform supports gamepad and currently has one connected. */
    var HasGamepad = 1;
    /** Backend Platform supports honoring GetMouseCursor() value to change the OS cursor shape. */
    var HasMouseCursors = 2;
    /** Backend Platform supports io.WantSetMousePos requests to reposition the OS mouse position (only used if io.ConfigNavMoveSetMousePos is set). */
    var HasSetMousePos = 4;
    /** Backend Renderer supports ImDrawCmd::VtxOffset. This enables output of large meshes (64K+ vertices) while still using 16-bit indices. */
    var RendererHasVtxOffset = 8;
    /** Backend Renderer supports ImTextureData requests to create/update/destroy textures. This enables incremental texture updates and texture reloads. See https://github.com/ocornut/imgui/blob/master/docs/BACKENDS.md for instructions on how to upgrade your custom backend. */
    var RendererHasTextures = 16;
    /** Backend Renderer supports multiple viewports. */
    var RendererHasViewports = 1024;
    /** Backend Platform supports multiple viewports. */
    var PlatformHasViewports = 2048;
    /** Backend Platform supports calling io.AddMouseViewportEvent() with the viewport under the mouse. IF POSSIBLE, ignore viewports with the ImGuiViewportFlags_NoInputs flag (Win32 backend, GLFW 3.30+ backend can do this, SDL backend cannot). If this cannot be done, Dear ImGui needs to use a flawed heuristic to find the viewport under. */
    var HasMouseHoveredViewport = 4096;
    /** Backend Platform supports honoring viewport->ParentViewport/ParentViewportId value, by applying the corresponding parent/child relationship at the Platform level. Child windows always appear in front of their parent window. */
    var HasParentViewport = 8192;
}

enum abstract ImGuiCol(Int) from Int to Int {
    var Text = 0;
    var TextDisabled = 1;
    /** Background of normal windows */
    var WindowBg = 2;
    /** Background of child windows */
    var ChildBg = 3;
    /** Background of popups, menus, tooltips windows */
    var PopupBg = 4;
    var Border = 5;
    var BorderShadow = 6;
    /** Background of checkbox, radio button, plot, slider, text input */
    var FrameBg = 7;
    var FrameBgHovered = 8;
    var FrameBgActive = 9;
    /** Title bar */
    var TitleBg = 10;
    /** Title bar when focused */
    var TitleBgActive = 11;
    /** Title bar when collapsed */
    var TitleBgCollapsed = 12;
    var MenuBarBg = 13;
    var ScrollbarBg = 14;
    var ScrollbarGrab = 15;
    var ScrollbarGrabHovered = 16;
    var ScrollbarGrabActive = 17;
    /** Checkbox tick and RadioButton circle */
    var CheckMark = 18;
    /** Checkbox background when Selected, otherwise use FrameBg */
    var CheckboxSelectedBg = 19;
    var SliderGrab = 20;
    var SliderGrabActive = 21;
    var Button = 22;
    var ButtonHovered = 23;
    var ButtonActive = 24;
    /** Header* colors are used for CollapsingHeader, TreeNode, Selectable, MenuItem */
    var Header = 25;
    var HeaderHovered = 26;
    var HeaderActive = 27;
    var Separator = 28;
    var SeparatorHovered = 29;
    var SeparatorActive = 30;
    /** Resize grip in lower-right and lower-left corners of windows. */
    var ResizeGrip = 31;
    var ResizeGripHovered = 32;
    var ResizeGripActive = 33;
    /** InputText cursor/caret */
    var InputTextCursor = 34;
    /** Tab background, when hovered */
    var TabHovered = 35;
    /** Tab background, when tab-bar is focused & tab is unselected */
    var Tab = 36;
    /** Tab background, when tab-bar is focused & tab is selected */
    var TabSelected = 37;
    /** Tab horizontal overline, when tab-bar is focused & tab is selected */
    var TabSelectedOverline = 38;
    /** Tab background, when tab-bar is unfocused & tab is unselected */
    var TabDimmed = 39;
    /** Tab background, when tab-bar is unfocused & tab is selected */
    var TabDimmedSelected = 40;
    /** ..horizontal overline, when tab-bar is unfocused & tab is selected */
    var TabDimmedSelectedOverline = 41;
    /** Preview overlay color when about to docking something */
    var DockingPreview = 42;
    /** Background color for empty node (e.g. CentralNode with no window docked into it) */
    var DockingEmptyBg = 43;
    var PlotLines = 44;
    var PlotLinesHovered = 45;
    var PlotHistogram = 46;
    var PlotHistogramHovered = 47;
    /** Table header background */
    var TableHeaderBg = 48;
    /** Table outer and header borders (prefer using Alpha=1.0 here) */
    var TableBorderStrong = 49;
    /** Table inner borders (prefer using Alpha=1.0 here) */
    var TableBorderLight = 50;
    /** Table row background (even rows) */
    var TableRowBg = 51;
    /** Table row background (odd rows) */
    var TableRowBgAlt = 52;
    /** Hyperlink color */
    var TextLink = 53;
    /** Selected text inside an InputText */
    var TextSelectedBg = 54;
    /** Tree node hierarchy outlines when using ImGuiTreeNodeFlags_DrawLines */
    var TreeLines = 55;
    /** Rectangle border highlighting a drop target */
    var DragDropTarget = 56;
    /** Rectangle background highlighting a drop target */
    var DragDropTargetBg = 57;
    /** Unsaved Document marker (in window title and tabs) */
    var UnsavedMarker = 58;
    /** Color of keyboard/gamepad navigation cursor/rectangle, when visible */
    var NavCursor = 59;
    /** Highlight window when using Ctrl+Tab */
    var NavWindowingHighlight = 60;
    /** Darken/colorize entire screen behind the Ctrl+Tab window list, when active */
    var NavWindowingDimBg = 61;
    /** Darken/colorize entire screen behind a modal window, when one is active */
    var ModalWindowDimBg = 62;
    var COUNT = 63;
    /** [renamed in 1.90.9] */
    var TabActive = 37;
    /** [renamed in 1.90.9] */
    var TabUnfocused = 39;
    /** [renamed in 1.90.9] */
    var TabUnfocusedActive = 40;
    /** [renamed in 1.91.4] */
    var NavHighlight = 59;
}

enum abstract ImGuiStyleVar(Int) from Int to Int {
    /** float     Alpha */
    var Alpha = 0;
    /** float     DisabledAlpha */
    var DisabledAlpha = 1;
    /** ImVec2    WindowPadding */
    var WindowPadding = 2;
    /** float     WindowRounding */
    var WindowRounding = 3;
    /** float     WindowBorderSize */
    var WindowBorderSize = 4;
    /** ImVec2    WindowMinSize */
    var WindowMinSize = 5;
    /** ImVec2    WindowTitleAlign */
    var WindowTitleAlign = 6;
    /** float     ChildRounding */
    var ChildRounding = 7;
    /** float     ChildBorderSize */
    var ChildBorderSize = 8;
    /** float     PopupRounding */
    var PopupRounding = 9;
    /** float     PopupBorderSize */
    var PopupBorderSize = 10;
    /** ImVec2    FramePadding */
    var FramePadding = 11;
    /** float     FrameRounding */
    var FrameRounding = 12;
    /** float     FrameBorderSize */
    var FrameBorderSize = 13;
    /** ImVec2    ItemSpacing */
    var ItemSpacing = 14;
    /** ImVec2    ItemInnerSpacing */
    var ItemInnerSpacing = 15;
    /** float     IndentSpacing */
    var IndentSpacing = 16;
    /** ImVec2    CellPadding */
    var CellPadding = 17;
    /** float     ScrollbarSize */
    var ScrollbarSize = 18;
    /** float     ScrollbarRounding */
    var ScrollbarRounding = 19;
    /** float     ScrollbarPadding */
    var ScrollbarPadding = 20;
    /** float     GrabMinSize */
    var GrabMinSize = 21;
    /** float     GrabRounding */
    var GrabRounding = 22;
    /** float     ImageRounding */
    var ImageRounding = 23;
    /** float     ImageBorderSize */
    var ImageBorderSize = 24;
    /** float     TabRounding */
    var TabRounding = 25;
    /** float     TabBorderSize */
    var TabBorderSize = 26;
    /** float     TabMinWidthBase */
    var TabMinWidthBase = 27;
    /** float     TabMinWidthShrink */
    var TabMinWidthShrink = 28;
    /** float     TabBarBorderSize */
    var TabBarBorderSize = 29;
    /** float     TabBarOverlineSize */
    var TabBarOverlineSize = 30;
    /** float     TableAngledHeadersAngle */
    var TableAngledHeadersAngle = 31;
    /** ImVec2  TableAngledHeadersTextAlign */
    var TableAngledHeadersTextAlign = 32;
    /** float     TreeLinesSize */
    var TreeLinesSize = 33;
    /** float     TreeLinesRounding */
    var TreeLinesRounding = 34;
    /** float     DragDropTargetRounding */
    var DragDropTargetRounding = 35;
    /** ImVec2    ButtonTextAlign */
    var ButtonTextAlign = 36;
    /** ImVec2    SelectableTextAlign */
    var SelectableTextAlign = 37;
    /** float     SeparatorSize */
    var SeparatorSize = 38;
    /** float     SeparatorTextBorderSize */
    var SeparatorTextBorderSize = 39;
    /** ImVec2    SeparatorTextAlign */
    var SeparatorTextAlign = 40;
    /** ImVec2    SeparatorTextPadding */
    var SeparatorTextPadding = 41;
    /** float     DockingSeparatorSize */
    var DockingSeparatorSize = 42;
    var COUNT = 43;
}

enum abstract ImGuiButtonFlags(Int) from Int to Int {
    var None = 0;
    /** React on left mouse button (default) */
    var MouseButtonLeft = 1;
    /** React on right mouse button */
    var MouseButtonRight = 2;
    /** React on center mouse button */
    var MouseButtonMiddle = 4;
    /** InvisibleButton(): do not disable navigation/tabbing. Otherwise disabled by default. */
    var EnableNav = 8;
    /** Hit testing will allow subsequent widgets to overlap this one. Require previous frame HoveredId to match before being usable. Shortcut to calling SetNextItemAllowOverlap(). */
    var AllowOverlap = 4096;
}

enum abstract ImGuiColorEditFlags(Int) from Int to Int {
    var None = 0;
    /** // ColorEdit, ColorPicker, ColorButton: ignore Alpha component (will only read 3 components from the input pointer). */
    var NoAlpha = 2;
    /** // ColorEdit: disable picker when clicking on color square. */
    var NoPicker = 4;
    /** // ColorEdit: disable toggling options menu when right-clicking on inputs/small preview. */
    var NoOptions = 8;
    /** // ColorEdit, ColorPicker: disable color square preview next to the inputs. (e.g. to show only the inputs) */
    var NoSmallPreview = 16;
    /** // ColorEdit, ColorPicker: disable inputs sliders/text widgets (e.g. to show only the small preview color square). */
    var NoInputs = 32;
    /** // ColorEdit, ColorPicker, ColorButton: disable tooltip when hovering the preview. */
    var NoTooltip = 64;
    /** // ColorEdit, ColorPicker: disable display of inline text label (the label is still forwarded to the tooltip and picker). */
    var NoLabel = 128;
    /** // ColorPicker: disable bigger color preview on right side of the picker, use small color square preview instead. */
    var NoSidePreview = 256;
    /** // ColorEdit: disable drag and drop target/source. ColorButton: disable drag and drop source. */
    var NoDragDrop = 512;
    /** // ColorButton: disable border (which is enforced by default) */
    var NoBorder = 1024;
    /** // ColorEdit: disable rendering R/G/B/A color marker. May also be disabled globally by setting style.ColorMarkerSize = 0. */
    var NoColorMarkers = 2048;
    /** // ColorEdit, ColorPicker, ColorButton: disable alpha in the preview,. Contrary to _NoAlpha it may still be edited when calling ColorEdit4()/ColorPicker4(). For ColorButton() this does the same as _NoAlpha. */
    var AlphaOpaque = 4096;
    /** // ColorEdit, ColorPicker, ColorButton: disable rendering a checkerboard background behind transparent color. */
    var AlphaNoBg = 8192;
    /** // ColorEdit, ColorPicker, ColorButton: display half opaque / half transparent preview. */
    var AlphaPreviewHalf = 16384;
    /** // ColorEdit, ColorPicker: show vertical alpha bar/gradient in picker. */
    var AlphaBar = 262144;
    /** // (WIP) ColorEdit: Currently only disable 0.0f..1.0f limits in RGBA edition (note: you probably want to use ImGuiColorEditFlags_Float flag as well). */
    var HDR = 524288;
    /** [Display]    // ColorEdit: override _display_ type among RGB/HSV/Hex. ColorPicker: select any combination using one or more of RGB/HSV/Hex. */
    var DisplayRGB = 1048576;
    /** [Display]    // " */
    var DisplayHSV = 2097152;
    /** [Display]    // " */
    var DisplayHex = 4194304;
    /** [DataType]   // ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0..255. */
    var Uint8 = 8388608;
    /** [DataType]   // ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0.0f..1.0f floats instead of 0..255 integers. No round-trip of value via integers. */
    var Float = 16777216;
    /** [Picker]     // ColorPicker: bar for Hue, rectangle for Sat/Value. */
    var PickerHueBar = 33554432;
    /** [Picker]     // ColorPicker: wheel for Hue, triangle for Sat/Value. */
    var PickerHueWheel = 67108864;
    /** [Input]      // ColorEdit, ColorPicker: input and output data in RGB format. */
    var InputRGB = 134217728;
    /** [Input]      // ColorEdit, ColorPicker: input and output data in HSV format. */
    var InputHSV = 268435456;
    /** Removed in 1.91.8. This is the default now. Will display a checkerboard unless ImGuiColorEditFlags_AlphaNoBg is set. */
    var AlphaPreview = 0;
}

enum abstract ImGuiSliderFlags(Int) from Int to Int {
    var None = 0;
    /** Make the widget logarithmic (linear otherwise). Consider using ImGuiSliderFlags_NoRoundToFormat with this if using a format-string with small amount of digits. */
    var Logarithmic = 32;
    /** Disable rounding underlying value to match precision of the display format string (e.g. %.3f values are rounded to those 3 digits). */
    var NoRoundToFormat = 64;
    /** Disable Ctrl+Click or Enter key allowing to input text directly into the widget. */
    var NoInput = 128;
    /** Enable wrapping around from max to min and from min to max. Only supported by DragXXX() functions for now. */
    var WrapAround = 256;
    /** Clamp value to min/max bounds when input manually with Ctrl+Click. By default Ctrl+Click allows going out of bounds. */
    var ClampOnInput = 512;
    /** Clamp even if min==max==0.0f. Otherwise due to legacy reason DragXXX functions don't clamp with those values. When your clamping limits are dynamic you almost always want to use it. */
    var ClampZeroRange = 1024;
    /** Disable keyboard modifiers altering tweak speed. Useful if you want to alter tweak speed yourself based on your own logic. */
    var NoSpeedTweaks = 2048;
    /** DragScalarN(), SliderScalarN(): Draw R/G/B/A color markers on each component. */
    var ColorMarkers = 4096;
    var AlwaysClamp = 1536;
}

enum abstract ImGuiMouseButton(Int) from Int to Int {
    var Left = 0;
    var Right = 1;
    var Middle = 2;
    var COUNT = 5;
}

enum abstract ImGuiMouseCursor(Int) from Int to Int {
    var None = -1;
    var Arrow = 0;
    /** When hovering over InputText, etc. */
    var TextInput = 1;
    /** (Unused by Dear ImGui functions) */
    var ResizeAll = 2;
    /** When hovering over a horizontal border */
    var ResizeNS = 3;
    /** When hovering over a vertical border or a column */
    var ResizeEW = 4;
    /** When hovering over the bottom-left corner of a window */
    var ResizeNESW = 5;
    /** When hovering over the bottom-right corner of a window */
    var ResizeNWSE = 6;
    /** (Unused by Dear ImGui functions. Use for e.g. hyperlinks) */
    var Hand = 7;
    /** When waiting for something to process/load. */
    var Wait = 8;
    /** When waiting for something to process/load, but application is still interactive. */
    var Progress = 9;
    /** When hovering something with disallowed interaction. Usually a crossed circle. */
    var NotAllowed = 10;
    var COUNT = 11;
}

/** Forward declared enum type ImGuiMouseSource */
enum abstract ImGuiMouseSource(Int) from Int to Int {
    /** Input is coming from an actual mouse. */
    var Mouse = 0;
    /** Input is coming from a touch screen (no hovering prior to initial press, less precise initial press aiming, dual-axis wheeling possible). */
    var TouchScreen = 1;
    /** Input is coming from a pressure/magnetic pen (often used in conjunction with high-sampling rates). */
    var Pen = 2;
    var COUNT = 3;
}

enum abstract ImGuiCond(Int) from Int to Int {
    /** No condition (always set the variable), same as _Always */
    var None = 0;
    /** No condition (always set the variable), same as _None */
    var Always = 1;
    /** Set the variable once per runtime session (only the first call will succeed) */
    var Once = 2;
    /** Set the variable if the object/window has no persistently saved data (no entry in .ini file) */
    var FirstUseEver = 4;
    /** Set the variable if the object/window is appearing after being hidden/inactive (or the first time) */
    var Appearing = 8;
}

enum abstract ImGuiTableFlags(Int) from Int to Int {
    var None = 0;
    /** Enable resizing columns. */
    var Resizable = 1;
    /** Enable reordering columns in header row. (Need calling TableSetupColumn() + TableHeadersRow() to display headers, or using ImGuiTableFlags_ContextMenuInBody to access context-menu without headers). */
    var Reorderable = 2;
    /** Enable hiding/disabling columns in context menu. */
    var Hideable = 4;
    /** Enable sorting. Call TableGetSortSpecs() to obtain sort specs. Also see ImGuiTableFlags_SortMulti and ImGuiTableFlags_SortTristate. */
    var Sortable = 8;
    /** Disable persisting columns order, width, visibility and sort settings in the .ini file. */
    var NoSavedSettings = 16;
    /** Right-click on columns body/contents will also display table context menu. By default it is available in TableHeadersRow(). */
    var ContextMenuInBody = 32;
    /** Set each RowBg color with ImGuiCol_TableRowBg or ImGuiCol_TableRowBgAlt (equivalent of calling TableSetBgColor with ImGuiTableBgFlags_RowBg0 on each row manually) */
    var RowBg = 64;
    /** Draw horizontal borders between rows. */
    var BordersInnerH = 128;
    /** Draw horizontal borders at the top and bottom. */
    var BordersOuterH = 256;
    /** Draw vertical borders between columns. */
    var BordersInnerV = 512;
    /** Draw vertical borders on the left and right sides. */
    var BordersOuterV = 1024;
    /** Draw horizontal borders. */
    var BordersH = 384;
    /** Draw vertical borders. */
    var BordersV = 1536;
    /** Draw inner borders. */
    var BordersInner = 640;
    /** Draw outer borders. */
    var BordersOuter = 1280;
    /** Draw all borders. */
    var Borders = 1920;
    /** [ALPHA] Disable vertical borders in columns Body (borders will always appear in Headers). -> May move to style */
    var NoBordersInBody = 2048;
    /** [ALPHA] Disable vertical borders in columns Body until hovered for resize (borders will always appear in Headers). -> May move to style */
    var NoBordersInBodyUntilResize = 4096;
    /** Columns default to _WidthFixed or _WidthAuto (if resizable or not resizable), matching contents width. */
    var SizingFixedFit = 8192;
    /** Columns default to _WidthFixed or _WidthAuto (if resizable or not resizable), matching the maximum contents width of all columns. Implicitly enable ImGuiTableFlags_NoKeepColumnsVisible. */
    var SizingFixedSame = 16384;
    /** Columns default to _WidthStretch with default weights proportional to each columns contents widths. */
    var SizingStretchProp = 24576;
    /** Columns default to _WidthStretch with default weights all equal, unless overridden by TableSetupColumn(). */
    var SizingStretchSame = 32768;
    /** Make outer width auto-fit to columns, overriding outer_size.x value. Only available when ScrollX/ScrollY are disabled and Stretch columns are not used. */
    var NoHostExtendX = 65536;
    /** Make outer height stop exactly at outer_size.y (prevent auto-extending table past the limit). Only available when ScrollX/ScrollY are disabled. Data below the limit will be clipped and not visible. */
    var NoHostExtendY = 131072;
    /** Disable keeping column always minimally visible when ScrollX is off and table gets too small. Not recommended if columns are resizable. */
    var NoKeepColumnsVisible = 262144;
    /** Disable distributing remainder width to stretched columns (width allocation on a 100-wide table with 3 columns: Without this flag: 33,33,34. With this flag: 33,33,33). With larger number of columns, resizing will appear to be less smooth. */
    var PreciseWidths = 524288;
    /** Disable clipping rectangle for every individual columns (reduce draw command count, items will be able to overflow into other columns). Generally incompatible with TableSetupScrollFreeze(). */
    var NoClip = 1048576;
    /** Default if BordersOuterV is on. Enable outermost padding. Generally desirable if you have headers. */
    var PadOuterX = 2097152;
    /** Default if BordersOuterV is off. Disable outermost padding. */
    var NoPadOuterX = 4194304;
    /** Disable inner padding between columns (double inner padding if BordersOuterV is on, single inner padding if BordersOuterV is off). */
    var NoPadInnerX = 8388608;
    /** Enable horizontal scrolling. Require 'outer_size' parameter of BeginTable() to specify the container size. Changes default sizing policy. Because this creates a child window, ScrollY is currently generally recommended when using ScrollX. */
    var ScrollX = 16777216;
    /** Enable vertical scrolling. Require 'outer_size' parameter of BeginTable() to specify the container size. */
    var ScrollY = 33554432;
    /** Hold shift when clicking headers to sort on multiple column. TableGetSortSpecs() may return specs where (SpecsCount > 1). */
    var SortMulti = 67108864;
    /** Allow no sorting, disable default sorting. TableGetSortSpecs() may return specs where (SpecsCount == 0). */
    var SortTristate = 134217728;
    /** Highlight column headers when hovered (may evolve into a fuller highlight) */
    var HighlightHoveredColumn = 268435456;
}

enum abstract ImGuiTableColumnFlags(Int) from Int to Int {
    var None = 0;
    /** Overriding/master disable flag: hide column, won't show in context menu (unlike calling TableSetColumnEnabled() which manipulates the user accessible state) */
    var Disabled = 1;
    /** Default as a hidden/disabled column. */
    var DefaultHide = 2;
    /** Default as a sorting column. */
    var DefaultSort = 4;
    /** Column will stretch. Preferable with horizontal scrolling disabled (default if table sizing policy is _SizingStretchSame or _SizingStretchProp). */
    var WidthStretch = 8;
    /** Column will not stretch. Preferable with horizontal scrolling enabled (default if table sizing policy is _SizingFixedFit and table is resizable). */
    var WidthFixed = 16;
    /** Disable manual resizing. */
    var NoResize = 32;
    /** Disable manual reordering this column, this will also prevent other columns from crossing over this column. */
    var NoReorder = 64;
    /** Disable ability to hide/disable this column. */
    var NoHide = 128;
    /** Disable clipping for this column (all NoClip columns will render in a same draw command). */
    var NoClip = 256;
    /** Disable ability to sort on this field (even if ImGuiTableFlags_Sortable is set on the table). */
    var NoSort = 512;
    /** Disable ability to sort in the ascending direction. */
    var NoSortAscending = 1024;
    /** Disable ability to sort in the descending direction. */
    var NoSortDescending = 2048;
    /** TableHeadersRow() will submit an empty label for this column. Convenient for some small columns. Name will still appear in context menu or in angled headers. You may append into this cell by calling TableSetColumnIndex() right after the TableHeadersRow() call. */
    var NoHeaderLabel = 4096;
    /** Disable header text width contribution to automatic column width. */
    var NoHeaderWidth = 8192;
    /** Make the initial sort direction Ascending when first sorting on this column (default). */
    var PreferSortAscending = 16384;
    /** Make the initial sort direction Descending when first sorting on this column. */
    var PreferSortDescending = 32768;
    /** Use current Indent value when entering cell (default for column 0). */
    var IndentEnable = 65536;
    /** Ignore current Indent value when entering cell (default for columns > 0). Indentation changes _within_ the cell will still be honored. */
    var IndentDisable = 131072;
    /** TableHeadersRow() will submit an angled header row for this column. Note this will add an extra row. */
    var AngledHeader = 262144;
    /** Status: is enabled == not hidden by user/api (referred to as "Hide" in _DefaultHide and _NoHide) flags. */
    var IsEnabled = 16777216;
    /** Status: is visible == is enabled AND not clipped by scrolling. */
    var IsVisible = 33554432;
    /** Status: is currently part of the sort specs */
    var IsSorted = 67108864;
    /** Status: is hovered by mouse */
    var IsHovered = 134217728;
}

enum abstract ImGuiTableRowFlags(Int) from Int to Int {
    var None = 0;
    /** Identify header row (set default background color + width of its contents accounted differently for auto column width) */
    var Headers = 1;
}

enum abstract ImGuiTableBgTarget(Int) from Int to Int {
    var None = 0;
    /** Set row background color 0 (generally used for background, automatically set when ImGuiTableFlags_RowBg is used) */
    var RowBg0 = 1;
    /** Set row background color 1 (generally used for selection marking) */
    var RowBg1 = 2;
    /** Set cell background color (top-most color) */
    var CellBg = 3;
}

enum abstract ImGuiListClipperFlags(Int) from Int to Int {
    var None = 0;
    /** [Internal] Disabled modifying table row counters. Avoid assumption that 1 clipper item == 1 table row. */
    var NoSetTableRowCounters = 1;
}

enum abstract ImGuiMultiSelectFlags(Int) from Int to Int {
    var None = 0;
    /** Disable selecting more than one item. This is available to allow single-selection code to share same code/logic if desired. It essentially disables the main purpose of BeginMultiSelect() tho! */
    var SingleSelect = 1;
    /** Disable Ctrl+A shortcut to select all. */
    var NoSelectAll = 2;
    /** Disable Shift+selection mouse/keyboard support (useful for unordered 2D selection). With BoxSelect is also ensure contiguous SetRange requests are not combined into one. This allows not handling interpolation in SetRange requests. */
    var NoRangeSelect = 4;
    /** Disable selecting items when navigating (useful for e.g. supporting range-select in a list of checkboxes). */
    var NoAutoSelect = 8;
    /** Disable clearing selection when navigating or selecting another one (generally used with ImGuiMultiSelectFlags_NoAutoSelect. useful for e.g. supporting range-select in a list of checkboxes). */
    var NoAutoClear = 16;
    /** Disable clearing selection when clicking/selecting an already selected item. */
    var NoAutoClearOnReselect = 32;
    /** Enable box-selection with same width and same x pos items (e.g. full row Selectable()). Box-selection works better with little bit of spacing between items hit-box in order to be able to aim at empty space. */
    var BoxSelect1d = 64;
    /** Enable box-selection with varying width or varying x pos items support (e.g. different width labels, or 2D layout/grid). This is slower: alters clipping logic so that e.g. horizontal movements will update selection of normally clipped items. */
    var BoxSelect2d = 128;
    /** Disable scrolling when box-selecting and moving mouse near edges of scope. */
    var BoxSelectNoScroll = 256;
    /** Clear selection when pressing Escape while scope is focused. */
    var ClearOnEscape = 512;
    /** Clear selection when clicking on empty location within scope. */
    var ClearOnClickVoid = 1024;
    /** Scope for _BoxSelect and _ClearOnClickVoid is whole window (Default). Use if BeginMultiSelect() covers a whole window or used a single time in same window. */
    var ScopeWindow = 2048;
    /** Scope for _BoxSelect and _ClearOnClickVoid is rectangle encompassing BeginMultiSelect()/EndMultiSelect(). Use if BeginMultiSelect() is called multiple times in same window. */
    var ScopeRect = 4096;
    /** Apply selection on mouse down when clicking on unselected item, on mouse up when clicking on selected item. (Default) */
    var SelectOnAuto = 8192;
    /** Apply selection on mouse down when clicking on any items. Prevents Drag and Drop from being used on multiple-selection, but allows e.g. BoxSelect to always reselect even when clicking inside an existing selection. (Excel style behavior) */
    var SelectOnClickAlways = 16384;
    /** Apply selection on mouse release when clicking an unselected item. Allow dragging an unselected item without altering selection. */
    var SelectOnClickRelease = 32768;
    /** [Temporary] Enable navigation wrapping on X axis. Provided as a convenience because we don't have a design for the general Nav API for this yet. When the more general feature be public we may obsolete this flag in favor of new one. */
    var NavWrapX = 65536;
    /** Disable default right-click processing, which selects item on mouse down, and is designed for context-menus. */
    var NoSelectOnRightClick = 131072;
    /** RENAMED in 1.92.6 */
    var SelectOnClick = 8192;
}

enum abstract ImGuiSelectionRequestType(Int) from Int to Int {
    var None = 0;
    /** Request app to clear selection (if Selected==false) or select all items (if Selected==true). We cannot set RangeFirstItem/RangeLastItem as its contents is entirely up to user (not necessarily an index) */
    var SetAll = 1;
    /** Request app to select/unselect [RangeFirstItem..RangeLastItem] items (inclusive) based on value of Selected. Only EndMultiSelect() request this, app code can read after BeginMultiSelect() and it will always be false. */
    var SetRange = 2;
}

enum abstract ImDrawFlags(Int) from Int to Int {
    var None = 0;
    /** AddRect(), AddRectFilled(), PathRect(): enable rounding top-left corner only (when rounding > 0.0f, we default to all corners). Was 0x01. */
    var RoundCornersTopLeft = 16;
    /** AddRect(), AddRectFilled(), PathRect(): enable rounding top-right corner only (when rounding > 0.0f, we default to all corners). Was 0x02. */
    var RoundCornersTopRight = 32;
    /** AddRect(), AddRectFilled(), PathRect(): enable rounding bottom-left corner only (when rounding > 0.0f, we default to all corners). Was 0x04. */
    var RoundCornersBottomLeft = 64;
    /** AddRect(), AddRectFilled(), PathRect(): enable rounding bottom-right corner only (when rounding > 0.0f, we default to all corners). Wax 0x08. */
    var RoundCornersBottomRight = 128;
    /** AddRect(), AddRectFilled(), PathRect(): disable rounding on all corners (when rounding > 0.0f). This is NOT zero, NOT an implicit flag! */
    var RoundCornersNone = 256;
    /** PathStroke(), AddPolyline(): specify that shape should be closed (Important: this is always == 1 for legacy reason) */
    var Closed = 512;
    var RoundCornersTop = 48;
    var RoundCornersBottom = 192;
    var RoundCornersLeft = 80;
    var RoundCornersRight = 160;
    var RoundCornersAll = 240;
}

enum abstract ImDrawListFlags(Int) from Int to Int {
    var None = 0;
    /** Enable anti-aliased lines/borders (*2 the number of triangles for 1.0f wide line or lines thin enough to be drawn using textures, otherwise *3 the number of triangles) */
    var AntiAliasedLines = 1;
    /** Enable anti-aliased lines/borders using textures when possible. Require backend to render with bilinear filtering (NOT point/nearest filtering). */
    var AntiAliasedLinesUseTex = 2;
    /** Enable anti-aliased edge around filled shapes (rounded rectangles, circles). */
    var AntiAliasedFill = 4;
    /** Can emit 'VtxOffset > 0' to allow large meshes. Set when 'ImGuiBackendFlags_RendererHasVtxOffset' is enabled. */
    var AllowVtxOffset = 8;
}

enum abstract ImTextureFormat(Int) from Int to Int {
    /** 4 components per pixel, each is unsigned 8-bit. Total size = TexWidth * TexHeight * 4 */
    var RGBA32 = 0;
    /** 1 component per pixel, each is unsigned 8-bit. Total size = TexWidth * TexHeight */
    var Alpha8 = 1;
}

enum abstract ImTextureStatus(Int) from Int to Int {
    var OK = 0;
    /** Backend destroyed the texture. */
    var Destroyed = 1;
    /** Requesting backend to create the texture. Set status OK when done. */
    var WantCreate = 2;
    /** Requesting backend to update specific blocks of pixels (write to texture portions which have never been used before). Set status OK when done. */
    var WantUpdates = 3;
    /** Requesting backend to destroy the texture. Set status to Destroyed when done. */
    var WantDestroy = 4;
}

enum abstract ImFontAtlasFlags(Int) from Int to Int {
    var None = 0;
    /** Don't round the height to next power of two */
    var NoPowerOfTwoHeight = 1;
    /** Don't build software mouse cursors into the atlas (save a little texture memory) */
    var NoMouseCursors = 2;
    /** Don't build thick line textures into the atlas (save a little texture memory, allow support for point/nearest filtering). The AntiAliasedLinesUseTex features uses them, otherwise they will be rendered using polygons (more expensive for CPU/GPU). */
    var NoBakedLines = 4;
}

enum abstract ImFontFlags(Int) from Int to Int {
    var None = 0;
    /** Disable throwing an error/assert when calling AddFontXXX() with missing file/data. Calling code is expected to check AddFontXXX() return value. */
    var NoLoadError = 2;
    /** [Internal] Disable loading new glyphs. */
    var NoLoadGlyphs = 4;
    /** [Internal] Disable loading new baked sizes, disable garbage collecting current ones. e.g. if you want to lock a font to a single size. Important: if you use this to preload given sizes, consider the possibility of multiple font density used on Retina display. */
    var LockBakedSizes = 8;
    /** [Internal] Reference size was not set explicitly. */
    var ImplicitRefSize = 16;
}

enum abstract ImGuiViewportFlags(Int) from Int to Int {
    var None = 0;
    /** Represent a Platform Window */
    var IsPlatformWindow = 1;
    /** Represent a Platform Monitor (unused yet) */
    var IsPlatformMonitor = 2;
    /** Platform Window: Is created/managed by the user application? (rather than our backend) */
    var OwnedByApp = 4;
    /** Platform Window: Disable platform decorations: title bar, borders, etc. (generally set all windows, but if ImGuiConfigFlags_ViewportsDecoration is set we only set this on popups/tooltips) */
    var NoDecoration = 8;
    /** Platform Window: Disable platform task bar icon (generally set on popups/tooltips, or all windows if ImGuiConfigFlags_ViewportsNoTaskBarIcon is set) */
    var NoTaskBarIcon = 16;
    /** Platform Window: Don't take focus when created. */
    var NoFocusOnAppearing = 32;
    /** Platform Window: Don't take focus when clicked on. */
    var NoFocusOnClick = 64;
    /** Platform Window: Make mouse pass through so we can drag this window while peaking behind it. */
    var NoInputs = 128;
    /** Platform Window: Renderer doesn't need to clear the framebuffer ahead (because we will fill it entirely). */
    var NoRendererClear = 256;
    /** Platform Window: Avoid merging this window into another host window. This can only be set via ImGuiWindowClass viewport flags override (because we need to now ahead if we are going to create a viewport in the first place!). */
    var NoAutoMerge = 512;
    /** Platform Window: Display on top (for tooltips only). */
    var TopMost = 1024;
    /** Viewport can host multiple imgui windows (secondary viewports are associated to a single window). // FIXME: In practice there's still probably code making the assumption that this is always and only on the MainViewport. Will fix once we add support for "no main viewport". */
    var CanHostOtherWindows = 2048;
    /** Platform Window: Window is minimized, can skip render. When minimized we tend to avoid using the viewport pos/size for clipping window or testing if they are contained in the viewport. */
    var IsMinimized = 4096;
    /** Platform Window: Window is focused (last call to Platform_GetWindowFocus() returned true) */
    var IsFocused = 8192;
}

/** Data shared among multiple draw lists (typically owned by parent ImGui context, but you may create one yourself) */
@:keep @:structAccess @:native("ImDrawListSharedData") @:include("linc_imgui.h")
extern class ImDrawListSharedData {
}

/** Opaque storage for building a ImFontAtlas */
@:keep @:structAccess @:native("ImFontAtlasBuilder") @:include("linc_imgui.h")
extern class ImFontAtlasBuilder {
}

/** Opaque interface to a font loading backend (stb_truetype, FreeType etc.). */
@:keep @:structAccess @:native("ImFontLoader") @:include("linc_imgui.h")
extern class ImFontLoader {
}

/** Dear ImGui context (opaque structure, unless including imgui_internal.h) */
@:keep @:structAccess @:native("ImGuiContext") @:include("linc_imgui.h")
extern class ImGuiContext {
}

@:keep @:structAccess @:native("ImVec2") @:include("linc_imgui.h")
extern class ImVec2 {
    @:native("x") var x:cpp.Float32;
    @:native("y") var y:cpp.Float32;

    /** Construct a ImVec2 value. */
    inline static function make(x:cpp.Float32, y:cpp.Float32):ImVec2 {
        return untyped __cpp__('ImVec2{ (float)({0}), (float)({1}) }', x, y);
    }
}

@:keep @:structAccess @:native("ImVec4") @:include("linc_imgui.h")
extern class ImVec4 {
    @:native("x") var x:cpp.Float32;
    @:native("y") var y:cpp.Float32;
    @:native("z") var z:cpp.Float32;
    @:native("w") var w:cpp.Float32;

    /** Construct a ImVec4 value. */
    inline static function make(x:cpp.Float32, y:cpp.Float32, z:cpp.Float32, w:cpp.Float32):ImVec4 {
        return untyped __cpp__('ImVec4{ (float)({0}), (float)({1}), (float)({2}), (float)({3}) }', x, y, z, w);
    }
}

@:keep @:structAccess @:native("ImTextureRef") @:include("linc_imgui.h")
extern class ImTextureRef {
    /** A texture, generally owned by a ImFontAtlas. Will convert to ImTextureID during render loop, after texture has been uploaded. */
    @:native("_TexData") var _TexData:cpp.Star<ImTextureData>;
    /** _OR_ Low-level backend texture identifier, if already uploaded or created by user/app. Generally provided to e.g. ImGui::Image() calls. */
    @:native("_TexID") var _TexID:cpp.UInt64;

    /** Construct an ImTextureRef from a raw ImTextureID. */
    inline static function fromID(texID:cpp.UInt64):ImTextureRef {
        return untyped __cpp__('ImTextureRef{ NULL, (ImTextureID){0} }', texID);
    }

    /** == (_TexData ? _TexData->TexID : _TexID) // Implemented below in the file. */
    inline static function getTexID(self:cpp.Star<ImTextureRef>):cpp.UInt64 {
        return untyped __cpp__('ImTextureRef_GetTexID({0})', self);
    }
}

@:keep @:structAccess @:native("ImGuiTableSortSpecs") @:include("linc_imgui.h")
extern class ImGuiTableSortSpecs {
    /** Pointer to sort spec array. */
    @:native("Specs") var specs:cpp.Star<ImGuiTableColumnSortSpecs>;
    /** Sort spec count. Most often 1. May be > 1 when ImGuiTableFlags_SortMulti is enabled. May be == 0 when ImGuiTableFlags_SortTristate is enabled. */
    @:native("SpecsCount") var specsCount:Int;
    /** Set to true when specs have changed since last time! Use this to sort again, then clear the flag. */
    @:native("SpecsDirty") var specsDirty:Bool;
}

@:keep @:structAccess @:native("ImGuiTableColumnSortSpecs") @:include("linc_imgui.h")
extern class ImGuiTableColumnSortSpecs {
    /** User id of the column (if specified by a TableSetupColumn() call) */
    @:native("ColumnUserID") var columnUserID:UInt;
    /** Index of the column */
    @:native("ColumnIndex") var columnIndex:cpp.Int16;
    /** Index within parent ImGuiTableSortSpecs (always stored in order starting from 0, tables sorted on a single criteria will always have a 0 here) */
    @:native("SortOrder") var sortOrder:cpp.Int16;
    /** ImGuiSortDirection_Ascending or ImGuiSortDirection_Descending */
    @:native("SortDirection") var sortDirection:cpp.UInt8;
}

/** Instantiation of ImVector<ImGuiTextRange> */
@:keep @:structAccess @:native("ImVector_ImGuiTextRange") @:include("linc_imgui.h")
extern class ImVector_ImGuiTextRange {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    // (field not bound: Data: ImGuiTextFilter_ImGuiTextRange*)
}

/** Instantiation of ImVector<char> */
@:keep @:structAccess @:native("ImVector_char") @:include("linc_imgui.h")
extern class ImVector_char {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<cpp.Char>;
}

/** Instantiation of ImVector<ImGuiStoragePair> */
@:keep @:structAccess @:native("ImVector_ImGuiStoragePair") @:include("linc_imgui.h")
extern class ImVector_ImGuiStoragePair {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    // (field not bound: Data: ImGuiStoragePair*)
}

/** Instantiation of ImVector<ImGuiSelectionRequest> */
@:keep @:structAccess @:native("ImVector_ImGuiSelectionRequest") @:include("linc_imgui.h")
extern class ImVector_ImGuiSelectionRequest {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<ImGuiSelectionRequest>;
}

/** Instantiation of ImVector<ImDrawChannel> */
@:keep @:structAccess @:native("ImVector_ImDrawChannel") @:include("linc_imgui.h")
extern class ImVector_ImDrawChannel {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    // (field not bound: Data: ImDrawChannel*)
}

/** Instantiation of ImVector<ImDrawCmd> */
@:keep @:structAccess @:native("ImVector_ImDrawCmd") @:include("linc_imgui.h")
extern class ImVector_ImDrawCmd {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<ImDrawCmd>;
}

/** Instantiation of ImVector<ImDrawIdx> */
@:keep @:structAccess @:native("ImVector_ImDrawIdx") @:include("linc_imgui.h")
extern class ImVector_ImDrawIdx {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<cpp.UInt16>;
}

/** Instantiation of ImVector<ImDrawVert> */
@:keep @:structAccess @:native("ImVector_ImDrawVert") @:include("linc_imgui.h")
extern class ImVector_ImDrawVert {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<ImDrawVert>;
}

/** Instantiation of ImVector<ImVec2> */
@:keep @:structAccess @:native("ImVector_ImVec2") @:include("linc_imgui.h")
extern class ImVector_ImVec2 {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<ImVec2>;
}

/** Instantiation of ImVector<ImVec4> */
@:keep @:structAccess @:native("ImVector_ImVec4") @:include("linc_imgui.h")
extern class ImVector_ImVec4 {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<ImVec4>;
}

/** Instantiation of ImVector<ImTextureRef> */
@:keep @:structAccess @:native("ImVector_ImTextureRef") @:include("linc_imgui.h")
extern class ImVector_ImTextureRef {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<ImTextureRef>;
}

/** Instantiation of ImVector<ImU8> */
@:keep @:structAccess @:native("ImVector_ImU8") @:include("linc_imgui.h")
extern class ImVector_ImU8 {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<cpp.UInt8>;
}

/** Instantiation of ImVector<ImDrawList*> */
@:keep @:structAccess @:native("ImVector_ImDrawListPtr") @:include("linc_imgui.h")
extern class ImVector_ImDrawListPtr {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.RawPointer<ImDrawList>;
}

/** Instantiation of ImVector<ImTextureRect> */
@:keep @:structAccess @:native("ImVector_ImTextureRect") @:include("linc_imgui.h")
extern class ImVector_ImTextureRect {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<ImTextureRect>;
}

/** Instantiation of ImVector<ImU32> */
@:keep @:structAccess @:native("ImVector_ImU32") @:include("linc_imgui.h")
extern class ImVector_ImU32 {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<UInt>;
}

/** Instantiation of ImVector<ImWchar> */
@:keep @:structAccess @:native("ImVector_ImWchar") @:include("linc_imgui.h")
extern class ImVector_ImWchar {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<cpp.UInt16>;
}

/** Instantiation of ImVector<ImFont*> */
@:keep @:structAccess @:native("ImVector_ImFontPtr") @:include("linc_imgui.h")
extern class ImVector_ImFontPtr {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.RawPointer<ImFont>;
}

/** Instantiation of ImVector<ImFontConfig> */
@:keep @:structAccess @:native("ImVector_ImFontConfig") @:include("linc_imgui.h")
extern class ImVector_ImFontConfig {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<ImFontConfig>;
}

/** Instantiation of ImVector<ImDrawListSharedData*> */
@:keep @:structAccess @:native("ImVector_ImDrawListSharedDataPtr") @:include("linc_imgui.h")
extern class ImVector_ImDrawListSharedDataPtr {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.RawPointer<ImDrawListSharedData>;
}

/** Instantiation of ImVector<float> */
@:keep @:structAccess @:native("ImVector_float") @:include("linc_imgui.h")
extern class ImVector_float {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<cpp.Float32>;
}

/** Instantiation of ImVector<ImU16> */
@:keep @:structAccess @:native("ImVector_ImU16") @:include("linc_imgui.h")
extern class ImVector_ImU16 {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<cpp.UInt16>;
}

/** Instantiation of ImVector<ImFontGlyph> */
@:keep @:structAccess @:native("ImVector_ImFontGlyph") @:include("linc_imgui.h")
extern class ImVector_ImFontGlyph {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<ImFontGlyph>;
}

/** Instantiation of ImVector<ImFontConfig*> */
@:keep @:structAccess @:native("ImVector_ImFontConfigPtr") @:include("linc_imgui.h")
extern class ImVector_ImFontConfigPtr {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.RawPointer<ImFontConfig>;
}

/** Instantiation of ImVector<ImGuiPlatformMonitor> */
@:keep @:structAccess @:native("ImVector_ImGuiPlatformMonitor") @:include("linc_imgui.h")
extern class ImVector_ImGuiPlatformMonitor {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.Star<ImGuiPlatformMonitor>;
}

/** Instantiation of ImVector<ImTextureData*> */
@:keep @:structAccess @:native("ImVector_ImTextureDataPtr") @:include("linc_imgui.h")
extern class ImVector_ImTextureDataPtr {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.RawPointer<ImTextureData>;
}

/** Instantiation of ImVector<ImGuiViewport*> */
@:keep @:structAccess @:native("ImVector_ImGuiViewportPtr") @:include("linc_imgui.h")
extern class ImVector_ImGuiViewportPtr {
    @:native("Size") var size:Int;
    @:native("Capacity") var capacity:Int;
    @:native("Data") var data:cpp.RawPointer<ImGuiViewport>;
}

@:keep @:structAccess @:native("ImGuiStyle") @:include("linc_imgui.h")
extern class ImGuiStyle {
    /** Current base font size before external global factors are applied. Use PushFont(NULL, size) to modify. Use ImGui::GetFontSize() to obtain scaled value. */
    @:native("FontSizeBase") var fontSizeBase:cpp.Float32;
    /** Main global scale factor. May be set by application once, or exposed to end-user. */
    @:native("FontScaleMain") var fontScaleMain:cpp.Float32;
    /** Additional global scale factor from viewport/monitor contents scale. In docking branch: when io.ConfigDpiScaleFonts is enabled, this is automatically overwritten when changing monitor DPI. */
    @:native("FontScaleDpi") var fontScaleDpi:cpp.Float32;
    /** Global alpha applies to everything in Dear ImGui. */
    @:native("Alpha") var alpha:cpp.Float32;
    /** Additional alpha multiplier applied by BeginDisabled(). Multiply over current value of Alpha. */
    @:native("DisabledAlpha") var disabledAlpha:cpp.Float32;
    /** Padding within a window. */
    @:native("WindowPadding") var windowPadding:ImVec2;
    /** Radius of window corners rounding. Set to 0.0f to have rectangular windows. Large values tend to lead to variety of artifacts and are not recommended. */
    @:native("WindowRounding") var windowRounding:cpp.Float32;
    /** Thickness of border around windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly). */
    @:native("WindowBorderSize") var windowBorderSize:cpp.Float32;
    /** Hit-testing extent outside/inside resizing border. Also extend determination of hovered window. Generally meaningfully larger than WindowBorderSize to make it easy to reach borders. */
    @:native("WindowBorderHoverPadding") var windowBorderHoverPadding:cpp.Float32;
    /** Minimum window size. This is a global setting. If you want to constrain individual windows, use SetNextWindowSizeConstraints(). */
    @:native("WindowMinSize") var windowMinSize:ImVec2;
    /** Alignment for title bar text. Defaults to (0.0f,0.5f) for left-aligned,vertically centered. */
    @:native("WindowTitleAlign") var windowTitleAlign:ImVec2;
    /** Side of the collapsing/docking button in the title bar (None/Left/Right). Defaults to ImGuiDir_Left. */
    @:native("WindowMenuButtonPosition") var windowMenuButtonPosition:Int;
    /** Radius of child window corners rounding. Set to 0.0f to have rectangular windows. */
    @:native("ChildRounding") var childRounding:cpp.Float32;
    /** Thickness of border around child windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly). */
    @:native("ChildBorderSize") var childBorderSize:cpp.Float32;
    /** Radius of popup window corners rounding. (Note that tooltip windows use WindowRounding) */
    @:native("PopupRounding") var popupRounding:cpp.Float32;
    /** Thickness of border around popup/tooltip windows. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly). */
    @:native("PopupBorderSize") var popupBorderSize:cpp.Float32;
    /** Padding within a framed rectangle (used by most widgets). */
    @:native("FramePadding") var framePadding:ImVec2;
    /** Radius of frame corners rounding. Set to 0.0f to have rectangular frame (used by most widgets). */
    @:native("FrameRounding") var frameRounding:cpp.Float32;
    /** Thickness of border around frames. Generally set to 0.0f or 1.0f. (Other values are not well tested and more CPU/GPU costly). */
    @:native("FrameBorderSize") var frameBorderSize:cpp.Float32;
    /** Horizontal and vertical spacing between widgets/lines. */
    @:native("ItemSpacing") var itemSpacing:ImVec2;
    /** Horizontal and vertical spacing between within elements of a composed widget (e.g. a slider and its label). */
    @:native("ItemInnerSpacing") var itemInnerSpacing:ImVec2;
    /** Padding within a table cell. Cellpadding.x is locked for entire table. CellPadding.y may be altered between different rows. */
    @:native("CellPadding") var cellPadding:ImVec2;
    /** Expand reactive bounding box for touch-based system where touch position is not accurate enough. Unfortunately we don't sort widgets so priority on overlap will always be given to the first widget. So don't grow this too much! */
    @:native("TouchExtraPadding") var touchExtraPadding:ImVec2;
    /** Horizontal indentation when e.g. entering a tree node. Generally == (FontSize + FramePadding.x*2). */
    @:native("IndentSpacing") var indentSpacing:cpp.Float32;
    /** Minimum horizontal spacing between two columns. Preferably > (FramePadding.x + 1). */
    @:native("ColumnsMinSpacing") var columnsMinSpacing:cpp.Float32;
    /** Width of the vertical scrollbar, Height of the horizontal scrollbar. */
    @:native("ScrollbarSize") var scrollbarSize:cpp.Float32;
    /** Radius of grab corners for scrollbar. */
    @:native("ScrollbarRounding") var scrollbarRounding:cpp.Float32;
    /** Padding of scrollbar grab within its frame (same for both axes). */
    @:native("ScrollbarPadding") var scrollbarPadding:cpp.Float32;
    /** Minimum width/height of a grab box for slider/scrollbar. */
    @:native("GrabMinSize") var grabMinSize:cpp.Float32;
    /** Radius of grabs corners rounding. Set to 0.0f to have rectangular slider grabs. */
    @:native("GrabRounding") var grabRounding:cpp.Float32;
    /** The size in pixels of the dead-zone around zero on logarithmic sliders that cross zero. */
    @:native("LogSliderDeadzone") var logSliderDeadzone:cpp.Float32;
    /** Rounding of Image() calls. */
    @:native("ImageRounding") var imageRounding:cpp.Float32;
    /** Thickness of border around Image() calls. */
    @:native("ImageBorderSize") var imageBorderSize:cpp.Float32;
    /** Radius of upper corners of a tab. Set to 0.0f to have rectangular tabs. */
    @:native("TabRounding") var tabRounding:cpp.Float32;
    /** Thickness of border around tabs. */
    @:native("TabBorderSize") var tabBorderSize:cpp.Float32;
    /** Minimum tab width, to make tabs larger than their contents. TabBar buttons are not affected. */
    @:native("TabMinWidthBase") var tabMinWidthBase:cpp.Float32;
    /** Minimum tab width after shrinking, when using ImGuiTabBarFlags_FittingPolicyMixed policy. */
    @:native("TabMinWidthShrink") var tabMinWidthShrink:cpp.Float32;
    /** -1: always visible. 0.0f: visible when hovered. >0.0f: visible when hovered if minimum width. FLT_MAX: never shrink, will behave like ImGuiTabBarFlags_FittingPolicyScroll. */
    @:native("TabCloseButtonMinWidthSelected") var tabCloseButtonMinWidthSelected:cpp.Float32;
    /** -1: always visible. 0.0f: visible when hovered. >0.0f: visible when hovered if minimum width. FLT_MAX: never show close button when unselected. */
    @:native("TabCloseButtonMinWidthUnselected") var tabCloseButtonMinWidthUnselected:cpp.Float32;
    /** Thickness of tab-bar separator, which takes on the tab active color to denote focus. */
    @:native("TabBarBorderSize") var tabBarBorderSize:cpp.Float32;
    /** Thickness of tab-bar overline, which highlights the selected tab-bar. */
    @:native("TabBarOverlineSize") var tabBarOverlineSize:cpp.Float32;
    /** Angle of angled headers (supported values range from -50.0f degrees to +50.0f degrees). */
    @:native("TableAngledHeadersAngle") var tableAngledHeadersAngle:cpp.Float32;
    /** Alignment of angled headers within the cell */
    @:native("TableAngledHeadersTextAlign") var tableAngledHeadersTextAlign:ImVec2;
    /** Default way to draw lines connecting TreeNode hierarchy. ImGuiTreeNodeFlags_DrawLinesNone or ImGuiTreeNodeFlags_DrawLinesFull or ImGuiTreeNodeFlags_DrawLinesToNodes. */
    @:native("TreeLinesFlags") var treeLinesFlags:Int;
    /** Thickness of outlines when using ImGuiTreeNodeFlags_DrawLines. */
    @:native("TreeLinesSize") var treeLinesSize:cpp.Float32;
    /** Radius of lines connecting child nodes to the vertical line. */
    @:native("TreeLinesRounding") var treeLinesRounding:cpp.Float32;
    /** Radius of the drag and drop target frame. When <0.0f: use FrameRounding. */
    @:native("DragDropTargetRounding") var dragDropTargetRounding:cpp.Float32;
    /** Thickness of the drag and drop target border. */
    @:native("DragDropTargetBorderSize") var dragDropTargetBorderSize:cpp.Float32;
    /** Size to expand the drag and drop target from actual target item size. */
    @:native("DragDropTargetPadding") var dragDropTargetPadding:cpp.Float32;
    /** Size of R/G/B/A color markers for ColorEdit4() and for Drags/Sliders when using ImGuiSliderFlags_ColorMarkers. */
    @:native("ColorMarkerSize") var colorMarkerSize:cpp.Float32;
    /** Side of the color button in the ColorEdit4 widget (left/right). Defaults to ImGuiDir_Right. */
    @:native("ColorButtonPosition") var colorButtonPosition:Int;
    /** Alignment of button text when button is larger than text. Defaults to (0.5f, 0.5f) (centered). */
    @:native("ButtonTextAlign") var buttonTextAlign:ImVec2;
    /** Alignment of selectable text. Defaults to (0.0f, 0.0f) (top-left aligned). It's generally important to keep this left-aligned if you want to lay multiple items on a same line. */
    @:native("SelectableTextAlign") var selectableTextAlign:ImVec2;
    /** Thickness of border in Separator(). Must be >= 1.0f. */
    @:native("SeparatorSize") var separatorSize:cpp.Float32;
    /** Thickness of border in SeparatorText() */
    @:native("SeparatorTextBorderSize") var separatorTextBorderSize:cpp.Float32;
    /** Alignment of text within the separator. Defaults to (0.0f, 0.5f) (left aligned, center). */
    @:native("SeparatorTextAlign") var separatorTextAlign:ImVec2;
    /** Horizontal offset of text from each edge of the separator + spacing on other axis. Generally small values. .y is recommended to be == FramePadding.y. */
    @:native("SeparatorTextPadding") var separatorTextPadding:ImVec2;
    /** Apply to regular windows: amount which we enforce to keep visible when moving near edges of your screen. */
    @:native("DisplayWindowPadding") var displayWindowPadding:ImVec2;
    /** Apply to every windows, menus, popups, tooltips: amount where we avoid displaying contents. Adjust if you cannot see the edges of your screen (e.g. on a TV where scaling has not been configured). */
    @:native("DisplaySafeAreaPadding") var displaySafeAreaPadding:ImVec2;
    /** Docking node has their own CloseButton() to close all docked windows. */
    @:native("DockingNodeHasCloseButton") var dockingNodeHasCloseButton:Bool;
    /** Thickness of resizing border between docked windows */
    @:native("DockingSeparatorSize") var dockingSeparatorSize:cpp.Float32;
    /** Scale software rendered mouse cursor (when io.MouseDrawCursor is enabled). We apply per-monitor DPI scaling over this scale. May be removed later. */
    @:native("MouseCursorScale") var mouseCursorScale:cpp.Float32;
    /** Enable anti-aliased lines/borders. Disable if you are really tight on CPU/GPU. Latched at the beginning of the frame (copied to ImDrawList). */
    @:native("AntiAliasedLines") var antiAliasedLines:Bool;
    /** Enable anti-aliased lines/borders using textures where possible. Require backend to render with bilinear filtering (NOT point/nearest filtering). Latched at the beginning of the frame (copied to ImDrawList). */
    @:native("AntiAliasedLinesUseTex") var antiAliasedLinesUseTex:Bool;
    /** Enable anti-aliased edges around filled shapes (rounded rectangles, circles, etc.). Disable if you are really tight on CPU/GPU. Latched at the beginning of the frame (copied to ImDrawList). */
    @:native("AntiAliasedFill") var antiAliasedFill:Bool;
    /** Tessellation tolerance when using PathBezierCurveTo() without a specific number of segments. Decrease for highly tessellated curves (higher quality, more polygons), increase to reduce quality. */
    @:native("CurveTessellationTol") var curveTessellationTol:cpp.Float32;
    /** Maximum error (in pixels) allowed when using AddCircle()/AddCircleFilled() or drawing rounded corner rectangles with no explicit segment count specified. Decrease for higher quality but more geometry. */
    @:native("CircleTessellationMaxError") var circleTessellationMaxError:cpp.Float32;
    // (array field not bound: Colors)
    /** Delay for IsItemHovered(ImGuiHoveredFlags_Stationary). Time required to consider mouse stationary. */
    @:native("HoverStationaryDelay") var hoverStationaryDelay:cpp.Float32;
    /** Delay for IsItemHovered(ImGuiHoveredFlags_DelayShort). Usually used along with HoverStationaryDelay. */
    @:native("HoverDelayShort") var hoverDelayShort:cpp.Float32;
    /** Delay for IsItemHovered(ImGuiHoveredFlags_DelayNormal). " */
    @:native("HoverDelayNormal") var hoverDelayNormal:cpp.Float32;
    /** Default flags when using IsItemHovered(ImGuiHoveredFlags_ForTooltip) or BeginItemTooltip()/SetItemTooltip() while using mouse. */
    @:native("HoverFlagsForTooltipMouse") var hoverFlagsForTooltipMouse:Int;
    /** Default flags when using IsItemHovered(ImGuiHoveredFlags_ForTooltip) or BeginItemTooltip()/SetItemTooltip() while using keyboard/gamepad. */
    @:native("HoverFlagsForTooltipNav") var hoverFlagsForTooltipNav:Int;

    /** Scale all spacing/padding/thickness values. Do not scale fonts. See comments in definition. Consider not calling this if your initial scale factor if <1.0. */
    inline static function scaleAllSizes(self:cpp.Star<ImGuiStyle>, scaleFactor:cpp.Float32):Void {
        untyped __cpp__('ImGuiStyle_ScaleAllSizes({0}, {1})', self, scaleFactor);
    }
}

@:keep @:structAccess @:native("ImGuiIO") @:include("linc_imgui.h")
extern class ImGuiIO {
    /** = 0              // See ImGuiConfigFlags_ enum. Set by user/application. Keyboard/Gamepad navigation options, etc. */
    @:native("ConfigFlags") var configFlags:Int;
    /** = 0              // See ImGuiBackendFlags_ enum. Set by backend (imgui_impl_xxx files or custom backend) to communicate features supported by the backend. */
    @:native("BackendFlags") var backendFlags:Int;
    /** <unset>          // Main display size, in pixels (== GetMainViewport()->Size). May change every frame. */
    @:native("DisplaySize") var displaySize:ImVec2;
    /** = (1, 1)         // Main display density. For retina display where window coordinates are different from framebuffer coordinates. This will affect font density + will end up in ImDrawData::FramebufferScale. */
    @:native("DisplayFramebufferScale") var displayFramebufferScale:ImVec2;
    /** = 1.0f/60.0f     // Time elapsed since last frame, in seconds. May change every frame. */
    @:native("DeltaTime") var deltaTime:cpp.Float32;
    /** = 5.0f           // Minimum time between saving positions/sizes to .ini file, in seconds. */
    @:native("IniSavingRate") var iniSavingRate:cpp.Float32;
    /** = "imgui.ini"    // Path to .ini file (important: default "imgui.ini" is relative to current working dir!). Set NULL to disable automatic .ini loading/saving or if you want to manually call LoadIniSettingsXXX() / SaveIniSettingsXXX() functions. */
    @:native("IniFilename") var iniFilename:cpp.ConstCharStar;
    /** = "imgui_log.txt"// Path to .log file (default parameter to ImGui::LogToFile when no file is specified). */
    @:native("LogFilename") var logFilename:cpp.ConstCharStar;
    /** = NULL           // Store your own data. */
    @:native("UserData") var userData:cpp.RawPointer<cpp.Void>;
    /** <auto>           // Font atlas: load, rasterize and pack one or more fonts into a single texture. */
    @:native("Fonts") var fonts:cpp.Star<ImFontAtlas>;
    /** = NULL           // Font to use on NewFrame(). Use NULL to uses Fonts->Fonts[0]. */
    @:native("FontDefault") var fontDefault:cpp.Star<ImFont>;
    /** = false          // Allow user scaling text of individual window with Ctrl+Wheel. */
    @:native("FontAllowUserScaling") var fontAllowUserScaling:Bool;
    /** = false          // Swap Activate<>Cancel (A<>B) buttons, matching typical "Nintendo/Japanese style" gamepad layout. */
    @:native("ConfigNavSwapGamepadButtons") var configNavSwapGamepadButtons:Bool;
    /** = false          // Directional/tabbing navigation teleports the mouse cursor. May be useful on TV/console systems where moving a virtual mouse is difficult. Will update io.MousePos and set io.WantSetMousePos=true. */
    @:native("ConfigNavMoveSetMousePos") var configNavMoveSetMousePos:Bool;
    /** = true           // Sets io.WantCaptureKeyboard when io.NavActive is set. */
    @:native("ConfigNavCaptureKeyboard") var configNavCaptureKeyboard:Bool;
    /** = true           // Pressing Escape can clear focused item + navigation id/highlight. Set to false if you want to always keep highlight on. */
    @:native("ConfigNavEscapeClearFocusItem") var configNavEscapeClearFocusItem:Bool;
    /** = false          // Pressing Escape can clear focused window as well (super set of io.ConfigNavEscapeClearFocusItem). */
    @:native("ConfigNavEscapeClearFocusWindow") var configNavEscapeClearFocusWindow:Bool;
    /** = true           // Using directional navigation key makes the cursor visible. Mouse click hides the cursor. */
    @:native("ConfigNavCursorVisibleAuto") var configNavCursorVisibleAuto:Bool;
    /** = false          // Navigation cursor is always visible. */
    @:native("ConfigNavCursorVisibleAlways") var configNavCursorVisibleAlways:Bool;
    /** = false          // Simplified docking mode: disable window splitting, so docking is limited to merging multiple windows together into tab-bars. */
    @:native("ConfigDockingNoSplit") var configDockingNoSplit:Bool;
    /** = false          // Simplified docking mode: disable window merging into a same tab-bar, so docking is limited to splitting windows. */
    @:native("ConfigDockingNoDockingOver") var configDockingNoDockingOver:Bool;
    /** = false          // Enable docking with holding Shift key (reduce visual noise, allows dropping in wider space) */
    @:native("ConfigDockingWithShift") var configDockingWithShift:Bool;
    /** = false          // [BETA] [FIXME: This currently creates regression with auto-sizing and general overhead] Make every single floating window display within a docking node. */
    @:native("ConfigDockingAlwaysTabBar") var configDockingAlwaysTabBar:Bool;
    /** = false          // [BETA] Make window or viewport transparent when docking and only display docking boxes on the target viewport. Useful if rendering of multiple viewport cannot be synced. Best used with ConfigViewportsNoAutoMerge. */
    @:native("ConfigDockingTransparentPayload") var configDockingTransparentPayload:Bool;
    /** = false;         // Set to make all floating imgui windows always create their own viewport. Otherwise, they are merged into the main host viewports when overlapping it. May also set ImGuiViewportFlags_NoAutoMerge on individual viewport. */
    @:native("ConfigViewportsNoAutoMerge") var configViewportsNoAutoMerge:Bool;
    /** = false          // Disable default OS task bar icon flag for secondary viewports. When a viewport doesn't want a task bar icon, ImGuiViewportFlags_NoTaskBarIcon will be set on it. */
    @:native("ConfigViewportsNoTaskBarIcon") var configViewportsNoTaskBarIcon:Bool;
    /** = true           // Disable default OS window decoration flag for secondary viewports. When a viewport doesn't want window decorations, ImGuiViewportFlags_NoDecoration will be set on it. Enabling decoration can create subsequent issues at OS levels (e.g. minimum window size). */
    @:native("ConfigViewportsNoDecoration") var configViewportsNoDecoration:Bool;
    /** = true           // Disable setting OS window parent to main viewport by default. The platform backend is expected to honor `viewport->ParentViewportID` to setup a parent/child relationship between the OS windows (supported if ImGuiBackendFlags_HasParentViewport is set). When parented: child windows always appear in front of their parent. Set to false if you want viewports to automatically be parent of main viewport, otherwise all viewports will be top-level OS windows. Parent/child relationship may be set on a per-window basis using ImGuiWindowClass. */
    @:native("ConfigViewportsNoDefaultParent") var configViewportsNoDefaultParent:Bool;
    /** = true // When a platform window is focused (e.g. using Alt+Tab, clicking Platform Title Bar), apply corresponding focus on imgui windows (may clear focus/active id from imgui windows location in other platform windows). In principle this is better enabled but we provide an opt-out, because some Linux window managers tend to eagerly focus windows (e.g. on mouse hover, or even a simple window pos/size change). */
    @:native("ConfigViewportsPlatformFocusSetsImGuiFocus") var configViewportsPlatformFocusSetsImGuiFocus:Bool;
    /** = false          // [EXPERIMENTAL] Automatically overwrite style.FontScaleDpi when Monitor DPI changes. This will scale fonts but _NOT_ scale sizes/padding for now. */
    @:native("ConfigDpiScaleFonts") var configDpiScaleFonts:Bool;
    /** = false          // [EXPERIMENTAL] Scale Dear ImGui and Platform Windows when Monitor DPI changes. */
    @:native("ConfigDpiScaleViewports") var configDpiScaleViewports:Bool;
    /** = false          // Request ImGui to draw a mouse cursor for you (if you are on a platform without a mouse cursor). Cannot be easily renamed to 'io.ConfigXXX' because this is frequently used by backend implementations. */
    @:native("MouseDrawCursor") var mouseDrawCursor:Bool;
    /** = defined(__APPLE__) // Swap Cmd<>Ctrl keys + OS X style text editing cursor movement using Alt instead of Ctrl, Shortcuts using Cmd/Super instead of Ctrl, Line/Text Start and End using Cmd+Arrows instead of Home/End, Double click selects by word instead of selecting whole text, Multi-selection in lists uses Cmd/Super instead of Ctrl. */
    @:native("ConfigMacOSXBehaviors") var configMacOSXBehaviors:Bool;
    /** = true           // Enable input queue trickling: some types of events submitted during the same frame (e.g. button down + up) will be spread over multiple frames, improving interactions with low framerates. */
    @:native("ConfigInputTrickleEventQueue") var configInputTrickleEventQueue:Bool;
    /** = true           // Enable blinking cursor (optional as some users consider it to be distracting). */
    @:native("ConfigInputTextCursorBlink") var configInputTextCursorBlink:Bool;
    /** = false          // [BETA] Pressing Enter will reactivate item and select all text (single-line only). */
    @:native("ConfigInputTextEnterKeepActive") var configInputTextEnterKeepActive:Bool;
    /** = false          // [BETA] Enable turning DragXXX widgets into text input with a simple mouse click-release (without moving). Not desirable on devices without a keyboard. */
    @:native("ConfigDragClickToInputText") var configDragClickToInputText:Bool;
    /** = true           // Enable resizing of windows from their edges and from the lower-left corner. This requires ImGuiBackendFlags_HasMouseCursors for better mouse cursor feedback. (This used to be a per-window ImGuiWindowFlags_ResizeFromAnySide flag) */
    @:native("ConfigWindowsResizeFromEdges") var configWindowsResizeFromEdges:Bool;
    /** = false      // Enable allowing to move windows only when clicking on their title bar. Does not apply to windows without a title bar. */
    @:native("ConfigWindowsMoveFromTitleBarOnly") var configWindowsMoveFromTitleBarOnly:Bool;
    /** = false      // [EXPERIMENTAL] Ctrl+C copy the contents of focused window into the clipboard. Experimental because: (1) has known issues with nested Begin/End pairs (2) text output quality varies (3) text output is in submission order rather than spatial order. */
    @:native("ConfigWindowsCopyContentsWithCtrlC") var configWindowsCopyContentsWithCtrlC:Bool;
    /** = true           // Enable scrolling page by page when clicking outside the scrollbar grab. When disabled, always scroll to clicked location. When enabled, Shift+Click scrolls to clicked location. */
    @:native("ConfigScrollbarScrollByPage") var configScrollbarScrollByPage:Bool;
    /** = 60.0f          // Timer (in seconds) to free transient windows/tables memory buffers when unused. Set to -1.0f to disable. */
    @:native("ConfigMemoryCompactTimer") var configMemoryCompactTimer:cpp.Float32;
    /** = 0.30f          // Time for a double-click, in seconds. */
    @:native("MouseDoubleClickTime") var mouseDoubleClickTime:cpp.Float32;
    /** = 6.0f           // Distance threshold to stay in to validate a double-click, in pixels. */
    @:native("MouseDoubleClickMaxDist") var mouseDoubleClickMaxDist:cpp.Float32;
    /** = 6.0f           // Distance threshold before considering we are dragging. */
    @:native("MouseDragThreshold") var mouseDragThreshold:cpp.Float32;
    /** = 0.275f         // When holding a key/button, time before it starts repeating, in seconds (for buttons in Repeat mode, etc.). */
    @:native("KeyRepeatDelay") var keyRepeatDelay:cpp.Float32;
    /** = 0.050f         // When holding a key/button, rate at which it repeats, in seconds. */
    @:native("KeyRepeatRate") var keyRepeatRate:cpp.Float32;
    /** = true       // Enable error recovery support. Some errors won't be detected and lead to direct crashes if recovery is disabled. */
    @:native("ConfigErrorRecovery") var configErrorRecovery:Bool;
    /** = true       // Enable asserts on recoverable error. By default call IM_ASSERT() when returning from a failing IM_ASSERT_USER_ERROR() */
    @:native("ConfigErrorRecoveryEnableAssert") var configErrorRecoveryEnableAssert:Bool;
    /** = true       // Enable debug log output on recoverable errors. */
    @:native("ConfigErrorRecoveryEnableDebugLog") var configErrorRecoveryEnableDebugLog:Bool;
    /** = true       // Enable tooltip on recoverable errors. The tooltip include a way to enable asserts if they were disabled. */
    @:native("ConfigErrorRecoveryEnableTooltip") var configErrorRecoveryEnableTooltip:Bool;
    /** = false          // Enable various tools calling IM_DEBUG_BREAK(). */
    @:native("ConfigDebugIsDebuggerPresent") var configDebugIsDebuggerPresent:Bool;
    /** = true           // Highlight and show an error message popup when multiple items have conflicting identifiers. */
    @:native("ConfigDebugHighlightIdConflicts") var configDebugHighlightIdConflicts:Bool;
    /** =true // Show "Item Picker" button in aforementioned popup. */
    @:native("ConfigDebugHighlightIdConflictsShowItemPicker") var configDebugHighlightIdConflictsShowItemPicker:Bool;
    /** = false          // First-time calls to Begin()/BeginChild() will return false. NEEDS TO BE SET AT APPLICATION BOOT TIME if you don't want to miss windows. */
    @:native("ConfigDebugBeginReturnValueOnce") var configDebugBeginReturnValueOnce:Bool;
    /** = false          // Some calls to Begin()/BeginChild() will return false. Will cycle through window depths then repeat. Suggested use: add "io.ConfigDebugBeginReturnValue = io.KeyShift" in your main loop then occasionally press SHIFT. Windows should be flickering while running. */
    @:native("ConfigDebugBeginReturnValueLoop") var configDebugBeginReturnValueLoop:Bool;
    /** = false          // Ignore io.AddFocusEvent(false), consequently not calling io.ClearInputKeys()/io.ClearInputMouse() in input processing. */
    @:native("ConfigDebugIgnoreFocusLoss") var configDebugIgnoreFocusLoss:Bool;
    /** = false          // Save .ini data with extra comments (particularly helpful for Docking, but makes saving slower) */
    @:native("ConfigDebugIniSettings") var configDebugIniSettings:Bool;
    /** = NULL */
    @:native("BackendPlatformName") var backendPlatformName:cpp.ConstCharStar;
    /** = NULL */
    @:native("BackendRendererName") var backendRendererName:cpp.ConstCharStar;
    /** = NULL           // User data for platform backend */
    @:native("BackendPlatformUserData") var backendPlatformUserData:cpp.RawPointer<cpp.Void>;
    /** = NULL           // User data for renderer backend */
    @:native("BackendRendererUserData") var backendRendererUserData:cpp.RawPointer<cpp.Void>;
    /** = NULL           // User data for non C++ programming language backend */
    @:native("BackendLanguageUserData") var backendLanguageUserData:cpp.RawPointer<cpp.Void>;
    /** Set when Dear ImGui will use mouse inputs, in this case do not dispatch them to your main game/application (either way, always pass on mouse inputs to imgui). (e.g. unclicked mouse is hovering over an imgui window, widget is active, mouse was clicked over an imgui window, etc.). */
    @:native("WantCaptureMouse") var wantCaptureMouse:Bool;
    /** Set when Dear ImGui will use keyboard inputs, in this case do not dispatch them to your main game/application (either way, always pass keyboard inputs to imgui). (e.g. InputText active, or an imgui window is focused and navigation is enabled, etc.). */
    @:native("WantCaptureKeyboard") var wantCaptureKeyboard:Bool;
    /** Mobile/console: when set, you may display an on-screen keyboard. This is set by Dear ImGui when it wants textual keyboard input to happen (e.g. when a InputText widget is active). */
    @:native("WantTextInput") var wantTextInput:Bool;
    /** MousePos has been altered, backend should reposition mouse on next frame. Rarely used! Set only when io.ConfigNavMoveSetMousePos is enabled. */
    @:native("WantSetMousePos") var wantSetMousePos:Bool;
    /** When manual .ini load/save is active (io.IniFilename == NULL), this will be set to notify your application that you can call SaveIniSettingsToMemory() and save yourself. Important: clear io.WantSaveIniSettings yourself after saving! */
    @:native("WantSaveIniSettings") var wantSaveIniSettings:Bool;
    /** Keyboard/Gamepad navigation is currently allowed (will handle ImGuiKey_NavXXX events) = a window is focused and it doesn't use the ImGuiWindowFlags_NoNavInputs flag. */
    @:native("NavActive") var navActive:Bool;
    /** Keyboard/Gamepad navigation highlight is visible and allowed (will handle ImGuiKey_NavXXX events). */
    @:native("NavVisible") var navVisible:Bool;
    /** Estimate of application framerate (rolling average over 60 frames, based on io.DeltaTime), in frame per second. Solely for convenience. Slow applications may not want to use a moving average or may want to reset underlying buffers occasionally. */
    @:native("Framerate") var framerate:cpp.Float32;
    /** Vertices output during last call to Render() */
    @:native("MetricsRenderVertices") var metricsRenderVertices:Int;
    /** Indices output during last call to Render() = number of triangles * 3 */
    @:native("MetricsRenderIndices") var metricsRenderIndices:Int;
    /** Number of visible windows */
    @:native("MetricsRenderWindows") var metricsRenderWindows:Int;
    /** Number of active windows */
    @:native("MetricsActiveWindows") var metricsActiveWindows:Int;
    /** Mouse delta. Note that this is zero if either current or previous position are invalid (-FLT_MAX,-FLT_MAX), so a disappearing/reappearing mouse won't have a huge delta. */
    @:native("MouseDelta") var mouseDelta:ImVec2;
    /** Parent UI context (needs to be set explicitly by parent). */
    @:native("Ctx") var ctx:cpp.Star<ImGuiContext>;
    /** Mouse position, in pixels. Set to ImVec2(-FLT_MAX, -FLT_MAX) if mouse is unavailable (on another screen, etc.) */
    @:native("MousePos") var mousePos:ImVec2;
    // (array field not bound: MouseDown)
    /** Mouse wheel Vertical: 1 unit scrolls about 5 lines text. >0 scrolls Up, <0 scrolls Down. Hold Shift to turn vertical scroll into horizontal scroll. */
    @:native("MouseWheel") var mouseWheel:cpp.Float32;
    /** Mouse wheel Horizontal. >0 scrolls Left, <0 scrolls Right. Most users don't have a mouse with a horizontal wheel, may not be filled by all backends. */
    @:native("MouseWheelH") var mouseWheelH:cpp.Float32;
    /** Mouse actual input peripheral (Mouse/TouchScreen/Pen). */
    @:native("MouseSource") var mouseSource:Int;
    /** (Optional) Modify using io.AddMouseViewportEvent(). With multi-viewports: viewport the OS mouse is hovering. If possible _IGNORING_ viewports with the ImGuiViewportFlags_NoInputs flag is much better (few backends can handle that). Set io.BackendFlags |= ImGuiBackendFlags_HasMouseHoveredViewport if you can provide this info. If you don't imgui will infer the value using the rectangles and last focused time of the viewports it knows about (ignoring other OS windows). */
    @:native("MouseHoveredViewport") var mouseHoveredViewport:UInt;
    /** Keyboard modifier down: Ctrl (non-macOS), Cmd (macOS) */
    @:native("KeyCtrl") var keyCtrl:Bool;
    /** Keyboard modifier down: Shift */
    @:native("KeyShift") var keyShift:Bool;
    /** Keyboard modifier down: Alt */
    @:native("KeyAlt") var keyAlt:Bool;
    /** Keyboard modifier down: Windows/Super (non-macOS), Ctrl (macOS) */
    @:native("KeySuper") var keySuper:Bool;
    /** Key mods flags (any of ImGuiMod_Ctrl/ImGuiMod_Shift/ImGuiMod_Alt/ImGuiMod_Super flags, same as io.KeyCtrl/KeyShift/KeyAlt/KeySuper but merged into flags). Read-only, updated by NewFrame() */
    @:native("KeyMods") var keyMods:Int;
    // (array field not bound: KeysData)
    /** Alternative to WantCaptureMouse: (WantCaptureMouse == true && WantCaptureMouseUnlessPopupClose == false) when a click over void is expected to close a popup. */
    @:native("WantCaptureMouseUnlessPopupClose") var wantCaptureMouseUnlessPopupClose:Bool;
    /** Previous mouse position (note that MouseDelta is not necessary == MousePos-MousePosPrev, in case either position is invalid) */
    @:native("MousePosPrev") var mousePosPrev:ImVec2;
    // (array field not bound: MouseClickedPos)
    // (array field not bound: MouseClickedTime)
    // (array field not bound: MouseClicked)
    // (array field not bound: MouseDoubleClicked)
    // (array field not bound: MouseClickedCount)
    // (array field not bound: MouseClickedLastCount)
    // (array field not bound: MouseReleased)
    // (array field not bound: MouseReleasedTime)
    // (array field not bound: MouseDownOwned)
    // (array field not bound: MouseDownOwnedUnlessPopupClose)
    /** On a non-Mac system, holding Shift requests WheelY to perform the equivalent of a WheelX event. On a Mac system this is already enforced by the system. */
    @:native("MouseWheelRequestAxisSwap") var mouseWheelRequestAxisSwap:Bool;
    /** (OSX) Set to true when the current click was a Ctrl+Click that spawned a simulated right click */
    @:native("MouseCtrlLeftAsRightClick") var mouseCtrlLeftAsRightClick:Bool;
    // (array field not bound: MouseDownDuration)
    // (array field not bound: MouseDownDurationPrev)
    // (array field not bound: MouseDragMaxDistanceAbs)
    // (array field not bound: MouseDragMaxDistanceSqr)
    /** Touch/Pen pressure (0.0f to 1.0f, should be >0.0f only when MouseDown[0] == true). Helper storage currently unused by Dear ImGui. */
    @:native("PenPressure") var penPressure:cpp.Float32;
    /** Only modify via AddFocusEvent() */
    @:native("AppFocusLost") var appFocusLost:Bool;
    /** Only modify via SetAppAcceptingEvents() */
    @:native("AppAcceptingEvents") var appAcceptingEvents:Bool;
    /** For AddInputCharacterUTF16() */
    @:native("InputQueueSurrogate") var inputQueueSurrogate:cpp.UInt16;
    /** Queue of _characters_ input (obtained by platform backend). Fill using AddInputCharacter() helper. */
    @:native("InputQueueCharacters") var inputQueueCharacters:ImVector_ImWchar;

    /** Queue a new key down/up event. Key should be "translated" (as in, generally ImGuiKey_A matches the key end-user would use to emit an 'A' character) */
    inline static function addKeyEvent(self:cpp.Star<ImGuiIO>, key:Int, down:Bool):Void {
        untyped __cpp__('ImGuiIO_AddKeyEvent({0}, (ImGuiKey){1}, {2})', self, key, down);
    }
    /** Queue a new key down/up event for analog values (e.g. ImGuiKey_Gamepad_ values). Dead-zones should be handled by the backend. */
    inline static function addKeyAnalogEvent(self:cpp.Star<ImGuiIO>, key:Int, down:Bool, v:cpp.Float32):Void {
        untyped __cpp__('ImGuiIO_AddKeyAnalogEvent({0}, (ImGuiKey){1}, {2}, {3})', self, key, down, v);
    }
    /** Queue a mouse position update. Use -FLT_MAX,-FLT_MAX to signify no mouse (e.g. app not focused and not hovered) */
    inline static function addMousePosEvent(self:cpp.Star<ImGuiIO>, x:cpp.Float32, y:cpp.Float32):Void {
        untyped __cpp__('ImGuiIO_AddMousePosEvent({0}, {1}, {2})', self, x, y);
    }
    /** Queue a mouse button change */
    inline static function addMouseButtonEvent(self:cpp.Star<ImGuiIO>, button:Int, down:Bool):Void {
        untyped __cpp__('ImGuiIO_AddMouseButtonEvent({0}, {1}, {2})', self, button, down);
    }
    /** Queue a mouse wheel update. wheel_y<0: scroll down, wheel_y>0: scroll up, wheel_x<0: scroll right, wheel_x>0: scroll left. */
    inline static function addMouseWheelEvent(self:cpp.Star<ImGuiIO>, wheelX:cpp.Float32, wheelY:cpp.Float32):Void {
        untyped __cpp__('ImGuiIO_AddMouseWheelEvent({0}, {1}, {2})', self, wheelX, wheelY);
    }
    /** Queue a mouse source change (Mouse/TouchScreen/Pen) */
    inline static function addMouseSourceEvent(self:cpp.Star<ImGuiIO>, source:Int):Void {
        untyped __cpp__('ImGuiIO_AddMouseSourceEvent({0}, (ImGuiMouseSource){1})', self, source);
    }
    /** Queue a mouse hovered viewport. Requires backend to set ImGuiBackendFlags_HasMouseHoveredViewport to call this (for multi-viewport support). */
    inline static function addMouseViewportEvent(self:cpp.Star<ImGuiIO>, id:UInt):Void {
        untyped __cpp__('ImGuiIO_AddMouseViewportEvent({0}, {1})', self, id);
    }
    /** Queue a gain/loss of focus for the application (generally based on OS/platform focus of your window) */
    inline static function addFocusEvent(self:cpp.Star<ImGuiIO>, focused:Bool):Void {
        untyped __cpp__('ImGuiIO_AddFocusEvent({0}, {1})', self, focused);
    }
    /** Queue a new character input */
    inline static function addInputCharacter(self:cpp.Star<ImGuiIO>, c:UInt):Void {
        untyped __cpp__('ImGuiIO_AddInputCharacter({0}, {1})', self, c);
    }
    /** Queue a new character input from a UTF-16 character, it can be a surrogate */
    inline static function addInputCharacterUTF16(self:cpp.Star<ImGuiIO>, c:cpp.UInt16):Void {
        untyped __cpp__('ImGuiIO_AddInputCharacterUTF16({0}, {1})', self, c);
    }
    /** Queue a new characters input from a UTF-8 string */
    inline static function addInputCharactersUTF8(self:cpp.Star<ImGuiIO>, str:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGuiIO_AddInputCharactersUTF8({0}, {1})', self, str);
    }
    /** [Optional] Specify index for legacy <1.87 IsKeyXXX() functions with native indices + specify native keycode, scancode. */
    inline static function setKeyEventNativeDataEx(self:cpp.Star<ImGuiIO>, key:Int, nativeKeycode:Int, nativeScancode:Int, nativeLegacyIndex:Int = -1):Void {
        untyped __cpp__('ImGuiIO_SetKeyEventNativeDataEx({0}, (ImGuiKey){1}, {2}, {3}, {4})', self, key, nativeKeycode, nativeScancode, nativeLegacyIndex);
    }
    /** Implied native_legacy_index = -1 */
    inline static function setKeyEventNativeData(self:cpp.Star<ImGuiIO>, key:Int, nativeKeycode:Int, nativeScancode:Int):Void {
        untyped __cpp__('ImGuiIO_SetKeyEventNativeData({0}, (ImGuiKey){1}, {2}, {3})', self, key, nativeKeycode, nativeScancode);
    }
    /** Set master flag for accepting key/mouse/text events (default to true). Useful if you have native dialog boxes that are interrupting your application loop/refresh, and you want to disable events being queued while your app is frozen. */
    inline static function setAppAcceptingEvents(self:cpp.Star<ImGuiIO>, acceptingEvents:Bool):Void {
        untyped __cpp__('ImGuiIO_SetAppAcceptingEvents({0}, {1})', self, acceptingEvents);
    }
    /** Clear all incoming events. */
    inline static function clearEventsQueue(self:cpp.Star<ImGuiIO>):Void {
        untyped __cpp__('ImGuiIO_ClearEventsQueue({0})', self);
    }
    /** Clear current keyboard/gamepad state + current frame text input buffer. Equivalent to releasing all keys/buttons. */
    inline static function clearInputKeys(self:cpp.Star<ImGuiIO>):Void {
        untyped __cpp__('ImGuiIO_ClearInputKeys({0})', self);
    }
    /** Clear current mouse state. */
    inline static function clearInputMouse(self:cpp.Star<ImGuiIO>):Void {
        untyped __cpp__('ImGuiIO_ClearInputMouse({0})', self);
    }
}

@:keep @:structAccess @:native("ImGuiInputTextCallbackData") @:include("linc_imgui.h")
extern class ImGuiInputTextCallbackData {
    /** Parent UI context */
    @:native("Ctx") var ctx:cpp.Star<ImGuiContext>;
    /** One ImGuiInputTextFlags_Callback*    // Read-only */
    @:native("EventFlag") var eventFlag:Int;
    /** What user passed to InputText()      // Read-only */
    @:native("Flags") var flags:Int;
    /** What user passed to InputText()      // Read-only */
    @:native("UserData") var userData:cpp.RawPointer<cpp.Void>;
    /** Widget ID                            // Read-only */
    @:native("ID") var id:UInt;
    /** Key pressed (Up/Down/TAB)            // Read-only    // [Completion,History] */
    @:native("EventKey") var eventKey:Int;
    /** Character input                      // Read-write   // [CharFilter] Replace character with another one, or set to zero to drop. return 1 is equivalent to setting EventChar=0; */
    @:native("EventChar") var eventChar:cpp.UInt16;
    /** Input field just got activated       // Read-only    // [Always] */
    @:native("EventActivated") var eventActivated:Bool;
    /** Set if you modify Buf/BufTextLen!    // Write        // [Completion,History,Always] */
    @:native("BufDirty") var bufDirty:Bool;
    /** Text buffer                          // Read-write   // [Resize] Can replace pointer / [Completion,History,Always] Only write to pointed data, don't replace the actual pointer! */
    @:native("Buf") var buf:cpp.Star<cpp.Char>;
    /** Text length (in bytes)               // Read-write   // [Resize,Completion,History,Always] Exclude zero-terminator storage. In C land: == strlen(some_text), in C++ land: string.length() */
    @:native("BufTextLen") var bufTextLen:Int;
    /** Buffer size (in bytes) = capacity+1  // Read-only    // [Resize,Completion,History,Always] Include zero-terminator storage. In C land: == ARRAYSIZE(my_char_array), in C++ land: string.capacity()+1 */
    @:native("BufSize") var bufSize:Int;
    /** // Read-write   // [Completion,History,Always,CharFilter] */
    @:native("CursorPos") var cursorPos:Int;
    /** // Read-write   // [Completion,History,Always,CharFilter] == to SelectionEnd when no selection */
    @:native("SelectionStart") var selectionStart:Int;
    /** // Read-write   // [Completion,History,Always,CharFilter] */
    @:native("SelectionEnd") var selectionEnd:Int;

    inline static function deleteChars(self:cpp.Star<ImGuiInputTextCallbackData>, pos:Int, bytesCount:Int):Void {
        untyped __cpp__('ImGuiInputTextCallbackData_DeleteChars({0}, {1}, {2})', self, pos, bytesCount);
    }
    inline static function insertChars(self:cpp.Star<ImGuiInputTextCallbackData>, pos:Int, text:cpp.ConstCharStar, textEnd:cpp.ConstCharStar = null):Void {
        untyped __cpp__('ImGuiInputTextCallbackData_InsertChars({0}, {1}, {2}, {3})', self, pos, text, textEnd);
    }
    inline static function selectAll(self:cpp.Star<ImGuiInputTextCallbackData>):Void {
        untyped __cpp__('ImGuiInputTextCallbackData_SelectAll({0})', self);
    }
    inline static function setSelection(self:cpp.Star<ImGuiInputTextCallbackData>, s:Int, e:Int):Void {
        untyped __cpp__('ImGuiInputTextCallbackData_SetSelection({0}, {1}, {2})', self, s, e);
    }
    inline static function clearSelection(self:cpp.Star<ImGuiInputTextCallbackData>):Void {
        untyped __cpp__('ImGuiInputTextCallbackData_ClearSelection({0})', self);
    }
    inline static function hasSelection(self:cpp.Star<ImGuiInputTextCallbackData>):Bool {
        return untyped __cpp__('ImGuiInputTextCallbackData_HasSelection({0})', self);
    }
}

@:keep @:structAccess @:native("ImGuiSizeCallbackData") @:include("linc_imgui.h")
extern class ImGuiSizeCallbackData {
    /** Read-only.   What user passed to SetNextWindowSizeConstraints(). Generally store an integer or float in here (need reinterpret_cast<>). */
    @:native("UserData") var userData:cpp.RawPointer<cpp.Void>;
    /** Read-only.   Window position, for reference. */
    @:native("Pos") var pos:ImVec2;
    /** Read-only.   Current window size. */
    @:native("CurrentSize") var currentSize:ImVec2;
    /** Read-write.  Desired size, based on user's mouse position. Write to this field to restrain resizing. */
    @:native("DesiredSize") var desiredSize:ImVec2;
}

@:keep @:structAccess @:native("ImGuiWindowClass") @:include("linc_imgui.h")
extern class ImGuiWindowClass {
    /** User data. 0 = Default class (unclassed). Windows of different classes cannot be docked with each others. */
    @:native("ClassId") var classId:UInt;
    /** Hint for the platform backend. -1: use default. 0: request platform backend to not parent the platform. != 0: request platform backend to create a parent<>child relationship between the platform windows. Not conforming backends are free to e.g. parent every viewport to the main viewport or not. */
    @:native("ParentViewportId") var parentViewportId:UInt;
    /** ID of parent window for shortcut focus route evaluation, e.g. Shortcut() call from Parent Window will succeed when this window is focused. */
    @:native("FocusRouteParentWindowId") var focusRouteParentWindowId:UInt;
    /** Viewport flags to set when a window of this class owns a viewport. This allows you to enforce OS decoration or task bar icon, override the defaults on a per-window basis. */
    @:native("ViewportFlagsOverrideSet") var viewportFlagsOverrideSet:Int;
    /** Viewport flags to clear when a window of this class owns a viewport. This allows you to enforce OS decoration or task bar icon, override the defaults on a per-window basis. */
    @:native("ViewportFlagsOverrideClear") var viewportFlagsOverrideClear:Int;
    /** [EXPERIMENTAL] TabItem flags to set when a window of this class gets submitted into a dock node tab bar. May use with ImGuiTabItemFlags_Leading or ImGuiTabItemFlags_Trailing. */
    @:native("TabItemFlagsOverrideSet") var tabItemFlagsOverrideSet:Int;
    /** [EXPERIMENTAL] Dock node flags to set when a window of this class is hosted by a dock node (it doesn't have to be selected!) */
    @:native("DockNodeFlagsOverrideSet") var dockNodeFlagsOverrideSet:Int;
    /** Set to true to enforce single floating windows of this class always having their own docking node (equivalent of setting the global io.ConfigDockingAlwaysTabBar) */
    @:native("DockingAlwaysTabBar") var dockingAlwaysTabBar:Bool;
    /** Set to true to allow windows of this class to be docked/merged with an unclassed window. // FIXME-DOCK: Move to DockNodeFlags override? */
    @:native("DockingAllowUnclassed") var dockingAllowUnclassed:Bool;
    /** [EXPERIMENTAL] Pass opaque data for Platform backend to handle. */
    @:native("PlatformIconData") var platformIconData:cpp.RawPointer<cpp.Void>;
}

@:keep @:structAccess @:native("ImGuiPayload") @:include("linc_imgui.h")
extern class ImGuiPayload {
    /** Data (copied and owned by dear imgui) */
    @:native("Data") var data:cpp.RawPointer<cpp.Void>;
    /** Data size */
    @:native("DataSize") var dataSize:Int;

    inline static function clear(self:cpp.Star<ImGuiPayload>):Void {
        untyped __cpp__('ImGuiPayload_Clear({0})', self);
    }
    inline static function isDataType(self:cpp.Star<ImGuiPayload>, type:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGuiPayload_IsDataType({0}, {1})', self, type);
    }
    inline static function isPreview(self:cpp.Star<ImGuiPayload>):Bool {
        return untyped __cpp__('ImGuiPayload_IsPreview({0})', self);
    }
    inline static function isDelivery(self:cpp.Star<ImGuiPayload>):Bool {
        return untyped __cpp__('ImGuiPayload_IsDelivery({0})', self);
    }
}

@:keep @:structAccess @:native("ImGuiTextBuffer") @:include("linc_imgui.h")
extern class ImGuiTextBuffer {
    @:native("Buf") var buf:ImVector_char;

    inline static function begin(self:cpp.Star<ImGuiTextBuffer>):cpp.ConstCharStar {
        return untyped __cpp__('ImGuiTextBuffer_begin({0})', self);
    }
    /** Buf is zero-terminated, so end() will point on the zero-terminator */
    inline static function end(self:cpp.Star<ImGuiTextBuffer>):cpp.ConstCharStar {
        return untyped __cpp__('ImGuiTextBuffer_end({0})', self);
    }
    inline static function size(self:cpp.Star<ImGuiTextBuffer>):Int {
        return untyped __cpp__('ImGuiTextBuffer_size({0})', self);
    }
    inline static function empty(self:cpp.Star<ImGuiTextBuffer>):Bool {
        return untyped __cpp__('ImGuiTextBuffer_empty({0})', self);
    }
    inline static function clear(self:cpp.Star<ImGuiTextBuffer>):Void {
        untyped __cpp__('ImGuiTextBuffer_clear({0})', self);
    }
    /** Similar to resize(0) on ImVector: empty string but don't free buffer. */
    inline static function resize(self:cpp.Star<ImGuiTextBuffer>, size:Int):Void {
        untyped __cpp__('ImGuiTextBuffer_resize({0}, {1})', self, size);
    }
    inline static function reserve(self:cpp.Star<ImGuiTextBuffer>, capacity:Int):Void {
        untyped __cpp__('ImGuiTextBuffer_reserve({0}, {1})', self, capacity);
    }
    inline static function c_str(self:cpp.Star<ImGuiTextBuffer>):cpp.ConstCharStar {
        return untyped __cpp__('ImGuiTextBuffer_c_str({0})', self);
    }
    inline static function append(self:cpp.Star<ImGuiTextBuffer>, str:cpp.ConstCharStar, strEnd:cpp.ConstCharStar = null):Void {
        untyped __cpp__('ImGuiTextBuffer_append({0}, {1}, {2})', self, str, strEnd);
    }
}

@:keep @:structAccess @:native("ImGuiStorage") @:include("linc_imgui.h")
extern class ImGuiStorage {

    inline static function clear(self:cpp.Star<ImGuiStorage>):Void {
        untyped __cpp__('ImGuiStorage_Clear({0})', self);
    }
    inline static function getInt(self:cpp.Star<ImGuiStorage>, key:UInt, defaultVal:Int = 0):Int {
        return untyped __cpp__('ImGuiStorage_GetInt({0}, {1}, {2})', self, key, defaultVal);
    }
    inline static function setInt(self:cpp.Star<ImGuiStorage>, key:UInt, val:Int):Void {
        untyped __cpp__('ImGuiStorage_SetInt({0}, {1}, {2})', self, key, val);
    }
    inline static function getBool(self:cpp.Star<ImGuiStorage>, key:UInt, defaultVal:Bool = false):Bool {
        return untyped __cpp__('ImGuiStorage_GetBool({0}, {1}, {2})', self, key, defaultVal);
    }
    inline static function setBool(self:cpp.Star<ImGuiStorage>, key:UInt, val:Bool):Void {
        untyped __cpp__('ImGuiStorage_SetBool({0}, {1}, {2})', self, key, val);
    }
    inline static function getFloat(self:cpp.Star<ImGuiStorage>, key:UInt, defaultVal:cpp.Float32 = 0.0):cpp.Float32 {
        return untyped __cpp__('ImGuiStorage_GetFloat({0}, {1}, {2})', self, key, defaultVal);
    }
    inline static function setFloat(self:cpp.Star<ImGuiStorage>, key:UInt, val:cpp.Float32):Void {
        untyped __cpp__('ImGuiStorage_SetFloat({0}, {1}, {2})', self, key, val);
    }
    /** default_val is NULL */
    inline static function getVoidPtr(self:cpp.Star<ImGuiStorage>, key:UInt):cpp.RawPointer<cpp.Void> {
        return untyped __cpp__('ImGuiStorage_GetVoidPtr({0}, {1})', self, key);
    }
    inline static function setVoidPtr(self:cpp.Star<ImGuiStorage>, key:UInt, val:cpp.RawPointer<cpp.Void>):Void {
        untyped __cpp__('ImGuiStorage_SetVoidPtr({0}, {1}, {2})', self, key, val);
    }
    inline static function getIntRef(self:cpp.Star<ImGuiStorage>, key:UInt, defaultVal:Int = 0):cpp.Star<Int> {
        return untyped __cpp__('ImGuiStorage_GetIntRef({0}, {1}, {2})', self, key, defaultVal);
    }
    inline static function getBoolRef(self:cpp.Star<ImGuiStorage>, key:UInt, defaultVal:Bool = false):cpp.Star<Bool> {
        return untyped __cpp__('ImGuiStorage_GetBoolRef({0}, {1}, {2})', self, key, defaultVal);
    }
    inline static function getFloatRef(self:cpp.Star<ImGuiStorage>, key:UInt, defaultVal:cpp.Float32 = 0.0):cpp.Star<cpp.Float32> {
        return untyped __cpp__('ImGuiStorage_GetFloatRef({0}, {1}, {2})', self, key, defaultVal);
    }
    inline static function getVoidPtrRef(self:cpp.Star<ImGuiStorage>, key:UInt, defaultVal:cpp.RawPointer<cpp.Void> = null):cpp.RawPointer<Void> {
        return untyped __cpp__('ImGuiStorage_GetVoidPtrRef({0}, {1}, {2})', self, key, defaultVal);
    }
    inline static function buildSortByKey(self:cpp.Star<ImGuiStorage>):Void {
        untyped __cpp__('ImGuiStorage_BuildSortByKey({0})', self);
    }
    inline static function setAllInt(self:cpp.Star<ImGuiStorage>, val:Int):Void {
        untyped __cpp__('ImGuiStorage_SetAllInt({0}, {1})', self, val);
    }
}

@:keep @:structAccess @:native("ImGuiListClipper") @:include("linc_imgui.h")
extern class ImGuiListClipper {
    /** First item to display, updated by each call to Step() */
    @:native("DisplayStart") var displayStart:Int;
    /** End of items to display (exclusive) */
    @:native("DisplayEnd") var displayEnd:Int;
    /** Helper storage for user convenience/code. Optional, and otherwise unused if you don't use it. */
    @:native("UserIndex") var userIndex:Int;
    /** [Internal] Number of items */
    @:native("ItemsCount") var itemsCount:Int;
    /** [Internal] Height of item after a first step and item submission can calculate it */
    @:native("ItemsHeight") var itemsHeight:cpp.Float32;
    /** [Internal] Flags, currently not yet well exposed. */
    @:native("Flags") var flags:Int;
    /** [Internal] Cursor position at the time of Begin() or after table frozen rows are all processed */
    @:native("StartPosY") var startPosY:Float;
    /** [Internal] Account for frozen rows in a table and initial loss of precision in very large windows. */
    @:native("StartSeekOffsetY") var startSeekOffsetY:Float;
    /** [Internal] Parent UI context */
    @:native("Ctx") var ctx:cpp.Star<ImGuiContext>;
    /** [Internal] Internal data */
    @:native("TempData") var tempData:cpp.RawPointer<cpp.Void>;

    inline static function begin(self:cpp.Star<ImGuiListClipper>, itemsCount:Int, itemsHeight:cpp.Float32 = -1.0):Void {
        untyped __cpp__('ImGuiListClipper_Begin({0}, {1}, {2})', self, itemsCount, itemsHeight);
    }
    /** Automatically called on the last call of Step() that returns false. */
    inline static function end(self:cpp.Star<ImGuiListClipper>):Void {
        untyped __cpp__('ImGuiListClipper_End({0})', self);
    }
    /** Call until it returns false. The DisplayStart/DisplayEnd fields will be set and you can process/draw those items. */
    inline static function step(self:cpp.Star<ImGuiListClipper>):Bool {
        return untyped __cpp__('ImGuiListClipper_Step({0})', self);
    }
    inline static function includeItemByIndex(self:cpp.Star<ImGuiListClipper>, itemIndex:Int):Void {
        untyped __cpp__('ImGuiListClipper_IncludeItemByIndex({0}, {1})', self, itemIndex);
    }
    /** item_end is exclusive e.g. use (42, 42+1) to make item 42 never clipped. */
    inline static function includeItemsByIndex(self:cpp.Star<ImGuiListClipper>, itemBegin:Int, itemEnd:Int):Void {
        untyped __cpp__('ImGuiListClipper_IncludeItemsByIndex({0}, {1}, {2})', self, itemBegin, itemEnd);
    }
    inline static function seekCursorForItem(self:cpp.Star<ImGuiListClipper>, itemIndex:Int):Void {
        untyped __cpp__('ImGuiListClipper_SeekCursorForItem({0}, {1})', self, itemIndex);
    }
}

@:keep @:structAccess @:native("ImColor") @:include("linc_imgui.h")
extern class ImColor {
    @:native("Value") var value:ImVec4;

    inline static function setHSV(self:cpp.Star<ImColor>, h:cpp.Float32, s:cpp.Float32, v:cpp.Float32, a:cpp.Float32 = 1.0):Void {
        untyped __cpp__('ImColor_SetHSV({0}, {1}, {2}, {3}, {4})', self, h, s, v, a);
    }
    inline static function hsv(h:cpp.Float32, s:cpp.Float32, v:cpp.Float32, a:cpp.Float32 = 1.0):ImColor {
        return untyped __cpp__('ImColor_HSV({0}, {1}, {2}, {3})', h, s, v, a);
    }
}

@:keep @:structAccess @:native("ImGuiMultiSelectIO") @:include("linc_imgui.h")
extern class ImGuiMultiSelectIO {
    /** ms:w, app:r     /  ms:w  app:r   // Requests to apply to your selection data. */
    @:native("Requests") var requests:ImVector_ImGuiSelectionRequest;
    /** ms:w  app:r     /                // (If using clipper) Begin: Source item (often the first selected item) must never be clipped: use clipper.IncludeItemByIndex() to ensure it is submitted. */
    @:native("RangeSrcItem") var rangeSrcItem:cpp.Int64;
    /** ms:w, app:r     /                // (If using deletion) Last known SetNextItemSelectionUserData() value for NavId (if part of submitted items). */
    @:native("NavIdItem") var navIdItem:cpp.Int64;
    /** ms:w, app:r     /        app:r   // (If using deletion) Last known selection state for NavId (if part of submitted items). */
    @:native("NavIdSelected") var navIdSelected:Bool;
    /** app:w     /  ms:r          // (If using deletion) Set before EndMultiSelect() to reset ResetSrcItem (e.g. if deleted selection). */
    @:native("RangeSrcReset") var rangeSrcReset:Bool;
    /** ms:w, app:r     /        app:r   // 'int items_count' parameter to BeginMultiSelect() is copied here for convenience, allowing simpler calls to your ApplyRequests handler. Not used internally. */
    @:native("ItemsCount") var itemsCount:Int;
}

@:keep @:structAccess @:native("ImGuiSelectionRequest") @:include("linc_imgui.h")
extern class ImGuiSelectionRequest {
    /** ms:w, app:r     /  ms:w, app:r   // Request type. You'll most often receive 1 Clear + 1 SetRange with a single-item range. */
    @:native("Type") var type:ImGuiSelectionRequestType;
    /** ms:w, app:r     /  ms:w, app:r   // Parameter for SetAll/SetRange requests (true = select, false = unselect) */
    @:native("Selected") var selected:Bool;
    /** /  ms:w  app:r   // Parameter for SetRange request: +1 when RangeFirstItem comes before RangeLastItem, -1 otherwise. Useful if you want to preserve selection order on a backward Shift+Click. */
    @:native("RangeDirection") var rangeDirection:cpp.Int8;
    /** /  ms:w, app:r   // Parameter for SetRange request (this is generally == RangeSrcItem when shift selecting from top to bottom). */
    @:native("RangeFirstItem") var rangeFirstItem:cpp.Int64;
    /** /  ms:w, app:r   // Parameter for SetRange request (this is generally == RangeSrcItem when shift selecting from bottom to top). Inclusive! */
    @:native("RangeLastItem") var rangeLastItem:cpp.Int64;
}

@:keep @:structAccess @:native("ImGuiSelectionBasicStorage") @:include("linc_imgui.h")
extern class ImGuiSelectionBasicStorage {
    /** // Number of selected items, maintained by this helper. */
    @:native("Size") var size:Int;
    /** = false  // GetNextSelectedItem() will return ordered selection (currently implemented by two additional sorts of selection. Could be improved) */
    @:native("PreserveOrder") var preserveOrder:Bool;
    /** = NULL   // User data for use by adapter function        // e.g. selection.UserData = (void*)my_items; */
    @:native("UserData") var userData:cpp.RawPointer<cpp.Void>;
    /** e.g. selection.AdapterIndexToStorageId = [](ImGuiSelectionBasicStorage* self, int idx) { return ((MyItems**)self->UserData)[idx]->ID; }; */
    @:native("AdapterIndexToStorageId") var adapterIndexToStorageId:ImGuiOpaqueCallback;
    /** [Internal] Increasing counter to store selection order */
    @:native("_SelectionOrder") var _SelectionOrder:Int;
    /** [Internal] Selection set. Think of this as similar to e.g. std::set<ImGuiID>. Prefer not accessing directly: iterate with GetNextSelectedItem(). */
    @:native("_Storage") var _Storage:ImGuiStorage;

    /** Apply selection requests coming from BeginMultiSelect() and EndMultiSelect() functions. It uses 'items_count' passed to BeginMultiSelect() */
    inline static function applyRequests(self:cpp.Star<ImGuiSelectionBasicStorage>, msIo:cpp.Star<ImGuiMultiSelectIO>):Void {
        untyped __cpp__('ImGuiSelectionBasicStorage_ApplyRequests({0}, {1})', self, msIo);
    }
    /** Query if an item id is in selection. */
    inline static function contains(self:cpp.Star<ImGuiSelectionBasicStorage>, id:UInt):Bool {
        return untyped __cpp__('ImGuiSelectionBasicStorage_Contains({0}, {1})', self, id);
    }
    /** Clear selection */
    inline static function clear(self:cpp.Star<ImGuiSelectionBasicStorage>):Void {
        untyped __cpp__('ImGuiSelectionBasicStorage_Clear({0})', self);
    }
    /** Swap two selections */
    inline static function swap(self:cpp.Star<ImGuiSelectionBasicStorage>, r:cpp.Star<ImGuiSelectionBasicStorage>):Void {
        untyped __cpp__('ImGuiSelectionBasicStorage_Swap({0}, {1})', self, r);
    }
    /** Add/remove an item from selection (generally done by ApplyRequests() function) */
    inline static function setItemSelected(self:cpp.Star<ImGuiSelectionBasicStorage>, id:UInt, selected:Bool):Void {
        untyped __cpp__('ImGuiSelectionBasicStorage_SetItemSelected({0}, {1}, {2})', self, id, selected);
    }
    /** Iterate selection with 'void* it = NULL; ImGuiID id; while (selection.GetNextSelectedItem(&it, &id)) { ... }' */
    inline static function getNextSelectedItem(self:cpp.Star<ImGuiSelectionBasicStorage>, opaqueIt:cpp.RawPointer<Void>, outId:cpp.Star<UInt>):Bool {
        return untyped __cpp__('ImGuiSelectionBasicStorage_GetNextSelectedItem({0}, {1}, {2})', self, opaqueIt, outId);
    }
    /** Convert index to item id based on provided adapter. */
    inline static function getStorageIdFromIndex(self:cpp.Star<ImGuiSelectionBasicStorage>, idx:Int):UInt {
        return untyped __cpp__('ImGuiSelectionBasicStorage_GetStorageIdFromIndex({0}, {1})', self, idx);
    }
}

@:keep @:structAccess @:native("ImGuiSelectionExternalStorage") @:include("linc_imgui.h")
extern class ImGuiSelectionExternalStorage {
    /** User data for use by adapter function                                // e.g. selection.UserData = (void*)my_items; */
    @:native("UserData") var userData:cpp.RawPointer<cpp.Void>;
    /** e.g. AdapterSetItemSelected = [](ImGuiSelectionExternalStorage* self, int idx, bool selected) { ((MyItems**)self->UserData)[idx]->Selected = selected; } */
    @:native("AdapterSetItemSelected") var adapterSetItemSelected:ImGuiOpaqueCallback;

    /** Apply selection requests by using AdapterSetItemSelected() calls */
    inline static function applyRequests(self:cpp.Star<ImGuiSelectionExternalStorage>, msIo:cpp.Star<ImGuiMultiSelectIO>):Void {
        untyped __cpp__('ImGuiSelectionExternalStorage_ApplyRequests({0}, {1})', self, msIo);
    }
}

@:keep @:structAccess @:native("ImDrawCmd") @:include("linc_imgui.h")
extern class ImDrawCmd {
    /** 4*4  // Clipping rectangle (x1, y1, x2, y2). Subtract ImDrawData->DisplayPos to get clipping rectangle in "viewport" coordinates */
    @:native("ClipRect") var clipRect:ImVec4;
    /** 16   // Reference to a font/texture atlas (where backend called ImTextureData::SetTexID()) or to a user-provided texture ID (via e.g. ImGui::Image() calls). Both will lead to a ImTextureID value. */
    @:native("TexRef") var texRef:ImTextureRef;
    /** 4    // Start offset in vertex buffer. ImGuiBackendFlags_RendererHasVtxOffset: always 0, otherwise may be >0 to support meshes larger than 64K vertices with 16-bit indices. */
    @:native("VtxOffset") var vtxOffset:UInt;
    /** 4    // Start offset in index buffer. */
    @:native("IdxOffset") var idxOffset:UInt;
    /** 4    // Number of indices (multiple of 3) to be rendered as triangles. Vertices are stored in the callee ImDrawList's vtx_buffer[] array, indices in idx_buffer[]. */
    @:native("ElemCount") var elemCount:UInt;
    /** 4-8  // If != NULL, call the function instead of rendering the vertices. clip_rect and texture_id will be set normally. */
    @:native("UserCallback") var userCallback:ImGuiOpaqueCallback;
    /** 4-8  // Callback user data (when UserCallback != NULL). If called AddCallback() with size == 0, this is a copy of the AddCallback() argument. If called AddCallback() with size > 0, this is pointing to a buffer where data is stored. */
    @:native("UserCallbackData") var userCallbackData:cpp.RawPointer<cpp.Void>;
    /** 4 // Size of callback user data when using storage, otherwise 0. */
    @:native("UserCallbackDataSize") var userCallbackDataSize:Int;
    /** 4 // [Internal] Offset of callback user data when using storage, otherwise -1. */
    @:native("UserCallbackDataOffset") var userCallbackDataOffset:Int;

    /** == (TexRef._TexData ? TexRef._TexData->TexID : TexRef._TexID) */
    inline static function getTexID(self:cpp.Star<ImDrawCmd>):cpp.UInt64 {
        return untyped __cpp__('ImDrawCmd_GetTexID({0})', self);
    }
}

@:keep @:structAccess @:native("ImDrawVert") @:include("linc_imgui.h")
extern class ImDrawVert {
    @:native("pos") var pos:ImVec2;
    @:native("uv") var uv:ImVec2;
    @:native("col") var col:UInt;
}

@:keep @:structAccess @:native("ImDrawListSplitter") @:include("linc_imgui.h")
extern class ImDrawListSplitter {
    /** Current channel number (0) */
    @:native("_Current") var _Current:Int;
    /** Number of active channels (1+) */
    @:native("_Count") var _Count:Int;
    /** Draw channels (not resized down so _Count might be < Channels.Size) */
    @:native("_Channels") var _Channels:ImVector_ImDrawChannel;

    /** Do not clear Channels[] so our allocations are reused next frame */
    inline static function clear(self:cpp.Star<ImDrawListSplitter>):Void {
        untyped __cpp__('ImDrawListSplitter_Clear({0})', self);
    }
    inline static function clearFreeMemory(self:cpp.Star<ImDrawListSplitter>):Void {
        untyped __cpp__('ImDrawListSplitter_ClearFreeMemory({0})', self);
    }
    inline static function split(self:cpp.Star<ImDrawListSplitter>, drawList:cpp.Star<ImDrawList>, count:Int):Void {
        untyped __cpp__('ImDrawListSplitter_Split({0}, {1}, {2})', self, drawList, count);
    }
    inline static function merge(self:cpp.Star<ImDrawListSplitter>, drawList:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawListSplitter_Merge({0}, {1})', self, drawList);
    }
    inline static function setCurrentChannel(self:cpp.Star<ImDrawListSplitter>, drawList:cpp.Star<ImDrawList>, channelIdx:Int):Void {
        untyped __cpp__('ImDrawListSplitter_SetCurrentChannel({0}, {1}, {2})', self, drawList, channelIdx);
    }
}

@:keep @:structAccess @:native("ImDrawList") @:include("linc_imgui.h")
extern class ImDrawList {
    /** Draw commands. Typically 1 command = 1 GPU draw call, unless the command is a callback. */
    @:native("CmdBuffer") var cmdBuffer:ImVector_ImDrawCmd;
    /** Index buffer. Each command consume ImDrawCmd::ElemCount of those */
    @:native("IdxBuffer") var idxBuffer:ImVector_ImDrawIdx;
    /** Vertex buffer. */
    @:native("VtxBuffer") var vtxBuffer:ImVector_ImDrawVert;
    /** Flags, you may poke into these to adjust anti-aliasing settings per-primitive. */
    @:native("Flags") var flags:Int;
    /** [Internal] generally == VtxBuffer.Size unless we are past 64K vertices, in which case this gets reset to 0. */
    @:native("_VtxCurrentIdx") var _VtxCurrentIdx:UInt;
    /** Pointer to shared draw data (you can use ImGui::GetDrawListSharedData() to get the one from current ImGui context) */
    @:native("_Data") var _Data:cpp.Star<ImDrawListSharedData>;
    /** [Internal] point within VtxBuffer.Data after each add command (to avoid using the ImVector<> operators too much) */
    @:native("_VtxWritePtr") var _VtxWritePtr:cpp.Star<ImDrawVert>;
    /** [Internal] point within IdxBuffer.Data after each add command (to avoid using the ImVector<> operators too much) */
    @:native("_IdxWritePtr") var _IdxWritePtr:cpp.Star<cpp.UInt16>;
    /** [Internal] current path building */
    @:native("_Path") var _Path:ImVector_ImVec2;
    // (field not bound: _CmdHeader: ImDrawCmdHeader)
    /** [Internal] for channels api (note: prefer using your own persistent instance of ImDrawListSplitter!) */
    @:native("_Splitter") var _Splitter:ImDrawListSplitter;
    /** [Internal] */
    @:native("_ClipRectStack") var _ClipRectStack:ImVector_ImVec4;
    /** [Internal] */
    @:native("_TextureStack") var _TextureStack:ImVector_ImTextureRef;
    /** [Internal] */
    @:native("_CallbacksDataBuf") var _CallbacksDataBuf:ImVector_ImU8;
    /** [Internal] anti-alias fringe is scaled by this value, this helps to keep things sharp while zooming at vertex buffer content */
    @:native("_FringeScale") var _FringeScale:cpp.Float32;
    /** Pointer to owner window's name for debugging */
    @:native("_OwnerName") var _OwnerName:cpp.ConstCharStar;

    /** Render-level scissoring. This is passed down to your render function but not used for CPU-side coarse clipping. Prefer using higher-level ImGui::PushClipRect() to affect logic (hit-testing and widget culling) */
    inline static function pushClipRect(self:cpp.Star<ImDrawList>, clipRectMin:ImVec2, clipRectMax:ImVec2, intersectWithCurrentClipRect:Bool = false):Void {
        untyped __cpp__('ImDrawList_PushClipRect({0}, {1}, {2}, {3})', self, clipRectMin, clipRectMax, intersectWithCurrentClipRect);
    }
    inline static function pushClipRectFullScreen(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList_PushClipRectFullScreen({0})', self);
    }
    inline static function popClipRect(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList_PopClipRect({0})', self);
    }
    inline static function pushTexture(self:cpp.Star<ImDrawList>, texRef:ImTextureRef):Void {
        untyped __cpp__('ImDrawList_PushTexture({0}, {1})', self, texRef);
    }
    inline static function popTexture(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList_PopTexture({0})', self);
    }
    inline static function getClipRectMin(self:cpp.Star<ImDrawList>):ImVec2 {
        return untyped __cpp__('ImDrawList_GetClipRectMin({0})', self);
    }
    inline static function getClipRectMax(self:cpp.Star<ImDrawList>):ImVec2 {
        return untyped __cpp__('ImDrawList_GetClipRectMax({0})', self);
    }
    inline static function addLineEx(self:cpp.Star<ImDrawList>, p1:ImVec2, p2:ImVec2, col:UInt, thickness:cpp.Float32 = 1.0):Void {
        untyped __cpp__('ImDrawList_AddLineEx({0}, {1}, {2}, {3}, {4})', self, p1, p2, col, thickness);
    }
    /** Implied thickness = 1.0f */
    inline static function addLine(self:cpp.Star<ImDrawList>, p1:ImVec2, p2:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddLine({0}, {1}, {2}, {3})', self, p1, p2, col);
    }
    inline static function addLineHEx(self:cpp.Star<ImDrawList>, minX:cpp.Float32, maxX:cpp.Float32, y:cpp.Float32, col:UInt, thickness:cpp.Float32 = 1.0):Void {
        untyped __cpp__('ImDrawList_AddLineHEx({0}, {1}, {2}, {3}, {4}, {5})', self, minX, maxX, y, col, thickness);
    }
    /** Implied thickness = 1.0f */
    inline static function addLineH(self:cpp.Star<ImDrawList>, minX:cpp.Float32, maxX:cpp.Float32, y:cpp.Float32, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddLineH({0}, {1}, {2}, {3}, {4})', self, minX, maxX, y, col);
    }
    inline static function addLineVEx(self:cpp.Star<ImDrawList>, x:cpp.Float32, minY:cpp.Float32, maxY:cpp.Float32, col:UInt, thickness:cpp.Float32 = 1.0):Void {
        untyped __cpp__('ImDrawList_AddLineVEx({0}, {1}, {2}, {3}, {4}, {5})', self, x, minY, maxY, col, thickness);
    }
    /** Implied thickness = 1.0f */
    inline static function addLineV(self:cpp.Star<ImDrawList>, x:cpp.Float32, minY:cpp.Float32, maxY:cpp.Float32, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddLineV({0}, {1}, {2}, {3}, {4})', self, x, minY, maxY, col);
    }
    /** a: upper-left, b: lower-right (== upper-left + size) */
    inline static function addRectEx(self:cpp.Star<ImDrawList>, pMin:ImVec2, pMax:ImVec2, col:UInt, rounding:cpp.Float32 = 0.0, thickness:cpp.Float32 = 1.0, flags:Int = 0):Void {
        untyped __cpp__('ImDrawList_AddRectEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', self, pMin, pMax, col, rounding, thickness, flags);
    }
    /** Implied rounding = 0.0f, thickness = 1.0f, flags = 0 */
    inline static function addRect(self:cpp.Star<ImDrawList>, pMin:ImVec2, pMax:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddRect({0}, {1}, {2}, {3})', self, pMin, pMax, col);
    }
    /** a: upper-left, b: lower-right (== upper-left + size) */
    inline static function addRectFilledEx(self:cpp.Star<ImDrawList>, pMin:ImVec2, pMax:ImVec2, col:UInt, rounding:cpp.Float32 = 0.0, flags:Int = 0):Void {
        untyped __cpp__('ImDrawList_AddRectFilledEx({0}, {1}, {2}, {3}, {4}, {5})', self, pMin, pMax, col, rounding, flags);
    }
    /** Implied rounding = 0.0f, flags = 0 */
    inline static function addRectFilled(self:cpp.Star<ImDrawList>, pMin:ImVec2, pMax:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddRectFilled({0}, {1}, {2}, {3})', self, pMin, pMax, col);
    }
    inline static function addRectFilledMultiColor(self:cpp.Star<ImDrawList>, pMin:ImVec2, pMax:ImVec2, colUprLeft:UInt, colUprRight:UInt, colBotRight:UInt, colBotLeft:UInt):Void {
        untyped __cpp__('ImDrawList_AddRectFilledMultiColor({0}, {1}, {2}, {3}, {4}, {5}, {6})', self, pMin, pMax, colUprLeft, colUprRight, colBotRight, colBotLeft);
    }
    inline static function addQuadEx(self:cpp.Star<ImDrawList>, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:UInt, thickness:cpp.Float32 = 1.0):Void {
        untyped __cpp__('ImDrawList_AddQuadEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', self, p1, p2, p3, p4, col, thickness);
    }
    /** Implied thickness = 1.0f */
    inline static function addQuad(self:cpp.Star<ImDrawList>, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddQuad({0}, {1}, {2}, {3}, {4}, {5})', self, p1, p2, p3, p4, col);
    }
    inline static function addQuadFilled(self:cpp.Star<ImDrawList>, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddQuadFilled({0}, {1}, {2}, {3}, {4}, {5})', self, p1, p2, p3, p4, col);
    }
    inline static function addTriangleEx(self:cpp.Star<ImDrawList>, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:UInt, thickness:cpp.Float32 = 1.0):Void {
        untyped __cpp__('ImDrawList_AddTriangleEx({0}, {1}, {2}, {3}, {4}, {5})', self, p1, p2, p3, col, thickness);
    }
    /** Implied thickness = 1.0f */
    inline static function addTriangle(self:cpp.Star<ImDrawList>, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddTriangle({0}, {1}, {2}, {3}, {4})', self, p1, p2, p3, col);
    }
    inline static function addTriangleFilled(self:cpp.Star<ImDrawList>, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddTriangleFilled({0}, {1}, {2}, {3}, {4})', self, p1, p2, p3, col);
    }
    inline static function addCircleEx(self:cpp.Star<ImDrawList>, center:ImVec2, radius:cpp.Float32, col:UInt, numSegments:Int = 0, thickness:cpp.Float32 = 1.0):Void {
        untyped __cpp__('ImDrawList_AddCircleEx({0}, {1}, {2}, {3}, {4}, {5})', self, center, radius, col, numSegments, thickness);
    }
    /** Implied num_segments = 0, thickness = 1.0f */
    inline static function addCircle(self:cpp.Star<ImDrawList>, center:ImVec2, radius:cpp.Float32, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddCircle({0}, {1}, {2}, {3})', self, center, radius, col);
    }
    inline static function addCircleFilled(self:cpp.Star<ImDrawList>, center:ImVec2, radius:cpp.Float32, col:UInt, numSegments:Int = 0):Void {
        untyped __cpp__('ImDrawList_AddCircleFilled({0}, {1}, {2}, {3}, {4})', self, center, radius, col, numSegments);
    }
    inline static function addNgonEx(self:cpp.Star<ImDrawList>, center:ImVec2, radius:cpp.Float32, col:UInt, numSegments:Int, thickness:cpp.Float32 = 1.0):Void {
        untyped __cpp__('ImDrawList_AddNgonEx({0}, {1}, {2}, {3}, {4}, {5})', self, center, radius, col, numSegments, thickness);
    }
    /** Implied thickness = 1.0f */
    inline static function addNgon(self:cpp.Star<ImDrawList>, center:ImVec2, radius:cpp.Float32, col:UInt, numSegments:Int):Void {
        untyped __cpp__('ImDrawList_AddNgon({0}, {1}, {2}, {3}, {4})', self, center, radius, col, numSegments);
    }
    inline static function addNgonFilled(self:cpp.Star<ImDrawList>, center:ImVec2, radius:cpp.Float32, col:UInt, numSegments:Int):Void {
        untyped __cpp__('ImDrawList_AddNgonFilled({0}, {1}, {2}, {3}, {4})', self, center, radius, col, numSegments);
    }
    inline static function addEllipseEx(self:cpp.Star<ImDrawList>, center:ImVec2, radius:ImVec2, col:UInt, rot:cpp.Float32 = 0.0, numSegments:Int = 0, thickness:cpp.Float32 = 1.0):Void {
        untyped __cpp__('ImDrawList_AddEllipseEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', self, center, radius, col, rot, numSegments, thickness);
    }
    /** Implied rot = 0.0f, num_segments = 0, thickness = 1.0f */
    inline static function addEllipse(self:cpp.Star<ImDrawList>, center:ImVec2, radius:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddEllipse({0}, {1}, {2}, {3})', self, center, radius, col);
    }
    inline static function addEllipseFilledEx(self:cpp.Star<ImDrawList>, center:ImVec2, radius:ImVec2, col:UInt, rot:cpp.Float32 = 0.0, numSegments:Int = 0):Void {
        untyped __cpp__('ImDrawList_AddEllipseFilledEx({0}, {1}, {2}, {3}, {4}, {5})', self, center, radius, col, rot, numSegments);
    }
    /** Implied rot = 0.0f, num_segments = 0 */
    inline static function addEllipseFilled(self:cpp.Star<ImDrawList>, center:ImVec2, radius:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddEllipseFilled({0}, {1}, {2}, {3})', self, center, radius, col);
    }
    inline static function addTextEx(self:cpp.Star<ImDrawList>, pos:ImVec2, col:UInt, textBegin:cpp.ConstCharStar, textEnd:cpp.ConstCharStar = null):Void {
        untyped __cpp__('ImDrawList_AddTextEx({0}, {1}, {2}, {3}, {4})', self, pos, col, textBegin, textEnd);
    }
    /** Implied text_end = NULL */
    inline static function addText(self:cpp.Star<ImDrawList>, pos:ImVec2, col:UInt, textBegin:cpp.ConstCharStar):Void {
        untyped __cpp__('ImDrawList_AddText({0}, {1}, {2}, {3})', self, pos, col, textBegin);
    }
    inline static function addTextImFontPtrEx(self:cpp.Star<ImDrawList>, font:cpp.Star<ImFont>, fontSize:cpp.Float32, pos:ImVec2, col:UInt, textBegin:cpp.ConstCharStar, textEnd:cpp.ConstCharStar = null, wrapWidth:cpp.Float32 = 0.0, cpuFineClipRect:cpp.Star<ImVec4> = null):Void {
        untyped __cpp__('ImDrawList_AddTextImFontPtrEx({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})', self, font, fontSize, pos, col, textBegin, textEnd, wrapWidth, cpuFineClipRect);
    }
    /** Implied text_end = NULL, wrap_width = 0.0f, cpu_fine_clip_rect = NULL */
    inline static function addTextImFontPtr(self:cpp.Star<ImDrawList>, font:cpp.Star<ImFont>, fontSize:cpp.Float32, pos:ImVec2, col:UInt, textBegin:cpp.ConstCharStar):Void {
        untyped __cpp__('ImDrawList_AddTextImFontPtr({0}, {1}, {2}, {3}, {4}, {5})', self, font, fontSize, pos, col, textBegin);
    }
    /** Cubic Bezier (4 control points) */
    inline static function addBezierCubic(self:cpp.Star<ImDrawList>, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:UInt, thickness:cpp.Float32, numSegments:Int = 0):Void {
        untyped __cpp__('ImDrawList_AddBezierCubic({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})', self, p1, p2, p3, p4, col, thickness, numSegments);
    }
    /** Quadratic Bezier (3 control points) */
    inline static function addBezierQuadratic(self:cpp.Star<ImDrawList>, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:UInt, thickness:cpp.Float32, numSegments:Int = 0):Void {
        untyped __cpp__('ImDrawList_AddBezierQuadratic({0}, {1}, {2}, {3}, {4}, {5}, {6})', self, p1, p2, p3, col, thickness, numSegments);
    }
    inline static function addPolyline(self:cpp.Star<ImDrawList>, points:cpp.Star<ImVec2>, numPoints:Int, col:UInt, thickness:cpp.Float32, flags:Int = 0):Void {
        untyped __cpp__('ImDrawList_AddPolyline({0}, {1}, {2}, {3}, {4}, {5})', self, points, numPoints, col, thickness, flags);
    }
    inline static function addConvexPolyFilled(self:cpp.Star<ImDrawList>, points:cpp.Star<ImVec2>, numPoints:Int, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddConvexPolyFilled({0}, {1}, {2}, {3})', self, points, numPoints, col);
    }
    inline static function addConcavePolyFilled(self:cpp.Star<ImDrawList>, points:cpp.Star<ImVec2>, numPoints:Int, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddConcavePolyFilled({0}, {1}, {2}, {3})', self, points, numPoints, col);
    }
    inline static function addImageEx(self:cpp.Star<ImDrawList>, texRef:ImTextureRef, pMin:ImVec2, pMax:ImVec2, uvMin:ImVec2, uvMax:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddImageEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', self, texRef, pMin, pMax, uvMin, uvMax, col);
    }
    /** Implied uv_min = ImVec2(0, 0), uv_max = ImVec2(1, 1), col = IM_COL32_WHITE */
    inline static function addImage(self:cpp.Star<ImDrawList>, texRef:ImTextureRef, pMin:ImVec2, pMax:ImVec2):Void {
        untyped __cpp__('ImDrawList_AddImage({0}, {1}, {2}, {3})', self, texRef, pMin, pMax);
    }
    inline static function addImageQuadEx(self:cpp.Star<ImDrawList>, texRef:ImTextureRef, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv1:ImVec2, uv2:ImVec2, uv3:ImVec2, uv4:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_AddImageQuadEx({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, {10})', self, texRef, p1, p2, p3, p4, uv1, uv2, uv3, uv4, col);
    }
    /** Implied uv1 = ImVec2(0, 0), uv2 = ImVec2(1, 0), uv3 = ImVec2(1, 1), uv4 = ImVec2(0, 1), col = IM_COL32_WHITE */
    inline static function addImageQuad(self:cpp.Star<ImDrawList>, texRef:ImTextureRef, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2):Void {
        untyped __cpp__('ImDrawList_AddImageQuad({0}, {1}, {2}, {3}, {4}, {5})', self, texRef, p1, p2, p3, p4);
    }
    inline static function addImageRounded(self:cpp.Star<ImDrawList>, texRef:ImTextureRef, pMin:ImVec2, pMax:ImVec2, uvMin:ImVec2, uvMax:ImVec2, col:UInt, rounding:cpp.Float32, flags:Int = 0):Void {
        untyped __cpp__('ImDrawList_AddImageRounded({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})', self, texRef, pMin, pMax, uvMin, uvMax, col, rounding, flags);
    }
    inline static function pathClear(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList_PathClear({0})', self);
    }
    inline static function pathLineTo(self:cpp.Star<ImDrawList>, pos:ImVec2):Void {
        untyped __cpp__('ImDrawList_PathLineTo({0}, {1})', self, pos);
    }
    inline static function pathLineToMergeDuplicate(self:cpp.Star<ImDrawList>, pos:ImVec2):Void {
        untyped __cpp__('ImDrawList_PathLineToMergeDuplicate({0}, {1})', self, pos);
    }
    inline static function pathFillConvex(self:cpp.Star<ImDrawList>, col:UInt):Void {
        untyped __cpp__('ImDrawList_PathFillConvex({0}, {1})', self, col);
    }
    inline static function pathFillConcave(self:cpp.Star<ImDrawList>, col:UInt):Void {
        untyped __cpp__('ImDrawList_PathFillConcave({0}, {1})', self, col);
    }
    inline static function pathStroke(self:cpp.Star<ImDrawList>, col:UInt, thickness:cpp.Float32 = 1.0, flags:Int = 0):Void {
        untyped __cpp__('ImDrawList_PathStroke({0}, {1}, {2}, {3})', self, col, thickness, flags);
    }
    inline static function pathArcTo(self:cpp.Star<ImDrawList>, center:ImVec2, radius:cpp.Float32, aMin:cpp.Float32, aMax:cpp.Float32, numSegments:Int = 0):Void {
        untyped __cpp__('ImDrawList_PathArcTo({0}, {1}, {2}, {3}, {4}, {5})', self, center, radius, aMin, aMax, numSegments);
    }
    /** Use precomputed angles for a 12 steps circle */
    inline static function pathArcToFast(self:cpp.Star<ImDrawList>, center:ImVec2, radius:cpp.Float32, aMinOf12:Int, aMaxOf12:Int):Void {
        untyped __cpp__('ImDrawList_PathArcToFast({0}, {1}, {2}, {3}, {4})', self, center, radius, aMinOf12, aMaxOf12);
    }
    /** Ellipse */
    inline static function pathEllipticalArcToEx(self:cpp.Star<ImDrawList>, center:ImVec2, radius:ImVec2, rot:cpp.Float32, aMin:cpp.Float32, aMax:cpp.Float32, numSegments:Int = 0):Void {
        untyped __cpp__('ImDrawList_PathEllipticalArcToEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', self, center, radius, rot, aMin, aMax, numSegments);
    }
    /** Implied num_segments = 0 */
    inline static function pathEllipticalArcTo(self:cpp.Star<ImDrawList>, center:ImVec2, radius:ImVec2, rot:cpp.Float32, aMin:cpp.Float32, aMax:cpp.Float32):Void {
        untyped __cpp__('ImDrawList_PathEllipticalArcTo({0}, {1}, {2}, {3}, {4}, {5})', self, center, radius, rot, aMin, aMax);
    }
    /** Cubic Bezier (4 control points) */
    inline static function pathBezierCubicCurveTo(self:cpp.Star<ImDrawList>, p2:ImVec2, p3:ImVec2, p4:ImVec2, numSegments:Int = 0):Void {
        untyped __cpp__('ImDrawList_PathBezierCubicCurveTo({0}, {1}, {2}, {3}, {4})', self, p2, p3, p4, numSegments);
    }
    /** Quadratic Bezier (3 control points) */
    inline static function pathBezierQuadraticCurveTo(self:cpp.Star<ImDrawList>, p2:ImVec2, p3:ImVec2, numSegments:Int = 0):Void {
        untyped __cpp__('ImDrawList_PathBezierQuadraticCurveTo({0}, {1}, {2}, {3})', self, p2, p3, numSegments);
    }
    inline static function pathRect(self:cpp.Star<ImDrawList>, rectMin:ImVec2, rectMax:ImVec2, rounding:cpp.Float32 = 0.0, flags:Int = 0):Void {
        untyped __cpp__('ImDrawList_PathRect({0}, {1}, {2}, {3}, {4})', self, rectMin, rectMax, rounding, flags);
    }
    inline static function addCallbackEx(self:cpp.Star<ImDrawList>, callback:ImGuiOpaqueCallback, userdata:cpp.RawPointer<cpp.Void> = null, userdataSize:cpp.SizeT = 0):Void {
        untyped __cpp__('ImDrawList_AddCallbackEx({0}, (ImDrawCallback){1}, {2}, {3})', self, callback, userdata, userdataSize);
    }
    /** Implied userdata = NULL, userdata_size = 0 */
    inline static function addCallback(self:cpp.Star<ImDrawList>, callback:ImGuiOpaqueCallback):Void {
        untyped __cpp__('ImDrawList_AddCallback({0}, (ImDrawCallback){1})', self, callback);
    }
    /** This is useful if you need to forcefully create a new draw call (to allow for dependent rendering / blending). Otherwise primitives are merged into the same draw-call as much as possible */
    inline static function addDrawCmd(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList_AddDrawCmd({0})', self);
    }
    /** Create a clone of the CmdBuffer/IdxBuffer/VtxBuffer. For multi-threaded rendering, consider using `imgui_threaded_rendering` from https://github.com/ocornut/imgui_club instead. */
    inline static function cloneOutput(self:cpp.Star<ImDrawList>):cpp.Star<ImDrawList> {
        return untyped __cpp__('ImDrawList_CloneOutput({0})', self);
    }
    inline static function channelsSplit(self:cpp.Star<ImDrawList>, count:Int):Void {
        untyped __cpp__('ImDrawList_ChannelsSplit({0}, {1})', self, count);
    }
    inline static function channelsMerge(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList_ChannelsMerge({0})', self);
    }
    inline static function channelsSetCurrent(self:cpp.Star<ImDrawList>, n:Int):Void {
        untyped __cpp__('ImDrawList_ChannelsSetCurrent({0}, {1})', self, n);
    }
    inline static function primReserve(self:cpp.Star<ImDrawList>, idxCount:Int, vtxCount:Int):Void {
        untyped __cpp__('ImDrawList_PrimReserve({0}, {1}, {2})', self, idxCount, vtxCount);
    }
    inline static function primUnreserve(self:cpp.Star<ImDrawList>, idxCount:Int, vtxCount:Int):Void {
        untyped __cpp__('ImDrawList_PrimUnreserve({0}, {1}, {2})', self, idxCount, vtxCount);
    }
    /** Axis aligned rectangle (composed of two triangles) */
    inline static function primRect(self:cpp.Star<ImDrawList>, a:ImVec2, b:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_PrimRect({0}, {1}, {2}, {3})', self, a, b, col);
    }
    inline static function primRectUV(self:cpp.Star<ImDrawList>, a:ImVec2, b:ImVec2, uvA:ImVec2, uvB:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_PrimRectUV({0}, {1}, {2}, {3}, {4}, {5})', self, a, b, uvA, uvB, col);
    }
    inline static function primQuadUV(self:cpp.Star<ImDrawList>, a:ImVec2, b:ImVec2, c:ImVec2, d:ImVec2, uvA:ImVec2, uvB:ImVec2, uvC:ImVec2, uvD:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_PrimQuadUV({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9})', self, a, b, c, d, uvA, uvB, uvC, uvD, col);
    }
    inline static function primWriteVtx(self:cpp.Star<ImDrawList>, pos:ImVec2, uv:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_PrimWriteVtx({0}, {1}, {2}, {3})', self, pos, uv, col);
    }
    inline static function primWriteIdx(self:cpp.Star<ImDrawList>, idx:cpp.UInt16):Void {
        untyped __cpp__('ImDrawList_PrimWriteIdx({0}, {1})', self, idx);
    }
    /** Write vertex with unique index */
    inline static function primVtx(self:cpp.Star<ImDrawList>, pos:ImVec2, uv:ImVec2, col:UInt):Void {
        untyped __cpp__('ImDrawList_PrimVtx({0}, {1}, {2}, {3})', self, pos, uv, col);
    }
    inline static function _SetDrawListSharedData(self:cpp.Star<ImDrawList>, data:cpp.Star<ImDrawListSharedData>):Void {
        untyped __cpp__('ImDrawList__SetDrawListSharedData({0}, {1})', self, data);
    }
    inline static function _ResetForNewFrame(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList__ResetForNewFrame({0})', self);
    }
    inline static function _ClearFreeMemory(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList__ClearFreeMemory({0})', self);
    }
    inline static function _PopUnusedDrawCmd(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList__PopUnusedDrawCmd({0})', self);
    }
    inline static function _TryMergeDrawCmds(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList__TryMergeDrawCmds({0})', self);
    }
    inline static function _OnChangedClipRect(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList__OnChangedClipRect({0})', self);
    }
    inline static function _OnChangedTexture(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList__OnChangedTexture({0})', self);
    }
    inline static function _OnChangedVtxOffset(self:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawList__OnChangedVtxOffset({0})', self);
    }
    inline static function _SetTexture(self:cpp.Star<ImDrawList>, texRef:ImTextureRef):Void {
        untyped __cpp__('ImDrawList__SetTexture({0}, {1})', self, texRef);
    }
    inline static function _CalcCircleAutoSegmentCount(self:cpp.Star<ImDrawList>, radius:cpp.Float32):Int {
        return untyped __cpp__('ImDrawList__CalcCircleAutoSegmentCount({0}, {1})', self, radius);
    }
    inline static function _PathArcToFastEx(self:cpp.Star<ImDrawList>, center:ImVec2, radius:cpp.Float32, aMinSample:Int, aMaxSample:Int, aStep:Int):Void {
        untyped __cpp__('ImDrawList__PathArcToFastEx({0}, {1}, {2}, {3}, {4}, {5})', self, center, radius, aMinSample, aMaxSample, aStep);
    }
    inline static function _PathArcToN(self:cpp.Star<ImDrawList>, center:ImVec2, radius:cpp.Float32, aMin:cpp.Float32, aMax:cpp.Float32, numSegments:Int):Void {
        untyped __cpp__('ImDrawList__PathArcToN({0}, {1}, {2}, {3}, {4}, {5})', self, center, radius, aMin, aMax, numSegments);
    }
}

@:keep @:structAccess @:native("ImDrawData") @:include("linc_imgui.h")
extern class ImDrawData {
    /** Only valid after Render() is called and before the next NewFrame() is called. */
    @:native("Valid") var valid:Bool;
    /** == CmdLists.Size. (OBSOLETE: exists for legacy reasons). Number of ImDrawList* to render. */
    @:native("CmdListsCount") var cmdListsCount:Int;
    /** For convenience, sum of all ImDrawList's IdxBuffer.Size */
    @:native("TotalIdxCount") var totalIdxCount:Int;
    /** For convenience, sum of all ImDrawList's VtxBuffer.Size */
    @:native("TotalVtxCount") var totalVtxCount:Int;
    /** Array of ImDrawList* to render. The ImDrawLists are owned by ImGuiContext and only pointed to from here. */
    @:native("CmdLists") var cmdLists:ImVector_ImDrawListPtr;
    /** Top-left position of the viewport to render (== top-left of the orthogonal projection matrix to use) (== GetMainViewport()->Pos for the main viewport, == (0.0) in most single-viewport applications) */
    @:native("DisplayPos") var displayPos:ImVec2;
    /** Size of the viewport to render (== GetMainViewport()->Size for the main viewport, == io.DisplaySize in most single-viewport applications) */
    @:native("DisplaySize") var displaySize:ImVec2;
    /** Amount of pixels for each unit of DisplaySize. Copied from viewport->FramebufferScale (== io.DisplayFramebufferScale for main viewport). Generally (1,1) on normal display, (2,2) on OSX with Retina display. */
    @:native("FramebufferScale") var framebufferScale:ImVec2;
    /** Viewport carrying the ImDrawData instance, might be of use to the renderer (generally not). */
    @:native("OwnerViewport") var ownerViewport:cpp.Star<ImGuiViewport>;
    /** List of textures to update. Most of the times the list is shared by all ImDrawData, has only 1 texture and it doesn't need any update. This almost always points to ImGui::GetPlatformIO().Textures[]. May be overridden or set to NULL if you want to manually update textures. */
    @:native("Textures") var textures:cpp.Star<ImVector_ImTextureDataPtr>;

    inline static function clear(self:cpp.Star<ImDrawData>):Void {
        untyped __cpp__('ImDrawData_Clear({0})', self);
    }
    /** Helper to add an external draw list into an existing ImDrawData. */
    inline static function addDrawList(self:cpp.Star<ImDrawData>, drawList:cpp.Star<ImDrawList>):Void {
        untyped __cpp__('ImDrawData_AddDrawList({0}, {1})', self, drawList);
    }
    /** Helper to convert all buffers from indexed to non-indexed, in case you cannot render indexed. Note: this is slow and most likely a waste of resources. Always prefer indexed rendering! */
    inline static function deIndexAllBuffers(self:cpp.Star<ImDrawData>):Void {
        untyped __cpp__('ImDrawData_DeIndexAllBuffers({0})', self);
    }
    /** Helper to scale the ClipRect field of each ImDrawCmd. Use if your final output buffer is at a different scale than Dear ImGui expects, or if there is a difference between your window resolution and framebuffer resolution. */
    inline static function scaleClipRects(self:cpp.Star<ImDrawData>, fbScale:ImVec2):Void {
        untyped __cpp__('ImDrawData_ScaleClipRects({0}, {1})', self, fbScale);
    }
}

@:keep @:structAccess @:native("ImTextureRect") @:include("linc_imgui.h")
extern class ImTextureRect {
    /** Upper-left coordinates of rectangle to update */
    @:native("x") var x:cpp.UInt16;
    /** Upper-left coordinates of rectangle to update */
    @:native("y") var y:cpp.UInt16;
    /** Size of rectangle to update (in pixels) */
    @:native("w") var w:cpp.UInt16;
    /** Size of rectangle to update (in pixels) */
    @:native("h") var h:cpp.UInt16;
}

@:keep @:structAccess @:native("ImTextureData") @:include("linc_imgui.h")
extern class ImTextureData {
    /** w    -   // [DEBUG] Sequential index to facilitate identifying a texture when debugging/printing. Unique per atlas. */
    @:native("UniqueID") var uniqueID:Int;
    /** rw   rw  // ImTextureStatus_OK/_WantCreate/_WantUpdates/_WantDestroy. Always use SetStatus() to modify! */
    @:native("Status") var status:ImTextureStatus;
    /** -    rw  // Convenience storage for backend. Some backends may have enough with TexID. */
    @:native("BackendUserData") var backendUserData:cpp.RawPointer<cpp.Void>;
    /** r    w   // Backend-specific texture identifier. Always use SetTexID() to modify! The identifier will stored in ImDrawCmd::GetTexID() and passed to backend's RenderDrawData function. */
    @:native("TexID") var texID:cpp.UInt64;
    /** w    r   // ImTextureFormat_RGBA32 (default) or ImTextureFormat_Alpha8 */
    @:native("Format") var format:ImTextureFormat;
    /** w    r   // Texture width */
    @:native("Width") var width:Int;
    /** w    r   // Texture height */
    @:native("Height") var height:Int;
    /** w    r   // 4 or 1 */
    @:native("BytesPerPixel") var bytesPerPixel:Int;
    /** w    r   // Pointer to buffer holding 'Width*Height' pixels and 'Width*Height*BytesPerPixels' bytes. */
    @:native("Pixels") var pixels:cpp.Star<cpp.UInt8>;
    /** w    r   // Bounding box encompassing all past and queued Updates[]. */
    @:native("UsedRect") var usedRect:ImTextureRect;
    /** w    r   // Bounding box encompassing all queued Updates[]. */
    @:native("UpdateRect") var updateRect:ImTextureRect;
    /** w    r   // Array of individual updates. */
    @:native("Updates") var updates:ImVector_ImTextureRect;
    /** w    r   // In order to facilitate handling Status==WantDestroy in some backend: this is a count successive frames where the texture was not used. Always >0 when Status==WantDestroy. */
    @:native("UnusedFrames") var unusedFrames:Int;
    /** w    r   // Number of contexts using this texture. Used during backend shutdown. */
    @:native("RefCount") var refCount:cpp.UInt16;
    /** w    r   // Tell whether our texture data is known to use colors (rather than just white + alpha). */
    @:native("UseColors") var useColors:Bool;
    /** rw   -   // [Internal] Queued to set ImTextureStatus_WantDestroy next frame. May still be used in the current frame. */
    @:native("WantDestroyNextFrame") var wantDestroyNextFrame:Bool;

    inline static function create(self:cpp.Star<ImTextureData>, format:ImTextureFormat, w:Int, h:Int):Void {
        untyped __cpp__('ImTextureData_Create({0}, (ImTextureFormat){1}, {2}, {3})', self, format, w, h);
    }
    inline static function destroyPixels(self:cpp.Star<ImTextureData>):Void {
        untyped __cpp__('ImTextureData_DestroyPixels({0})', self);
    }
    inline static function getPixels(self:cpp.Star<ImTextureData>):cpp.RawPointer<cpp.Void> {
        return untyped __cpp__('ImTextureData_GetPixels({0})', self);
    }
    inline static function getPixelsAt(self:cpp.Star<ImTextureData>, x:Int, y:Int):cpp.RawPointer<cpp.Void> {
        return untyped __cpp__('ImTextureData_GetPixelsAt({0}, {1}, {2})', self, x, y);
    }
    inline static function getSizeInBytes(self:cpp.Star<ImTextureData>):Int {
        return untyped __cpp__('ImTextureData_GetSizeInBytes({0})', self);
    }
    inline static function getPitch(self:cpp.Star<ImTextureData>):Int {
        return untyped __cpp__('ImTextureData_GetPitch({0})', self);
    }
    inline static function getTexRef(self:cpp.Star<ImTextureData>):ImTextureRef {
        return untyped __cpp__('ImTextureData_GetTexRef({0})', self);
    }
    inline static function getTexID(self:cpp.Star<ImTextureData>):cpp.UInt64 {
        return untyped __cpp__('ImTextureData_GetTexID({0})', self);
    }
    inline static function setTexID(self:cpp.Star<ImTextureData>, texId:cpp.UInt64):Void {
        untyped __cpp__('ImTextureData_SetTexID({0}, {1})', self, texId);
    }
    inline static function setStatus(self:cpp.Star<ImTextureData>, status:ImTextureStatus):Void {
        untyped __cpp__('ImTextureData_SetStatus({0}, (ImTextureStatus){1})', self, status);
    }
}

@:keep @:structAccess @:native("ImFontConfig") @:include("linc_imgui.h")
extern class ImFontConfig {
    // (array field not bound: Name)
    /** // TTF/OTF data */
    @:native("FontData") var fontData:cpp.RawPointer<cpp.Void>;
    /** // TTF/OTF data size */
    @:native("FontDataSize") var fontDataSize:Int;
    /** true     // TTF/OTF data ownership taken by the owner ImFontAtlas (will delete memory itself). SINCE 1.92, THE DATA NEEDS TO PERSIST FOR WHOLE DURATION OF ATLAS. */
    @:native("FontDataOwnedByAtlas") var fontDataOwnedByAtlas:Bool;
    /** false    // Merge into previous ImFont, so you can combine multiple inputs font into one ImFont (e.g. ASCII font + icons + Japanese glyphs). You may want to use GlyphOffset.y when merge font of different heights. */
    @:native("MergeMode") var mergeMode:Bool;
    /** false    // Align every glyph AdvanceX to pixel boundaries. Prevents fractional font size from working correctly! Useful e.g. if you are merging a non-pixel aligned font with the default font. If enabled, OversampleH/V will default to 1. */
    @:native("PixelSnapH") var pixelSnapH:Bool;
    /** 0 (2)    // Rasterize at higher quality for sub-pixel positioning. 0 == auto == 1 or 2 depending on size. Note the difference between 2 and 3 is minimal. You can reduce this to 1 for large glyphs save memory. Read https://github.com/nothings/stb/blob/master/tests/oversample/README.md for details. */
    @:native("OversampleH") var oversampleH:cpp.Int8;
    /** 0 (1)    // Rasterize at higher quality for sub-pixel positioning. 0 == auto == 1. This is not really useful as we don't use sub-pixel positions on the Y axis. */
    @:native("OversampleV") var oversampleV:cpp.Int8;
    /** 0        // Explicitly specify Unicode codepoint of ellipsis character. When fonts are being merged first specified ellipsis will be used. */
    @:native("EllipsisChar") var ellipsisChar:cpp.UInt16;
    /** // Output size in pixels for rasterizer (more or less maps to the resulting font height). */
    @:native("SizePixels") var sizePixels:cpp.Float32;
    /** NULL     // *LEGACY* THE ARRAY DATA NEEDS TO PERSIST AS LONG AS THE FONT IS ALIVE. Pointer to a user-provided list of Unicode range (2 value per range, values are inclusive, zero-terminated list). */
    @:native("GlyphRanges") var glyphRanges:cpp.Star<cpp.UInt16>;
    /** NULL     // Pointer to a small user-provided list of Unicode ranges (2 value per range, values are inclusive, zero-terminated list). This is very close to GlyphRanges[] but designed to exclude ranges from a font source, when merging fonts with overlapping glyphs. Use "Input Glyphs Overlap Detection Tool" to find about your overlapping ranges. */
    @:native("GlyphExcludeRanges") var glyphExcludeRanges:cpp.Star<cpp.UInt16>;
    /** 0, 0     // Offset (in pixels) all glyphs from this font input. Absolute value for default size, other sizes will scale this value. */
    @:native("GlyphOffset") var glyphOffset:ImVec2;
    /** 0        // Minimum AdvanceX for glyphs, set Min to align font icons, set both Min/Max to enforce mono-space font. Absolute value for default size, other sizes will scale this value. */
    @:native("GlyphMinAdvanceX") var glyphMinAdvanceX:cpp.Float32;
    /** FLT_MAX  // Maximum AdvanceX for glyphs */
    @:native("GlyphMaxAdvanceX") var glyphMaxAdvanceX:cpp.Float32;
    /** 0        // Extra spacing (in pixels) between glyphs. Please contact us if you are using this. // FIXME-NEWATLAS: Intentionally unscaled */
    @:native("GlyphExtraAdvanceX") var glyphExtraAdvanceX:cpp.Float32;
    /** 0        // Index of font within TTF/OTF file */
    @:native("FontNo") var fontNo:UInt;
    /** 0        // Settings for custom font builder. THIS IS BUILDER IMPLEMENTATION DEPENDENT. Leave as zero if unsure. */
    @:native("FontLoaderFlags") var fontLoaderFlags:UInt;
    /** 1.0f     // Linearly brighten (>1.0f) or darken (<1.0f) font output. Brightening small fonts may be a good workaround to make them more readable. This is a silly thing we may remove in the future. */
    @:native("RasterizerMultiply") var rasterizerMultiply:cpp.Float32;
    /** 1.0f     // [LEGACY: this only makes sense when ImGuiBackendFlags_RendererHasTextures is not supported] DPI scale multiplier for rasterization. Not altering other font metrics: makes it easy to swap between e.g. a 100% and a 400% fonts for a zooming display, or handle Retina screen. IMPORTANT: If you change this it is expected that you increase/decrease font scale roughly to the inverse of this, otherwise quality may look lowered. */
    @:native("RasterizerDensity") var rasterizerDensity:cpp.Float32;
    /** 1.0f     // Extra rasterizer scale over SizePixels. */
    @:native("ExtraSizeScale") var extraSizeScale:cpp.Float32;
}

@:keep @:structAccess @:native("ImFontGlyph") @:include("linc_imgui.h")
extern class ImFontGlyph {
    /** Flag to indicate glyph is colored and should generally ignore tinting (make it usable with no shift on little-endian as this is used in loops) */
    @:native("Colored") var colored:UInt;
    /** Flag to indicate glyph has no visible pixels (e.g. space). Allow early out when rendering. */
    @:native("Visible") var visible:UInt;
    /** Index of source in parent font */
    @:native("SourceIdx") var sourceIdx:UInt;
    /** 0x0000..0x10FFFF */
    @:native("Codepoint") var codepoint:UInt;
    /** Horizontal distance to advance cursor/layout position. */
    @:native("AdvanceX") var advanceX:cpp.Float32;
    /** Glyph corners. Offsets from current cursor/layout position. */
    @:native("X0") var x0:cpp.Float32;
    /** Glyph corners. Offsets from current cursor/layout position. */
    @:native("Y0") var y0:cpp.Float32;
    /** Glyph corners. Offsets from current cursor/layout position. */
    @:native("X1") var x1:cpp.Float32;
    /** Glyph corners. Offsets from current cursor/layout position. */
    @:native("Y1") var y1:cpp.Float32;
    /** Texture coordinates for the current value of ImFontAtlas->TexRef. Cached equivalent of calling GetCustomRect() with PackId. */
    @:native("U0") var u0:cpp.Float32;
    /** Texture coordinates for the current value of ImFontAtlas->TexRef. Cached equivalent of calling GetCustomRect() with PackId. */
    @:native("V0") var v0:cpp.Float32;
    /** Texture coordinates for the current value of ImFontAtlas->TexRef. Cached equivalent of calling GetCustomRect() with PackId. */
    @:native("U1") var u1:cpp.Float32;
    /** Texture coordinates for the current value of ImFontAtlas->TexRef. Cached equivalent of calling GetCustomRect() with PackId. */
    @:native("V1") var v1:cpp.Float32;
    /** [Internal] ImFontAtlasRectId value (FIXME: Cold data, could be moved elsewhere?) */
    @:native("PackId") var packId:Int;
}

@:keep @:structAccess @:native("ImFontGlyphRangesBuilder") @:include("linc_imgui.h")
extern class ImFontGlyphRangesBuilder {
    /** Store 1-bit per Unicode code point (0=unused, 1=used) */
    @:native("UsedChars") var usedChars:ImVector_ImU32;

    inline static function clear(self:cpp.Star<ImFontGlyphRangesBuilder>):Void {
        untyped __cpp__('ImFontGlyphRangesBuilder_Clear({0})', self);
    }
    /** Get bit n in the array */
    inline static function getBit(self:cpp.Star<ImFontGlyphRangesBuilder>, n:cpp.SizeT):Bool {
        return untyped __cpp__('ImFontGlyphRangesBuilder_GetBit({0}, {1})', self, n);
    }
    /** Set bit n in the array */
    inline static function setBit(self:cpp.Star<ImFontGlyphRangesBuilder>, n:cpp.SizeT):Void {
        untyped __cpp__('ImFontGlyphRangesBuilder_SetBit({0}, {1})', self, n);
    }
    /** Add character */
    inline static function addChar(self:cpp.Star<ImFontGlyphRangesBuilder>, c:cpp.UInt16):Void {
        untyped __cpp__('ImFontGlyphRangesBuilder_AddChar({0}, {1})', self, c);
    }
    /** Add string (each character of the UTF-8 string are added) */
    inline static function addText(self:cpp.Star<ImFontGlyphRangesBuilder>, text:cpp.ConstCharStar, textEnd:cpp.ConstCharStar = null):Void {
        untyped __cpp__('ImFontGlyphRangesBuilder_AddText({0}, {1}, {2})', self, text, textEnd);
    }
    /** Add ranges, e.g. builder.AddRanges(ImFontAtlas::GetGlyphRangesDefault()) to force add all of ASCII/Latin+Ext */
    inline static function addRanges(self:cpp.Star<ImFontGlyphRangesBuilder>, ranges:cpp.Star<cpp.UInt16>):Void {
        untyped __cpp__('ImFontGlyphRangesBuilder_AddRanges({0}, {1})', self, ranges);
    }
    /** Output new ranges (ImVector_Construct()/ImVector_Destruct() can be used to safely construct out_ranges) */
    inline static function buildRanges(self:cpp.Star<ImFontGlyphRangesBuilder>, outRanges:cpp.Star<ImVector_ImWchar>):Void {
        untyped __cpp__('ImFontGlyphRangesBuilder_BuildRanges({0}, {1})', self, outRanges);
    }
}

@:keep @:structAccess @:native("ImFontAtlasRect") @:include("linc_imgui.h")
extern class ImFontAtlasRect {
    /** Position (in current texture) */
    @:native("x") var x:cpp.UInt16;
    /** Position (in current texture) */
    @:native("y") var y:cpp.UInt16;
    /** Size */
    @:native("w") var w:cpp.UInt16;
    /** Size */
    @:native("h") var h:cpp.UInt16;
    /** UV coordinates (in current texture) */
    @:native("uv0") var uv0:ImVec2;
    /** UV coordinates (in current texture) */
    @:native("uv1") var uv1:ImVec2;
}

@:keep @:structAccess @:native("ImFontAtlas") @:include("linc_imgui.h")
extern class ImFontAtlas {
    /** Build flags (see ImFontAtlasFlags_) */
    @:native("Flags") var flags:Int;
    /** Desired texture format (default to ImTextureFormat_RGBA32 but may be changed to ImTextureFormat_Alpha8). */
    @:native("TexDesiredFormat") var texDesiredFormat:ImTextureFormat;
    /** FIXME: Should be called "TexPackPadding". Padding between glyphs within texture in pixels. Defaults to 1. If your rendering method doesn't rely on bilinear filtering you may set this to 0 (will also need to set AntiAliasedLinesUseTex = false). */
    @:native("TexGlyphPadding") var texGlyphPadding:Int;
    /** Minimum desired texture width. Must be a power of two. Default to 512. */
    @:native("TexMinWidth") var texMinWidth:Int;
    /** Minimum desired texture height. Must be a power of two. Default to 128. */
    @:native("TexMinHeight") var texMinHeight:Int;
    /** Maximum desired texture width. Must be a power of two. Default to 8192. */
    @:native("TexMaxWidth") var texMaxWidth:Int;
    /** Maximum desired texture height. Must be a power of two. Default to 8192. */
    @:native("TexMaxHeight") var texMaxHeight:Int;
    /** Store your own atlas related user-data (if e.g. you have multiple font atlas). */
    @:native("UserData") var userData:cpp.RawPointer<cpp.Void>;
    /** Latest texture identifier == TexData->GetTexRef(). */
    @:native("TexRef") var texRef:ImTextureRef;
    /** Latest texture. */
    @:native("TexData") var texData:cpp.Star<ImTextureData>;

    inline static function addFont(self:cpp.Star<ImFontAtlas>, fontCfg:cpp.Star<ImFontConfig>):cpp.Star<ImFont> {
        return untyped __cpp__('ImFontAtlas_AddFont({0}, {1})', self, fontCfg);
    }
    /** Selects between AddFontDefaultVector() and AddFontDefaultBitmap(). */
    inline static function addFontDefault(self:cpp.Star<ImFontAtlas>, fontCfg:cpp.Star<ImFontConfig> = null):cpp.Star<ImFont> {
        return untyped __cpp__('ImFontAtlas_AddFontDefault({0}, {1})', self, fontCfg);
    }
    /** Embedded scalable font. Recommended at any higher size. */
    inline static function addFontDefaultVector(self:cpp.Star<ImFontAtlas>, fontCfg:cpp.Star<ImFontConfig> = null):cpp.Star<ImFont> {
        return untyped __cpp__('ImFontAtlas_AddFontDefaultVector({0}, {1})', self, fontCfg);
    }
    /** Embedded classic pixel-clean font. Recommended at Size 13px with no scaling. */
    inline static function addFontDefaultBitmap(self:cpp.Star<ImFontAtlas>, fontCfg:cpp.Star<ImFontConfig> = null):cpp.Star<ImFont> {
        return untyped __cpp__('ImFontAtlas_AddFontDefaultBitmap({0}, {1})', self, fontCfg);
    }
    inline static function addFontFromFileTTF(self:cpp.Star<ImFontAtlas>, filename:cpp.ConstCharStar, sizePixels:cpp.Float32 = 0.0, fontCfg:cpp.Star<ImFontConfig> = null, glyphRanges:cpp.Star<cpp.UInt16> = null):cpp.Star<ImFont> {
        return untyped __cpp__('ImFontAtlas_AddFontFromFileTTF({0}, {1}, {2}, {3}, {4})', self, filename, sizePixels, fontCfg, glyphRanges);
    }
    /** Note: Transfer ownership of 'ttf_data' to ImFontAtlas! Will be deleted after destruction of the atlas. Set font_cfg->FontDataOwnedByAtlas=false to keep ownership of your data and it won't be freed. */
    inline static function addFontFromMemoryTTF(self:cpp.Star<ImFontAtlas>, fontData:cpp.RawPointer<cpp.Void>, fontDataSize:Int, sizePixels:cpp.Float32 = 0.0, fontCfg:cpp.Star<ImFontConfig> = null, glyphRanges:cpp.Star<cpp.UInt16> = null):cpp.Star<ImFont> {
        return untyped __cpp__('ImFontAtlas_AddFontFromMemoryTTF({0}, {1}, {2}, {3}, {4}, {5})', self, fontData, fontDataSize, sizePixels, fontCfg, glyphRanges);
    }
    /** 'compressed_font_data' still owned by caller. Compress with binary_to_compressed_c.cpp. */
    inline static function addFontFromMemoryCompressedTTF(self:cpp.Star<ImFontAtlas>, compressedFontData:cpp.RawPointer<cpp.Void>, compressedFontDataSize:Int, sizePixels:cpp.Float32 = 0.0, fontCfg:cpp.Star<ImFontConfig> = null, glyphRanges:cpp.Star<cpp.UInt16> = null):cpp.Star<ImFont> {
        return untyped __cpp__('ImFontAtlas_AddFontFromMemoryCompressedTTF({0}, {1}, {2}, {3}, {4}, {5})', self, compressedFontData, compressedFontDataSize, sizePixels, fontCfg, glyphRanges);
    }
    /** 'compressed_font_data_base85' still owned by caller. Compress with binary_to_compressed_c.cpp with -base85 parameter. */
    inline static function addFontFromMemoryCompressedBase85TTF(self:cpp.Star<ImFontAtlas>, compressedFontDataBase85:cpp.ConstCharStar, sizePixels:cpp.Float32 = 0.0, fontCfg:cpp.Star<ImFontConfig> = null, glyphRanges:cpp.Star<cpp.UInt16> = null):cpp.Star<ImFont> {
        return untyped __cpp__('ImFontAtlas_AddFontFromMemoryCompressedBase85TTF({0}, {1}, {2}, {3}, {4})', self, compressedFontDataBase85, sizePixels, fontCfg, glyphRanges);
    }
    inline static function removeFont(self:cpp.Star<ImFontAtlas>, font:cpp.Star<ImFont>):Void {
        untyped __cpp__('ImFontAtlas_RemoveFont({0}, {1})', self, font);
    }
    /** Clear everything (fonts + textures). Don't call mid-frame! */
    inline static function clear(self:cpp.Star<ImFontAtlas>):Void {
        untyped __cpp__('ImFontAtlas_Clear({0})', self);
    }
    /** Clear input+output font data/glyphs. You can call this mid-frame if you load new fonts afterwards! */
    inline static function clearFonts(self:cpp.Star<ImFontAtlas>):Void {
        untyped __cpp__('ImFontAtlas_ClearFonts({0})', self);
    }
    /** Compact cached glyphs and texture. */
    inline static function compactCache(self:cpp.Star<ImFontAtlas>):Void {
        untyped __cpp__('ImFontAtlas_CompactCache({0})', self);
    }
    /** Change font loader at runtime. */
    inline static function setFontLoader(self:cpp.Star<ImFontAtlas>, fontLoader:cpp.Star<ImFontLoader>):Void {
        untyped __cpp__('ImFontAtlas_SetFontLoader({0}, {1})', self, fontLoader);
    }
    /** [OBSOLETE] Clear input data (all ImFontConfig structures including sizes, TTF data, glyph ranges, etc.) = all the data used to build the texture and fonts. */
    inline static function clearInputData(self:cpp.Star<ImFontAtlas>):Void {
        untyped __cpp__('ImFontAtlas_ClearInputData({0})', self);
    }
    /** [OBSOLETE] Clear CPU-side copy of the texture data. Saves RAM once the texture has been copied to graphics memory. */
    inline static function clearTexData(self:cpp.Star<ImFontAtlas>):Void {
        untyped __cpp__('ImFontAtlas_ClearTexData({0})', self);
    }
    /** Basic Latin, Extended Latin */
    inline static function getGlyphRangesDefault(self:cpp.Star<ImFontAtlas>):cpp.Star<cpp.UInt16> {
        return untyped __cpp__('(ImWchar*)ImFontAtlas_GetGlyphRangesDefault({0})', self);
    }
    /** Register a rectangle. Return -1 (ImFontAtlasRectId_Invalid) on error. */
    inline static function addCustomRect(self:cpp.Star<ImFontAtlas>, width:Int, height:Int, outR:cpp.Star<ImFontAtlasRect> = null):Int {
        return untyped __cpp__('ImFontAtlas_AddCustomRect({0}, {1}, {2}, {3})', self, width, height, outR);
    }
    /** Unregister a rectangle. Existing pixels will stay in texture until resized / garbage collected. */
    inline static function removeCustomRect(self:cpp.Star<ImFontAtlas>, id:Int):Void {
        untyped __cpp__('ImFontAtlas_RemoveCustomRect({0}, {1})', self, id);
    }
    /** Get rectangle coordinates for current texture. Valid immediately, never store this (read above)! */
    inline static function getCustomRect(self:cpp.Star<ImFontAtlas>, id:Int, outR:cpp.Star<ImFontAtlasRect>):Bool {
        return untyped __cpp__('ImFontAtlas_GetCustomRect({0}, {1}, {2})', self, id, outR);
    }
}

@:keep @:structAccess @:native("ImFontBaked") @:include("linc_imgui.h")
extern class ImFontBaked {

    inline static function clearOutputData(self:cpp.Star<ImFontBaked>):Void {
        untyped __cpp__('ImFontBaked_ClearOutputData({0})', self);
    }
    /** Return U+FFFD glyph if requested glyph doesn't exists. */
    inline static function findGlyph(self:cpp.Star<ImFontBaked>, c:cpp.UInt16):cpp.Star<ImFontGlyph> {
        return untyped __cpp__('ImFontBaked_FindGlyph({0}, {1})', self, c);
    }
    /** Return NULL if glyph doesn't exist */
    inline static function findGlyphNoFallback(self:cpp.Star<ImFontBaked>, c:cpp.UInt16):cpp.Star<ImFontGlyph> {
        return untyped __cpp__('ImFontBaked_FindGlyphNoFallback({0}, {1})', self, c);
    }
    inline static function getCharAdvance(self:cpp.Star<ImFontBaked>, c:cpp.UInt16):cpp.Float32 {
        return untyped __cpp__('ImFontBaked_GetCharAdvance({0}, {1})', self, c);
    }
    inline static function isGlyphLoaded(self:cpp.Star<ImFontBaked>, c:cpp.UInt16):Bool {
        return untyped __cpp__('ImFontBaked_IsGlyphLoaded({0}, {1})', self, c);
    }
}

@:keep @:structAccess @:native("ImFont") @:include("linc_imgui.h")
extern class ImFont {
}

@:keep @:structAccess @:native("ImGuiViewport") @:include("linc_imgui.h")
extern class ImGuiViewport {
    /** Unique identifier for the viewport */
    @:native("ID") var id:UInt;
    /** See ImGuiViewportFlags_ */
    @:native("Flags") var flags:Int;
    /** Main Area: Position of the viewport (Dear ImGui coordinates are the same as OS desktop/native coordinates) */
    @:native("Pos") var pos:ImVec2;
    /** Main Area: Size of the viewport. */
    @:native("Size") var size:ImVec2;
    /** Density of the viewport for Retina display (always 1,1 on Windows, may be 2,2 etc on macOS/iOS). This will affect font rasterizer density. */
    @:native("FramebufferScale") var framebufferScale:ImVec2;
    /** Work Area: Position of the viewport minus task bars, menus bars, status bars (>= Pos) */
    @:native("WorkPos") var workPos:ImVec2;
    /** Work Area: Size of the viewport minus task bars, menu bars, status bars (<= Size) */
    @:native("WorkSize") var workSize:ImVec2;
    /** 1.0f = 96 DPI = No extra scale. */
    @:native("DpiScale") var dpiScale:cpp.Float32;
    /** (Advanced) 0: no parent. Instruct the platform backend to setup a parent/child relationship between platform windows. */
    @:native("ParentViewportId") var parentViewportId:UInt;
    /** (Advanced) Direct shortcut to ImGui::FindViewportByID(ParentViewportId). NULL: no parent. */
    @:native("ParentViewport") var parentViewport:cpp.Star<ImGuiViewport>;
    /** The ImDrawData corresponding to this viewport. Valid after Render() and until the next call to NewFrame(). */
    @:native("DrawData") var drawData:cpp.Star<ImDrawData>;
    /** void* to hold custom data structure for the renderer (e.g. swap chain, framebuffers etc.). generally set by your Renderer_CreateWindow function. */
    @:native("RendererUserData") var rendererUserData:cpp.RawPointer<cpp.Void>;
    /** void* to hold custom data structure for the OS / platform (e.g. windowing info, render context). generally set by your Platform_CreateWindow function. */
    @:native("PlatformUserData") var platformUserData:cpp.RawPointer<cpp.Void>;
    /** void* to hold custom data structure for the OS / platform to specify an icon. Currently unused for exposed to allow experiments. */
    @:native("PlatformIconData") var platformIconData:cpp.RawPointer<cpp.Void>;
    /** void* to hold higher-level, platform window handle (e.g. HWND for Win32 backend, Uint32 WindowID for SDL, GLFWWindow* for GLFW), for FindViewportByPlatformHandle(). */
    @:native("PlatformHandle") var platformHandle:cpp.RawPointer<cpp.Void>;
    /** void* to hold lower-level, platform-native window handle (always HWND on Win32 platform, unused for other platforms). */
    @:native("PlatformHandleRaw") var platformHandleRaw:cpp.RawPointer<cpp.Void>;
    /** Platform window has been created (Platform_CreateWindow() has been called). This is false during the first frame where a viewport is being created. */
    @:native("PlatformWindowCreated") var platformWindowCreated:Bool;
    /** Platform window requested move (e.g. window was moved by the OS / host window manager, authoritative position will be OS window position) */
    @:native("PlatformRequestMove") var platformRequestMove:Bool;
    /** Platform window requested resize (e.g. window was resized by the OS / host window manager, authoritative size will be OS window size) */
    @:native("PlatformRequestResize") var platformRequestResize:Bool;
    /** Platform window requested closure (e.g. window was moved by the OS / host window manager, e.g. pressing ALT-F4) */
    @:native("PlatformRequestClose") var platformRequestClose:Bool;

    inline static function getCenter(self:cpp.Star<ImGuiViewport>):ImVec2 {
        return untyped __cpp__('ImGuiViewport_GetCenter({0})', self);
    }
    inline static function getWorkCenter(self:cpp.Star<ImGuiViewport>):ImVec2 {
        return untyped __cpp__('ImGuiViewport_GetWorkCenter({0})', self);
    }
    inline static function getDebugName(self:cpp.Star<ImGuiViewport>):cpp.ConstCharStar {
        return untyped __cpp__('ImGuiViewport_GetDebugName({0})', self);
    }
}

@:keep @:structAccess @:native("ImGuiPlatformIO") @:include("linc_imgui.h")
extern class ImGuiPlatformIO {
    /** Should return NULL on failure (e.g. clipboard data is not text). */
    @:native("Platform_GetClipboardTextFn") var platform_GetClipboardTextFn:ImGuiOpaqueCallback;
    @:native("Platform_SetClipboardTextFn") var platform_SetClipboardTextFn:ImGuiOpaqueCallback;
    @:native("Platform_ClipboardUserData") var platform_ClipboardUserData:cpp.RawPointer<cpp.Void>;
    @:native("Platform_OpenInShellFn") var platform_OpenInShellFn:ImGuiOpaqueCallback;
    @:native("Platform_OpenInShellUserData") var platform_OpenInShellUserData:cpp.RawPointer<cpp.Void>;
    @:native("Platform_SetImeDataFn") var platform_SetImeDataFn:ImGuiOpaqueCallback;
    @:native("Platform_ImeUserData") var platform_ImeUserData:cpp.RawPointer<cpp.Void>;
    /** '.' */
    @:native("Platform_LocaleDecimalPoint") var platform_LocaleDecimalPoint:cpp.UInt16;
    @:native("Renderer_TextureMaxWidth") var renderer_TextureMaxWidth:Int;
    @:native("Renderer_TextureMaxHeight") var renderer_TextureMaxHeight:Int;
    @:native("Renderer_RenderState") var renderer_RenderState:cpp.RawPointer<cpp.Void>;
    /** Request to reset the graphics/render state. */
    @:native("DrawCallback_ResetRenderState") var drawCallback_ResetRenderState:ImGuiOpaqueCallback;
    /** Request backend to set texture sampling to Linear. */
    @:native("DrawCallback_SetSamplerLinear") var drawCallback_SetSamplerLinear:ImGuiOpaqueCallback;
    /** Request backend to set texture sampling to Nearest/Point. */
    @:native("DrawCallback_SetSamplerNearest") var drawCallback_SetSamplerNearest:ImGuiOpaqueCallback;
    /** . . U . .  // Create a new platform window for the given viewport */
    @:native("Platform_CreateWindow") var platform_CreateWindow:ImGuiOpaqueCallback;
    /** N . U . D  // */
    @:native("Platform_DestroyWindow") var platform_DestroyWindow:ImGuiOpaqueCallback;
    /** . . U . .  // Newly created windows are initially hidden so SetWindowPos/Size/Title can be called on them before showing the window */
    @:native("Platform_ShowWindow") var platform_ShowWindow:ImGuiOpaqueCallback;
    /** . . U . .  // Set platform window position (given the upper-left corner of client area) */
    @:native("Platform_SetWindowPos") var platform_SetWindowPos:ImGuiOpaqueCallback;
    /** N . . . .  // (Use ImGuiPlatformIO_SetPlatform_GetWindowPos() to set this from C, otherwise you will likely encounter stack corruption) */
    @:native("Platform_GetWindowPos") var platform_GetWindowPos:ImGuiOpaqueCallback;
    /** . . U . .  // Set platform window client area size (ignoring OS decorations such as OS title bar etc.) */
    @:native("Platform_SetWindowSize") var platform_SetWindowSize:ImGuiOpaqueCallback;
    /** N . . . .  // Get platform window client area size (Use ImGuiPlatformIO_SetPlatform_GetWindowSize() to set this from C, otherwise you will likely encounter stack corruption) */
    @:native("Platform_GetWindowSize") var platform_GetWindowSize:ImGuiOpaqueCallback;
    /** N . . . .  // Return viewport density. Always 1,1 on Windows, often 2,2 on Retina display on macOS/iOS. MUST BE INTEGER VALUES. (Use ImGuiPlatformIO_SetPlatform_GetWindowFramebufferScale() to set this from C, otherwise you will likely encounter stack corruption) */
    @:native("Platform_GetWindowFramebufferScale") var platform_GetWindowFramebufferScale:ImGuiOpaqueCallback;
    /** N . . . .  // Move window to front and set input focus */
    @:native("Platform_SetWindowFocus") var platform_SetWindowFocus:ImGuiOpaqueCallback;
    /** . . U . .  // */
    @:native("Platform_GetWindowFocus") var platform_GetWindowFocus:ImGuiOpaqueCallback;
    /** N . . . .  // Get platform window minimized state. When minimized, we generally won't attempt to get/set size and contents will be culled more easily */
    @:native("Platform_GetWindowMinimized") var platform_GetWindowMinimized:ImGuiOpaqueCallback;
    /** . . U . .  // Set platform window title (given an UTF-8 string) */
    @:native("Platform_SetWindowTitle") var platform_SetWindowTitle:ImGuiOpaqueCallback;
    /** . . U . .  // (Optional) Setup global transparency (not per-pixel transparency) */
    @:native("Platform_SetWindowAlpha") var platform_SetWindowAlpha:ImGuiOpaqueCallback;
    /** . . U . .  // (Optional) Called by UpdatePlatformWindows(). Optional hook to allow the platform backend from doing general book-keeping every frame. */
    @:native("Platform_UpdateWindow") var platform_UpdateWindow:ImGuiOpaqueCallback;
    /** . . . R .  // (Optional) Main rendering (platform side! This is often unused, or just setting a "current" context for OpenGL bindings). 'render_arg' is the value passed to RenderPlatformWindowsDefault(). */
    @:native("Platform_RenderWindow") var platform_RenderWindow:ImGuiOpaqueCallback;
    /** . . . R .  // (Optional) Call Present/SwapBuffers (platform side! This is often unused!). 'render_arg' is the value passed to RenderPlatformWindowsDefault(). */
    @:native("Platform_SwapBuffers") var platform_SwapBuffers:ImGuiOpaqueCallback;
    /** N . . . .  // (Optional) [BETA] FIXME-DPI: DPI handling: Return DPI scale for this viewport. 1.0f = 96 DPI. */
    @:native("Platform_GetWindowDpiScale") var platform_GetWindowDpiScale:ImGuiOpaqueCallback;
    /** . F . . .  // (Optional) [BETA] FIXME-DPI: DPI handling: Called during Begin() every time the viewport we are outputting into changes, so backend has a chance to swap fonts to adjust style. */
    @:native("Platform_OnChangedViewport") var platform_OnChangedViewport:ImGuiOpaqueCallback;
    /** N . . . .  // (Optional) [BETA] Get initial work area inset for the viewport (won't be covered by main menu bar, dockspace over viewport etc.). Default to (0,0),(0,0). 'safeAreaInsets' in iOS land, 'DisplayCutout' in Android land. (Use ImGuiPlatformIO_SetPlatform_GetWindowWorkAreaInsets() to set this from C, otherwise you will likely encounter stack corruption) */
    @:native("Platform_GetWindowWorkAreaInsets") var platform_GetWindowWorkAreaInsets:ImGuiOpaqueCallback;
    /** (Optional) For a Vulkan Renderer to call into Platform code (since the surface creation needs to tie them both). */
    @:native("Platform_CreateVkSurface") var platform_CreateVkSurface:ImGuiOpaqueCallback;
    /** . . U . .  // Create swap chain, frame buffers etc. (called after Platform_CreateWindow) */
    @:native("Renderer_CreateWindow") var renderer_CreateWindow:ImGuiOpaqueCallback;
    /** N . U . D  // Destroy swap chain, frame buffers etc. (called before Platform_DestroyWindow) */
    @:native("Renderer_DestroyWindow") var renderer_DestroyWindow:ImGuiOpaqueCallback;
    /** . . U . .  // Resize swap chain, frame buffers etc. (called after Platform_SetWindowSize) */
    @:native("Renderer_SetWindowSize") var renderer_SetWindowSize:ImGuiOpaqueCallback;
    /** . . . R .  // (Optional) Clear framebuffer, setup render target, then render the viewport->DrawData. 'render_arg' is the value passed to RenderPlatformWindowsDefault(). */
    @:native("Renderer_RenderWindow") var renderer_RenderWindow:ImGuiOpaqueCallback;
    /** . . . R .  // (Optional) Call Present/SwapBuffers. 'render_arg' is the value passed to RenderPlatformWindowsDefault(). */
    @:native("Renderer_SwapBuffers") var renderer_SwapBuffers:ImGuiOpaqueCallback;
    @:native("Monitors") var monitors:ImVector_ImGuiPlatformMonitor;
    /** List of textures used by Dear ImGui (most often 1) + contents of external texture list is automatically appended into this. */
    @:native("Textures") var textures:ImVector_ImTextureDataPtr;
    /** Main viewports, followed by all secondary viewports. */
    @:native("Viewports") var viewports:ImVector_ImGuiViewportPtr;

    /** Set ImGuiPlatformIO::Platform_GetWindowWorkAreaInsets in a C-compatible mannner */
    inline static function setPlatform_GetWindowWorkAreaInsets(getWindowWorkAreaInsetsFunc:ImGuiOpaqueCallback):Void {
        untyped __cpp__('ImGuiPlatformIO_SetPlatform_GetWindowWorkAreaInsets((void (*)(ImGuiViewport* vp, ImVec4* result)){0})', getWindowWorkAreaInsetsFunc);
    }
    /** Set ImGuiPlatformIO::Platform_GetWindowFramebufferScale in a C-compatible mannner */
    inline static function setPlatform_GetWindowFramebufferScale(getWindowFramebufferScaleFunc:ImGuiOpaqueCallback):Void {
        untyped __cpp__('ImGuiPlatformIO_SetPlatform_GetWindowFramebufferScale((void (*)(ImGuiViewport* vp, ImVec2* result)){0})', getWindowFramebufferScaleFunc);
    }
    /** Set ImGuiPlatformIO::Platform_GetWindowPos in a C-compatible mannner */
    inline static function setPlatform_GetWindowPos(getWindowPosFunc:ImGuiOpaqueCallback):Void {
        untyped __cpp__('ImGuiPlatformIO_SetPlatform_GetWindowPos((void (*)(ImGuiViewport* vp, ImVec2* result)){0})', getWindowPosFunc);
    }
    /** Set ImGuiPlatformIO::Platform_GetWindowSize in a C-compatible mannner */
    inline static function setPlatform_GetWindowSize(getWindowSizeFunc:ImGuiOpaqueCallback):Void {
        untyped __cpp__('ImGuiPlatformIO_SetPlatform_GetWindowSize((void (*)(ImGuiViewport* vp, ImVec2* result)){0})', getWindowSizeFunc);
    }
    /** Clear all Platform_XXX fields. Typically called on Platform Backend shutdown. */
    inline static function clearPlatformHandlers(self:cpp.Star<ImGuiPlatformIO>):Void {
        untyped __cpp__('ImGuiPlatformIO_ClearPlatformHandlers({0})', self);
    }
    /** Clear all Renderer_XXX fields. Typically called on Renderer Backend shutdown. */
    inline static function clearRendererHandlers(self:cpp.Star<ImGuiPlatformIO>):Void {
        untyped __cpp__('ImGuiPlatformIO_ClearRendererHandlers({0})', self);
    }
}

@:keep @:structAccess @:native("ImGuiPlatformMonitor") @:include("linc_imgui.h")
extern class ImGuiPlatformMonitor {
    /** Coordinates of the area displayed on this monitor (Min = upper left, Max = bottom right) */
    @:native("MainPos") var mainPos:ImVec2;
    /** Coordinates of the area displayed on this monitor (Min = upper left, Max = bottom right) */
    @:native("MainSize") var mainSize:ImVec2;
    /** Coordinates without task bars / side bars / menu bars. Used to avoid positioning popups/tooltips inside this region. If you don't have this info, please copy the value for MainPos/MainSize. */
    @:native("WorkPos") var workPos:ImVec2;
    /** Coordinates without task bars / side bars / menu bars. Used to avoid positioning popups/tooltips inside this region. If you don't have this info, please copy the value for MainPos/MainSize. */
    @:native("WorkSize") var workSize:ImVec2;
    /** 1.0f = 96 DPI */
    @:native("DpiScale") var dpiScale:cpp.Float32;
    /** Backend dependant data (e.g. HMONITOR, GLFWmonitor*, SDL Display Index, NSScreen*) */
    @:native("PlatformHandle") var platformHandle:cpp.RawPointer<cpp.Void>;
}

@:keep @:structAccess @:native("ImGuiPlatformImeData") @:include("linc_imgui.h")
extern class ImGuiPlatformImeData {
    /** A widget wants the IME to be visible. */
    @:native("WantVisible") var wantVisible:Bool;
    /** A widget wants text input, not necessarily IME to be visible. This is automatically set to the upcoming value of io.WantTextInput. */
    @:native("WantTextInput") var wantTextInput:Bool;
    /** Position of input cursor (for IME). */
    @:native("InputPos") var inputPos:ImVec2;
    /** Line height (for IME). */
    @:native("InputLineHeight") var inputLineHeight:cpp.Float32;
    /** ID of platform window/viewport. */
    @:native("ViewportId") var viewportId:UInt;
}

@:keep
@:include("linc_imgui.h")
@:build(imguicpp.linc.Linc.xml('imgui'))
@:build(imguicpp.linc.Linc.touch())
extern class ImGui {

    inline static function createContext(sharedFontAtlas:cpp.Star<ImFontAtlas> = null):cpp.Star<ImGuiContext> {
        return untyped __cpp__('ImGui_CreateContext({0})', sharedFontAtlas);
    }
    /** NULL = destroy current context */
    inline static function destroyContext(ctx:cpp.Star<ImGuiContext> = null):Void {
        untyped __cpp__('ImGui_DestroyContext({0})', ctx);
    }
    inline static function getCurrentContext():cpp.Star<ImGuiContext> {
        return untyped __cpp__('ImGui_GetCurrentContext()');
    }
    inline static function setCurrentContext(ctx:cpp.Star<ImGuiContext>):Void {
        untyped __cpp__('ImGui_SetCurrentContext({0})', ctx);
    }
    /** access the ImGuiIO structure (mouse/keyboard/gamepad inputs, time, various configuration options/flags) */
    inline static function getIO():cpp.Star<ImGuiIO> {
        return untyped __cpp__('ImGui_GetIO()');
    }
    /** access the ImGuiPlatformIO structure (mostly hooks/functions to connect to platform/renderer and OS Clipboard, IME etc.) */
    inline static function getPlatformIO():cpp.Star<ImGuiPlatformIO> {
        return untyped __cpp__('ImGui_GetPlatformIO()');
    }
    /** access the Style structure (colors, sizes). Always use PushStyleColor(), PushStyleVar() to modify style mid-frame! */
    inline static function getStyle():cpp.Star<ImGuiStyle> {
        return untyped __cpp__('ImGui_GetStyle()');
    }
    /** start a new Dear ImGui frame, you can submit any command from this point until Render()/EndFrame(). */
    inline static function newFrame():Void {
        untyped __cpp__('ImGui_NewFrame()');
    }
    /** ends the Dear ImGui frame. automatically called by Render(). If you don't need to render data (skipping rendering) you may call EndFrame() without Render()... but you'll have wasted CPU already! If you don't need to render, better to not create any windows and not call NewFrame() at all! */
    inline static function endFrame():Void {
        untyped __cpp__('ImGui_EndFrame()');
    }
    /** ends the Dear ImGui frame, finalize the draw data. You can then get call GetDrawData(). */
    inline static function render():Void {
        untyped __cpp__('ImGui_Render()');
    }
    /** valid after Render() and until the next call to NewFrame(). Call ImGui_ImplXXXX_RenderDrawData() function in your Renderer Backend to render. */
    inline static function getDrawData():cpp.Star<ImDrawData> {
        return untyped __cpp__('ImGui_GetDrawData()');
    }
    /** create Demo window. demonstrate most ImGui features. call this to learn about the library! try to make it always available in your application! */
    inline static function showDemoWindow(pOpen:cpp.Star<Bool> = null):Void {
        untyped __cpp__('ImGui_ShowDemoWindow({0})', pOpen);
    }
    /** create Metrics/Debugger window. display Dear ImGui internals: windows, draw commands, various internal state, etc. */
    inline static function showMetricsWindow(pOpen:cpp.Star<Bool> = null):Void {
        untyped __cpp__('ImGui_ShowMetricsWindow({0})', pOpen);
    }
    /** create Debug Log window. display a simplified log of important dear imgui events. */
    inline static function showDebugLogWindow(pOpen:cpp.Star<Bool> = null):Void {
        untyped __cpp__('ImGui_ShowDebugLogWindow({0})', pOpen);
    }
    /** create Stack Tool window. hover items with mouse to query information about the source of their unique ID. */
    inline static function showIDStackToolWindowEx(pOpen:cpp.Star<Bool> = null):Void {
        untyped __cpp__('ImGui_ShowIDStackToolWindowEx({0})', pOpen);
    }
    /** Implied p_open = NULL */
    inline static function showIDStackToolWindow():Void {
        untyped __cpp__('ImGui_ShowIDStackToolWindow()');
    }
    /** create About window. display Dear ImGui version, credits and build/system information. */
    inline static function showAboutWindow(pOpen:cpp.Star<Bool> = null):Void {
        untyped __cpp__('ImGui_ShowAboutWindow({0})', pOpen);
    }
    /** add style editor block (not a window). you can pass in a reference ImGuiStyle structure to compare to, revert to and save to (else it uses the default style) */
    inline static function showStyleEditor(ref:cpp.Star<ImGuiStyle> = null):Void {
        untyped __cpp__('ImGui_ShowStyleEditor({0})', ref);
    }
    /** add style selector block (not a window), essentially a combo listing the default styles. */
    inline static function showStyleSelector(label:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_ShowStyleSelector({0})', label);
    }
    /** add font selector block (not a window), essentially a combo listing the loaded fonts. */
    inline static function showFontSelector(label:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_ShowFontSelector({0})', label);
    }
    /** add basic help/info block (not a window): how to manipulate ImGui as an end-user (mouse/keyboard controls). */
    inline static function showUserGuide():Void {
        untyped __cpp__('ImGui_ShowUserGuide()');
    }
    /** get the compiled version string e.g. "1.80 WIP" (essentially the value for IMGUI_VERSION from the compiled version of imgui.cpp) */
    inline static function getVersion():cpp.ConstCharStar {
        return untyped __cpp__('ImGui_GetVersion()');
    }
    /** new, recommended style (default) */
    inline static function styleColorsDark(dst:cpp.Star<ImGuiStyle> = null):Void {
        untyped __cpp__('ImGui_StyleColorsDark({0})', dst);
    }
    /** best used with borders and a custom, thicker font */
    inline static function styleColorsLight(dst:cpp.Star<ImGuiStyle> = null):Void {
        untyped __cpp__('ImGui_StyleColorsLight({0})', dst);
    }
    /** classic imgui style */
    inline static function styleColorsClassic(dst:cpp.Star<ImGuiStyle> = null):Void {
        untyped __cpp__('ImGui_StyleColorsClassic({0})', dst);
    }
    inline static function begin(name:cpp.ConstCharStar, pOpen:cpp.Star<Bool> = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_Begin({0}, {1}, {2})', name, pOpen, flags);
    }
    inline static function end():Void {
        untyped __cpp__('ImGui_End()');
    }
    inline static function beginChild(strId:cpp.ConstCharStar, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginChild({0}, {1}, {2}, {3})', strId, size, childFlags, windowFlags);
    }
    inline static function beginChildID(id:UInt, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginChildID({0}, {1}, {2}, {3})', id, size, childFlags, windowFlags);
    }
    inline static function endChild():Void {
        untyped __cpp__('ImGui_EndChild()');
    }
    inline static function isWindowAppearing():Bool {
        return untyped __cpp__('ImGui_IsWindowAppearing()');
    }
    inline static function isWindowCollapsed():Bool {
        return untyped __cpp__('ImGui_IsWindowCollapsed()');
    }
    /** is current window focused? or its root/child, depending on flags. see flags for options. */
    inline static function isWindowFocused(flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_IsWindowFocused({0})', flags);
    }
    /** is current window hovered and hoverable (e.g. not blocked by a popup/modal)? See ImGuiHoveredFlags_ for options. IMPORTANT: If you are trying to check whether your mouse should be dispatched to Dear ImGui or to your underlying app, you should not use this function! Use the 'io.WantCaptureMouse' boolean for that! Refer to FAQ entry "How can I tell whether to dispatch mouse/keyboard to Dear ImGui or my application?" for details. */
    inline static function isWindowHovered(flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_IsWindowHovered({0})', flags);
    }
    /** get draw list associated to the current window, to append your own drawing primitives */
    inline static function getWindowDrawList():cpp.Star<ImDrawList> {
        return untyped __cpp__('ImGui_GetWindowDrawList()');
    }
    /** get DPI scale currently associated to the current window's viewport. */
    inline static function getWindowDpiScale():cpp.Float32 {
        return untyped __cpp__('ImGui_GetWindowDpiScale()');
    }
    /** get current window position in screen space (IT IS UNLIKELY YOU EVER NEED TO USE THIS. Consider always using GetCursorScreenPos() and GetContentRegionAvail() instead) */
    inline static function getWindowPos():ImVec2 {
        return untyped __cpp__('ImGui_GetWindowPos()');
    }
    /** get current window size (IT IS UNLIKELY YOU EVER NEED TO USE THIS. Consider always using GetCursorScreenPos() and GetContentRegionAvail() instead) */
    inline static function getWindowSize():ImVec2 {
        return untyped __cpp__('ImGui_GetWindowSize()');
    }
    /** get current window width (IT IS UNLIKELY YOU EVER NEED TO USE THIS). Shortcut for GetWindowSize().x. */
    inline static function getWindowWidth():cpp.Float32 {
        return untyped __cpp__('ImGui_GetWindowWidth()');
    }
    /** get current window height (IT IS UNLIKELY YOU EVER NEED TO USE THIS). Shortcut for GetWindowSize().y. */
    inline static function getWindowHeight():cpp.Float32 {
        return untyped __cpp__('ImGui_GetWindowHeight()');
    }
    /** get viewport currently associated to the current window. */
    inline static function getWindowViewport():cpp.Star<ImGuiViewport> {
        return untyped __cpp__('ImGui_GetWindowViewport()');
    }
    /** set next window position. call before Begin(). use pivot=(0.5f,0.5f) to center on given point, etc. */
    inline static function setNextWindowPosEx(pos:ImVec2, cond:Int = 0, pivot:ImVec2):Void {
        untyped __cpp__('ImGui_SetNextWindowPosEx({0}, {1}, {2})', pos, cond, pivot);
    }
    /** Implied pivot = ImVec2(0, 0) */
    inline static function setNextWindowPos(pos:ImVec2, cond:Int = 0):Void {
        untyped __cpp__('ImGui_SetNextWindowPos({0}, {1})', pos, cond);
    }
    /** set next window size. set axis to 0.0f to force an auto-fit on this axis. call before Begin() */
    inline static function setNextWindowSize(size:ImVec2, cond:Int = 0):Void {
        untyped __cpp__('ImGui_SetNextWindowSize({0}, {1})', size, cond);
    }
    /** set next window size limits. use 0.0f or FLT_MAX if you don't want limits. Use -1 for both min and max of same axis to preserve current size (which itself is a constraint). Use callback to apply non-trivial programmatic constraints. */
    inline static function setNextWindowSizeConstraints(sizeMin:ImVec2, sizeMax:ImVec2, customCallback:ImGuiOpaqueCallback = null, customCallbackData:cpp.RawPointer<cpp.Void> = null):Void {
        untyped __cpp__('ImGui_SetNextWindowSizeConstraints({0}, {1}, (ImGuiSizeCallback){2}, {3})', sizeMin, sizeMax, customCallback, customCallbackData);
    }
    /** set next window content size (~ scrollable client area, which enforce the range of scrollbars). Not including window decorations (title bar, menu bar, etc.) nor WindowPadding. set an axis to 0.0f to leave it automatic. call before Begin() */
    inline static function setNextWindowContentSize(size:ImVec2):Void {
        untyped __cpp__('ImGui_SetNextWindowContentSize({0})', size);
    }
    /** set next window collapsed state. call before Begin() */
    inline static function setNextWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        untyped __cpp__('ImGui_SetNextWindowCollapsed({0}, {1})', collapsed, cond);
    }
    /** set next window to be focused / top-most. call before Begin() */
    inline static function setNextWindowFocus():Void {
        untyped __cpp__('ImGui_SetNextWindowFocus()');
    }
    /** set next window scrolling value (use < 0.0f to not affect a given axis). */
    inline static function setNextWindowScroll(scroll:ImVec2):Void {
        untyped __cpp__('ImGui_SetNextWindowScroll({0})', scroll);
    }
    /** set next window background color alpha. helper to easily override the Alpha component of ImGuiCol_WindowBg/ChildBg/PopupBg. you may also use ImGuiWindowFlags_NoBackground. */
    inline static function setNextWindowBgAlpha(alpha:cpp.Float32):Void {
        untyped __cpp__('ImGui_SetNextWindowBgAlpha({0})', alpha);
    }
    /** set next window viewport */
    inline static function setNextWindowViewport(viewportId:UInt):Void {
        untyped __cpp__('ImGui_SetNextWindowViewport({0})', viewportId);
    }
    /** (not recommended) set current window position - call within Begin()/End(). prefer using SetNextWindowPos(), as this may incur tearing and side-effects. */
    inline static function setWindowPos(pos:ImVec2, cond:Int = 0):Void {
        untyped __cpp__('ImGui_SetWindowPos({0}, {1})', pos, cond);
    }
    /** (not recommended) set current window size - call within Begin()/End(). set to ImVec2(0, 0) to force an auto-fit. prefer using SetNextWindowSize(), as this may incur tearing and minor side-effects. */
    inline static function setWindowSize(size:ImVec2, cond:Int = 0):Void {
        untyped __cpp__('ImGui_SetWindowSize({0}, {1})', size, cond);
    }
    /** (not recommended) set current window collapsed state. prefer using SetNextWindowCollapsed(). */
    inline static function setWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        untyped __cpp__('ImGui_SetWindowCollapsed({0}, {1})', collapsed, cond);
    }
    /** (not recommended) set current window to be focused / top-most. prefer using SetNextWindowFocus(). */
    inline static function setWindowFocus():Void {
        untyped __cpp__('ImGui_SetWindowFocus()');
    }
    /** set named window position. */
    inline static function setWindowPosStr(name:cpp.ConstCharStar, pos:ImVec2, cond:Int = 0):Void {
        untyped __cpp__('ImGui_SetWindowPosStr({0}, {1}, {2})', name, pos, cond);
    }
    /** set named window size. set axis to 0.0f to force an auto-fit on this axis. */
    inline static function setWindowSizeStr(name:cpp.ConstCharStar, size:ImVec2, cond:Int = 0):Void {
        untyped __cpp__('ImGui_SetWindowSizeStr({0}, {1}, {2})', name, size, cond);
    }
    /** set named window collapsed state */
    inline static function setWindowCollapsedStr(name:cpp.ConstCharStar, collapsed:Bool, cond:Int = 0):Void {
        untyped __cpp__('ImGui_SetWindowCollapsedStr({0}, {1}, {2})', name, collapsed, cond);
    }
    /** set named window to be focused / top-most. use NULL to remove focus. */
    inline static function setWindowFocusStr(name:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_SetWindowFocusStr({0})', name);
    }
    /** get scrolling amount [0 .. GetScrollMaxX()] */
    inline static function getScrollX():cpp.Float32 {
        return untyped __cpp__('ImGui_GetScrollX()');
    }
    /** get scrolling amount [0 .. GetScrollMaxY()] */
    inline static function getScrollY():cpp.Float32 {
        return untyped __cpp__('ImGui_GetScrollY()');
    }
    /** set scrolling amount [0 .. GetScrollMaxX()] */
    inline static function setScrollX(scrollX:cpp.Float32):Void {
        untyped __cpp__('ImGui_SetScrollX({0})', scrollX);
    }
    /** set scrolling amount [0 .. GetScrollMaxY()] */
    inline static function setScrollY(scrollY:cpp.Float32):Void {
        untyped __cpp__('ImGui_SetScrollY({0})', scrollY);
    }
    /** get maximum scrolling amount ~~ ContentSize.x - WindowSize.x - DecorationsSize.x */
    inline static function getScrollMaxX():cpp.Float32 {
        return untyped __cpp__('ImGui_GetScrollMaxX()');
    }
    /** get maximum scrolling amount ~~ ContentSize.y - WindowSize.y - DecorationsSize.y */
    inline static function getScrollMaxY():cpp.Float32 {
        return untyped __cpp__('ImGui_GetScrollMaxY()');
    }
    /** adjust scrolling amount to make current cursor position visible. center_x_ratio=0.0: left, 0.5: center, 1.0: right. When using to make a "default/current item" visible, consider using SetItemDefaultFocus() instead. */
    inline static function setScrollHereX(centerXRatio:cpp.Float32 = 0.5):Void {
        untyped __cpp__('ImGui_SetScrollHereX({0})', centerXRatio);
    }
    /** adjust scrolling amount to make current cursor position visible. center_y_ratio=0.0: top, 0.5: center, 1.0: bottom. When using to make a "default/current item" visible, consider using SetItemDefaultFocus() instead. */
    inline static function setScrollHereY(centerYRatio:cpp.Float32 = 0.5):Void {
        untyped __cpp__('ImGui_SetScrollHereY({0})', centerYRatio);
    }
    /** adjust scrolling amount to make given position visible. Generally GetCursorStartPos() + offset to compute a valid position. */
    inline static function setScrollFromPosX(localX:cpp.Float32, centerXRatio:cpp.Float32 = 0.5):Void {
        untyped __cpp__('ImGui_SetScrollFromPosX({0}, {1})', localX, centerXRatio);
    }
    /** adjust scrolling amount to make given position visible. Generally GetCursorStartPos() + offset to compute a valid position. */
    inline static function setScrollFromPosY(localY:cpp.Float32, centerYRatio:cpp.Float32 = 0.5):Void {
        untyped __cpp__('ImGui_SetScrollFromPosY({0}, {1})', localY, centerYRatio);
    }
    /** Use NULL as a shortcut to keep current font. Use 0.0f to keep current size. */
    inline static function pushFontFloat(font:cpp.Star<ImFont>, fontSizeBaseUnscaled:cpp.Float32):Void {
        untyped __cpp__('ImGui_PushFontFloat({0}, {1})', font, fontSizeBaseUnscaled);
    }
    inline static function popFont():Void {
        untyped __cpp__('ImGui_PopFont()');
    }
    /** get current font */
    inline static function getFont():cpp.Star<ImFont> {
        return untyped __cpp__('ImGui_GetFont()');
    }
    /** get current scaled font size (= height in pixels). AFTER global scale factors applied. *IMPORTANT* DO NOT PASS THIS VALUE TO PushFont()! Use ImGui::GetStyle().FontSizeBase to get value before global scale factors. */
    inline static function getFontSize():cpp.Float32 {
        return untyped __cpp__('ImGui_GetFontSize()');
    }
    /** get current font bound at current size // == GetFont()->GetFontBaked(GetFontSize()) */
    inline static function getFontBaked():cpp.Star<ImFontBaked> {
        return untyped __cpp__('ImGui_GetFontBaked()');
    }
    /** modify a style color. always use this if you modify the style after NewFrame(). */
    inline static function pushStyleColor(idx:Int, col:UInt):Void {
        untyped __cpp__('ImGui_PushStyleColor({0}, {1})', idx, col);
    }
    inline static function pushStyleColorImVec4(idx:Int, col:ImVec4):Void {
        untyped __cpp__('ImGui_PushStyleColorImVec4({0}, {1})', idx, col);
    }
    inline static function popStyleColorEx(count:Int = 1):Void {
        untyped __cpp__('ImGui_PopStyleColorEx({0})', count);
    }
    /** Implied count = 1 */
    inline static function popStyleColor():Void {
        untyped __cpp__('ImGui_PopStyleColor()');
    }
    /** modify a style float variable. always use this if you modify the style after NewFrame()! */
    inline static function pushStyleVar(idx:Int, val:cpp.Float32):Void {
        untyped __cpp__('ImGui_PushStyleVar({0}, {1})', idx, val);
    }
    /** modify a style ImVec2 variable. " */
    inline static function pushStyleVarImVec2(idx:Int, val:ImVec2):Void {
        untyped __cpp__('ImGui_PushStyleVarImVec2({0}, {1})', idx, val);
    }
    /** modify X component of a style ImVec2 variable. " */
    inline static function pushStyleVarX(idx:Int, valX:cpp.Float32):Void {
        untyped __cpp__('ImGui_PushStyleVarX({0}, {1})', idx, valX);
    }
    /** modify Y component of a style ImVec2 variable. " */
    inline static function pushStyleVarY(idx:Int, valY:cpp.Float32):Void {
        untyped __cpp__('ImGui_PushStyleVarY({0}, {1})', idx, valY);
    }
    inline static function popStyleVarEx(count:Int = 1):Void {
        untyped __cpp__('ImGui_PopStyleVarEx({0})', count);
    }
    /** Implied count = 1 */
    inline static function popStyleVar():Void {
        untyped __cpp__('ImGui_PopStyleVar()');
    }
    /** modify specified shared item flag, e.g. PushItemFlag(ImGuiItemFlags_NoTabStop, true) */
    inline static function pushItemFlag(option:Int, enabled:Bool):Void {
        untyped __cpp__('ImGui_PushItemFlag({0}, {1})', option, enabled);
    }
    inline static function popItemFlag():Void {
        untyped __cpp__('ImGui_PopItemFlag()');
    }
    /** push width of items for common large "item+label" widgets. >0.0f: width in pixels, <0.0f align xx pixels to the right of window (so -FLT_MIN always align width to the right side). */
    inline static function pushItemWidth(itemWidth:cpp.Float32):Void {
        untyped __cpp__('ImGui_PushItemWidth({0})', itemWidth);
    }
    inline static function popItemWidth():Void {
        untyped __cpp__('ImGui_PopItemWidth()');
    }
    /** set width of the _next_ common large "item+label" widget. >0.0f: width in pixels, <0.0f align xx pixels to the right of window (so -FLT_MIN always align width to the right side) */
    inline static function setNextItemWidth(itemWidth:cpp.Float32):Void {
        untyped __cpp__('ImGui_SetNextItemWidth({0})', itemWidth);
    }
    /** width of item given pushed settings and current cursor position. NOT necessarily the width of last item unlike most 'Item' functions. */
    inline static function calcItemWidth():cpp.Float32 {
        return untyped __cpp__('ImGui_CalcItemWidth()');
    }
    /** push word-wrapping position for Text*() commands. < 0.0f: no wrapping; 0.0f: wrap to end of window (or column); > 0.0f: wrap at 'wrap_pos_x' position in window local space */
    inline static function pushTextWrapPos(wrapLocalPosX:cpp.Float32 = 0.0):Void {
        untyped __cpp__('ImGui_PushTextWrapPos({0})', wrapLocalPosX);
    }
    inline static function popTextWrapPos():Void {
        untyped __cpp__('ImGui_PopTextWrapPos()');
    }
    /** get UV coordinate for a white pixel, useful to draw custom shapes via the ImDrawList API */
    inline static function getFontTexUvWhitePixel():ImVec2 {
        return untyped __cpp__('ImGui_GetFontTexUvWhitePixel()');
    }
    /** retrieve given style color with style alpha applied and optional extra alpha multiplier, packed as a 32-bit value suitable for ImDrawList */
    inline static function getColorU32Ex(idx:Int, alphaMul:cpp.Float32 = 1.0):UInt {
        return untyped __cpp__('ImGui_GetColorU32Ex({0}, {1})', idx, alphaMul);
    }
    /** Implied alpha_mul = 1.0f */
    inline static function getColorU32(idx:Int):UInt {
        return untyped __cpp__('ImGui_GetColorU32({0})', idx);
    }
    /** retrieve given color with style alpha applied, packed as a 32-bit value suitable for ImDrawList */
    inline static function getColorU32ImVec4(col:ImVec4):UInt {
        return untyped __cpp__('ImGui_GetColorU32ImVec4({0})', col);
    }
    /** retrieve given color with style alpha applied, packed as a 32-bit value suitable for ImDrawList */
    inline static function getColorU32ImU32Ex(col:UInt, alphaMul:cpp.Float32 = 1.0):UInt {
        return untyped __cpp__('ImGui_GetColorU32ImU32Ex({0}, {1})', col, alphaMul);
    }
    /** Implied alpha_mul = 1.0f */
    inline static function getColorU32ImU32(col:UInt):UInt {
        return untyped __cpp__('ImGui_GetColorU32ImU32({0})', col);
    }
    /** retrieve style color as stored in ImGuiStyle structure. use to feed back into PushStyleColor(), otherwise use GetColorU32() to get style color with style alpha baked in. */
    inline static function getStyleColorVec4(idx:Int):cpp.Star<ImVec4> {
        return untyped __cpp__('(ImVec4*)ImGui_GetStyleColorVec4({0})', idx);
    }
    /** cursor position, absolute coordinates. THIS IS YOUR BEST FRIEND (prefer using this rather than GetCursorPos(), also more useful to work with ImDrawList API). */
    inline static function getCursorScreenPos():ImVec2 {
        return untyped __cpp__('ImGui_GetCursorScreenPos()');
    }
    /** cursor position, absolute coordinates. THIS IS YOUR BEST FRIEND. */
    inline static function setCursorScreenPos(pos:ImVec2):Void {
        untyped __cpp__('ImGui_SetCursorScreenPos({0})', pos);
    }
    /** available space from current position. THIS IS YOUR BEST FRIEND. */
    inline static function getContentRegionAvail():ImVec2 {
        return untyped __cpp__('ImGui_GetContentRegionAvail()');
    }
    /** [window-local] cursor position in window-local coordinates. This is not your best friend. */
    inline static function getCursorPos():ImVec2 {
        return untyped __cpp__('ImGui_GetCursorPos()');
    }
    /** [window-local] " */
    inline static function getCursorPosX():cpp.Float32 {
        return untyped __cpp__('ImGui_GetCursorPosX()');
    }
    /** [window-local] " */
    inline static function getCursorPosY():cpp.Float32 {
        return untyped __cpp__('ImGui_GetCursorPosY()');
    }
    /** [window-local] " */
    inline static function setCursorPos(localPos:ImVec2):Void {
        untyped __cpp__('ImGui_SetCursorPos({0})', localPos);
    }
    /** [window-local] " */
    inline static function setCursorPosX(localX:cpp.Float32):Void {
        untyped __cpp__('ImGui_SetCursorPosX({0})', localX);
    }
    /** [window-local] " */
    inline static function setCursorPosY(localY:cpp.Float32):Void {
        untyped __cpp__('ImGui_SetCursorPosY({0})', localY);
    }
    /** [window-local] initial cursor position, in window-local coordinates. Call GetCursorScreenPos() after Begin() to get the absolute coordinates version. */
    inline static function getCursorStartPos():ImVec2 {
        return untyped __cpp__('ImGui_GetCursorStartPos()');
    }
    /** separator, generally horizontal. inside a menu bar or in horizontal layout mode, this becomes a vertical separator. */
    inline static function separator():Void {
        untyped __cpp__('ImGui_Separator()');
    }
    /** call between widgets or groups to layout them horizontally. X position given in window coordinates. */
    inline static function sameLineEx(offsetFromStartX:cpp.Float32 = 0.0, spacing:cpp.Float32 = -1.0):Void {
        untyped __cpp__('ImGui_SameLineEx({0}, {1})', offsetFromStartX, spacing);
    }
    /** Implied offset_from_start_x = 0.0f, spacing = -1.0f */
    inline static function sameLine():Void {
        untyped __cpp__('ImGui_SameLine()');
    }
    /** undo a SameLine() or force a new line when in a horizontal-layout context. */
    inline static function newLine():Void {
        untyped __cpp__('ImGui_NewLine()');
    }
    /** add vertical spacing. */
    inline static function spacing():Void {
        untyped __cpp__('ImGui_Spacing()');
    }
    /** add a dummy item of given size. unlike InvisibleButton(), Dummy() won't take the mouse click or be navigable into. */
    inline static function dummy(size:ImVec2):Void {
        untyped __cpp__('ImGui_Dummy({0})', size);
    }
    /** move content position toward the right, by indent_w, or style.IndentSpacing if indent_w <= 0 */
    inline static function indentEx(indentW:cpp.Float32 = 0.0):Void {
        untyped __cpp__('ImGui_IndentEx({0})', indentW);
    }
    /** Implied indent_w = 0.0f */
    inline static function indent():Void {
        untyped __cpp__('ImGui_Indent()');
    }
    /** move content position back to the left, by indent_w, or style.IndentSpacing if indent_w <= 0 */
    inline static function unindentEx(indentW:cpp.Float32 = 0.0):Void {
        untyped __cpp__('ImGui_UnindentEx({0})', indentW);
    }
    /** Implied indent_w = 0.0f */
    inline static function unindent():Void {
        untyped __cpp__('ImGui_Unindent()');
    }
    /** lock horizontal starting position */
    inline static function beginGroup():Void {
        untyped __cpp__('ImGui_BeginGroup()');
    }
    /** unlock horizontal starting position + capture the whole group bounding box into one "item" (so you can use IsItemHovered() or layout primitives such as SameLine() on whole group, etc.) */
    inline static function endGroup():Void {
        untyped __cpp__('ImGui_EndGroup()');
    }
    /** vertically align upcoming text baseline to FramePadding.y so that it will align properly to regularly framed items (call if you have text on a line before a framed item) */
    inline static function alignTextToFramePadding():Void {
        untyped __cpp__('ImGui_AlignTextToFramePadding()');
    }
    /** ~ FontSize */
    inline static function getTextLineHeight():cpp.Float32 {
        return untyped __cpp__('ImGui_GetTextLineHeight()');
    }
    /** ~ FontSize + style.ItemSpacing.y (distance in pixels between 2 consecutive lines of text) */
    inline static function getTextLineHeightWithSpacing():cpp.Float32 {
        return untyped __cpp__('ImGui_GetTextLineHeightWithSpacing()');
    }
    /** ~ FontSize + style.FramePadding.y * 2 */
    inline static function getFrameHeight():cpp.Float32 {
        return untyped __cpp__('ImGui_GetFrameHeight()');
    }
    /** ~ FontSize + style.FramePadding.y * 2 + style.ItemSpacing.y (distance in pixels between 2 consecutive lines of framed widgets) */
    inline static function getFrameHeightWithSpacing():cpp.Float32 {
        return untyped __cpp__('ImGui_GetFrameHeightWithSpacing()');
    }
    /** push string into the ID stack (will hash string). */
    inline static function pushID(strId:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_PushID({0})', strId);
    }
    /** push string into the ID stack (will hash string). */
    inline static function pushIDStr(strIdBegin:cpp.ConstCharStar, strIdEnd:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_PushIDStr({0}, {1})', strIdBegin, strIdEnd);
    }
    /** push pointer into the ID stack (will hash pointer). */
    inline static function pushIDPtr(ptrId:cpp.RawPointer<cpp.Void>):Void {
        untyped __cpp__('ImGui_PushIDPtr({0})', ptrId);
    }
    /** push integer into the ID stack (will hash integer). */
    inline static function pushIDInt(intId:Int):Void {
        untyped __cpp__('ImGui_PushIDInt({0})', intId);
    }
    /** pop from the ID stack. */
    inline static function popID():Void {
        untyped __cpp__('ImGui_PopID()');
    }
    /** calculate unique ID (hash of whole ID stack + given parameter). e.g. if you want to query into ImGuiStorage yourself */
    inline static function getID(strId:cpp.ConstCharStar):UInt {
        return untyped __cpp__('ImGui_GetID({0})', strId);
    }
    inline static function getIDStr(strIdBegin:cpp.ConstCharStar, strIdEnd:cpp.ConstCharStar):UInt {
        return untyped __cpp__('ImGui_GetIDStr({0}, {1})', strIdBegin, strIdEnd);
    }
    inline static function getIDPtr(ptrId:cpp.RawPointer<cpp.Void>):UInt {
        return untyped __cpp__('ImGui_GetIDPtr({0})', ptrId);
    }
    inline static function getIDInt(intId:Int):UInt {
        return untyped __cpp__('ImGui_GetIDInt({0})', intId);
    }
    /** raw text without formatting. Roughly equivalent to Text("%s", text) but: A) doesn't require null terminated string if 'text_end' is specified, B) it's faster, no memory copy is done, no buffer size limits, recommended for long chunks of text. */
    inline static function text(text:cpp.ConstCharStar, textEnd:cpp.ConstCharStar = null):Void {
        untyped __cpp__('ImGui_TextUnformattedEx({0}, {1})', text, textEnd);
    }
    /** Implied text_end = NULL */
    inline static function textUnformatted(text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_TextUnformatted({0})', text);
    }
    /** shortcut for PushStyleColor(ImGuiCol_Text, col); Text(fmt, ...); PopStyleColor(); */
    inline static function textColored(col:ImVec4, text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_TextColoredUnformatted({0}, {1})', col, text);
    }
    /** shortcut for PushStyleColor(ImGuiCol_Text, style.Colors[ImGuiCol_TextDisabled]); Text(fmt, ...); PopStyleColor(); */
    inline static function textDisabled(text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_TextDisabledUnformatted({0})', text);
    }
    /** shortcut for PushTextWrapPos(0.0f); Text(fmt, ...); PopTextWrapPos();. Note that this won't work on an auto-resizing window if there's no other widgets to extend the window width, yoy may need to set a size using SetNextWindowSize(). */
    inline static function textWrapped(text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_TextWrappedUnformatted({0})', text);
    }
    /** display text+label aligned the same way as value+label widgets */
    inline static function labelText(label:cpp.ConstCharStar, text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_LabelTextUnformatted({0}, {1})', label, text);
    }
    /** shortcut for Bullet()+Text() */
    inline static function bulletText(text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_BulletTextUnformatted({0})', text);
    }
    /** currently: formatted text with a horizontal line */
    inline static function separatorText(label:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_SeparatorText({0})', label);
    }
    /** button */
    inline static function buttonEx(label:cpp.ConstCharStar, size:ImVec2):Bool {
        return untyped __cpp__('ImGui_ButtonEx({0}, {1})', label, size);
    }
    /** Implied size = ImVec2(0, 0) */
    inline static function button(label:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_Button({0})', label);
    }
    /** button with (FramePadding.y == 0) to easily embed within text */
    inline static function smallButton(label:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_SmallButton({0})', label);
    }
    /** flexible button behavior without the visuals, frequently useful to build custom behaviors using the public api (along with IsItemActive, IsItemHovered, etc.) */
    inline static function invisibleButton(strId:cpp.ConstCharStar, size:ImVec2, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InvisibleButton({0}, {1}, {2})', strId, size, flags);
    }
    /** square button with an arrow shape */
    inline static function arrowButton(strId:cpp.ConstCharStar, dir:Int):Bool {
        return untyped __cpp__('ImGui_ArrowButton({0}, (ImGuiDir){1})', strId, dir);
    }
    inline static function checkbox(label:cpp.ConstCharStar, v:cpp.Star<Bool>):Bool {
        return untyped __cpp__('ImGui_Checkbox({0}, {1})', label, v);
    }
    inline static function checkboxFlagsIntPtr(label:cpp.ConstCharStar, flags:cpp.Star<Int>, flagsValue:Int):Bool {
        return untyped __cpp__('ImGui_CheckboxFlagsIntPtr({0}, {1}, {2})', label, flags, flagsValue);
    }
    inline static function checkboxFlagsUintPtr(label:cpp.ConstCharStar, flags:cpp.Star<UInt>, flagsValue:UInt):Bool {
        return untyped __cpp__('ImGui_CheckboxFlagsUintPtr({0}, {1}, {2})', label, flags, flagsValue);
    }
    /** use with e.g. if (RadioButton("one", my_value==1)) { my_value = 1; } */
    inline static function radioButton(label:cpp.ConstCharStar, active:Bool):Bool {
        return untyped __cpp__('ImGui_RadioButton({0}, {1})', label, active);
    }
    /** shortcut to handle the above pattern when value is an integer */
    inline static function radioButtonIntPtr(label:cpp.ConstCharStar, v:cpp.Star<Int>, vButton:Int):Bool {
        return untyped __cpp__('ImGui_RadioButtonIntPtr({0}, {1}, {2})', label, v, vButton);
    }
    inline static function progressBar(fraction:cpp.Float32, sizeArg:ImVec2, overlay:cpp.ConstCharStar = null):Void {
        untyped __cpp__('ImGui_ProgressBar({0}, {1}, {2})', fraction, sizeArg, overlay);
    }
    /** draw a small circle + keep the cursor on the same line. advance cursor x position by GetTreeNodeToLabelSpacing(), same distance that TreeNode() uses */
    inline static function bullet():Void {
        untyped __cpp__('ImGui_Bullet()');
    }
    /** hyperlink text button, return true when clicked */
    inline static function textLink(label:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_TextLink({0})', label);
    }
    /** hyperlink text button, automatically open file/url when clicked */
    inline static function textLinkOpenURLEx(label:cpp.ConstCharStar, url:cpp.ConstCharStar = null):Bool {
        return untyped __cpp__('ImGui_TextLinkOpenURLEx({0}, {1})', label, url);
    }
    /** Implied url = NULL */
    inline static function textLinkOpenURL(label:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_TextLinkOpenURL({0})', label);
    }
    inline static function imageEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2):Void {
        untyped __cpp__('ImGui_ImageEx({0}, {1}, {2}, {3})', texRef, imageSize, uv0, uv1);
    }
    /** Implied uv0 = ImVec2(0, 0), uv1 = ImVec2(1, 1) */
    inline static function image(texRef:ImTextureRef, imageSize:ImVec2):Void {
        untyped __cpp__('ImGui_Image({0}, {1})', texRef, imageSize);
    }
    inline static function imageWithBgEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Void {
        untyped __cpp__('ImGui_ImageWithBgEx({0}, {1}, {2}, {3}, {4}, {5})', texRef, imageSize, uv0, uv1, bgCol, tintCol);
    }
    /** Implied uv0 = ImVec2(0, 0), uv1 = ImVec2(1, 1), bg_col = ImVec4(0, 0, 0, 0), tint_col = ImVec4(1, 1, 1, 1) */
    inline static function imageWithBg(texRef:ImTextureRef, imageSize:ImVec2):Void {
        untyped __cpp__('ImGui_ImageWithBg({0}, {1})', texRef, imageSize);
    }
    inline static function imageButtonEx(strId:cpp.ConstCharStar, texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Bool {
        return untyped __cpp__('ImGui_ImageButtonEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', strId, texRef, imageSize, uv0, uv1, bgCol, tintCol);
    }
    /** Implied uv0 = ImVec2(0, 0), uv1 = ImVec2(1, 1), bg_col = ImVec4(0, 0, 0, 0), tint_col = ImVec4(1, 1, 1, 1) */
    inline static function imageButton(strId:cpp.ConstCharStar, texRef:ImTextureRef, imageSize:ImVec2):Bool {
        return untyped __cpp__('ImGui_ImageButton({0}, {1}, {2})', strId, texRef, imageSize);
    }
    inline static function beginCombo(label:cpp.ConstCharStar, previewValue:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginCombo({0}, {1}, {2})', label, previewValue, flags);
    }
    /** only call EndCombo() if BeginCombo() returns true! */
    inline static function endCombo():Void {
        untyped __cpp__('ImGui_EndCombo()');
    }
    inline static function comboCharEx(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, items:cpp.RawPointer<cpp.ConstCharStar>, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        return untyped __cpp__('ImGui_ComboCharEx({0}, {1}, {2}, {3}, {4})', label, currentItem, items, itemsCount, popupMaxHeightInItems);
    }
    /** Implied popup_max_height_in_items = -1 */
    inline static function comboChar(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, items:cpp.RawPointer<cpp.ConstCharStar>, itemsCount:Int):Bool {
        return untyped __cpp__('ImGui_ComboChar({0}, {1}, {2}, {3})', label, currentItem, items, itemsCount);
    }
    /** Separate items with \0 within a string, end item-list with \0\0. e.g. "One\0Two\0Three\0" */
    inline static function comboEx(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, itemsSeparatedByZeros:cpp.ConstCharStar, popupMaxHeightInItems:Int = -1):Bool {
        return untyped __cpp__('ImGui_ComboEx({0}, {1}, {2}, {3})', label, currentItem, itemsSeparatedByZeros, popupMaxHeightInItems);
    }
    /** Implied popup_max_height_in_items = -1 */
    inline static function combo(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, itemsSeparatedByZeros:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_Combo({0}, {1}, {2})', label, currentItem, itemsSeparatedByZeros);
    }
    inline static function comboCallbackEx(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, getter:ImGuiOpaqueCallback, userData:cpp.RawPointer<cpp.Void>, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        return untyped __cpp__('ImGui_ComboCallbackEx({0}, {1}, (const char* (*)(void* user_data, int idx)){2}, {3}, {4}, {5})', label, currentItem, getter, userData, itemsCount, popupMaxHeightInItems);
    }
    /** Implied popup_max_height_in_items = -1 */
    inline static function comboCallback(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, getter:ImGuiOpaqueCallback, userData:cpp.RawPointer<cpp.Void>, itemsCount:Int):Bool {
        return untyped __cpp__('ImGui_ComboCallback({0}, {1}, (const char* (*)(void* user_data, int idx)){2}, {3}, {4})', label, currentItem, getter, userData, itemsCount);
    }
    /** If v_min >= v_max we have no bound */
    inline static function dragFloatEx(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vSpeed:cpp.Float32 = 1.0, vMin:cpp.Float32 = 0.0, vMax:cpp.Float32 = 0.0, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragFloatEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, v, vSpeed, vMin, vMax, format, flags);
    }
    /** Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0 */
    inline static function dragFloat(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>):Bool {
        return untyped __cpp__('ImGui_DragFloat({0}, {1})', label, v);
    }
    inline static function dragFloat2Ex(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vSpeed:cpp.Float32 = 1.0, vMin:cpp.Float32 = 0.0, vMax:cpp.Float32 = 0.0, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragFloat2Ex({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, v, vSpeed, vMin, vMax, format, flags);
    }
    /** Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0 */
    inline static function dragFloat2(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>):Bool {
        return untyped __cpp__('ImGui_DragFloat2({0}, {1})', label, v);
    }
    inline static function dragFloat3Ex(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vSpeed:cpp.Float32 = 1.0, vMin:cpp.Float32 = 0.0, vMax:cpp.Float32 = 0.0, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragFloat3Ex({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, v, vSpeed, vMin, vMax, format, flags);
    }
    /** Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0 */
    inline static function dragFloat3(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>):Bool {
        return untyped __cpp__('ImGui_DragFloat3({0}, {1})', label, v);
    }
    inline static function dragFloat4Ex(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vSpeed:cpp.Float32 = 1.0, vMin:cpp.Float32 = 0.0, vMax:cpp.Float32 = 0.0, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragFloat4Ex({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, v, vSpeed, vMin, vMax, format, flags);
    }
    /** Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0 */
    inline static function dragFloat4(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>):Bool {
        return untyped __cpp__('ImGui_DragFloat4({0}, {1})', label, v);
    }
    inline static function dragFloatRange2Ex(label:cpp.ConstCharStar, vCurrentMin:cpp.Star<cpp.Float32>, vCurrentMax:cpp.Star<cpp.Float32>, vSpeed:cpp.Float32 = 1.0, vMin:cpp.Float32 = 0.0, vMax:cpp.Float32 = 0.0, format:cpp.ConstCharStar, formatMax:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragFloatRange2Ex({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})', label, vCurrentMin, vCurrentMax, vSpeed, vMin, vMax, format, formatMax, flags);
    }
    /** Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", format_max = NULL, flags = 0 */
    inline static function dragFloatRange2(label:cpp.ConstCharStar, vCurrentMin:cpp.Star<cpp.Float32>, vCurrentMax:cpp.Star<cpp.Float32>):Bool {
        return untyped __cpp__('ImGui_DragFloatRange2({0}, {1}, {2})', label, vCurrentMin, vCurrentMax);
    }
    /** If v_min >= v_max we have no bound */
    inline static function dragIntEx(label:cpp.ConstCharStar, v:cpp.Star<Int>, vSpeed:cpp.Float32 = 1.0, vMin:Int = 0, vMax:Int = 0, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragIntEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, v, vSpeed, vMin, vMax, format, flags);
    }
    /** Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0 */
    inline static function dragInt(label:cpp.ConstCharStar, v:cpp.Star<Int>):Bool {
        return untyped __cpp__('ImGui_DragInt({0}, {1})', label, v);
    }
    inline static function dragInt2Ex(label:cpp.ConstCharStar, v:cpp.Star<Int>, vSpeed:cpp.Float32 = 1.0, vMin:Int = 0, vMax:Int = 0, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragInt2Ex({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, v, vSpeed, vMin, vMax, format, flags);
    }
    /** Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0 */
    inline static function dragInt2(label:cpp.ConstCharStar, v:cpp.Star<Int>):Bool {
        return untyped __cpp__('ImGui_DragInt2({0}, {1})', label, v);
    }
    inline static function dragInt3Ex(label:cpp.ConstCharStar, v:cpp.Star<Int>, vSpeed:cpp.Float32 = 1.0, vMin:Int = 0, vMax:Int = 0, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragInt3Ex({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, v, vSpeed, vMin, vMax, format, flags);
    }
    /** Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0 */
    inline static function dragInt3(label:cpp.ConstCharStar, v:cpp.Star<Int>):Bool {
        return untyped __cpp__('ImGui_DragInt3({0}, {1})', label, v);
    }
    inline static function dragInt4Ex(label:cpp.ConstCharStar, v:cpp.Star<Int>, vSpeed:cpp.Float32 = 1.0, vMin:Int = 0, vMax:Int = 0, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragInt4Ex({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, v, vSpeed, vMin, vMax, format, flags);
    }
    /** Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0 */
    inline static function dragInt4(label:cpp.ConstCharStar, v:cpp.Star<Int>):Bool {
        return untyped __cpp__('ImGui_DragInt4({0}, {1})', label, v);
    }
    inline static function dragIntRange2Ex(label:cpp.ConstCharStar, vCurrentMin:cpp.Star<Int>, vCurrentMax:cpp.Star<Int>, vSpeed:cpp.Float32 = 1.0, vMin:Int = 0, vMax:Int = 0, format:cpp.ConstCharStar, formatMax:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragIntRange2Ex({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})', label, vCurrentMin, vCurrentMax, vSpeed, vMin, vMax, format, formatMax, flags);
    }
    /** Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", format_max = NULL, flags = 0 */
    inline static function dragIntRange2(label:cpp.ConstCharStar, vCurrentMin:cpp.Star<Int>, vCurrentMax:cpp.Star<Int>):Bool {
        return untyped __cpp__('ImGui_DragIntRange2({0}, {1}, {2})', label, vCurrentMin, vCurrentMax);
    }
    inline static function dragScalarEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, vSpeed:cpp.Float32 = 1.0, pMin:cpp.RawPointer<cpp.Void> = null, pMax:cpp.RawPointer<cpp.Void> = null, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragScalarEx({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})', label, dataType, pData, vSpeed, pMin, pMax, format, flags);
    }
    /** Implied v_speed = 1.0f, p_min = NULL, p_max = NULL, format = NULL, flags = 0 */
    inline static function dragScalar(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>):Bool {
        return untyped __cpp__('ImGui_DragScalar({0}, {1}, {2})', label, dataType, pData);
    }
    inline static function dragScalarNEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int, vSpeed:cpp.Float32 = 1.0, pMin:cpp.RawPointer<cpp.Void> = null, pMax:cpp.RawPointer<cpp.Void> = null, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_DragScalarNEx({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})', label, dataType, pData, components, vSpeed, pMin, pMax, format, flags);
    }
    /** Implied v_speed = 1.0f, p_min = NULL, p_max = NULL, format = NULL, flags = 0 */
    inline static function dragScalarN(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int):Bool {
        return untyped __cpp__('ImGui_DragScalarN({0}, {1}, {2}, {3})', label, dataType, pData, components);
    }
    /** adjust format to decorate the value with a prefix or a suffix for in-slider labels or unit display. */
    inline static function sliderFloatEx(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vMin:cpp.Float32, vMax:cpp.Float32, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SliderFloatEx({0}, {1}, {2}, {3}, {4}, {5})', label, v, vMin, vMax, format, flags);
    }
    /** Implied format = "%.3f", flags = 0 */
    inline static function sliderFloat(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vMin:cpp.Float32, vMax:cpp.Float32):Bool {
        return untyped __cpp__('ImGui_SliderFloat({0}, {1}, {2}, {3})', label, v, vMin, vMax);
    }
    inline static function sliderFloat2Ex(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vMin:cpp.Float32, vMax:cpp.Float32, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SliderFloat2Ex({0}, {1}, {2}, {3}, {4}, {5})', label, v, vMin, vMax, format, flags);
    }
    /** Implied format = "%.3f", flags = 0 */
    inline static function sliderFloat2(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vMin:cpp.Float32, vMax:cpp.Float32):Bool {
        return untyped __cpp__('ImGui_SliderFloat2({0}, {1}, {2}, {3})', label, v, vMin, vMax);
    }
    inline static function sliderFloat3Ex(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vMin:cpp.Float32, vMax:cpp.Float32, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SliderFloat3Ex({0}, {1}, {2}, {3}, {4}, {5})', label, v, vMin, vMax, format, flags);
    }
    /** Implied format = "%.3f", flags = 0 */
    inline static function sliderFloat3(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vMin:cpp.Float32, vMax:cpp.Float32):Bool {
        return untyped __cpp__('ImGui_SliderFloat3({0}, {1}, {2}, {3})', label, v, vMin, vMax);
    }
    inline static function sliderFloat4Ex(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vMin:cpp.Float32, vMax:cpp.Float32, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SliderFloat4Ex({0}, {1}, {2}, {3}, {4}, {5})', label, v, vMin, vMax, format, flags);
    }
    /** Implied format = "%.3f", flags = 0 */
    inline static function sliderFloat4(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, vMin:cpp.Float32, vMax:cpp.Float32):Bool {
        return untyped __cpp__('ImGui_SliderFloat4({0}, {1}, {2}, {3})', label, v, vMin, vMax);
    }
    inline static function sliderAngleEx(label:cpp.ConstCharStar, vRad:cpp.Star<cpp.Float32>, vDegreesMin:cpp.Float32 = -360.0, vDegreesMax:cpp.Float32, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SliderAngleEx({0}, {1}, {2}, {3}, {4}, {5})', label, vRad, vDegreesMin, vDegreesMax, format, flags);
    }
    /** Implied v_degrees_min = -360.0f, v_degrees_max = +360.0f, format = "%.0f deg", flags = 0 */
    inline static function sliderAngle(label:cpp.ConstCharStar, vRad:cpp.Star<cpp.Float32>):Bool {
        return untyped __cpp__('ImGui_SliderAngle({0}, {1})', label, vRad);
    }
    inline static function sliderIntEx(label:cpp.ConstCharStar, v:cpp.Star<Int>, vMin:Int, vMax:Int, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SliderIntEx({0}, {1}, {2}, {3}, {4}, {5})', label, v, vMin, vMax, format, flags);
    }
    /** Implied format = "%d", flags = 0 */
    inline static function sliderInt(label:cpp.ConstCharStar, v:cpp.Star<Int>, vMin:Int, vMax:Int):Bool {
        return untyped __cpp__('ImGui_SliderInt({0}, {1}, {2}, {3})', label, v, vMin, vMax);
    }
    inline static function sliderInt2Ex(label:cpp.ConstCharStar, v:cpp.Star<Int>, vMin:Int, vMax:Int, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SliderInt2Ex({0}, {1}, {2}, {3}, {4}, {5})', label, v, vMin, vMax, format, flags);
    }
    /** Implied format = "%d", flags = 0 */
    inline static function sliderInt2(label:cpp.ConstCharStar, v:cpp.Star<Int>, vMin:Int, vMax:Int):Bool {
        return untyped __cpp__('ImGui_SliderInt2({0}, {1}, {2}, {3})', label, v, vMin, vMax);
    }
    inline static function sliderInt3Ex(label:cpp.ConstCharStar, v:cpp.Star<Int>, vMin:Int, vMax:Int, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SliderInt3Ex({0}, {1}, {2}, {3}, {4}, {5})', label, v, vMin, vMax, format, flags);
    }
    /** Implied format = "%d", flags = 0 */
    inline static function sliderInt3(label:cpp.ConstCharStar, v:cpp.Star<Int>, vMin:Int, vMax:Int):Bool {
        return untyped __cpp__('ImGui_SliderInt3({0}, {1}, {2}, {3})', label, v, vMin, vMax);
    }
    inline static function sliderInt4Ex(label:cpp.ConstCharStar, v:cpp.Star<Int>, vMin:Int, vMax:Int, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SliderInt4Ex({0}, {1}, {2}, {3}, {4}, {5})', label, v, vMin, vMax, format, flags);
    }
    /** Implied format = "%d", flags = 0 */
    inline static function sliderInt4(label:cpp.ConstCharStar, v:cpp.Star<Int>, vMin:Int, vMax:Int):Bool {
        return untyped __cpp__('ImGui_SliderInt4({0}, {1}, {2}, {3})', label, v, vMin, vMax);
    }
    inline static function sliderScalarEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SliderScalarEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, dataType, pData, pMin, pMax, format, flags);
    }
    /** Implied format = NULL, flags = 0 */
    inline static function sliderScalar(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>):Bool {
        return untyped __cpp__('ImGui_SliderScalar({0}, {1}, {2}, {3}, {4})', label, dataType, pData, pMin, pMax);
    }
    inline static function sliderScalarNEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SliderScalarNEx({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})', label, dataType, pData, components, pMin, pMax, format, flags);
    }
    /** Implied format = NULL, flags = 0 */
    inline static function sliderScalarN(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>):Bool {
        return untyped __cpp__('ImGui_SliderScalarN({0}, {1}, {2}, {3}, {4}, {5})', label, dataType, pData, components, pMin, pMax);
    }
    inline static function vSliderFloatEx(label:cpp.ConstCharStar, size:ImVec2, v:cpp.Star<cpp.Float32>, vMin:cpp.Float32, vMax:cpp.Float32, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_VSliderFloatEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, size, v, vMin, vMax, format, flags);
    }
    /** Implied format = "%.3f", flags = 0 */
    inline static function vSliderFloat(label:cpp.ConstCharStar, size:ImVec2, v:cpp.Star<cpp.Float32>, vMin:cpp.Float32, vMax:cpp.Float32):Bool {
        return untyped __cpp__('ImGui_VSliderFloat({0}, {1}, {2}, {3}, {4})', label, size, v, vMin, vMax);
    }
    inline static function vSliderIntEx(label:cpp.ConstCharStar, size:ImVec2, v:cpp.Star<Int>, vMin:Int, vMax:Int, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_VSliderIntEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, size, v, vMin, vMax, format, flags);
    }
    /** Implied format = "%d", flags = 0 */
    inline static function vSliderInt(label:cpp.ConstCharStar, size:ImVec2, v:cpp.Star<Int>, vMin:Int, vMax:Int):Bool {
        return untyped __cpp__('ImGui_VSliderInt({0}, {1}, {2}, {3}, {4})', label, size, v, vMin, vMax);
    }
    inline static function vSliderScalarEx(label:cpp.ConstCharStar, size:ImVec2, dataType:Int, pData:cpp.RawPointer<cpp.Void>, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_VSliderScalarEx({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})', label, size, dataType, pData, pMin, pMax, format, flags);
    }
    /** Implied format = NULL, flags = 0 */
    inline static function vSliderScalar(label:cpp.ConstCharStar, size:ImVec2, dataType:Int, pData:cpp.RawPointer<cpp.Void>, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>):Bool {
        return untyped __cpp__('ImGui_VSliderScalar({0}, {1}, {2}, {3}, {4}, {5})', label, size, dataType, pData, pMin, pMax);
    }
    inline static function inputTextEx(label:cpp.ConstCharStar, buf:cpp.Star<cpp.Char>, bufSize:cpp.SizeT, flags:Int = 0, callback:ImGuiOpaqueCallback = null, userData:cpp.RawPointer<cpp.Void> = null):Bool {
        return untyped __cpp__('ImGui_InputTextEx({0}, {1}, {2}, {3}, (ImGuiInputTextCallback){4}, {5})', label, buf, bufSize, flags, callback, userData);
    }
    /** Implied callback = NULL, user_data = NULL */
    inline static function inputText(label:cpp.ConstCharStar, buf:cpp.Star<cpp.Char>, bufSize:cpp.SizeT, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputText({0}, {1}, {2}, {3})', label, buf, bufSize, flags);
    }
    inline static function inputTextMultilineEx(label:cpp.ConstCharStar, buf:cpp.Star<cpp.Char>, bufSize:cpp.SizeT, size:ImVec2, flags:Int = 0, callback:ImGuiOpaqueCallback = null, userData:cpp.RawPointer<cpp.Void> = null):Bool {
        return untyped __cpp__('ImGui_InputTextMultilineEx({0}, {1}, {2}, {3}, {4}, (ImGuiInputTextCallback){5}, {6})', label, buf, bufSize, size, flags, callback, userData);
    }
    /** Implied size = ImVec2(0, 0), flags = 0, callback = NULL, user_data = NULL */
    inline static function inputTextMultiline(label:cpp.ConstCharStar, buf:cpp.Star<cpp.Char>, bufSize:cpp.SizeT):Bool {
        return untyped __cpp__('ImGui_InputTextMultiline({0}, {1}, {2})', label, buf, bufSize);
    }
    inline static function inputTextWithHintEx(label:cpp.ConstCharStar, hint:cpp.ConstCharStar, buf:cpp.Star<cpp.Char>, bufSize:cpp.SizeT, flags:Int = 0, callback:ImGuiOpaqueCallback = null, userData:cpp.RawPointer<cpp.Void> = null):Bool {
        return untyped __cpp__('ImGui_InputTextWithHintEx({0}, {1}, {2}, {3}, {4}, (ImGuiInputTextCallback){5}, {6})', label, hint, buf, bufSize, flags, callback, userData);
    }
    /** Implied callback = NULL, user_data = NULL */
    inline static function inputTextWithHint(label:cpp.ConstCharStar, hint:cpp.ConstCharStar, buf:cpp.Star<cpp.Char>, bufSize:cpp.SizeT, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputTextWithHint({0}, {1}, {2}, {3}, {4})', label, hint, buf, bufSize, flags);
    }
    inline static function inputFloatEx(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, step:cpp.Float32 = 0.0, stepFast:cpp.Float32 = 0.0, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputFloatEx({0}, {1}, {2}, {3}, {4}, {5})', label, v, step, stepFast, format, flags);
    }
    /** Implied step = 0.0f, step_fast = 0.0f, format = "%.3f", flags = 0 */
    inline static function inputFloat(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>):Bool {
        return untyped __cpp__('ImGui_InputFloat({0}, {1})', label, v);
    }
    inline static function inputFloat2Ex(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputFloat2Ex({0}, {1}, {2}, {3})', label, v, format, flags);
    }
    /** Implied format = "%.3f", flags = 0 */
    inline static function inputFloat2(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>):Bool {
        return untyped __cpp__('ImGui_InputFloat2({0}, {1})', label, v);
    }
    inline static function inputFloat3Ex(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputFloat3Ex({0}, {1}, {2}, {3})', label, v, format, flags);
    }
    /** Implied format = "%.3f", flags = 0 */
    inline static function inputFloat3(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>):Bool {
        return untyped __cpp__('ImGui_InputFloat3({0}, {1})', label, v);
    }
    inline static function inputFloat4Ex(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputFloat4Ex({0}, {1}, {2}, {3})', label, v, format, flags);
    }
    /** Implied format = "%.3f", flags = 0 */
    inline static function inputFloat4(label:cpp.ConstCharStar, v:cpp.Star<cpp.Float32>):Bool {
        return untyped __cpp__('ImGui_InputFloat4({0}, {1})', label, v);
    }
    inline static function inputIntEx(label:cpp.ConstCharStar, v:cpp.Star<Int>, step:Int = 1, stepFast:Int = 100, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputIntEx({0}, {1}, {2}, {3}, {4})', label, v, step, stepFast, flags);
    }
    /** Implied step = 1, step_fast = 100, flags = 0 */
    inline static function inputInt(label:cpp.ConstCharStar, v:cpp.Star<Int>):Bool {
        return untyped __cpp__('ImGui_InputInt({0}, {1})', label, v);
    }
    inline static function inputInt2(label:cpp.ConstCharStar, v:cpp.Star<Int>, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputInt2({0}, {1}, {2})', label, v, flags);
    }
    inline static function inputInt3(label:cpp.ConstCharStar, v:cpp.Star<Int>, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputInt3({0}, {1}, {2})', label, v, flags);
    }
    inline static function inputInt4(label:cpp.ConstCharStar, v:cpp.Star<Int>, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputInt4({0}, {1}, {2})', label, v, flags);
    }
    inline static function inputDoubleEx(label:cpp.ConstCharStar, v:cpp.Star<Float>, step:Float = 0.0, stepFast:Float = 0.0, format:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputDoubleEx({0}, {1}, {2}, {3}, {4}, {5})', label, v, step, stepFast, format, flags);
    }
    /** Implied step = 0.0, step_fast = 0.0, format = "%.6f", flags = 0 */
    inline static function inputDouble(label:cpp.ConstCharStar, v:cpp.Star<Float>):Bool {
        return untyped __cpp__('ImGui_InputDouble({0}, {1})', label, v);
    }
    inline static function inputScalarEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, pStep:cpp.RawPointer<cpp.Void> = null, pStepFast:cpp.RawPointer<cpp.Void> = null, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputScalarEx({0}, {1}, {2}, {3}, {4}, {5}, {6})', label, dataType, pData, pStep, pStepFast, format, flags);
    }
    /** Implied p_step = NULL, p_step_fast = NULL, format = NULL, flags = 0 */
    inline static function inputScalar(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>):Bool {
        return untyped __cpp__('ImGui_InputScalar({0}, {1}, {2})', label, dataType, pData);
    }
    inline static function inputScalarNEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int, pStep:cpp.RawPointer<cpp.Void> = null, pStepFast:cpp.RawPointer<cpp.Void> = null, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_InputScalarNEx({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})', label, dataType, pData, components, pStep, pStepFast, format, flags);
    }
    /** Implied p_step = NULL, p_step_fast = NULL, format = NULL, flags = 0 */
    inline static function inputScalarN(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int):Bool {
        return untyped __cpp__('ImGui_InputScalarN({0}, {1}, {2}, {3})', label, dataType, pData, components);
    }
    inline static function colorEdit3(label:cpp.ConstCharStar, col:cpp.Star<cpp.Float32>, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_ColorEdit3({0}, {1}, {2})', label, col, flags);
    }
    inline static function colorEdit4(label:cpp.ConstCharStar, col:cpp.Star<cpp.Float32>, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_ColorEdit4({0}, {1}, {2})', label, col, flags);
    }
    inline static function colorPicker3(label:cpp.ConstCharStar, col:cpp.Star<cpp.Float32>, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_ColorPicker3({0}, {1}, {2})', label, col, flags);
    }
    inline static function colorPicker4(label:cpp.ConstCharStar, col:cpp.Star<cpp.Float32>, flags:Int = 0, refCol:cpp.Star<cpp.Float32> = null):Bool {
        return untyped __cpp__('ImGui_ColorPicker4({0}, {1}, {2}, {3})', label, col, flags, refCol);
    }
    /** display a color square/button, hover for details, return true when pressed. */
    inline static function colorButtonEx(descId:cpp.ConstCharStar, col:ImVec4, flags:Int = 0, size:ImVec2):Bool {
        return untyped __cpp__('ImGui_ColorButtonEx({0}, {1}, {2}, {3})', descId, col, flags, size);
    }
    /** Implied size = ImVec2(0, 0) */
    inline static function colorButton(descId:cpp.ConstCharStar, col:ImVec4, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_ColorButton({0}, {1}, {2})', descId, col, flags);
    }
    /** initialize current options (generally on application startup) if you want to select a default format, picker type, etc. User will be able to change many settings, unless you pass the _NoOptions flag to your calls. */
    inline static function setColorEditOptions(flags:Int):Void {
        untyped __cpp__('ImGui_SetColorEditOptions({0})', flags);
    }
    inline static function treeNode(label:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_TreeNode({0})', label);
    }
    /** helper variation to easily decorrelate the id from the displayed string. Read the FAQ about why and how to use ID. to align arbitrary text at the same level as a TreeNode() you can use Bullet(). */
    inline static function treeNodeStr(strId:cpp.ConstCharStar, text:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_TreeNodeStrUnformatted({0}, {1})', strId, text);
    }
    /** " */
    inline static function treeNodePtr(ptrId:cpp.RawPointer<cpp.Void>, text:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_TreeNodePtrUnformatted({0}, {1})', ptrId, text);
    }
    inline static function treeNodeEx(label:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_TreeNodeEx({0}, {1})', label, flags);
    }
    inline static function treeNodeExStr(strId:cpp.ConstCharStar, flags:Int, text:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_TreeNodeExStrUnformatted({0}, {1}, {2})', strId, flags, text);
    }
    inline static function treeNodeExPtr(ptrId:cpp.RawPointer<cpp.Void>, flags:Int, text:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_TreeNodeExPtrUnformatted({0}, {1}, {2})', ptrId, flags, text);
    }
    /** ~ Indent()+PushID(). Already called by TreeNode() when returning true, but you can call TreePush/TreePop yourself if desired. */
    inline static function treePush(strId:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_TreePush({0})', strId);
    }
    /** " */
    inline static function treePushPtr(ptrId:cpp.RawPointer<cpp.Void>):Void {
        untyped __cpp__('ImGui_TreePushPtr({0})', ptrId);
    }
    /** ~ Unindent()+PopID() */
    inline static function treePop():Void {
        untyped __cpp__('ImGui_TreePop()');
    }
    /** horizontal distance preceding label when using TreeNode*() or Bullet() == (g.FontSize + style.FramePadding.x*2) for a regular unframed TreeNode */
    inline static function getTreeNodeToLabelSpacing():cpp.Float32 {
        return untyped __cpp__('ImGui_GetTreeNodeToLabelSpacing()');
    }
    /** if returning 'true' the header is open. doesn't indent nor push on ID stack. user doesn't have to call TreePop(). */
    inline static function collapsingHeader(label:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_CollapsingHeader({0}, {1})', label, flags);
    }
    /** when 'p_visible != NULL': if '*p_visible==true' display an additional small close button on upper right of the header which will set the bool to false when clicked, if '*p_visible==false' don't display the header. */
    inline static function collapsingHeaderBoolPtr(label:cpp.ConstCharStar, pVisible:cpp.Star<Bool>, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_CollapsingHeaderBoolPtr({0}, {1}, {2})', label, pVisible, flags);
    }
    /** set next TreeNode/CollapsingHeader open state. */
    inline static function setNextItemOpen(isOpen:Bool, cond:Int = 0):Void {
        untyped __cpp__('ImGui_SetNextItemOpen({0}, {1})', isOpen, cond);
    }
    /** set id to use for open/close storage (default to same as item id). */
    inline static function setNextItemStorageID(storageId:UInt):Void {
        untyped __cpp__('ImGui_SetNextItemStorageID({0})', storageId);
    }
    /** retrieve tree node open/close state. */
    inline static function treeNodeGetOpen(storageId:UInt):Bool {
        return untyped __cpp__('ImGui_TreeNodeGetOpen({0})', storageId);
    }
    /** "bool selected" carry the selection state (read-only). Selectable() is clicked is returns true so you can modify your selection state. size.x==0.0: use remaining width, size.x>0.0: specify width. size.y==0.0: use label height, size.y>0.0: specify height */
    inline static function selectableEx(label:cpp.ConstCharStar, selected:Bool = false, flags:Int = 0, size:ImVec2):Bool {
        return untyped __cpp__('ImGui_SelectableEx({0}, {1}, {2}, {3})', label, selected, flags, size);
    }
    /** Implied selected = false, flags = 0, size = ImVec2(0, 0) */
    inline static function selectable(label:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_Selectable({0})', label);
    }
    /** "bool* p_selected" point to the selection state (read-write), as a convenient helper. */
    inline static function selectableBoolPtrEx(label:cpp.ConstCharStar, pSelected:cpp.Star<Bool>, flags:Int = 0, size:ImVec2):Bool {
        return untyped __cpp__('ImGui_SelectableBoolPtrEx({0}, {1}, {2}, {3})', label, pSelected, flags, size);
    }
    /** Implied size = ImVec2(0, 0) */
    inline static function selectableBoolPtr(label:cpp.ConstCharStar, pSelected:cpp.Star<Bool>, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_SelectableBoolPtr({0}, {1}, {2})', label, pSelected, flags);
    }
    inline static function beginMultiSelectEx(flags:Int, selectionSize:Int = -1, itemsCount:Int = -1):cpp.Star<ImGuiMultiSelectIO> {
        return untyped __cpp__('ImGui_BeginMultiSelectEx({0}, {1}, {2})', flags, selectionSize, itemsCount);
    }
    /** Implied selection_size = -1, items_count = -1 */
    inline static function beginMultiSelect(flags:Int):cpp.Star<ImGuiMultiSelectIO> {
        return untyped __cpp__('ImGui_BeginMultiSelect({0})', flags);
    }
    inline static function endMultiSelect():cpp.Star<ImGuiMultiSelectIO> {
        return untyped __cpp__('ImGui_EndMultiSelect()');
    }
    inline static function setNextItemSelectionUserData(selectionUserData:cpp.Int64):Void {
        untyped __cpp__('ImGui_SetNextItemSelectionUserData({0})', selectionUserData);
    }
    /** Was the last item selection state toggled? Useful if you need the per-item information _before_ reaching EndMultiSelect(). We only returns toggle _event_ in order to handle clipping correctly. */
    inline static function isItemToggledSelection():Bool {
        return untyped __cpp__('ImGui_IsItemToggledSelection()');
    }
    /** open a framed scrolling region */
    inline static function beginListBox(label:cpp.ConstCharStar, size:ImVec2):Bool {
        return untyped __cpp__('ImGui_BeginListBox({0}, {1})', label, size);
    }
    /** only call EndListBox() if BeginListBox() returned true! */
    inline static function endListBox():Void {
        untyped __cpp__('ImGui_EndListBox()');
    }
    inline static function listBox(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, items:cpp.RawPointer<cpp.ConstCharStar>, itemsCount:Int, heightInItems:Int = -1):Bool {
        return untyped __cpp__('ImGui_ListBox({0}, {1}, {2}, {3}, {4})', label, currentItem, items, itemsCount, heightInItems);
    }
    inline static function listBoxCallbackEx(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, getter:ImGuiOpaqueCallback, userData:cpp.RawPointer<cpp.Void>, itemsCount:Int, heightInItems:Int = -1):Bool {
        return untyped __cpp__('ImGui_ListBoxCallbackEx({0}, {1}, (const char* (*)(void* user_data, int idx)){2}, {3}, {4}, {5})', label, currentItem, getter, userData, itemsCount, heightInItems);
    }
    /** Implied height_in_items = -1 */
    inline static function listBoxCallback(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, getter:ImGuiOpaqueCallback, userData:cpp.RawPointer<cpp.Void>, itemsCount:Int):Bool {
        return untyped __cpp__('ImGui_ListBoxCallback({0}, {1}, (const char* (*)(void* user_data, int idx)){2}, {3}, {4})', label, currentItem, getter, userData, itemsCount);
    }
    inline static function plotLinesEx(label:cpp.ConstCharStar, values:cpp.Star<cpp.Float32>, valuesCount:Int, valuesOffset:Int = 0, overlayText:cpp.ConstCharStar = null, scaleMin:cpp.Float32 = 3.402823466e+38, scaleMax:cpp.Float32 = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        untyped __cpp__('ImGui_PlotLinesEx({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})', label, values, valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize, stride);
    }
    /** Implied values_offset = 0, overlay_text = NULL, scale_min = FLT_MAX, scale_max = FLT_MAX, graph_size = ImVec2(0, 0), stride = sizeof(float) */
    inline static function plotLines(label:cpp.ConstCharStar, values:cpp.Star<cpp.Float32>, valuesCount:Int):Void {
        untyped __cpp__('ImGui_PlotLines({0}, {1}, {2})', label, values, valuesCount);
    }
    inline static function plotLinesCallbackEx(label:cpp.ConstCharStar, valuesGetter:ImGuiOpaqueCallback, data:cpp.RawPointer<cpp.Void>, valuesCount:Int, valuesOffset:Int = 0, overlayText:cpp.ConstCharStar = null, scaleMin:cpp.Float32 = 3.402823466e+38, scaleMax:cpp.Float32 = 3.402823466e+38, graphSize:ImVec2):Void {
        untyped __cpp__('ImGui_PlotLinesCallbackEx({0}, (float (*)(void* data, int idx)){1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})', label, valuesGetter, data, valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize);
    }
    /** Implied values_offset = 0, overlay_text = NULL, scale_min = FLT_MAX, scale_max = FLT_MAX, graph_size = ImVec2(0, 0) */
    inline static function plotLinesCallback(label:cpp.ConstCharStar, valuesGetter:ImGuiOpaqueCallback, data:cpp.RawPointer<cpp.Void>, valuesCount:Int):Void {
        untyped __cpp__('ImGui_PlotLinesCallback({0}, (float (*)(void* data, int idx)){1}, {2}, {3})', label, valuesGetter, data, valuesCount);
    }
    inline static function plotHistogramEx(label:cpp.ConstCharStar, values:cpp.Star<cpp.Float32>, valuesCount:Int, valuesOffset:Int = 0, overlayText:cpp.ConstCharStar = null, scaleMin:cpp.Float32 = 3.402823466e+38, scaleMax:cpp.Float32 = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        untyped __cpp__('ImGui_PlotHistogramEx({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})', label, values, valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize, stride);
    }
    /** Implied values_offset = 0, overlay_text = NULL, scale_min = FLT_MAX, scale_max = FLT_MAX, graph_size = ImVec2(0, 0), stride = sizeof(float) */
    inline static function plotHistogram(label:cpp.ConstCharStar, values:cpp.Star<cpp.Float32>, valuesCount:Int):Void {
        untyped __cpp__('ImGui_PlotHistogram({0}, {1}, {2})', label, values, valuesCount);
    }
    inline static function plotHistogramCallbackEx(label:cpp.ConstCharStar, valuesGetter:ImGuiOpaqueCallback, data:cpp.RawPointer<cpp.Void>, valuesCount:Int, valuesOffset:Int = 0, overlayText:cpp.ConstCharStar = null, scaleMin:cpp.Float32 = 3.402823466e+38, scaleMax:cpp.Float32 = 3.402823466e+38, graphSize:ImVec2):Void {
        untyped __cpp__('ImGui_PlotHistogramCallbackEx({0}, (float (*)(void* data, int idx)){1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})', label, valuesGetter, data, valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize);
    }
    /** Implied values_offset = 0, overlay_text = NULL, scale_min = FLT_MAX, scale_max = FLT_MAX, graph_size = ImVec2(0, 0) */
    inline static function plotHistogramCallback(label:cpp.ConstCharStar, valuesGetter:ImGuiOpaqueCallback, data:cpp.RawPointer<cpp.Void>, valuesCount:Int):Void {
        untyped __cpp__('ImGui_PlotHistogramCallback({0}, (float (*)(void* data, int idx)){1}, {2}, {3})', label, valuesGetter, data, valuesCount);
    }
    /** append to menu-bar of current window (requires ImGuiWindowFlags_MenuBar flag set on parent window). */
    inline static function beginMenuBar():Bool {
        return untyped __cpp__('ImGui_BeginMenuBar()');
    }
    /** only call EndMenuBar() if BeginMenuBar() returns true! */
    inline static function endMenuBar():Void {
        untyped __cpp__('ImGui_EndMenuBar()');
    }
    /** create and append to a full screen menu-bar. */
    inline static function beginMainMenuBar():Bool {
        return untyped __cpp__('ImGui_BeginMainMenuBar()');
    }
    /** only call EndMainMenuBar() if BeginMainMenuBar() returns true! */
    inline static function endMainMenuBar():Void {
        untyped __cpp__('ImGui_EndMainMenuBar()');
    }
    /** create a sub-menu entry. only call EndMenu() if this returns true! */
    inline static function beginMenuEx(label:cpp.ConstCharStar, enabled:Bool = true):Bool {
        return untyped __cpp__('ImGui_BeginMenuEx({0}, {1})', label, enabled);
    }
    /** Implied enabled = true */
    inline static function beginMenu(label:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_BeginMenu({0})', label);
    }
    /** only call EndMenu() if BeginMenu() returns true! */
    inline static function endMenu():Void {
        untyped __cpp__('ImGui_EndMenu()');
    }
    /** return true when activated. */
    inline static function menuItemEx(label:cpp.ConstCharStar, shortcut:cpp.ConstCharStar = null, selected:Bool = false, enabled:Bool = true):Bool {
        return untyped __cpp__('ImGui_MenuItemEx({0}, {1}, {2}, {3})', label, shortcut, selected, enabled);
    }
    /** Implied shortcut = NULL, selected = false, enabled = true */
    inline static function menuItem(label:cpp.ConstCharStar):Bool {
        return untyped __cpp__('ImGui_MenuItem({0})', label);
    }
    /** return true when activated + toggle (*p_selected) if p_selected != NULL */
    inline static function menuItemBoolPtr(label:cpp.ConstCharStar, shortcut:cpp.ConstCharStar, pSelected:cpp.Star<Bool>, enabled:Bool = true):Bool {
        return untyped __cpp__('ImGui_MenuItemBoolPtr({0}, {1}, {2}, {3})', label, shortcut, pSelected, enabled);
    }
    /** begin/append a tooltip window. */
    inline static function beginTooltip():Bool {
        return untyped __cpp__('ImGui_BeginTooltip()');
    }
    /** only call EndTooltip() if BeginTooltip()/BeginItemTooltip() returns true! */
    inline static function endTooltip():Void {
        untyped __cpp__('ImGui_EndTooltip()');
    }
    /** set a text-only tooltip. Often used after a ImGui::IsItemHovered() check. Override any previous call to SetTooltip(). */
    inline static function setTooltip(text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_SetTooltipUnformatted({0})', text);
    }
    /** begin/append a tooltip window if preceding item was hovered. */
    inline static function beginItemTooltip():Bool {
        return untyped __cpp__('ImGui_BeginItemTooltip()');
    }
    /** set a text-only tooltip if preceding item was hovered. override any previous call to SetTooltip(). */
    inline static function setItemTooltip(text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_SetItemTooltipUnformatted({0})', text);
    }
    /** return true if the popup is open, and you can start outputting to it. */
    inline static function beginPopup(strId:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginPopup({0}, {1})', strId, flags);
    }
    /** return true if the modal is open, and you can start outputting to it. */
    inline static function beginPopupModal(name:cpp.ConstCharStar, pOpen:cpp.Star<Bool> = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginPopupModal({0}, {1}, {2})', name, pOpen, flags);
    }
    /** only call EndPopup() if BeginPopupXXX() returns true! */
    inline static function endPopup():Void {
        untyped __cpp__('ImGui_EndPopup()');
    }
    /** call to mark popup as open (don't call every frame!). */
    inline static function openPopup(strId:cpp.ConstCharStar, popupFlags:Int = 0):Void {
        untyped __cpp__('ImGui_OpenPopup({0}, {1})', strId, popupFlags);
    }
    /** id overload to facilitate calling from nested stacks */
    inline static function openPopupID(id:UInt, popupFlags:Int = 0):Void {
        untyped __cpp__('ImGui_OpenPopupID({0}, {1})', id, popupFlags);
    }
    /** helper to open popup when clicked on last item. Default to ImGuiPopupFlags_MouseButtonRight == 1. (note: actually triggers on the mouse _released_ event to be consistent with popup behaviors) */
    inline static function openPopupOnItemClick(strId:cpp.ConstCharStar = null, popupFlags:Int = 0):Void {
        untyped __cpp__('ImGui_OpenPopupOnItemClick({0}, {1})', strId, popupFlags);
    }
    /** manually close the popup we have begin-ed into. */
    inline static function closeCurrentPopup():Void {
        untyped __cpp__('ImGui_CloseCurrentPopup()');
    }
    /** open+begin popup when clicked on last item. Use str_id==NULL to associate the popup to previous item. If you want to use that on a non-interactive item such as Text() you need to pass in an explicit ID here. read comments in .cpp! */
    inline static function beginPopupContextItemEx(strId:cpp.ConstCharStar = null, popupFlags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginPopupContextItemEx({0}, {1})', strId, popupFlags);
    }
    /** Implied str_id = NULL, popup_flags = 0 */
    inline static function beginPopupContextItem():Bool {
        return untyped __cpp__('ImGui_BeginPopupContextItem()');
    }
    /** open+begin popup when clicked on current window. */
    inline static function beginPopupContextWindowEx(strId:cpp.ConstCharStar = null, popupFlags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginPopupContextWindowEx({0}, {1})', strId, popupFlags);
    }
    /** Implied str_id = NULL, popup_flags = 0 */
    inline static function beginPopupContextWindow():Bool {
        return untyped __cpp__('ImGui_BeginPopupContextWindow()');
    }
    /** open+begin popup when clicked in void (where there are no windows). */
    inline static function beginPopupContextVoidEx(strId:cpp.ConstCharStar = null, popupFlags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginPopupContextVoidEx({0}, {1})', strId, popupFlags);
    }
    /** Implied str_id = NULL, popup_flags = 0 */
    inline static function beginPopupContextVoid():Bool {
        return untyped __cpp__('ImGui_BeginPopupContextVoid()');
    }
    /** return true if the popup is open. */
    inline static function isPopupOpen(strId:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_IsPopupOpen({0}, {1})', strId, flags);
    }
    inline static function beginTableEx(strId:cpp.ConstCharStar, columns:Int, flags:Int = 0, outerSize:ImVec2, innerWidth:cpp.Float32 = 0.0):Bool {
        return untyped __cpp__('ImGui_BeginTableEx({0}, {1}, {2}, {3}, {4})', strId, columns, flags, outerSize, innerWidth);
    }
    /** Implied outer_size = ImVec2(0.0f, 0.0f), inner_width = 0.0f */
    inline static function beginTable(strId:cpp.ConstCharStar, columns:Int, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginTable({0}, {1}, {2})', strId, columns, flags);
    }
    /** only call EndTable() if BeginTable() returns true! */
    inline static function endTable():Void {
        untyped __cpp__('ImGui_EndTable()');
    }
    /** append into the first cell of a new row. 'min_row_height' include the minimum top and bottom padding aka CellPadding.y * 2.0f. */
    inline static function tableNextRowEx(rowFlags:Int = 0, minRowHeight:cpp.Float32 = 0.0):Void {
        untyped __cpp__('ImGui_TableNextRowEx({0}, {1})', rowFlags, minRowHeight);
    }
    /** Implied row_flags = 0, min_row_height = 0.0f */
    inline static function tableNextRow():Void {
        untyped __cpp__('ImGui_TableNextRow()');
    }
    /** append into the next column (or first column of next row if currently in last column). Return true when column is visible. */
    inline static function tableNextColumn():Bool {
        return untyped __cpp__('ImGui_TableNextColumn()');
    }
    /** append into the specified column. Return true when column is visible. */
    inline static function tableSetColumnIndex(columnN:Int):Bool {
        return untyped __cpp__('ImGui_TableSetColumnIndex({0})', columnN);
    }
    inline static function tableSetupColumnEx(label:cpp.ConstCharStar, flags:Int = 0, initWidthOrWeight:cpp.Float32 = 0.0, userId:UInt = 0):Void {
        untyped __cpp__('ImGui_TableSetupColumnEx({0}, {1}, {2}, {3})', label, flags, initWidthOrWeight, userId);
    }
    /** Implied init_width_or_weight = 0.0f, user_id = 0 */
    inline static function tableSetupColumn(label:cpp.ConstCharStar, flags:Int = 0):Void {
        untyped __cpp__('ImGui_TableSetupColumn({0}, {1})', label, flags);
    }
    /** lock columns/rows so they stay visible when scrolled. */
    inline static function tableSetupScrollFreeze(cols:Int, rows:Int):Void {
        untyped __cpp__('ImGui_TableSetupScrollFreeze({0}, {1})', cols, rows);
    }
    /** submit one header cell manually (rarely used) */
    inline static function tableHeader(label:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_TableHeader({0})', label);
    }
    /** submit a row with headers cells based on data provided to TableSetupColumn() + submit context menu */
    inline static function tableHeadersRow():Void {
        untyped __cpp__('ImGui_TableHeadersRow()');
    }
    /** submit a row with angled headers for every column with the ImGuiTableColumnFlags_AngledHeader flag. MUST BE FIRST ROW. */
    inline static function tableAngledHeadersRow():Void {
        untyped __cpp__('ImGui_TableAngledHeadersRow()');
    }
    /** get latest sort specs for the table (NULL if not sorting).  Lifetime: don't hold on this pointer over multiple frames or past any subsequent call to BeginTable(). */
    inline static function tableGetSortSpecs():cpp.Star<ImGuiTableSortSpecs> {
        return untyped __cpp__('ImGui_TableGetSortSpecs()');
    }
    /** return number of columns (value passed to BeginTable) */
    inline static function tableGetColumnCount():Int {
        return untyped __cpp__('ImGui_TableGetColumnCount()');
    }
    /** return current column index. */
    inline static function tableGetColumnIndex():Int {
        return untyped __cpp__('ImGui_TableGetColumnIndex()');
    }
    /** return current row index (header rows are accounted for) */
    inline static function tableGetRowIndex():Int {
        return untyped __cpp__('ImGui_TableGetRowIndex()');
    }
    /** return "" if column didn't have a name declared by TableSetupColumn(). Pass -1 to use current column. */
    inline static function tableGetColumnName(columnN:Int = -1):cpp.ConstCharStar {
        return untyped __cpp__('ImGui_TableGetColumnName({0})', columnN);
    }
    /** return column flags so you can query their Enabled/Visible/Sorted/Hovered status flags. Pass -1 to use current column. */
    inline static function tableGetColumnFlags(columnN:Int = -1):Int {
        return untyped __cpp__('ImGui_TableGetColumnFlags({0})', columnN);
    }
    /** change user accessible enabled/disabled state of a column. Set to false to hide the column. User can use the context menu to change this themselves (right-click in headers, or right-click in columns body with ImGuiTableFlags_ContextMenuInBody) */
    inline static function tableSetColumnEnabled(columnN:Int, v:Bool):Void {
        untyped __cpp__('ImGui_TableSetColumnEnabled({0}, {1})', columnN, v);
    }
    /** return hovered column. return -1 when table is not hovered. return columns_count if the unused space at the right of visible columns is hovered. Can also use (TableGetColumnFlags() & ImGuiTableColumnFlags_IsHovered) instead. */
    inline static function tableGetHoveredColumn():Int {
        return untyped __cpp__('ImGui_TableGetHoveredColumn()');
    }
    /** change the color of a cell, row, or column. See ImGuiTableBgTarget_ flags for details. */
    inline static function tableSetBgColor(target:Int, color:UInt, columnN:Int = -1):Void {
        untyped __cpp__('ImGui_TableSetBgColor({0}, {1}, {2})', target, color, columnN);
    }
    inline static function columnsEx(count:Int = 1, id:cpp.ConstCharStar = null, borders:Bool = true):Void {
        untyped __cpp__('ImGui_ColumnsEx({0}, {1}, {2})', count, id, borders);
    }
    /** Implied count = 1, id = NULL, borders = true */
    inline static function columns():Void {
        untyped __cpp__('ImGui_Columns()');
    }
    /** next column, defaults to current row or next row if the current row is finished */
    inline static function nextColumn():Void {
        untyped __cpp__('ImGui_NextColumn()');
    }
    /** get current column index */
    inline static function getColumnIndex():Int {
        return untyped __cpp__('ImGui_GetColumnIndex()');
    }
    /** get column width (in pixels). pass -1 to use current column */
    inline static function getColumnWidth(columnIndex:Int = -1):cpp.Float32 {
        return untyped __cpp__('ImGui_GetColumnWidth({0})', columnIndex);
    }
    /** set column width (in pixels). pass -1 to use current column */
    inline static function setColumnWidth(columnIndex:Int, width:cpp.Float32):Void {
        untyped __cpp__('ImGui_SetColumnWidth({0}, {1})', columnIndex, width);
    }
    /** get position of column line (in pixels, from the left side of the contents region). pass -1 to use current column, otherwise 0..GetColumnsCount() inclusive. column 0 is typically 0.0f */
    inline static function getColumnOffset(columnIndex:Int = -1):cpp.Float32 {
        return untyped __cpp__('ImGui_GetColumnOffset({0})', columnIndex);
    }
    /** set position of column line (in pixels, from the left side of the contents region). pass -1 to use current column */
    inline static function setColumnOffset(columnIndex:Int, offsetX:cpp.Float32):Void {
        untyped __cpp__('ImGui_SetColumnOffset({0}, {1})', columnIndex, offsetX);
    }
    inline static function getColumnsCount():Int {
        return untyped __cpp__('ImGui_GetColumnsCount()');
    }
    /** create and append into a TabBar */
    inline static function beginTabBar(strId:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginTabBar({0}, {1})', strId, flags);
    }
    /** only call EndTabBar() if BeginTabBar() returns true! */
    inline static function endTabBar():Void {
        untyped __cpp__('ImGui_EndTabBar()');
    }
    /** create a Tab. Returns true if the Tab is selected. */
    inline static function beginTabItem(label:cpp.ConstCharStar, pOpen:cpp.Star<Bool> = null, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginTabItem({0}, {1}, {2})', label, pOpen, flags);
    }
    /** only call EndTabItem() if BeginTabItem() returns true! */
    inline static function endTabItem():Void {
        untyped __cpp__('ImGui_EndTabItem()');
    }
    /** create a Tab behaving like a button. return true when clicked. cannot be selected in the tab bar. */
    inline static function tabItemButton(label:cpp.ConstCharStar, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_TabItemButton({0}, {1})', label, flags);
    }
    /** notify TabBar or Docking system of a closed tab/window ahead (useful to reduce visual flicker on reorderable tab bars). For tab-bar: call after BeginTabBar() and before Tab submissions. Otherwise call with a window name. */
    inline static function setTabItemClosed(tabOrDockedWindowLabel:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_SetTabItemClosed({0})', tabOrDockedWindowLabel);
    }
    inline static function dockSpaceEx(dockspaceId:UInt, size:ImVec2, flags:Int = 0, windowClass:cpp.Star<ImGuiWindowClass> = null):UInt {
        return untyped __cpp__('ImGui_DockSpaceEx({0}, {1}, {2}, {3})', dockspaceId, size, flags, windowClass);
    }
    /** Implied size = ImVec2(0, 0), flags = 0, window_class = NULL */
    inline static function dockSpace(dockspaceId:UInt):UInt {
        return untyped __cpp__('ImGui_DockSpace({0})', dockspaceId);
    }
    inline static function dockSpaceOverViewportEx(dockspaceId:UInt = 0, viewport:cpp.Star<ImGuiViewport> = null, flags:Int = 0, windowClass:cpp.Star<ImGuiWindowClass> = null):UInt {
        return untyped __cpp__('ImGui_DockSpaceOverViewportEx({0}, {1}, {2}, {3})', dockspaceId, viewport, flags, windowClass);
    }
    /** Implied dockspace_id = 0, viewport = NULL, flags = 0, window_class = NULL */
    inline static function dockSpaceOverViewport():UInt {
        return untyped __cpp__('ImGui_DockSpaceOverViewport()');
    }
    /** set next window dock id */
    inline static function setNextWindowDockID(dockId:UInt, cond:Int = 0):Void {
        untyped __cpp__('ImGui_SetNextWindowDockID({0}, {1})', dockId, cond);
    }
    /** set next window class (control docking compatibility + provide hints to platform backend via custom viewport flags and platform parent/child relationship) */
    inline static function setNextWindowClass(windowClass:cpp.Star<ImGuiWindowClass>):Void {
        untyped __cpp__('ImGui_SetNextWindowClass({0})', windowClass);
    }
    /** get dock id of current window, or 0 if not associated to any docking node. */
    inline static function getWindowDockID():UInt {
        return untyped __cpp__('ImGui_GetWindowDockID()');
    }
    /** is current window docked into another window? */
    inline static function isWindowDocked():Bool {
        return untyped __cpp__('ImGui_IsWindowDocked()');
    }
    /** start logging to tty (stdout) */
    inline static function logToTTY(autoOpenDepth:Int = -1):Void {
        untyped __cpp__('ImGui_LogToTTY({0})', autoOpenDepth);
    }
    /** start logging to file */
    inline static function logToFile(autoOpenDepth:Int = -1, filename:cpp.ConstCharStar = null):Void {
        untyped __cpp__('ImGui_LogToFile({0}, {1})', autoOpenDepth, filename);
    }
    /** start logging to OS clipboard */
    inline static function logToClipboard(autoOpenDepth:Int = -1):Void {
        untyped __cpp__('ImGui_LogToClipboard({0})', autoOpenDepth);
    }
    /** stop logging (close file, etc.) */
    inline static function logFinish():Void {
        untyped __cpp__('ImGui_LogFinish()');
    }
    /** helper to display buttons for logging to tty/file/clipboard */
    inline static function logButtons():Void {
        untyped __cpp__('ImGui_LogButtons()');
    }
    /** pass text data straight to log (without being displayed) */
    inline static function logText(text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_LogTextUnformatted({0})', text);
    }
    /** call after submitting an item which may be dragged. when this return true, you can call SetDragDropPayload() + EndDragDropSource() */
    inline static function beginDragDropSource(flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_BeginDragDropSource({0})', flags);
    }
    /** type is a user defined string of maximum 32 characters. Strings starting with '_' are reserved for dear imgui internal types. Data is copied and held by imgui. Return true when payload has been accepted. */
    inline static function setDragDropPayload(type:cpp.ConstCharStar, data:cpp.RawPointer<cpp.Void>, sz:cpp.SizeT, cond:Int = 0):Bool {
        return untyped __cpp__('ImGui_SetDragDropPayload({0}, {1}, {2}, {3})', type, data, sz, cond);
    }
    /** only call EndDragDropSource() if BeginDragDropSource() returns true! */
    inline static function endDragDropSource():Void {
        untyped __cpp__('ImGui_EndDragDropSource()');
    }
    /** call after submitting an item that may receive a payload. If this returns true, you can call AcceptDragDropPayload() + EndDragDropTarget() */
    inline static function beginDragDropTarget():Bool {
        return untyped __cpp__('ImGui_BeginDragDropTarget()');
    }
    /** accept contents of a given type. If ImGuiDragDropFlags_AcceptBeforeDelivery is set you can peek into the payload before the mouse button is released. */
    inline static function acceptDragDropPayload(type:cpp.ConstCharStar, flags:Int = 0):cpp.Star<ImGuiPayload> {
        return untyped __cpp__('(ImGuiPayload*)ImGui_AcceptDragDropPayload({0}, {1})', type, flags);
    }
    /** only call EndDragDropTarget() if BeginDragDropTarget() returns true! */
    inline static function endDragDropTarget():Void {
        untyped __cpp__('ImGui_EndDragDropTarget()');
    }
    /** peek directly into the current payload from anywhere. returns NULL when drag and drop is finished or inactive. use ImGuiPayload::IsDataType() to test for the payload type. */
    inline static function getDragDropPayload():cpp.Star<ImGuiPayload> {
        return untyped __cpp__('(ImGuiPayload*)ImGui_GetDragDropPayload()');
    }
    inline static function beginDisabled(disabled:Bool = true):Void {
        untyped __cpp__('ImGui_BeginDisabled({0})', disabled);
    }
    inline static function endDisabled():Void {
        untyped __cpp__('ImGui_EndDisabled()');
    }
    inline static function pushClipRect(clipRectMin:ImVec2, clipRectMax:ImVec2, intersectWithCurrentClipRect:Bool):Void {
        untyped __cpp__('ImGui_PushClipRect({0}, {1}, {2})', clipRectMin, clipRectMax, intersectWithCurrentClipRect);
    }
    inline static function popClipRect():Void {
        untyped __cpp__('ImGui_PopClipRect()');
    }
    /** make last item the default focused item of a newly appearing window. */
    inline static function setItemDefaultFocus():Void {
        untyped __cpp__('ImGui_SetItemDefaultFocus()');
    }
    /** focus keyboard on the next widget. Use positive 'offset' to access sub components of a multiple component widget. Use -1 to access previous widget. */
    inline static function setKeyboardFocusHereEx(offset:Int = 0):Void {
        untyped __cpp__('ImGui_SetKeyboardFocusHereEx({0})', offset);
    }
    /** Implied offset = 0 */
    inline static function setKeyboardFocusHere():Void {
        untyped __cpp__('ImGui_SetKeyboardFocusHere()');
    }
    /** alter visibility of keyboard/gamepad cursor. by default: show when using an arrow key, hide when clicking with mouse. */
    inline static function setNavCursorVisible(visible:Bool):Void {
        untyped __cpp__('ImGui_SetNavCursorVisible({0})', visible);
    }
    /** allow next item to be overlapped by a subsequent item. Typically useful with InvisibleButton(), Selectable(), TreeNode() covering an area where subsequent items may need to be added. Note that both Selectable() and TreeNode() have dedicated flags doing this. */
    inline static function setNextItemAllowOverlap():Void {
        untyped __cpp__('ImGui_SetNextItemAllowOverlap()');
    }
    /** is the last item hovered? (and usable, aka not blocked by a popup, etc.). See ImGuiHoveredFlags for more options. */
    inline static function isItemHovered(flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_IsItemHovered({0})', flags);
    }
    /** is the last item active? (e.g. button being held, text field being edited. This will continuously return true while holding mouse button on an item. Items that don't interact will always return false) */
    inline static function isItemActive():Bool {
        return untyped __cpp__('ImGui_IsItemActive()');
    }
    /** is the last item focused for keyboard/gamepad navigation? */
    inline static function isItemFocused():Bool {
        return untyped __cpp__('ImGui_IsItemFocused()');
    }
    /** is the last item hovered and mouse clicked on? (**)  == IsMouseClicked(mouse_button) && IsItemHovered()Important. (**) this is NOT equivalent to the behavior of e.g. Button(). Read comments in function definition. */
    inline static function isItemClickedEx(mouseButton:Int = 0):Bool {
        return untyped __cpp__('ImGui_IsItemClickedEx({0})', mouseButton);
    }
    /** Implied mouse_button = 0 */
    inline static function isItemClicked():Bool {
        return untyped __cpp__('ImGui_IsItemClicked()');
    }
    /** is the last item visible? (items may be out of sight because of clipping/scrolling) */
    inline static function isItemVisible():Bool {
        return untyped __cpp__('ImGui_IsItemVisible()');
    }
    /** did the last item modify its underlying value this frame? or was pressed? This is generally the same as the "bool" return value of many widgets. */
    inline static function isItemEdited():Bool {
        return untyped __cpp__('ImGui_IsItemEdited()');
    }
    /** was the last item just made active (item was previously inactive). */
    inline static function isItemActivated():Bool {
        return untyped __cpp__('ImGui_IsItemActivated()');
    }
    /** was the last item just made inactive (item was previously active). Useful for Undo/Redo patterns with widgets that require continuous editing. */
    inline static function isItemDeactivated():Bool {
        return untyped __cpp__('ImGui_IsItemDeactivated()');
    }
    /** was the last item just made inactive and made a value change when it was active? (e.g. Slider/Drag moved). Useful for Undo/Redo patterns with widgets that require continuous editing. Note that you may get false positives (some widgets such as Combo()/ListBox()/Selectable() will return true even when clicking an already selected item). */
    inline static function isItemDeactivatedAfterEdit():Bool {
        return untyped __cpp__('ImGui_IsItemDeactivatedAfterEdit()');
    }
    /** was the last item open state toggled? set by TreeNode(). */
    inline static function isItemToggledOpen():Bool {
        return untyped __cpp__('ImGui_IsItemToggledOpen()');
    }
    /** is any item hovered? */
    inline static function isAnyItemHovered():Bool {
        return untyped __cpp__('ImGui_IsAnyItemHovered()');
    }
    /** is any item active? */
    inline static function isAnyItemActive():Bool {
        return untyped __cpp__('ImGui_IsAnyItemActive()');
    }
    /** is any item focused? */
    inline static function isAnyItemFocused():Bool {
        return untyped __cpp__('ImGui_IsAnyItemFocused()');
    }
    /** get ID of last item (~~ often same ImGui::GetID(label) beforehand) */
    inline static function getItemID():UInt {
        return untyped __cpp__('ImGui_GetItemID()');
    }
    /** get upper-left bounding rectangle of the last item (screen space) */
    inline static function getItemRectMin():ImVec2 {
        return untyped __cpp__('ImGui_GetItemRectMin()');
    }
    /** get lower-right bounding rectangle of the last item (screen space) */
    inline static function getItemRectMax():ImVec2 {
        return untyped __cpp__('ImGui_GetItemRectMax()');
    }
    /** get size of last item */
    inline static function getItemRectSize():ImVec2 {
        return untyped __cpp__('ImGui_GetItemRectSize()');
    }
    /** get generic flags of last item */
    inline static function getItemFlags():Int {
        return untyped __cpp__('ImGui_GetItemFlags()');
    }
    /** return primary/default viewport. This can never be NULL. */
    inline static function getMainViewport():cpp.Star<ImGuiViewport> {
        return untyped __cpp__('ImGui_GetMainViewport()');
    }
    /** get background draw list for the given viewport or viewport associated to the current window. this draw list will be the first rendering one. Useful to quickly draw shapes/text behind dear imgui contents. */
    inline static function getBackgroundDrawListEx(viewport:cpp.Star<ImGuiViewport> = null):cpp.Star<ImDrawList> {
        return untyped __cpp__('ImGui_GetBackgroundDrawListEx({0})', viewport);
    }
    /** Implied viewport = NULL */
    inline static function getBackgroundDrawList():cpp.Star<ImDrawList> {
        return untyped __cpp__('ImGui_GetBackgroundDrawList()');
    }
    /** get foreground draw list for the given viewport or viewport associated to the current window. this draw list will be the top-most rendered one. Useful to quickly draw shapes/text over dear imgui contents. */
    inline static function getForegroundDrawListEx(viewport:cpp.Star<ImGuiViewport> = null):cpp.Star<ImDrawList> {
        return untyped __cpp__('ImGui_GetForegroundDrawListEx({0})', viewport);
    }
    /** Implied viewport = NULL */
    inline static function getForegroundDrawList():cpp.Star<ImDrawList> {
        return untyped __cpp__('ImGui_GetForegroundDrawList()');
    }
    /** test if rectangle (of given size, starting from cursor position) is visible / not clipped. */
    inline static function isRectVisibleBySize(size:ImVec2):Bool {
        return untyped __cpp__('ImGui_IsRectVisibleBySize({0})', size);
    }
    /** test if rectangle (in screen space) is visible / not clipped. to perform coarse clipping on user's side. */
    inline static function isRectVisible(rectMin:ImVec2, rectMax:ImVec2):Bool {
        return untyped __cpp__('ImGui_IsRectVisible({0}, {1})', rectMin, rectMax);
    }
    /** get global imgui time. incremented by io.DeltaTime every frame. */
    inline static function getTime():Float {
        return untyped __cpp__('ImGui_GetTime()');
    }
    /** get global imgui frame count. incremented by 1 every frame. */
    inline static function getFrameCount():Int {
        return untyped __cpp__('ImGui_GetFrameCount()');
    }
    /** you may use this when creating your own ImDrawList instances. */
    inline static function getDrawListSharedData():cpp.Star<ImDrawListSharedData> {
        return untyped __cpp__('ImGui_GetDrawListSharedData()');
    }
    /** get a string corresponding to the enum value (for display, saving, etc.). */
    inline static function getStyleColorName(idx:Int):cpp.ConstCharStar {
        return untyped __cpp__('ImGui_GetStyleColorName({0})', idx);
    }
    /** replace current window storage with our own (if you want to manipulate it yourself, typically clear subsection of it) */
    inline static function setStateStorage(storage:cpp.Star<ImGuiStorage>):Void {
        untyped __cpp__('ImGui_SetStateStorage({0})', storage);
    }
    inline static function getStateStorage():cpp.Star<ImGuiStorage> {
        return untyped __cpp__('ImGui_GetStateStorage()');
    }
    inline static function calcTextSizeEx(text:cpp.ConstCharStar, textEnd:cpp.ConstCharStar = null, hideTextAfterDoubleHash:Bool = false, wrapWidth:cpp.Float32 = -1.0):ImVec2 {
        return untyped __cpp__('ImGui_CalcTextSizeEx({0}, {1}, {2}, {3})', text, textEnd, hideTextAfterDoubleHash, wrapWidth);
    }
    /** Implied text_end = NULL, hide_text_after_double_hash = false, wrap_width = -1.0f */
    inline static function calcTextSize(text:cpp.ConstCharStar):ImVec2 {
        return untyped __cpp__('ImGui_CalcTextSize({0})', text);
    }
    inline static function colorConvertU32ToFloat4(in_:UInt):ImVec4 {
        return untyped __cpp__('ImGui_ColorConvertU32ToFloat4({0})', in_);
    }
    inline static function colorConvertFloat4ToU32(in_:ImVec4):UInt {
        return untyped __cpp__('ImGui_ColorConvertFloat4ToU32({0})', in_);
    }
    inline static function colorConvertRGBtoHSV(r:cpp.Float32, g:cpp.Float32, b:cpp.Float32, outH:cpp.Star<cpp.Float32>, outS:cpp.Star<cpp.Float32>, outV:cpp.Star<cpp.Float32>):Void {
        untyped __cpp__('ImGui_ColorConvertRGBtoHSV({0}, {1}, {2}, {3}, {4}, {5})', r, g, b, outH, outS, outV);
    }
    inline static function colorConvertHSVtoRGB(h:cpp.Float32, s:cpp.Float32, v:cpp.Float32, outR:cpp.Star<cpp.Float32>, outG:cpp.Star<cpp.Float32>, outB:cpp.Star<cpp.Float32>):Void {
        untyped __cpp__('ImGui_ColorConvertHSVtoRGB({0}, {1}, {2}, {3}, {4}, {5})', h, s, v, outR, outG, outB);
    }
    /** is key being held. */
    inline static function isKeyDown(key:Int):Bool {
        return untyped __cpp__('ImGui_IsKeyDown((ImGuiKey){0})', key);
    }
    /** was key pressed (went from !Down to Down)? Repeat rate uses io.KeyRepeatDelay / KeyRepeatRate. */
    inline static function isKeyPressedEx(key:Int, repeat:Bool = true):Bool {
        return untyped __cpp__('ImGui_IsKeyPressedEx((ImGuiKey){0}, {1})', key, repeat);
    }
    /** Implied repeat = true */
    inline static function isKeyPressed(key:Int):Bool {
        return untyped __cpp__('ImGui_IsKeyPressed((ImGuiKey){0})', key);
    }
    /** was key released (went from Down to !Down)? */
    inline static function isKeyReleased(key:Int):Bool {
        return untyped __cpp__('ImGui_IsKeyReleased((ImGuiKey){0})', key);
    }
    /** was key chord (mods + key) pressed, e.g. you can pass 'ImGuiMod_Ctrl | ImGuiKey_S' as a key-chord. This doesn't do any routing or focus check, please consider using Shortcut() function instead. */
    inline static function isKeyChordPressed(keyChord:Int):Bool {
        return untyped __cpp__('ImGui_IsKeyChordPressed({0})', keyChord);
    }
    /** uses provided repeat rate/delay. return a count, most often 0 or 1 but might be >1 if RepeatRate is small enough that DeltaTime > RepeatRate */
    inline static function getKeyPressedAmount(key:Int, repeatDelay:cpp.Float32, rate:cpp.Float32):Int {
        return untyped __cpp__('ImGui_GetKeyPressedAmount((ImGuiKey){0}, {1}, {2})', key, repeatDelay, rate);
    }
    /** [DEBUG] returns English name of the key. Those names are provided for debugging purpose and are not meant to be saved persistently nor compared. */
    inline static function getKeyName(key:Int):cpp.ConstCharStar {
        return untyped __cpp__('ImGui_GetKeyName((ImGuiKey){0})', key);
    }
    /** Override io.WantCaptureKeyboard flag next frame (said flag is left for your application to handle, typically when true it instructs your app to ignore inputs). e.g. force capture keyboard when your widget is being hovered. This is equivalent to setting "io.WantCaptureKeyboard = want_capture_keyboard"; after the next NewFrame() call. */
    inline static function setNextFrameWantCaptureKeyboard(wantCaptureKeyboard:Bool):Void {
        untyped __cpp__('ImGui_SetNextFrameWantCaptureKeyboard({0})', wantCaptureKeyboard);
    }
    inline static function shortcut(keyChord:Int, flags:Int = 0):Bool {
        return untyped __cpp__('ImGui_Shortcut({0}, {1})', keyChord, flags);
    }
    inline static function setNextItemShortcut(keyChord:Int, flags:Int = 0):Void {
        untyped __cpp__('ImGui_SetNextItemShortcut({0}, {1})', keyChord, flags);
    }
    /** Set key owner to last item ID if it is hovered or active. Return true when ownership has been set. Roughly equivalent to 'if (TestKeyOwner(key, GetItemID()) && (IsItemHovered() || IsItemActive())) { SetKeyOwner(key, GetItemID());'. */
    inline static function setItemKeyOwner(key:Int):Bool {
        return untyped __cpp__('ImGui_SetItemKeyOwner((ImGuiKey){0})', key);
    }
    /** is mouse button held? */
    inline static function isMouseDown(button:Int):Bool {
        return untyped __cpp__('ImGui_IsMouseDown({0})', button);
    }
    /** did mouse button clicked? (went from !Down to Down). Same as GetMouseClickedCount() == 1. */
    inline static function isMouseClickedEx(button:Int, repeat:Bool = false):Bool {
        return untyped __cpp__('ImGui_IsMouseClickedEx({0}, {1})', button, repeat);
    }
    /** Implied repeat = false */
    inline static function isMouseClicked(button:Int):Bool {
        return untyped __cpp__('ImGui_IsMouseClicked({0})', button);
    }
    /** did mouse button released? (went from Down to !Down) */
    inline static function isMouseReleased(button:Int):Bool {
        return untyped __cpp__('ImGui_IsMouseReleased({0})', button);
    }
    /** did mouse button double-clicked? Same as GetMouseClickedCount() == 2. (note that a double-click will also report IsMouseClicked() == true) */
    inline static function isMouseDoubleClicked(button:Int):Bool {
        return untyped __cpp__('ImGui_IsMouseDoubleClicked({0})', button);
    }
    /** delayed mouse release (use very sparingly!). Generally used with 'delay >= io.MouseDoubleClickTime' + combined with a 'io.MouseClickedLastCount==1' test. This is a very rarely used UI idiom, but some apps use this: e.g. MS Explorer single click on an icon to rename. */
    inline static function isMouseReleasedWithDelay(button:Int, delay:cpp.Float32):Bool {
        return untyped __cpp__('ImGui_IsMouseReleasedWithDelay({0}, {1})', button, delay);
    }
    /** return the number of successive mouse-clicks at the time where a click happen (otherwise 0). */
    inline static function getMouseClickedCount(button:Int):Int {
        return untyped __cpp__('ImGui_GetMouseClickedCount({0})', button);
    }
    /** is mouse hovering given bounding rect (in screen space). clipped by current clipping settings, but disregarding of other consideration of focus/window ordering/popup-block. */
    inline static function isMouseHoveringRectEx(rMin:ImVec2, rMax:ImVec2, clip:Bool = true):Bool {
        return untyped __cpp__('ImGui_IsMouseHoveringRectEx({0}, {1}, {2})', rMin, rMax, clip);
    }
    /** Implied clip = true */
    inline static function isMouseHoveringRect(rMin:ImVec2, rMax:ImVec2):Bool {
        return untyped __cpp__('ImGui_IsMouseHoveringRect({0}, {1})', rMin, rMax);
    }
    /** by convention we use (-FLT_MAX,-FLT_MAX) to denote that there is no mouse available */
    inline static function isMousePosValid(mousePos:cpp.Star<ImVec2> = null):Bool {
        return untyped __cpp__('ImGui_IsMousePosValid({0})', mousePos);
    }
    /** [WILL OBSOLETE] is any mouse button held? This was designed for backends, but prefer having backend maintain a mask of held mouse buttons, because upcoming input queue system will make this invalid. */
    inline static function isAnyMouseDown():Bool {
        return untyped __cpp__('ImGui_IsAnyMouseDown()');
    }
    /** shortcut to ImGui::GetIO().MousePos provided by user, to be consistent with other calls */
    inline static function getMousePos():ImVec2 {
        return untyped __cpp__('ImGui_GetMousePos()');
    }
    /** retrieve mouse position at the time of opening popup we have BeginPopup() into (helper to avoid user backing that value themselves) */
    inline static function getMousePosOnOpeningCurrentPopup():ImVec2 {
        return untyped __cpp__('ImGui_GetMousePosOnOpeningCurrentPopup()');
    }
    /** is mouse dragging? (uses io.MouseDraggingThreshold if lock_threshold < 0.0f) */
    inline static function isMouseDragging(button:Int, lockThreshold:cpp.Float32 = -1.0):Bool {
        return untyped __cpp__('ImGui_IsMouseDragging({0}, {1})', button, lockThreshold);
    }
    /** return the delta from the initial clicking position while the mouse button is pressed or was just released. This is locked and return 0.0f until the mouse moves past a distance threshold at least once (uses io.MouseDraggingThreshold if lock_threshold < 0.0f) */
    inline static function getMouseDragDelta(button:Int = 0, lockThreshold:cpp.Float32 = -1.0):ImVec2 {
        return untyped __cpp__('ImGui_GetMouseDragDelta({0}, {1})', button, lockThreshold);
    }
    inline static function resetMouseDragDeltaEx(button:Int = 0):Void {
        untyped __cpp__('ImGui_ResetMouseDragDeltaEx({0})', button);
    }
    /** Implied button = 0 */
    inline static function resetMouseDragDelta():Void {
        untyped __cpp__('ImGui_ResetMouseDragDelta()');
    }
    /** get desired mouse cursor shape. Important: reset in ImGui::NewFrame(), this is updated during the frame. valid before Render(). If you use software rendering by setting io.MouseDrawCursor ImGui will render those for you */
    inline static function getMouseCursor():Int {
        return untyped __cpp__('ImGui_GetMouseCursor()');
    }
    /** set desired mouse cursor shape */
    inline static function setMouseCursor(cursorType:Int):Void {
        untyped __cpp__('ImGui_SetMouseCursor({0})', cursorType);
    }
    /** Override io.WantCaptureMouse flag next frame (said flag is left for your application to handle, typical when true it instructs your app to ignore inputs). This is equivalent to setting "io.WantCaptureMouse = want_capture_mouse;" after the next NewFrame() call. */
    inline static function setNextFrameWantCaptureMouse(wantCaptureMouse:Bool):Void {
        untyped __cpp__('ImGui_SetNextFrameWantCaptureMouse({0})', wantCaptureMouse);
    }
    inline static function getClipboardText():cpp.ConstCharStar {
        return untyped __cpp__('ImGui_GetClipboardText()');
    }
    inline static function setClipboardText(text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_SetClipboardText({0})', text);
    }
    /** call after CreateContext() and before the first call to NewFrame(). NewFrame() automatically calls LoadIniSettingsFromDisk(io.IniFilename). */
    inline static function loadIniSettingsFromDisk(iniFilename:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_LoadIniSettingsFromDisk({0})', iniFilename);
    }
    /** call after CreateContext() and before the first call to NewFrame() to provide .ini data from your own data source. */
    inline static function loadIniSettingsFromMemory(iniData:cpp.ConstCharStar, iniSize:cpp.SizeT = 0):Void {
        untyped __cpp__('ImGui_LoadIniSettingsFromMemory({0}, {1})', iniData, iniSize);
    }
    /** this is automatically called (if io.IniFilename is not empty) a few seconds after any modification that should be reflected in the .ini file (and also by DestroyContext). */
    inline static function saveIniSettingsToDisk(iniFilename:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_SaveIniSettingsToDisk({0})', iniFilename);
    }
    /** return a zero-terminated string with the .ini data which you can save by your own mean. call when io.WantSaveIniSettings is set, then save data by your own mean and clear io.WantSaveIniSettings. */
    inline static function saveIniSettingsToMemory(outIniSize:cpp.Star<cpp.SizeT> = null):cpp.ConstCharStar {
        return untyped __cpp__('ImGui_SaveIniSettingsToMemory({0})', outIniSize);
    }
    inline static function debugTextEncoding(text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_DebugTextEncoding({0})', text);
    }
    inline static function debugFlashStyleColor(idx:Int):Void {
        untyped __cpp__('ImGui_DebugFlashStyleColor({0})', idx);
    }
    inline static function debugStartItemPicker():Void {
        untyped __cpp__('ImGui_DebugStartItemPicker()');
    }
    /** This is called by IMGUI_CHECKVERSION() macro. */
    inline static function debugCheckVersionAndDataLayout(versionStr:cpp.ConstCharStar, szIo:cpp.SizeT, szStyle:cpp.SizeT, szVec2:cpp.SizeT, szVec4:cpp.SizeT, szDrawvert:cpp.SizeT, szDrawidx:cpp.SizeT):Bool {
        return untyped __cpp__('ImGui_DebugCheckVersionAndDataLayout({0}, {1}, {2}, {3}, {4}, {5}, {6})', versionStr, szIo, szStyle, szVec2, szVec4, szDrawvert, szDrawidx);
    }
    /** Call via IMGUI_DEBUG_LOG() for maximum stripping in caller code! */
    inline static function debugLog(text:cpp.ConstCharStar):Void {
        untyped __cpp__('ImGui_DebugLogUnformatted({0})', text);
    }
    inline static function setAllocatorFunctions(allocFunc:ImGuiOpaqueCallback, freeFunc:ImGuiOpaqueCallback, userData:cpp.RawPointer<cpp.Void> = null):Void {
        untyped __cpp__('ImGui_SetAllocatorFunctions((ImGuiMemAllocFunc){0}, (ImGuiMemFreeFunc){1}, {2})', allocFunc, freeFunc, userData);
    }
    inline static function getAllocatorFunctions(pAllocFunc:cpp.Star<ImGuiOpaqueCallback>, pFreeFunc:cpp.Star<ImGuiOpaqueCallback>, pUserData:cpp.RawPointer<Void>):Void {
        untyped __cpp__('ImGui_GetAllocatorFunctions({0}, {1}, {2})', pAllocFunc, pFreeFunc, pUserData);
    }
    inline static function memAlloc(size:cpp.SizeT):cpp.RawPointer<cpp.Void> {
        return untyped __cpp__('ImGui_MemAlloc({0})', size);
    }
    inline static function memFree(ptr:cpp.RawPointer<cpp.Void>):Void {
        untyped __cpp__('ImGui_MemFree({0})', ptr);
    }
    /** call in main loop. will call CreateWindow/ResizeWindow/etc. platform functions for each secondary viewport, and DestroyWindow for each inactive viewport. */
    inline static function updatePlatformWindows():Void {
        untyped __cpp__('ImGui_UpdatePlatformWindows()');
    }
    /** call in main loop. will call RenderWindow/SwapBuffers platform functions for each secondary viewport which doesn't have the ImGuiViewportFlags_Minimized flag set. May be reimplemented by user for custom rendering needs. */
    inline static function renderPlatformWindowsDefaultEx(platformRenderArg:cpp.RawPointer<cpp.Void> = null, rendererRenderArg:cpp.RawPointer<cpp.Void> = null):Void {
        untyped __cpp__('ImGui_RenderPlatformWindowsDefaultEx({0}, {1})', platformRenderArg, rendererRenderArg);
    }
    /** Implied platform_render_arg = NULL, renderer_render_arg = NULL */
    inline static function renderPlatformWindowsDefault():Void {
        untyped __cpp__('ImGui_RenderPlatformWindowsDefault()');
    }
    /** call DestroyWindow platform functions for all viewports. call from backend Shutdown() if you need to close platform windows before imgui shutdown. otherwise will be called by DestroyContext(). */
    inline static function destroyPlatformWindows():Void {
        untyped __cpp__('ImGui_DestroyPlatformWindows()');
    }
    /** this is a helper for backends. */
    inline static function findViewportByID(viewportId:UInt):cpp.Star<ImGuiViewport> {
        return untyped __cpp__('ImGui_FindViewportByID({0})', viewportId);
    }
    /** this is a helper for backends. the type platform_handle is decided by the backend (e.g. HWND, MyWindow*, GLFWwindow* etc.) */
    inline static function findViewportByPlatformHandle(platformHandle:cpp.RawPointer<cpp.Void>):cpp.Star<ImGuiViewport> {
        return untyped __cpp__('ImGui_FindViewportByPlatformHandle({0})', platformHandle);
    }
    /** Construct a zero-size ImVector<> (of any type). This is primarily useful when calling ImFontGlyphRangesBuilder_BuildRanges() */
    inline static function imVector_Construct(vector:cpp.RawPointer<cpp.Void>):Void {
        untyped __cpp__('ImVector_Construct({0})', vector);
    }
    /** Destruct an ImVector<> (of any type). Important: Frees the vector memory but does not call destructors on contained objects (if they have them) */
    inline static function imVector_Destruct(vector:cpp.RawPointer<cpp.Void>):Void {
        untyped __cpp__('ImVector_Destruct({0})', vector);
    }

}
