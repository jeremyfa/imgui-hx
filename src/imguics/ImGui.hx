package imguics;

// =============================================================================
// GENERATED FILE - do not edit by hand (see gen/Gen.hx).
// cs-target bindings: P/Invoke through the generated DCImGui C# class
// (shipped with the ceramic imgui plugin alongside the native libs).
// Struct pointers cross as Haxe Float addresses (see ImGuiCs).
// =============================================================================

typedef ImGuiOpaqueCallback = Float;

typedef ImDrawIdx = Int;
typedef ImGuiID = Int;
typedef ImS8 = Int;
typedef ImU8 = Int;
typedef ImU16 = Int;
typedef ImS32 = Int;
typedef ImU32 = Int;
typedef ImS64 = Float;
typedef ImU64 = Float;
typedef ImDrawTextFlags = Int;
typedef ImGuiKeyChord = Int;
typedef ImWchar32 = Int;
typedef ImWchar16 = Int;
typedef ImWchar = Int;
typedef ImGuiSelectionUserData = Float;
typedef ImTextureID = Float;
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

@:native('ImVec2') @:struct extern class ImVec2 {
    public var x:Single;
    public var y:Single;
    function new(x:Single, y:Single):Void;
    inline public static function make(x:Float, y:Float):ImVec2 return new ImVec2(x, y);
}

@:native('ImVec4') @:struct extern class ImVec4 {
    public var x:Single;
    public var y:Single;
    public var z:Single;
    public var w:Single;
    function new(x:Single, y:Single, z:Single, w:Single):Void;
    inline public static function make(x:Float, y:Float, z:Float, w:Float):ImVec4 return new ImVec4(x, y, z, w);
}

@:native('ImTextureRef') @:struct extern class ImTextureRef {
    public var _TexData:cs.system.IntPtr;
    public var _TexID:cs.StdTypes.UInt64;
    function new(texData:cs.system.IntPtr, texID:cs.StdTypes.UInt64):Void;
    inline public static function fromID(texID:Float):ImTextureRef return new ImTextureRef(imguics.ImGuiCs.nullPtr(), imguics.ImGuiCs.toU64(texID));
}

abstract ImDrawListSharedData(Float) from Float to Float {
}

abstract ImFontAtlasBuilder(Float) from Float to Float {
}

abstract ImFontLoader(Float) from Float to Float {
}

abstract ImGuiContext(Float) from Float to Float {
}

abstract ImGuiTableSortSpecs(Float) from Float to Float {
    public var specs(get, set):ImGuiTableColumnSortSpecs;
    inline function get_specs():ImGuiTableColumnSortSpecs { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiTableSortSpecs_get_Specs(imguics.ImGuiCs.ptr(this))); }
    function set_specs(v:ImGuiTableColumnSortSpecs):ImGuiTableColumnSortSpecs { imguics.DCImGui.dcjs_ImGuiTableSortSpecs_set_Specs(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var specsCount(get, set):Int;
    inline function get_specsCount():Int { return imguics.DCImGui.dcjs_ImGuiTableSortSpecs_get_SpecsCount(imguics.ImGuiCs.ptr(this)); }
    function set_specsCount(v:Int):Int { imguics.DCImGui.dcjs_ImGuiTableSortSpecs_set_SpecsCount(imguics.ImGuiCs.ptr(this), v); return v; }
    public var specsDirty(get, set):Bool;
    inline function get_specsDirty():Bool { return imguics.DCImGui.dcjs_ImGuiTableSortSpecs_get_SpecsDirty(imguics.ImGuiCs.ptr(this)); }
    function set_specsDirty(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiTableSortSpecs_set_SpecsDirty(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImGuiTableSortSpecs) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiTableSortSpecs(); }
}

abstract ImGuiTableColumnSortSpecs(Float) from Float to Float {
    public var columnUserID(get, set):Int;
    inline function get_columnUserID():Int { return imguics.DCImGui.dcjs_ImGuiTableColumnSortSpecs_get_ColumnUserID(imguics.ImGuiCs.ptr(this)); }
    function set_columnUserID(v:Int):Int { imguics.DCImGui.dcjs_ImGuiTableColumnSortSpecs_set_ColumnUserID(imguics.ImGuiCs.ptr(this), v); return v; }
    public var columnIndex(get, set):Int;
    inline function get_columnIndex():Int { return imguics.DCImGui.dcjs_ImGuiTableColumnSortSpecs_get_ColumnIndex(imguics.ImGuiCs.ptr(this)); }
    function set_columnIndex(v:Int):Int { imguics.DCImGui.dcjs_ImGuiTableColumnSortSpecs_set_ColumnIndex(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toI16(v)); return v; }
    public var sortOrder(get, set):Int;
    inline function get_sortOrder():Int { return imguics.DCImGui.dcjs_ImGuiTableColumnSortSpecs_get_SortOrder(imguics.ImGuiCs.ptr(this)); }
    function set_sortOrder(v:Int):Int { imguics.DCImGui.dcjs_ImGuiTableColumnSortSpecs_set_SortOrder(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toI16(v)); return v; }
    public var sortDirection(get, set):Int;
    inline function get_sortDirection():Int { return imguics.DCImGui.dcjs_ImGuiTableColumnSortSpecs_get_SortDirection(imguics.ImGuiCs.ptr(this)); }
    function set_sortDirection(v:Int):Int { imguics.DCImGui.dcjs_ImGuiTableColumnSortSpecs_set_SortDirection(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU8(v)); return v; }
    /** sizeof(ImGuiTableColumnSortSpecs) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiTableColumnSortSpecs(); }
}

abstract ImVector_ImGuiTextRange(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImGuiTextRange_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImGuiTextRange_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImGuiTextRange_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImGuiTextRange_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImGuiTextRange_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImGuiTextRange_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImGuiTextRange) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImGuiTextRange(); }
}

abstract ImVector_char(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_char_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_char_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_char_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_char_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_char_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_char_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_char) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_char(); }
}

abstract ImVector_ImGuiStoragePair(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImGuiStoragePair_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImGuiStoragePair_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImGuiStoragePair_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImGuiStoragePair_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImGuiStoragePair_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImGuiStoragePair_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImGuiStoragePair) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImGuiStoragePair(); }
}

abstract ImVector_ImGuiSelectionRequest(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImGuiSelectionRequest_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImGuiSelectionRequest_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImGuiSelectionRequest_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImGuiSelectionRequest_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):ImGuiSelectionRequest;
    inline function get_data():ImGuiSelectionRequest { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImGuiSelectionRequest_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:ImGuiSelectionRequest):ImGuiSelectionRequest { imguics.DCImGui.dcjs_ImVector_ImGuiSelectionRequest_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImGuiSelectionRequest) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImGuiSelectionRequest(); }
}

abstract ImVector_ImDrawChannel(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawChannel_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawChannel_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawChannel_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawChannel_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImDrawChannel_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImDrawChannel_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImDrawChannel) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImDrawChannel(); }
}

abstract ImVector_ImDrawCmd(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawCmd_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawCmd_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawCmd_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawCmd_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):ImDrawCmd;
    inline function get_data():ImDrawCmd { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImDrawCmd_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:ImDrawCmd):ImDrawCmd { imguics.DCImGui.dcjs_ImVector_ImDrawCmd_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImDrawCmd) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImDrawCmd(); }
}

abstract ImVector_ImDrawIdx(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawIdx_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawIdx_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawIdx_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawIdx_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImDrawIdx_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImDrawIdx_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImDrawIdx) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImDrawIdx(); }
}

abstract ImVector_ImDrawVert(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawVert_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawVert_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawVert_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawVert_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):ImDrawVert;
    inline function get_data():ImDrawVert { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImDrawVert_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:ImDrawVert):ImDrawVert { imguics.DCImGui.dcjs_ImVector_ImDrawVert_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImDrawVert) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImDrawVert(); }
}

abstract ImVector_ImVec2(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImVec2_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImVec2_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImVec2_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImVec2_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImVec2_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImVec2_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImVec2) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImVec2(); }
}

abstract ImVector_ImVec4(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImVec4_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImVec4_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImVec4_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImVec4_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImVec4_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImVec4_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImVec4) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImVec4(); }
}

abstract ImVector_ImTextureRef(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImTextureRef_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImTextureRef_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImTextureRef_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImTextureRef_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImTextureRef_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImTextureRef_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImTextureRef) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImTextureRef(); }
}

abstract ImVector_ImU8(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImU8_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImU8_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImU8_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImU8_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImU8_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImU8_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImU8) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImU8(); }
}

abstract ImVector_ImDrawListPtr(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawListPtr_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawListPtr_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawListPtr_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawListPtr_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImDrawListPtr_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImDrawListPtr_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImDrawListPtr) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImDrawListPtr(); }
}

abstract ImVector_ImTextureRect(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImTextureRect_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImTextureRect_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImTextureRect_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImTextureRect_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):ImTextureRect;
    inline function get_data():ImTextureRect { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImTextureRect_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:ImTextureRect):ImTextureRect { imguics.DCImGui.dcjs_ImVector_ImTextureRect_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImTextureRect) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImTextureRect(); }
}

abstract ImVector_ImU32(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImU32_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImU32_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImU32_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImU32_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImU32_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImU32_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImU32) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImU32(); }
}

abstract ImVector_ImWchar(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImWchar_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImWchar_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImWchar_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImWchar_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImWchar_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImWchar_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImWchar) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImWchar(); }
}

abstract ImVector_ImFontPtr(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImFontPtr_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImFontPtr_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImFontPtr_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImFontPtr_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImFontPtr_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImFontPtr_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImFontPtr) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImFontPtr(); }
}

abstract ImVector_ImFontConfig(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImFontConfig_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImFontConfig_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImFontConfig_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImFontConfig_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):ImFontConfig;
    inline function get_data():ImFontConfig { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImFontConfig_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:ImFontConfig):ImFontConfig { imguics.DCImGui.dcjs_ImVector_ImFontConfig_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImFontConfig) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImFontConfig(); }
}

abstract ImVector_ImDrawListSharedDataPtr(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawListSharedDataPtr_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawListSharedDataPtr_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImDrawListSharedDataPtr_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImDrawListSharedDataPtr_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImDrawListSharedDataPtr_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImDrawListSharedDataPtr_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImDrawListSharedDataPtr) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImDrawListSharedDataPtr(); }
}

abstract ImVector_float(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_float_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_float_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_float_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_float_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_float_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_float_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_float) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_float(); }
}

abstract ImVector_ImU16(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImU16_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImU16_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImU16_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImU16_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImU16_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImU16_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImU16) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImU16(); }
}

abstract ImVector_ImFontGlyph(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImFontGlyph_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImFontGlyph_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImFontGlyph_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImFontGlyph_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):ImFontGlyph;
    inline function get_data():ImFontGlyph { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImFontGlyph_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:ImFontGlyph):ImFontGlyph { imguics.DCImGui.dcjs_ImVector_ImFontGlyph_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImFontGlyph) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImFontGlyph(); }
}

abstract ImVector_ImFontConfigPtr(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImFontConfigPtr_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImFontConfigPtr_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImFontConfigPtr_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImFontConfigPtr_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImFontConfigPtr_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImFontConfigPtr_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImFontConfigPtr) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImFontConfigPtr(); }
}

abstract ImVector_ImGuiPlatformMonitor(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImGuiPlatformMonitor_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImGuiPlatformMonitor_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImGuiPlatformMonitor_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImGuiPlatformMonitor_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):ImGuiPlatformMonitor;
    inline function get_data():ImGuiPlatformMonitor { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImGuiPlatformMonitor_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:ImGuiPlatformMonitor):ImGuiPlatformMonitor { imguics.DCImGui.dcjs_ImVector_ImGuiPlatformMonitor_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImGuiPlatformMonitor) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImGuiPlatformMonitor(); }
}

abstract ImVector_ImTextureDataPtr(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImTextureDataPtr_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImTextureDataPtr_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImTextureDataPtr_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImTextureDataPtr_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImTextureDataPtr_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImTextureDataPtr_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImTextureDataPtr) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImTextureDataPtr(); }
}

abstract ImVector_ImGuiViewportPtr(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImVector_ImGuiViewportPtr_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImGuiViewportPtr_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguics.DCImGui.dcjs_ImVector_ImGuiViewportPtr_get_Capacity(imguics.ImGuiCs.ptr(this)); }
    function set_capacity(v:Int):Int { imguics.DCImGui.dcjs_ImVector_ImGuiViewportPtr_set_Capacity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImVector_ImGuiViewportPtr_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImVector_ImGuiViewportPtr_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImVector_ImGuiViewportPtr) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImVector_ImGuiViewportPtr(); }
}

abstract ImGuiStyle(Float) from Float to Float {
    public var fontSizeBase(get, set):Float;
    inline function get_fontSizeBase():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_FontSizeBase(imguics.ImGuiCs.ptr(this)); }
    function set_fontSizeBase(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_FontSizeBase(imguics.ImGuiCs.ptr(this), v); return v; }
    public var fontScaleMain(get, set):Float;
    inline function get_fontScaleMain():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_FontScaleMain(imguics.ImGuiCs.ptr(this)); }
    function set_fontScaleMain(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_FontScaleMain(imguics.ImGuiCs.ptr(this), v); return v; }
    public var fontScaleDpi(get, set):Float;
    inline function get_fontScaleDpi():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_FontScaleDpi(imguics.ImGuiCs.ptr(this)); }
    function set_fontScaleDpi(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_FontScaleDpi(imguics.ImGuiCs.ptr(this), v); return v; }
    public var alpha(get, set):Float;
    inline function get_alpha():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_Alpha(imguics.ImGuiCs.ptr(this)); }
    function set_alpha(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_Alpha(imguics.ImGuiCs.ptr(this), v); return v; }
    public var disabledAlpha(get, set):Float;
    inline function get_disabledAlpha():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_DisabledAlpha(imguics.ImGuiCs.ptr(this)); }
    function set_disabledAlpha(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_DisabledAlpha(imguics.ImGuiCs.ptr(this), v); return v; }
    public var windowPadding(get, set):ImVec2;
    inline function get_windowPadding():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_WindowPadding(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_windowPadding(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_WindowPadding(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var windowRounding(get, set):Float;
    inline function get_windowRounding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_WindowRounding(imguics.ImGuiCs.ptr(this)); }
    function set_windowRounding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_WindowRounding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var windowBorderSize(get, set):Float;
    inline function get_windowBorderSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_WindowBorderSize(imguics.ImGuiCs.ptr(this)); }
    function set_windowBorderSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_WindowBorderSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var windowBorderHoverPadding(get, set):Float;
    inline function get_windowBorderHoverPadding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_WindowBorderHoverPadding(imguics.ImGuiCs.ptr(this)); }
    function set_windowBorderHoverPadding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_WindowBorderHoverPadding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var windowMinSize(get, set):ImVec2;
    inline function get_windowMinSize():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_WindowMinSize(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_windowMinSize(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_WindowMinSize(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var windowTitleAlign(get, set):ImVec2;
    inline function get_windowTitleAlign():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_WindowTitleAlign(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_windowTitleAlign(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_WindowTitleAlign(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var windowMenuButtonPosition(get, set):Int;
    inline function get_windowMenuButtonPosition():Int { return imguics.DCImGui.dcjs_ImGuiStyle_get_WindowMenuButtonPosition(imguics.ImGuiCs.ptr(this)); }
    function set_windowMenuButtonPosition(v:Int):Int { imguics.DCImGui.dcjs_ImGuiStyle_set_WindowMenuButtonPosition(imguics.ImGuiCs.ptr(this), v); return v; }
    public var childRounding(get, set):Float;
    inline function get_childRounding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_ChildRounding(imguics.ImGuiCs.ptr(this)); }
    function set_childRounding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_ChildRounding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var childBorderSize(get, set):Float;
    inline function get_childBorderSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_ChildBorderSize(imguics.ImGuiCs.ptr(this)); }
    function set_childBorderSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_ChildBorderSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var popupRounding(get, set):Float;
    inline function get_popupRounding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_PopupRounding(imguics.ImGuiCs.ptr(this)); }
    function set_popupRounding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_PopupRounding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var popupBorderSize(get, set):Float;
    inline function get_popupBorderSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_PopupBorderSize(imguics.ImGuiCs.ptr(this)); }
    function set_popupBorderSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_PopupBorderSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var framePadding(get, set):ImVec2;
    inline function get_framePadding():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_FramePadding(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_framePadding(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_FramePadding(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var frameRounding(get, set):Float;
    inline function get_frameRounding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_FrameRounding(imguics.ImGuiCs.ptr(this)); }
    function set_frameRounding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_FrameRounding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var frameBorderSize(get, set):Float;
    inline function get_frameBorderSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_FrameBorderSize(imguics.ImGuiCs.ptr(this)); }
    function set_frameBorderSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_FrameBorderSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var itemSpacing(get, set):ImVec2;
    inline function get_itemSpacing():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_ItemSpacing(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_itemSpacing(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_ItemSpacing(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var itemInnerSpacing(get, set):ImVec2;
    inline function get_itemInnerSpacing():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_ItemInnerSpacing(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_itemInnerSpacing(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_ItemInnerSpacing(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var cellPadding(get, set):ImVec2;
    inline function get_cellPadding():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_CellPadding(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_cellPadding(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_CellPadding(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var touchExtraPadding(get, set):ImVec2;
    inline function get_touchExtraPadding():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_TouchExtraPadding(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_touchExtraPadding(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_TouchExtraPadding(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var indentSpacing(get, set):Float;
    inline function get_indentSpacing():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_IndentSpacing(imguics.ImGuiCs.ptr(this)); }
    function set_indentSpacing(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_IndentSpacing(imguics.ImGuiCs.ptr(this), v); return v; }
    public var columnsMinSpacing(get, set):Float;
    inline function get_columnsMinSpacing():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_ColumnsMinSpacing(imguics.ImGuiCs.ptr(this)); }
    function set_columnsMinSpacing(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_ColumnsMinSpacing(imguics.ImGuiCs.ptr(this), v); return v; }
    public var scrollbarSize(get, set):Float;
    inline function get_scrollbarSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_ScrollbarSize(imguics.ImGuiCs.ptr(this)); }
    function set_scrollbarSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_ScrollbarSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var scrollbarRounding(get, set):Float;
    inline function get_scrollbarRounding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_ScrollbarRounding(imguics.ImGuiCs.ptr(this)); }
    function set_scrollbarRounding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_ScrollbarRounding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var scrollbarPadding(get, set):Float;
    inline function get_scrollbarPadding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_ScrollbarPadding(imguics.ImGuiCs.ptr(this)); }
    function set_scrollbarPadding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_ScrollbarPadding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var grabMinSize(get, set):Float;
    inline function get_grabMinSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_GrabMinSize(imguics.ImGuiCs.ptr(this)); }
    function set_grabMinSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_GrabMinSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var grabRounding(get, set):Float;
    inline function get_grabRounding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_GrabRounding(imguics.ImGuiCs.ptr(this)); }
    function set_grabRounding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_GrabRounding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var logSliderDeadzone(get, set):Float;
    inline function get_logSliderDeadzone():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_LogSliderDeadzone(imguics.ImGuiCs.ptr(this)); }
    function set_logSliderDeadzone(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_LogSliderDeadzone(imguics.ImGuiCs.ptr(this), v); return v; }
    public var imageRounding(get, set):Float;
    inline function get_imageRounding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_ImageRounding(imguics.ImGuiCs.ptr(this)); }
    function set_imageRounding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_ImageRounding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var imageBorderSize(get, set):Float;
    inline function get_imageBorderSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_ImageBorderSize(imguics.ImGuiCs.ptr(this)); }
    function set_imageBorderSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_ImageBorderSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var tabRounding(get, set):Float;
    inline function get_tabRounding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_TabRounding(imguics.ImGuiCs.ptr(this)); }
    function set_tabRounding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_TabRounding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var tabBorderSize(get, set):Float;
    inline function get_tabBorderSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_TabBorderSize(imguics.ImGuiCs.ptr(this)); }
    function set_tabBorderSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_TabBorderSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var tabMinWidthBase(get, set):Float;
    inline function get_tabMinWidthBase():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_TabMinWidthBase(imguics.ImGuiCs.ptr(this)); }
    function set_tabMinWidthBase(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_TabMinWidthBase(imguics.ImGuiCs.ptr(this), v); return v; }
    public var tabMinWidthShrink(get, set):Float;
    inline function get_tabMinWidthShrink():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_TabMinWidthShrink(imguics.ImGuiCs.ptr(this)); }
    function set_tabMinWidthShrink(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_TabMinWidthShrink(imguics.ImGuiCs.ptr(this), v); return v; }
    public var tabCloseButtonMinWidthSelected(get, set):Float;
    inline function get_tabCloseButtonMinWidthSelected():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_TabCloseButtonMinWidthSelected(imguics.ImGuiCs.ptr(this)); }
    function set_tabCloseButtonMinWidthSelected(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_TabCloseButtonMinWidthSelected(imguics.ImGuiCs.ptr(this), v); return v; }
    public var tabCloseButtonMinWidthUnselected(get, set):Float;
    inline function get_tabCloseButtonMinWidthUnselected():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_TabCloseButtonMinWidthUnselected(imguics.ImGuiCs.ptr(this)); }
    function set_tabCloseButtonMinWidthUnselected(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_TabCloseButtonMinWidthUnselected(imguics.ImGuiCs.ptr(this), v); return v; }
    public var tabBarBorderSize(get, set):Float;
    inline function get_tabBarBorderSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_TabBarBorderSize(imguics.ImGuiCs.ptr(this)); }
    function set_tabBarBorderSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_TabBarBorderSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var tabBarOverlineSize(get, set):Float;
    inline function get_tabBarOverlineSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_TabBarOverlineSize(imguics.ImGuiCs.ptr(this)); }
    function set_tabBarOverlineSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_TabBarOverlineSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var tableAngledHeadersAngle(get, set):Float;
    inline function get_tableAngledHeadersAngle():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_TableAngledHeadersAngle(imguics.ImGuiCs.ptr(this)); }
    function set_tableAngledHeadersAngle(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_TableAngledHeadersAngle(imguics.ImGuiCs.ptr(this), v); return v; }
    public var tableAngledHeadersTextAlign(get, set):ImVec2;
    inline function get_tableAngledHeadersTextAlign():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_TableAngledHeadersTextAlign(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_tableAngledHeadersTextAlign(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_TableAngledHeadersTextAlign(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var treeLinesFlags(get, set):Int;
    inline function get_treeLinesFlags():Int { return imguics.DCImGui.dcjs_ImGuiStyle_get_TreeLinesFlags(imguics.ImGuiCs.ptr(this)); }
    function set_treeLinesFlags(v:Int):Int { imguics.DCImGui.dcjs_ImGuiStyle_set_TreeLinesFlags(imguics.ImGuiCs.ptr(this), v); return v; }
    public var treeLinesSize(get, set):Float;
    inline function get_treeLinesSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_TreeLinesSize(imguics.ImGuiCs.ptr(this)); }
    function set_treeLinesSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_TreeLinesSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var treeLinesRounding(get, set):Float;
    inline function get_treeLinesRounding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_TreeLinesRounding(imguics.ImGuiCs.ptr(this)); }
    function set_treeLinesRounding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_TreeLinesRounding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var dragDropTargetRounding(get, set):Float;
    inline function get_dragDropTargetRounding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_DragDropTargetRounding(imguics.ImGuiCs.ptr(this)); }
    function set_dragDropTargetRounding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_DragDropTargetRounding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var dragDropTargetBorderSize(get, set):Float;
    inline function get_dragDropTargetBorderSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_DragDropTargetBorderSize(imguics.ImGuiCs.ptr(this)); }
    function set_dragDropTargetBorderSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_DragDropTargetBorderSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var dragDropTargetPadding(get, set):Float;
    inline function get_dragDropTargetPadding():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_DragDropTargetPadding(imguics.ImGuiCs.ptr(this)); }
    function set_dragDropTargetPadding(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_DragDropTargetPadding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var colorMarkerSize(get, set):Float;
    inline function get_colorMarkerSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_ColorMarkerSize(imguics.ImGuiCs.ptr(this)); }
    function set_colorMarkerSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_ColorMarkerSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var colorButtonPosition(get, set):Int;
    inline function get_colorButtonPosition():Int { return imguics.DCImGui.dcjs_ImGuiStyle_get_ColorButtonPosition(imguics.ImGuiCs.ptr(this)); }
    function set_colorButtonPosition(v:Int):Int { imguics.DCImGui.dcjs_ImGuiStyle_set_ColorButtonPosition(imguics.ImGuiCs.ptr(this), v); return v; }
    public var buttonTextAlign(get, set):ImVec2;
    inline function get_buttonTextAlign():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_ButtonTextAlign(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_buttonTextAlign(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_ButtonTextAlign(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var selectableTextAlign(get, set):ImVec2;
    inline function get_selectableTextAlign():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_SelectableTextAlign(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_selectableTextAlign(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_SelectableTextAlign(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var separatorSize(get, set):Float;
    inline function get_separatorSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_SeparatorSize(imguics.ImGuiCs.ptr(this)); }
    function set_separatorSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_SeparatorSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var separatorTextBorderSize(get, set):Float;
    inline function get_separatorTextBorderSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_SeparatorTextBorderSize(imguics.ImGuiCs.ptr(this)); }
    function set_separatorTextBorderSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_SeparatorTextBorderSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var separatorTextAlign(get, set):ImVec2;
    inline function get_separatorTextAlign():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_SeparatorTextAlign(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_separatorTextAlign(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_SeparatorTextAlign(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var separatorTextPadding(get, set):ImVec2;
    inline function get_separatorTextPadding():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_SeparatorTextPadding(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_separatorTextPadding(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_SeparatorTextPadding(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var displayWindowPadding(get, set):ImVec2;
    inline function get_displayWindowPadding():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_DisplayWindowPadding(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_displayWindowPadding(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_DisplayWindowPadding(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var displaySafeAreaPadding(get, set):ImVec2;
    inline function get_displaySafeAreaPadding():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiStyle_get_DisplaySafeAreaPadding(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_displaySafeAreaPadding(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiStyle_set_DisplaySafeAreaPadding(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var dockingNodeHasCloseButton(get, set):Bool;
    inline function get_dockingNodeHasCloseButton():Bool { return imguics.DCImGui.dcjs_ImGuiStyle_get_DockingNodeHasCloseButton(imguics.ImGuiCs.ptr(this)); }
    function set_dockingNodeHasCloseButton(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiStyle_set_DockingNodeHasCloseButton(imguics.ImGuiCs.ptr(this), v); return v; }
    public var dockingSeparatorSize(get, set):Float;
    inline function get_dockingSeparatorSize():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_DockingSeparatorSize(imguics.ImGuiCs.ptr(this)); }
    function set_dockingSeparatorSize(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_DockingSeparatorSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mouseCursorScale(get, set):Float;
    inline function get_mouseCursorScale():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_MouseCursorScale(imguics.ImGuiCs.ptr(this)); }
    function set_mouseCursorScale(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_MouseCursorScale(imguics.ImGuiCs.ptr(this), v); return v; }
    public var antiAliasedLines(get, set):Bool;
    inline function get_antiAliasedLines():Bool { return imguics.DCImGui.dcjs_ImGuiStyle_get_AntiAliasedLines(imguics.ImGuiCs.ptr(this)); }
    function set_antiAliasedLines(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiStyle_set_AntiAliasedLines(imguics.ImGuiCs.ptr(this), v); return v; }
    public var antiAliasedLinesUseTex(get, set):Bool;
    inline function get_antiAliasedLinesUseTex():Bool { return imguics.DCImGui.dcjs_ImGuiStyle_get_AntiAliasedLinesUseTex(imguics.ImGuiCs.ptr(this)); }
    function set_antiAliasedLinesUseTex(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiStyle_set_AntiAliasedLinesUseTex(imguics.ImGuiCs.ptr(this), v); return v; }
    public var antiAliasedFill(get, set):Bool;
    inline function get_antiAliasedFill():Bool { return imguics.DCImGui.dcjs_ImGuiStyle_get_AntiAliasedFill(imguics.ImGuiCs.ptr(this)); }
    function set_antiAliasedFill(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiStyle_set_AntiAliasedFill(imguics.ImGuiCs.ptr(this), v); return v; }
    public var curveTessellationTol(get, set):Float;
    inline function get_curveTessellationTol():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_CurveTessellationTol(imguics.ImGuiCs.ptr(this)); }
    function set_curveTessellationTol(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_CurveTessellationTol(imguics.ImGuiCs.ptr(this), v); return v; }
    public var circleTessellationMaxError(get, set):Float;
    inline function get_circleTessellationMaxError():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_CircleTessellationMaxError(imguics.ImGuiCs.ptr(this)); }
    function set_circleTessellationMaxError(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_CircleTessellationMaxError(imguics.ImGuiCs.ptr(this), v); return v; }
    public var hoverStationaryDelay(get, set):Float;
    inline function get_hoverStationaryDelay():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_HoverStationaryDelay(imguics.ImGuiCs.ptr(this)); }
    function set_hoverStationaryDelay(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_HoverStationaryDelay(imguics.ImGuiCs.ptr(this), v); return v; }
    public var hoverDelayShort(get, set):Float;
    inline function get_hoverDelayShort():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_HoverDelayShort(imguics.ImGuiCs.ptr(this)); }
    function set_hoverDelayShort(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_HoverDelayShort(imguics.ImGuiCs.ptr(this), v); return v; }
    public var hoverDelayNormal(get, set):Float;
    inline function get_hoverDelayNormal():Float { return imguics.DCImGui.dcjs_ImGuiStyle_get_HoverDelayNormal(imguics.ImGuiCs.ptr(this)); }
    function set_hoverDelayNormal(v:Float):Float { imguics.DCImGui.dcjs_ImGuiStyle_set_HoverDelayNormal(imguics.ImGuiCs.ptr(this), v); return v; }
    public var hoverFlagsForTooltipMouse(get, set):Int;
    inline function get_hoverFlagsForTooltipMouse():Int { return imguics.DCImGui.dcjs_ImGuiStyle_get_HoverFlagsForTooltipMouse(imguics.ImGuiCs.ptr(this)); }
    function set_hoverFlagsForTooltipMouse(v:Int):Int { imguics.DCImGui.dcjs_ImGuiStyle_set_HoverFlagsForTooltipMouse(imguics.ImGuiCs.ptr(this), v); return v; }
    public var hoverFlagsForTooltipNav(get, set):Int;
    inline function get_hoverFlagsForTooltipNav():Int { return imguics.DCImGui.dcjs_ImGuiStyle_get_HoverFlagsForTooltipNav(imguics.ImGuiCs.ptr(this)); }
    function set_hoverFlagsForTooltipNav(v:Int):Int { imguics.DCImGui.dcjs_ImGuiStyle_set_HoverFlagsForTooltipNav(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImGuiStyle) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiStyle(); }

    public static function scaleAllSizes(self:ImGuiStyle, scaleFactor:Float):Void {
        imguics.DCImGui.ImGuiStyle_ScaleAllSizes(imguics.ImGuiCs.ptr(self), scaleFactor);
    }
}

abstract ImGuiIO(Float) from Float to Float {
    public var configFlags(get, set):Int;
    inline function get_configFlags():Int { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigFlags(imguics.ImGuiCs.ptr(this)); }
    function set_configFlags(v:Int):Int { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigFlags(imguics.ImGuiCs.ptr(this), v); return v; }
    public var backendFlags(get, set):Int;
    inline function get_backendFlags():Int { return imguics.DCImGui.dcjs_ImGuiIO_get_BackendFlags(imguics.ImGuiCs.ptr(this)); }
    function set_backendFlags(v:Int):Int { imguics.DCImGui.dcjs_ImGuiIO_set_BackendFlags(imguics.ImGuiCs.ptr(this), v); return v; }
    public var displaySize(get, set):ImVec2;
    inline function get_displaySize():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiIO_get_DisplaySize(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_displaySize(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiIO_set_DisplaySize(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var displayFramebufferScale(get, set):ImVec2;
    inline function get_displayFramebufferScale():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiIO_get_DisplayFramebufferScale(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_displayFramebufferScale(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiIO_set_DisplayFramebufferScale(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var deltaTime(get, set):Float;
    inline function get_deltaTime():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_DeltaTime(imguics.ImGuiCs.ptr(this)); }
    function set_deltaTime(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_DeltaTime(imguics.ImGuiCs.ptr(this), v); return v; }
    public var iniSavingRate(get, set):Float;
    inline function get_iniSavingRate():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_IniSavingRate(imguics.ImGuiCs.ptr(this)); }
    function set_iniSavingRate(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_IniSavingRate(imguics.ImGuiCs.ptr(this), v); return v; }
    public var iniFilename(get, set):Float;
    inline function get_iniFilename():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_get_IniFilename(imguics.ImGuiCs.ptr(this))); }
    function set_iniFilename(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_IniFilename(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var logFilename(get, set):Float;
    inline function get_logFilename():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_get_LogFilename(imguics.ImGuiCs.ptr(this))); }
    function set_logFilename(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_LogFilename(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var userData(get, set):Float;
    inline function get_userData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_get_UserData(imguics.ImGuiCs.ptr(this))); }
    function set_userData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_UserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var fonts(get, set):ImFontAtlas;
    inline function get_fonts():ImFontAtlas { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_get_Fonts(imguics.ImGuiCs.ptr(this))); }
    function set_fonts(v:ImFontAtlas):ImFontAtlas { imguics.DCImGui.dcjs_ImGuiIO_set_Fonts(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var fontDefault(get, set):ImFont;
    inline function get_fontDefault():ImFont { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_get_FontDefault(imguics.ImGuiCs.ptr(this))); }
    function set_fontDefault(v:ImFont):ImFont { imguics.DCImGui.dcjs_ImGuiIO_set_FontDefault(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var fontAllowUserScaling(get, set):Bool;
    inline function get_fontAllowUserScaling():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_FontAllowUserScaling(imguics.ImGuiCs.ptr(this)); }
    function set_fontAllowUserScaling(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_FontAllowUserScaling(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configNavSwapGamepadButtons(get, set):Bool;
    inline function get_configNavSwapGamepadButtons():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigNavSwapGamepadButtons(imguics.ImGuiCs.ptr(this)); }
    function set_configNavSwapGamepadButtons(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigNavSwapGamepadButtons(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configNavMoveSetMousePos(get, set):Bool;
    inline function get_configNavMoveSetMousePos():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigNavMoveSetMousePos(imguics.ImGuiCs.ptr(this)); }
    function set_configNavMoveSetMousePos(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigNavMoveSetMousePos(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configNavCaptureKeyboard(get, set):Bool;
    inline function get_configNavCaptureKeyboard():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigNavCaptureKeyboard(imguics.ImGuiCs.ptr(this)); }
    function set_configNavCaptureKeyboard(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigNavCaptureKeyboard(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configNavEscapeClearFocusItem(get, set):Bool;
    inline function get_configNavEscapeClearFocusItem():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigNavEscapeClearFocusItem(imguics.ImGuiCs.ptr(this)); }
    function set_configNavEscapeClearFocusItem(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigNavEscapeClearFocusItem(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configNavEscapeClearFocusWindow(get, set):Bool;
    inline function get_configNavEscapeClearFocusWindow():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigNavEscapeClearFocusWindow(imguics.ImGuiCs.ptr(this)); }
    function set_configNavEscapeClearFocusWindow(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigNavEscapeClearFocusWindow(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configNavCursorVisibleAuto(get, set):Bool;
    inline function get_configNavCursorVisibleAuto():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigNavCursorVisibleAuto(imguics.ImGuiCs.ptr(this)); }
    function set_configNavCursorVisibleAuto(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigNavCursorVisibleAuto(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configNavCursorVisibleAlways(get, set):Bool;
    inline function get_configNavCursorVisibleAlways():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigNavCursorVisibleAlways(imguics.ImGuiCs.ptr(this)); }
    function set_configNavCursorVisibleAlways(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigNavCursorVisibleAlways(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDockingNoSplit(get, set):Bool;
    inline function get_configDockingNoSplit():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDockingNoSplit(imguics.ImGuiCs.ptr(this)); }
    function set_configDockingNoSplit(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDockingNoSplit(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDockingNoDockingOver(get, set):Bool;
    inline function get_configDockingNoDockingOver():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDockingNoDockingOver(imguics.ImGuiCs.ptr(this)); }
    function set_configDockingNoDockingOver(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDockingNoDockingOver(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDockingWithShift(get, set):Bool;
    inline function get_configDockingWithShift():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDockingWithShift(imguics.ImGuiCs.ptr(this)); }
    function set_configDockingWithShift(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDockingWithShift(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDockingAlwaysTabBar(get, set):Bool;
    inline function get_configDockingAlwaysTabBar():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDockingAlwaysTabBar(imguics.ImGuiCs.ptr(this)); }
    function set_configDockingAlwaysTabBar(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDockingAlwaysTabBar(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDockingTransparentPayload(get, set):Bool;
    inline function get_configDockingTransparentPayload():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDockingTransparentPayload(imguics.ImGuiCs.ptr(this)); }
    function set_configDockingTransparentPayload(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDockingTransparentPayload(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configViewportsNoAutoMerge(get, set):Bool;
    inline function get_configViewportsNoAutoMerge():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigViewportsNoAutoMerge(imguics.ImGuiCs.ptr(this)); }
    function set_configViewportsNoAutoMerge(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigViewportsNoAutoMerge(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configViewportsNoTaskBarIcon(get, set):Bool;
    inline function get_configViewportsNoTaskBarIcon():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigViewportsNoTaskBarIcon(imguics.ImGuiCs.ptr(this)); }
    function set_configViewportsNoTaskBarIcon(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigViewportsNoTaskBarIcon(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configViewportsNoDecoration(get, set):Bool;
    inline function get_configViewportsNoDecoration():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigViewportsNoDecoration(imguics.ImGuiCs.ptr(this)); }
    function set_configViewportsNoDecoration(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigViewportsNoDecoration(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configViewportsNoDefaultParent(get, set):Bool;
    inline function get_configViewportsNoDefaultParent():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigViewportsNoDefaultParent(imguics.ImGuiCs.ptr(this)); }
    function set_configViewportsNoDefaultParent(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigViewportsNoDefaultParent(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configViewportsPlatformFocusSetsImGuiFocus(get, set):Bool;
    inline function get_configViewportsPlatformFocusSetsImGuiFocus():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigViewportsPlatformFocusSetsImGuiFocus(imguics.ImGuiCs.ptr(this)); }
    function set_configViewportsPlatformFocusSetsImGuiFocus(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigViewportsPlatformFocusSetsImGuiFocus(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDpiScaleFonts(get, set):Bool;
    inline function get_configDpiScaleFonts():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDpiScaleFonts(imguics.ImGuiCs.ptr(this)); }
    function set_configDpiScaleFonts(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDpiScaleFonts(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDpiScaleViewports(get, set):Bool;
    inline function get_configDpiScaleViewports():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDpiScaleViewports(imguics.ImGuiCs.ptr(this)); }
    function set_configDpiScaleViewports(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDpiScaleViewports(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mouseDrawCursor(get, set):Bool;
    inline function get_mouseDrawCursor():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_MouseDrawCursor(imguics.ImGuiCs.ptr(this)); }
    function set_mouseDrawCursor(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_MouseDrawCursor(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configMacOSXBehaviors(get, set):Bool;
    inline function get_configMacOSXBehaviors():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigMacOSXBehaviors(imguics.ImGuiCs.ptr(this)); }
    function set_configMacOSXBehaviors(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigMacOSXBehaviors(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configInputTrickleEventQueue(get, set):Bool;
    inline function get_configInputTrickleEventQueue():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigInputTrickleEventQueue(imguics.ImGuiCs.ptr(this)); }
    function set_configInputTrickleEventQueue(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigInputTrickleEventQueue(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configInputTextCursorBlink(get, set):Bool;
    inline function get_configInputTextCursorBlink():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigInputTextCursorBlink(imguics.ImGuiCs.ptr(this)); }
    function set_configInputTextCursorBlink(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigInputTextCursorBlink(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configInputTextEnterKeepActive(get, set):Bool;
    inline function get_configInputTextEnterKeepActive():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigInputTextEnterKeepActive(imguics.ImGuiCs.ptr(this)); }
    function set_configInputTextEnterKeepActive(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigInputTextEnterKeepActive(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDragClickToInputText(get, set):Bool;
    inline function get_configDragClickToInputText():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDragClickToInputText(imguics.ImGuiCs.ptr(this)); }
    function set_configDragClickToInputText(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDragClickToInputText(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configWindowsResizeFromEdges(get, set):Bool;
    inline function get_configWindowsResizeFromEdges():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigWindowsResizeFromEdges(imguics.ImGuiCs.ptr(this)); }
    function set_configWindowsResizeFromEdges(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigWindowsResizeFromEdges(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configWindowsMoveFromTitleBarOnly(get, set):Bool;
    inline function get_configWindowsMoveFromTitleBarOnly():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigWindowsMoveFromTitleBarOnly(imguics.ImGuiCs.ptr(this)); }
    function set_configWindowsMoveFromTitleBarOnly(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigWindowsMoveFromTitleBarOnly(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configWindowsCopyContentsWithCtrlC(get, set):Bool;
    inline function get_configWindowsCopyContentsWithCtrlC():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigWindowsCopyContentsWithCtrlC(imguics.ImGuiCs.ptr(this)); }
    function set_configWindowsCopyContentsWithCtrlC(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigWindowsCopyContentsWithCtrlC(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configScrollbarScrollByPage(get, set):Bool;
    inline function get_configScrollbarScrollByPage():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigScrollbarScrollByPage(imguics.ImGuiCs.ptr(this)); }
    function set_configScrollbarScrollByPage(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigScrollbarScrollByPage(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configMemoryCompactTimer(get, set):Float;
    inline function get_configMemoryCompactTimer():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigMemoryCompactTimer(imguics.ImGuiCs.ptr(this)); }
    function set_configMemoryCompactTimer(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigMemoryCompactTimer(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mouseDoubleClickTime(get, set):Float;
    inline function get_mouseDoubleClickTime():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_MouseDoubleClickTime(imguics.ImGuiCs.ptr(this)); }
    function set_mouseDoubleClickTime(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_MouseDoubleClickTime(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mouseDoubleClickMaxDist(get, set):Float;
    inline function get_mouseDoubleClickMaxDist():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_MouseDoubleClickMaxDist(imguics.ImGuiCs.ptr(this)); }
    function set_mouseDoubleClickMaxDist(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_MouseDoubleClickMaxDist(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mouseDragThreshold(get, set):Float;
    inline function get_mouseDragThreshold():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_MouseDragThreshold(imguics.ImGuiCs.ptr(this)); }
    function set_mouseDragThreshold(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_MouseDragThreshold(imguics.ImGuiCs.ptr(this), v); return v; }
    public var keyRepeatDelay(get, set):Float;
    inline function get_keyRepeatDelay():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_KeyRepeatDelay(imguics.ImGuiCs.ptr(this)); }
    function set_keyRepeatDelay(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_KeyRepeatDelay(imguics.ImGuiCs.ptr(this), v); return v; }
    public var keyRepeatRate(get, set):Float;
    inline function get_keyRepeatRate():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_KeyRepeatRate(imguics.ImGuiCs.ptr(this)); }
    function set_keyRepeatRate(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_KeyRepeatRate(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configErrorRecovery(get, set):Bool;
    inline function get_configErrorRecovery():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigErrorRecovery(imguics.ImGuiCs.ptr(this)); }
    function set_configErrorRecovery(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigErrorRecovery(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configErrorRecoveryEnableAssert(get, set):Bool;
    inline function get_configErrorRecoveryEnableAssert():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableAssert(imguics.ImGuiCs.ptr(this)); }
    function set_configErrorRecoveryEnableAssert(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableAssert(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configErrorRecoveryEnableDebugLog(get, set):Bool;
    inline function get_configErrorRecoveryEnableDebugLog():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableDebugLog(imguics.ImGuiCs.ptr(this)); }
    function set_configErrorRecoveryEnableDebugLog(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableDebugLog(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configErrorRecoveryEnableTooltip(get, set):Bool;
    inline function get_configErrorRecoveryEnableTooltip():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableTooltip(imguics.ImGuiCs.ptr(this)); }
    function set_configErrorRecoveryEnableTooltip(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableTooltip(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDebugIsDebuggerPresent(get, set):Bool;
    inline function get_configDebugIsDebuggerPresent():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDebugIsDebuggerPresent(imguics.ImGuiCs.ptr(this)); }
    function set_configDebugIsDebuggerPresent(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDebugIsDebuggerPresent(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDebugHighlightIdConflicts(get, set):Bool;
    inline function get_configDebugHighlightIdConflicts():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDebugHighlightIdConflicts(imguics.ImGuiCs.ptr(this)); }
    function set_configDebugHighlightIdConflicts(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDebugHighlightIdConflicts(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDebugHighlightIdConflictsShowItemPicker(get, set):Bool;
    inline function get_configDebugHighlightIdConflictsShowItemPicker():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDebugHighlightIdConflictsShowItemPicker(imguics.ImGuiCs.ptr(this)); }
    function set_configDebugHighlightIdConflictsShowItemPicker(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDebugHighlightIdConflictsShowItemPicker(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDebugBeginReturnValueOnce(get, set):Bool;
    inline function get_configDebugBeginReturnValueOnce():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDebugBeginReturnValueOnce(imguics.ImGuiCs.ptr(this)); }
    function set_configDebugBeginReturnValueOnce(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDebugBeginReturnValueOnce(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDebugBeginReturnValueLoop(get, set):Bool;
    inline function get_configDebugBeginReturnValueLoop():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDebugBeginReturnValueLoop(imguics.ImGuiCs.ptr(this)); }
    function set_configDebugBeginReturnValueLoop(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDebugBeginReturnValueLoop(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDebugIgnoreFocusLoss(get, set):Bool;
    inline function get_configDebugIgnoreFocusLoss():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDebugIgnoreFocusLoss(imguics.ImGuiCs.ptr(this)); }
    function set_configDebugIgnoreFocusLoss(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDebugIgnoreFocusLoss(imguics.ImGuiCs.ptr(this), v); return v; }
    public var configDebugIniSettings(get, set):Bool;
    inline function get_configDebugIniSettings():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_ConfigDebugIniSettings(imguics.ImGuiCs.ptr(this)); }
    function set_configDebugIniSettings(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_ConfigDebugIniSettings(imguics.ImGuiCs.ptr(this), v); return v; }
    public var backendPlatformName(get, set):Float;
    inline function get_backendPlatformName():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_get_BackendPlatformName(imguics.ImGuiCs.ptr(this))); }
    function set_backendPlatformName(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_BackendPlatformName(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var backendRendererName(get, set):Float;
    inline function get_backendRendererName():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_get_BackendRendererName(imguics.ImGuiCs.ptr(this))); }
    function set_backendRendererName(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_BackendRendererName(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var backendPlatformUserData(get, set):Float;
    inline function get_backendPlatformUserData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_get_BackendPlatformUserData(imguics.ImGuiCs.ptr(this))); }
    function set_backendPlatformUserData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_BackendPlatformUserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var backendRendererUserData(get, set):Float;
    inline function get_backendRendererUserData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_get_BackendRendererUserData(imguics.ImGuiCs.ptr(this))); }
    function set_backendRendererUserData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_BackendRendererUserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var backendLanguageUserData(get, set):Float;
    inline function get_backendLanguageUserData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_get_BackendLanguageUserData(imguics.ImGuiCs.ptr(this))); }
    function set_backendLanguageUserData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_BackendLanguageUserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var wantCaptureMouse(get, set):Bool;
    inline function get_wantCaptureMouse():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_WantCaptureMouse(imguics.ImGuiCs.ptr(this)); }
    function set_wantCaptureMouse(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_WantCaptureMouse(imguics.ImGuiCs.ptr(this), v); return v; }
    public var wantCaptureKeyboard(get, set):Bool;
    inline function get_wantCaptureKeyboard():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_WantCaptureKeyboard(imguics.ImGuiCs.ptr(this)); }
    function set_wantCaptureKeyboard(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_WantCaptureKeyboard(imguics.ImGuiCs.ptr(this), v); return v; }
    public var wantTextInput(get, set):Bool;
    inline function get_wantTextInput():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_WantTextInput(imguics.ImGuiCs.ptr(this)); }
    function set_wantTextInput(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_WantTextInput(imguics.ImGuiCs.ptr(this), v); return v; }
    public var wantSetMousePos(get, set):Bool;
    inline function get_wantSetMousePos():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_WantSetMousePos(imguics.ImGuiCs.ptr(this)); }
    function set_wantSetMousePos(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_WantSetMousePos(imguics.ImGuiCs.ptr(this), v); return v; }
    public var wantSaveIniSettings(get, set):Bool;
    inline function get_wantSaveIniSettings():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_WantSaveIniSettings(imguics.ImGuiCs.ptr(this)); }
    function set_wantSaveIniSettings(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_WantSaveIniSettings(imguics.ImGuiCs.ptr(this), v); return v; }
    public var navActive(get, set):Bool;
    inline function get_navActive():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_NavActive(imguics.ImGuiCs.ptr(this)); }
    function set_navActive(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_NavActive(imguics.ImGuiCs.ptr(this), v); return v; }
    public var navVisible(get, set):Bool;
    inline function get_navVisible():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_NavVisible(imguics.ImGuiCs.ptr(this)); }
    function set_navVisible(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_NavVisible(imguics.ImGuiCs.ptr(this), v); return v; }
    public var framerate(get, set):Float;
    inline function get_framerate():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_Framerate(imguics.ImGuiCs.ptr(this)); }
    function set_framerate(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_Framerate(imguics.ImGuiCs.ptr(this), v); return v; }
    public var metricsRenderVertices(get, set):Int;
    inline function get_metricsRenderVertices():Int { return imguics.DCImGui.dcjs_ImGuiIO_get_MetricsRenderVertices(imguics.ImGuiCs.ptr(this)); }
    function set_metricsRenderVertices(v:Int):Int { imguics.DCImGui.dcjs_ImGuiIO_set_MetricsRenderVertices(imguics.ImGuiCs.ptr(this), v); return v; }
    public var metricsRenderIndices(get, set):Int;
    inline function get_metricsRenderIndices():Int { return imguics.DCImGui.dcjs_ImGuiIO_get_MetricsRenderIndices(imguics.ImGuiCs.ptr(this)); }
    function set_metricsRenderIndices(v:Int):Int { imguics.DCImGui.dcjs_ImGuiIO_set_MetricsRenderIndices(imguics.ImGuiCs.ptr(this), v); return v; }
    public var metricsRenderWindows(get, set):Int;
    inline function get_metricsRenderWindows():Int { return imguics.DCImGui.dcjs_ImGuiIO_get_MetricsRenderWindows(imguics.ImGuiCs.ptr(this)); }
    function set_metricsRenderWindows(v:Int):Int { imguics.DCImGui.dcjs_ImGuiIO_set_MetricsRenderWindows(imguics.ImGuiCs.ptr(this), v); return v; }
    public var metricsActiveWindows(get, set):Int;
    inline function get_metricsActiveWindows():Int { return imguics.DCImGui.dcjs_ImGuiIO_get_MetricsActiveWindows(imguics.ImGuiCs.ptr(this)); }
    function set_metricsActiveWindows(v:Int):Int { imguics.DCImGui.dcjs_ImGuiIO_set_MetricsActiveWindows(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mouseDelta(get, set):ImVec2;
    inline function get_mouseDelta():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiIO_get_MouseDelta(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_mouseDelta(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiIO_set_MouseDelta(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var ctx(get, set):ImGuiContext;
    inline function get_ctx():ImGuiContext { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_get_Ctx(imguics.ImGuiCs.ptr(this))); }
    function set_ctx(v:ImGuiContext):ImGuiContext { imguics.DCImGui.dcjs_ImGuiIO_set_Ctx(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var mousePos(get, set):ImVec2;
    inline function get_mousePos():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiIO_get_MousePos(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_mousePos(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiIO_set_MousePos(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var mouseWheel(get, set):Float;
    inline function get_mouseWheel():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_MouseWheel(imguics.ImGuiCs.ptr(this)); }
    function set_mouseWheel(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_MouseWheel(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mouseWheelH(get, set):Float;
    inline function get_mouseWheelH():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_MouseWheelH(imguics.ImGuiCs.ptr(this)); }
    function set_mouseWheelH(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_MouseWheelH(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mouseSource(get, set):Int;
    inline function get_mouseSource():Int { return imguics.DCImGui.dcjs_ImGuiIO_get_MouseSource(imguics.ImGuiCs.ptr(this)); }
    function set_mouseSource(v:Int):Int { imguics.DCImGui.dcjs_ImGuiIO_set_MouseSource(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mouseHoveredViewport(get, set):Int;
    inline function get_mouseHoveredViewport():Int { return imguics.DCImGui.dcjs_ImGuiIO_get_MouseHoveredViewport(imguics.ImGuiCs.ptr(this)); }
    function set_mouseHoveredViewport(v:Int):Int { imguics.DCImGui.dcjs_ImGuiIO_set_MouseHoveredViewport(imguics.ImGuiCs.ptr(this), v); return v; }
    public var keyCtrl(get, set):Bool;
    inline function get_keyCtrl():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_KeyCtrl(imguics.ImGuiCs.ptr(this)); }
    function set_keyCtrl(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_KeyCtrl(imguics.ImGuiCs.ptr(this), v); return v; }
    public var keyShift(get, set):Bool;
    inline function get_keyShift():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_KeyShift(imguics.ImGuiCs.ptr(this)); }
    function set_keyShift(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_KeyShift(imguics.ImGuiCs.ptr(this), v); return v; }
    public var keyAlt(get, set):Bool;
    inline function get_keyAlt():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_KeyAlt(imguics.ImGuiCs.ptr(this)); }
    function set_keyAlt(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_KeyAlt(imguics.ImGuiCs.ptr(this), v); return v; }
    public var keySuper(get, set):Bool;
    inline function get_keySuper():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_KeySuper(imguics.ImGuiCs.ptr(this)); }
    function set_keySuper(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_KeySuper(imguics.ImGuiCs.ptr(this), v); return v; }
    public var keyMods(get, set):Int;
    inline function get_keyMods():Int { return imguics.DCImGui.dcjs_ImGuiIO_get_KeyMods(imguics.ImGuiCs.ptr(this)); }
    function set_keyMods(v:Int):Int { imguics.DCImGui.dcjs_ImGuiIO_set_KeyMods(imguics.ImGuiCs.ptr(this), v); return v; }
    public var wantCaptureMouseUnlessPopupClose(get, set):Bool;
    inline function get_wantCaptureMouseUnlessPopupClose():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_WantCaptureMouseUnlessPopupClose(imguics.ImGuiCs.ptr(this)); }
    function set_wantCaptureMouseUnlessPopupClose(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_WantCaptureMouseUnlessPopupClose(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mousePosPrev(get, set):ImVec2;
    inline function get_mousePosPrev():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiIO_get_MousePosPrev(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_mousePosPrev(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiIO_set_MousePosPrev(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var mouseWheelRequestAxisSwap(get, set):Bool;
    inline function get_mouseWheelRequestAxisSwap():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_MouseWheelRequestAxisSwap(imguics.ImGuiCs.ptr(this)); }
    function set_mouseWheelRequestAxisSwap(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_MouseWheelRequestAxisSwap(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mouseCtrlLeftAsRightClick(get, set):Bool;
    inline function get_mouseCtrlLeftAsRightClick():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_MouseCtrlLeftAsRightClick(imguics.ImGuiCs.ptr(this)); }
    function set_mouseCtrlLeftAsRightClick(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_MouseCtrlLeftAsRightClick(imguics.ImGuiCs.ptr(this), v); return v; }
    public var penPressure(get, set):Float;
    inline function get_penPressure():Float { return imguics.DCImGui.dcjs_ImGuiIO_get_PenPressure(imguics.ImGuiCs.ptr(this)); }
    function set_penPressure(v:Float):Float { imguics.DCImGui.dcjs_ImGuiIO_set_PenPressure(imguics.ImGuiCs.ptr(this), v); return v; }
    public var appFocusLost(get, set):Bool;
    inline function get_appFocusLost():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_AppFocusLost(imguics.ImGuiCs.ptr(this)); }
    function set_appFocusLost(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_AppFocusLost(imguics.ImGuiCs.ptr(this), v); return v; }
    public var appAcceptingEvents(get, set):Bool;
    inline function get_appAcceptingEvents():Bool { return imguics.DCImGui.dcjs_ImGuiIO_get_AppAcceptingEvents(imguics.ImGuiCs.ptr(this)); }
    function set_appAcceptingEvents(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiIO_set_AppAcceptingEvents(imguics.ImGuiCs.ptr(this), v); return v; }
    public var inputQueueSurrogate(get, set):Int;
    inline function get_inputQueueSurrogate():Int { return imguics.DCImGui.dcjs_ImGuiIO_get_InputQueueSurrogate(imguics.ImGuiCs.ptr(this)); }
    function set_inputQueueSurrogate(v:Int):Int { imguics.DCImGui.dcjs_ImGuiIO_set_InputQueueSurrogate(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var inputQueueCharacters(get, never):ImVector_ImWchar;
    inline function get_inputQueueCharacters():ImVector_ImWchar { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiIO_ptr_InputQueueCharacters(imguics.ImGuiCs.ptr(this))); }
    /** sizeof(ImGuiIO) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiIO(); }

    public static function addKeyEvent(self:ImGuiIO, key:Int, down:Bool):Void {
        imguics.DCImGui.ImGuiIO_AddKeyEvent(imguics.ImGuiCs.ptr(self), key, down);
    }
    public static function addKeyAnalogEvent(self:ImGuiIO, key:Int, down:Bool, v:Float):Void {
        imguics.DCImGui.ImGuiIO_AddKeyAnalogEvent(imguics.ImGuiCs.ptr(self), key, down, v);
    }
    public static function addMousePosEvent(self:ImGuiIO, x:Float, y:Float):Void {
        imguics.DCImGui.ImGuiIO_AddMousePosEvent(imguics.ImGuiCs.ptr(self), x, y);
    }
    public static function addMouseButtonEvent(self:ImGuiIO, button:Int, down:Bool):Void {
        imguics.DCImGui.ImGuiIO_AddMouseButtonEvent(imguics.ImGuiCs.ptr(self), button, down);
    }
    public static function addMouseWheelEvent(self:ImGuiIO, wheelX:Float, wheelY:Float):Void {
        imguics.DCImGui.ImGuiIO_AddMouseWheelEvent(imguics.ImGuiCs.ptr(self), wheelX, wheelY);
    }
    public static function addMouseSourceEvent(self:ImGuiIO, source:Int):Void {
        imguics.DCImGui.ImGuiIO_AddMouseSourceEvent(imguics.ImGuiCs.ptr(self), source);
    }
    public static function addMouseViewportEvent(self:ImGuiIO, id:Int):Void {
        imguics.DCImGui.ImGuiIO_AddMouseViewportEvent(imguics.ImGuiCs.ptr(self), id);
    }
    public static function addFocusEvent(self:ImGuiIO, focused:Bool):Void {
        imguics.DCImGui.ImGuiIO_AddFocusEvent(imguics.ImGuiCs.ptr(self), focused);
    }
    public static function addInputCharacter(self:ImGuiIO, c:Int):Void {
        imguics.DCImGui.ImGuiIO_AddInputCharacter(imguics.ImGuiCs.ptr(self), c);
    }
    public static function addInputCharacterUTF16(self:ImGuiIO, c:Int):Void {
        imguics.DCImGui.ImGuiIO_AddInputCharacterUTF16(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.toU16(c));
    }
    public static function addInputCharactersUTF8(self:ImGuiIO, str:String):Void {
        imguics.DCImGui.ImGuiIO_AddInputCharactersUTF8(imguics.ImGuiCs.ptr(self), str);
    }
    public static function setKeyEventNativeDataEx(self:ImGuiIO, key:Int, nativeKeycode:Int, nativeScancode:Int, nativeLegacyIndex:Int = -1):Void {
        imguics.DCImGui.ImGuiIO_SetKeyEventNativeDataEx(imguics.ImGuiCs.ptr(self), key, nativeKeycode, nativeScancode, nativeLegacyIndex);
    }
    public static function setKeyEventNativeData(self:ImGuiIO, key:Int, nativeKeycode:Int, nativeScancode:Int):Void {
        imguics.DCImGui.ImGuiIO_SetKeyEventNativeData(imguics.ImGuiCs.ptr(self), key, nativeKeycode, nativeScancode);
    }
    public static function setAppAcceptingEvents(self:ImGuiIO, acceptingEvents:Bool):Void {
        imguics.DCImGui.ImGuiIO_SetAppAcceptingEvents(imguics.ImGuiCs.ptr(self), acceptingEvents);
    }
    public static function clearEventsQueue(self:ImGuiIO):Void {
        imguics.DCImGui.ImGuiIO_ClearEventsQueue(imguics.ImGuiCs.ptr(self));
    }
    public static function clearInputKeys(self:ImGuiIO):Void {
        imguics.DCImGui.ImGuiIO_ClearInputKeys(imguics.ImGuiCs.ptr(self));
    }
    public static function clearInputMouse(self:ImGuiIO):Void {
        imguics.DCImGui.ImGuiIO_ClearInputMouse(imguics.ImGuiCs.ptr(self));
    }
}

abstract ImGuiInputTextCallbackData(Float) from Float to Float {
    public var ctx(get, set):ImGuiContext;
    inline function get_ctx():ImGuiContext { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_Ctx(imguics.ImGuiCs.ptr(this))); }
    function set_ctx(v:ImGuiContext):ImGuiContext { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_Ctx(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var eventFlag(get, set):Int;
    inline function get_eventFlag():Int { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_EventFlag(imguics.ImGuiCs.ptr(this)); }
    function set_eventFlag(v:Int):Int { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_EventFlag(imguics.ImGuiCs.ptr(this), v); return v; }
    public var flags(get, set):Int;
    inline function get_flags():Int { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_Flags(imguics.ImGuiCs.ptr(this)); }
    function set_flags(v:Int):Int { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_Flags(imguics.ImGuiCs.ptr(this), v); return v; }
    public var userData(get, set):Float;
    inline function get_userData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_UserData(imguics.ImGuiCs.ptr(this))); }
    function set_userData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_UserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var id(get, set):Int;
    inline function get_id():Int { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_ID(imguics.ImGuiCs.ptr(this)); }
    function set_id(v:Int):Int { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_ID(imguics.ImGuiCs.ptr(this), v); return v; }
    public var eventKey(get, set):Int;
    inline function get_eventKey():Int { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_EventKey(imguics.ImGuiCs.ptr(this)); }
    function set_eventKey(v:Int):Int { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_EventKey(imguics.ImGuiCs.ptr(this), v); return v; }
    public var eventChar(get, set):Int;
    inline function get_eventChar():Int { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_EventChar(imguics.ImGuiCs.ptr(this)); }
    function set_eventChar(v:Int):Int { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_EventChar(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var eventActivated(get, set):Bool;
    inline function get_eventActivated():Bool { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_EventActivated(imguics.ImGuiCs.ptr(this)); }
    function set_eventActivated(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_EventActivated(imguics.ImGuiCs.ptr(this), v); return v; }
    public var bufDirty(get, set):Bool;
    inline function get_bufDirty():Bool { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_BufDirty(imguics.ImGuiCs.ptr(this)); }
    function set_bufDirty(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_BufDirty(imguics.ImGuiCs.ptr(this), v); return v; }
    public var buf(get, set):Float;
    inline function get_buf():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_Buf(imguics.ImGuiCs.ptr(this))); }
    function set_buf(v:Float):Float { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_Buf(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var bufTextLen(get, set):Int;
    inline function get_bufTextLen():Int { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_BufTextLen(imguics.ImGuiCs.ptr(this)); }
    function set_bufTextLen(v:Int):Int { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_BufTextLen(imguics.ImGuiCs.ptr(this), v); return v; }
    public var bufSize(get, set):Int;
    inline function get_bufSize():Int { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_BufSize(imguics.ImGuiCs.ptr(this)); }
    function set_bufSize(v:Int):Int { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_BufSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var cursorPos(get, set):Int;
    inline function get_cursorPos():Int { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_CursorPos(imguics.ImGuiCs.ptr(this)); }
    function set_cursorPos(v:Int):Int { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_CursorPos(imguics.ImGuiCs.ptr(this), v); return v; }
    public var selectionStart(get, set):Int;
    inline function get_selectionStart():Int { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_SelectionStart(imguics.ImGuiCs.ptr(this)); }
    function set_selectionStart(v:Int):Int { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_SelectionStart(imguics.ImGuiCs.ptr(this), v); return v; }
    public var selectionEnd(get, set):Int;
    inline function get_selectionEnd():Int { return imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_get_SelectionEnd(imguics.ImGuiCs.ptr(this)); }
    function set_selectionEnd(v:Int):Int { imguics.DCImGui.dcjs_ImGuiInputTextCallbackData_set_SelectionEnd(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImGuiInputTextCallbackData) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiInputTextCallbackData(); }

    public static function deleteChars(self:ImGuiInputTextCallbackData, pos:Int, bytesCount:Int):Void {
        imguics.DCImGui.ImGuiInputTextCallbackData_DeleteChars(imguics.ImGuiCs.ptr(self), pos, bytesCount);
    }
    public static function insertChars(self:ImGuiInputTextCallbackData, pos:Int, text:String, textEnd:String = null):Void {
        imguics.DCImGui.ImGuiInputTextCallbackData_InsertChars(imguics.ImGuiCs.ptr(self), pos, text, textEnd);
    }
    public static function selectAll(self:ImGuiInputTextCallbackData):Void {
        imguics.DCImGui.ImGuiInputTextCallbackData_SelectAll(imguics.ImGuiCs.ptr(self));
    }
    public static function setSelection(self:ImGuiInputTextCallbackData, s:Int, e:Int):Void {
        imguics.DCImGui.ImGuiInputTextCallbackData_SetSelection(imguics.ImGuiCs.ptr(self), s, e);
    }
    public static function clearSelection(self:ImGuiInputTextCallbackData):Void {
        imguics.DCImGui.ImGuiInputTextCallbackData_ClearSelection(imguics.ImGuiCs.ptr(self));
    }
    public static function hasSelection(self:ImGuiInputTextCallbackData):Bool {
        return imguics.DCImGui.ImGuiInputTextCallbackData_HasSelection(imguics.ImGuiCs.ptr(self));
    }
}

abstract ImGuiSizeCallbackData(Float) from Float to Float {
    public var userData(get, set):Float;
    inline function get_userData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiSizeCallbackData_get_UserData(imguics.ImGuiCs.ptr(this))); }
    function set_userData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiSizeCallbackData_set_UserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var pos(get, set):ImVec2;
    inline function get_pos():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiSizeCallbackData_get_Pos(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_pos(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiSizeCallbackData_set_Pos(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var currentSize(get, set):ImVec2;
    inline function get_currentSize():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiSizeCallbackData_get_CurrentSize(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_currentSize(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiSizeCallbackData_set_CurrentSize(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var desiredSize(get, set):ImVec2;
    inline function get_desiredSize():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiSizeCallbackData_get_DesiredSize(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_desiredSize(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiSizeCallbackData_set_DesiredSize(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    /** sizeof(ImGuiSizeCallbackData) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiSizeCallbackData(); }
}

abstract ImGuiWindowClass(Float) from Float to Float {
    public var classId(get, set):Int;
    inline function get_classId():Int { return imguics.DCImGui.dcjs_ImGuiWindowClass_get_ClassId(imguics.ImGuiCs.ptr(this)); }
    function set_classId(v:Int):Int { imguics.DCImGui.dcjs_ImGuiWindowClass_set_ClassId(imguics.ImGuiCs.ptr(this), v); return v; }
    public var parentViewportId(get, set):Int;
    inline function get_parentViewportId():Int { return imguics.DCImGui.dcjs_ImGuiWindowClass_get_ParentViewportId(imguics.ImGuiCs.ptr(this)); }
    function set_parentViewportId(v:Int):Int { imguics.DCImGui.dcjs_ImGuiWindowClass_set_ParentViewportId(imguics.ImGuiCs.ptr(this), v); return v; }
    public var focusRouteParentWindowId(get, set):Int;
    inline function get_focusRouteParentWindowId():Int { return imguics.DCImGui.dcjs_ImGuiWindowClass_get_FocusRouteParentWindowId(imguics.ImGuiCs.ptr(this)); }
    function set_focusRouteParentWindowId(v:Int):Int { imguics.DCImGui.dcjs_ImGuiWindowClass_set_FocusRouteParentWindowId(imguics.ImGuiCs.ptr(this), v); return v; }
    public var viewportFlagsOverrideSet(get, set):Int;
    inline function get_viewportFlagsOverrideSet():Int { return imguics.DCImGui.dcjs_ImGuiWindowClass_get_ViewportFlagsOverrideSet(imguics.ImGuiCs.ptr(this)); }
    function set_viewportFlagsOverrideSet(v:Int):Int { imguics.DCImGui.dcjs_ImGuiWindowClass_set_ViewportFlagsOverrideSet(imguics.ImGuiCs.ptr(this), v); return v; }
    public var viewportFlagsOverrideClear(get, set):Int;
    inline function get_viewportFlagsOverrideClear():Int { return imguics.DCImGui.dcjs_ImGuiWindowClass_get_ViewportFlagsOverrideClear(imguics.ImGuiCs.ptr(this)); }
    function set_viewportFlagsOverrideClear(v:Int):Int { imguics.DCImGui.dcjs_ImGuiWindowClass_set_ViewportFlagsOverrideClear(imguics.ImGuiCs.ptr(this), v); return v; }
    public var tabItemFlagsOverrideSet(get, set):Int;
    inline function get_tabItemFlagsOverrideSet():Int { return imguics.DCImGui.dcjs_ImGuiWindowClass_get_TabItemFlagsOverrideSet(imguics.ImGuiCs.ptr(this)); }
    function set_tabItemFlagsOverrideSet(v:Int):Int { imguics.DCImGui.dcjs_ImGuiWindowClass_set_TabItemFlagsOverrideSet(imguics.ImGuiCs.ptr(this), v); return v; }
    public var dockNodeFlagsOverrideSet(get, set):Int;
    inline function get_dockNodeFlagsOverrideSet():Int { return imguics.DCImGui.dcjs_ImGuiWindowClass_get_DockNodeFlagsOverrideSet(imguics.ImGuiCs.ptr(this)); }
    function set_dockNodeFlagsOverrideSet(v:Int):Int { imguics.DCImGui.dcjs_ImGuiWindowClass_set_DockNodeFlagsOverrideSet(imguics.ImGuiCs.ptr(this), v); return v; }
    public var dockingAlwaysTabBar(get, set):Bool;
    inline function get_dockingAlwaysTabBar():Bool { return imguics.DCImGui.dcjs_ImGuiWindowClass_get_DockingAlwaysTabBar(imguics.ImGuiCs.ptr(this)); }
    function set_dockingAlwaysTabBar(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiWindowClass_set_DockingAlwaysTabBar(imguics.ImGuiCs.ptr(this), v); return v; }
    public var dockingAllowUnclassed(get, set):Bool;
    inline function get_dockingAllowUnclassed():Bool { return imguics.DCImGui.dcjs_ImGuiWindowClass_get_DockingAllowUnclassed(imguics.ImGuiCs.ptr(this)); }
    function set_dockingAllowUnclassed(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiWindowClass_set_DockingAllowUnclassed(imguics.ImGuiCs.ptr(this), v); return v; }
    public var platformIconData(get, set):Float;
    inline function get_platformIconData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiWindowClass_get_PlatformIconData(imguics.ImGuiCs.ptr(this))); }
    function set_platformIconData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiWindowClass_set_PlatformIconData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImGuiWindowClass) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiWindowClass(); }
}

abstract ImGuiPayload(Float) from Float to Float {
    public var data(get, set):Float;
    inline function get_data():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPayload_get_Data(imguics.ImGuiCs.ptr(this))); }
    function set_data(v:Float):Float { imguics.DCImGui.dcjs_ImGuiPayload_set_Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var dataSize(get, set):Int;
    inline function get_dataSize():Int { return imguics.DCImGui.dcjs_ImGuiPayload_get_DataSize(imguics.ImGuiCs.ptr(this)); }
    function set_dataSize(v:Int):Int { imguics.DCImGui.dcjs_ImGuiPayload_set_DataSize(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImGuiPayload) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiPayload(); }

    public static function clear(self:ImGuiPayload):Void {
        imguics.DCImGui.ImGuiPayload_Clear(imguics.ImGuiCs.ptr(self));
    }
    public static function isDataType(self:ImGuiPayload, type:String):Bool {
        return imguics.DCImGui.ImGuiPayload_IsDataType(imguics.ImGuiCs.ptr(self), type);
    }
    public static function isPreview(self:ImGuiPayload):Bool {
        return imguics.DCImGui.ImGuiPayload_IsPreview(imguics.ImGuiCs.ptr(self));
    }
    public static function isDelivery(self:ImGuiPayload):Bool {
        return imguics.DCImGui.ImGuiPayload_IsDelivery(imguics.ImGuiCs.ptr(self));
    }
}

abstract ImGuiTextBuffer(Float) from Float to Float {
    public var buf(get, never):ImVector_char;
    inline function get_buf():ImVector_char { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiTextBuffer_ptr_Buf(imguics.ImGuiCs.ptr(this))); }
    /** sizeof(ImGuiTextBuffer) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiTextBuffer(); }

    public static function begin(self:ImGuiTextBuffer):String {
        return imguics.ImGuiCs.readString(imguics.DCImGui.ImGuiTextBuffer_begin(imguics.ImGuiCs.ptr(self)));
    }
    public static function end(self:ImGuiTextBuffer):String {
        return imguics.ImGuiCs.readString(imguics.DCImGui.ImGuiTextBuffer_end(imguics.ImGuiCs.ptr(self)));
    }
    public static function size(self:ImGuiTextBuffer):Int {
        return imguics.DCImGui.ImGuiTextBuffer_size(imguics.ImGuiCs.ptr(self));
    }
    public static function empty(self:ImGuiTextBuffer):Bool {
        return imguics.DCImGui.ImGuiTextBuffer_empty(imguics.ImGuiCs.ptr(self));
    }
    public static function clear(self:ImGuiTextBuffer):Void {
        imguics.DCImGui.ImGuiTextBuffer_clear(imguics.ImGuiCs.ptr(self));
    }
    public static function resize(self:ImGuiTextBuffer, size:Int):Void {
        imguics.DCImGui.ImGuiTextBuffer_resize(imguics.ImGuiCs.ptr(self), size);
    }
    public static function reserve(self:ImGuiTextBuffer, capacity:Int):Void {
        imguics.DCImGui.ImGuiTextBuffer_reserve(imguics.ImGuiCs.ptr(self), capacity);
    }
    public static function c_str(self:ImGuiTextBuffer):String {
        return imguics.ImGuiCs.readString(imguics.DCImGui.ImGuiTextBuffer_c_str(imguics.ImGuiCs.ptr(self)));
    }
    public static function append(self:ImGuiTextBuffer, str:String, strEnd:String = null):Void {
        imguics.DCImGui.ImGuiTextBuffer_append(imguics.ImGuiCs.ptr(self), str, strEnd);
    }
}

abstract ImGuiStorage(Float) from Float to Float {
    /** sizeof(ImGuiStorage) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiStorage(); }

    public static function clear(self:ImGuiStorage):Void {
        imguics.DCImGui.ImGuiStorage_Clear(imguics.ImGuiCs.ptr(self));
    }
    public static function getInt(self:ImGuiStorage, key:Int, defaultVal:Int = 0):Int {
        return imguics.DCImGui.ImGuiStorage_GetInt(imguics.ImGuiCs.ptr(self), key, defaultVal);
    }
    public static function setInt(self:ImGuiStorage, key:Int, val:Int):Void {
        imguics.DCImGui.ImGuiStorage_SetInt(imguics.ImGuiCs.ptr(self), key, val);
    }
    public static function getBool(self:ImGuiStorage, key:Int, defaultVal:Bool = false):Bool {
        return imguics.DCImGui.ImGuiStorage_GetBool(imguics.ImGuiCs.ptr(self), key, defaultVal);
    }
    public static function setBool(self:ImGuiStorage, key:Int, val:Bool):Void {
        imguics.DCImGui.ImGuiStorage_SetBool(imguics.ImGuiCs.ptr(self), key, val);
    }
    public static function getFloat(self:ImGuiStorage, key:Int, defaultVal:Float = 0.0):Float {
        return imguics.DCImGui.ImGuiStorage_GetFloat(imguics.ImGuiCs.ptr(self), key, defaultVal);
    }
    public static function setFloat(self:ImGuiStorage, key:Int, val:Float):Void {
        imguics.DCImGui.ImGuiStorage_SetFloat(imguics.ImGuiCs.ptr(self), key, val);
    }
    public static function getVoidPtr(self:ImGuiStorage, key:Int):Float {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGuiStorage_GetVoidPtr(imguics.ImGuiCs.ptr(self), key));
    }
    public static function setVoidPtr(self:ImGuiStorage, key:Int, val:Float):Void {
        imguics.DCImGui.ImGuiStorage_SetVoidPtr(imguics.ImGuiCs.ptr(self), key, imguics.ImGuiCs.ptr(val));
    }
    public static function getIntRef(self:ImGuiStorage, key:Int, defaultVal:Int = 0):Float {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGuiStorage_GetIntRef(imguics.ImGuiCs.ptr(self), key, defaultVal));
    }
    public static function getBoolRef(self:ImGuiStorage, key:Int, defaultVal:Bool = false):Float {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGuiStorage_GetBoolRef(imguics.ImGuiCs.ptr(self), key, defaultVal));
    }
    public static function getFloatRef(self:ImGuiStorage, key:Int, defaultVal:Float = 0.0):Float {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGuiStorage_GetFloatRef(imguics.ImGuiCs.ptr(self), key, defaultVal));
    }
    public static function getVoidPtrRef(self:ImGuiStorage, key:Int, defaultVal:Float = 0):Float {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGuiStorage_GetVoidPtrRef(imguics.ImGuiCs.ptr(self), key, imguics.ImGuiCs.ptr(defaultVal)));
    }
    public static function buildSortByKey(self:ImGuiStorage):Void {
        imguics.DCImGui.ImGuiStorage_BuildSortByKey(imguics.ImGuiCs.ptr(self));
    }
    public static function setAllInt(self:ImGuiStorage, val:Int):Void {
        imguics.DCImGui.ImGuiStorage_SetAllInt(imguics.ImGuiCs.ptr(self), val);
    }
}

abstract ImGuiListClipper(Float) from Float to Float {
    public var displayStart(get, set):Int;
    inline function get_displayStart():Int { return imguics.DCImGui.dcjs_ImGuiListClipper_get_DisplayStart(imguics.ImGuiCs.ptr(this)); }
    function set_displayStart(v:Int):Int { imguics.DCImGui.dcjs_ImGuiListClipper_set_DisplayStart(imguics.ImGuiCs.ptr(this), v); return v; }
    public var displayEnd(get, set):Int;
    inline function get_displayEnd():Int { return imguics.DCImGui.dcjs_ImGuiListClipper_get_DisplayEnd(imguics.ImGuiCs.ptr(this)); }
    function set_displayEnd(v:Int):Int { imguics.DCImGui.dcjs_ImGuiListClipper_set_DisplayEnd(imguics.ImGuiCs.ptr(this), v); return v; }
    public var userIndex(get, set):Int;
    inline function get_userIndex():Int { return imguics.DCImGui.dcjs_ImGuiListClipper_get_UserIndex(imguics.ImGuiCs.ptr(this)); }
    function set_userIndex(v:Int):Int { imguics.DCImGui.dcjs_ImGuiListClipper_set_UserIndex(imguics.ImGuiCs.ptr(this), v); return v; }
    public var itemsCount(get, set):Int;
    inline function get_itemsCount():Int { return imguics.DCImGui.dcjs_ImGuiListClipper_get_ItemsCount(imguics.ImGuiCs.ptr(this)); }
    function set_itemsCount(v:Int):Int { imguics.DCImGui.dcjs_ImGuiListClipper_set_ItemsCount(imguics.ImGuiCs.ptr(this), v); return v; }
    public var itemsHeight(get, set):Float;
    inline function get_itemsHeight():Float { return imguics.DCImGui.dcjs_ImGuiListClipper_get_ItemsHeight(imguics.ImGuiCs.ptr(this)); }
    function set_itemsHeight(v:Float):Float { imguics.DCImGui.dcjs_ImGuiListClipper_set_ItemsHeight(imguics.ImGuiCs.ptr(this), v); return v; }
    public var flags(get, set):Int;
    inline function get_flags():Int { return imguics.DCImGui.dcjs_ImGuiListClipper_get_Flags(imguics.ImGuiCs.ptr(this)); }
    function set_flags(v:Int):Int { imguics.DCImGui.dcjs_ImGuiListClipper_set_Flags(imguics.ImGuiCs.ptr(this), v); return v; }
    public var startPosY(get, set):Float;
    inline function get_startPosY():Float { return imguics.DCImGui.dcjs_ImGuiListClipper_get_StartPosY(imguics.ImGuiCs.ptr(this)); }
    function set_startPosY(v:Float):Float { imguics.DCImGui.dcjs_ImGuiListClipper_set_StartPosY(imguics.ImGuiCs.ptr(this), v); return v; }
    public var startSeekOffsetY(get, set):Float;
    inline function get_startSeekOffsetY():Float { return imguics.DCImGui.dcjs_ImGuiListClipper_get_StartSeekOffsetY(imguics.ImGuiCs.ptr(this)); }
    function set_startSeekOffsetY(v:Float):Float { imguics.DCImGui.dcjs_ImGuiListClipper_set_StartSeekOffsetY(imguics.ImGuiCs.ptr(this), v); return v; }
    public var ctx(get, set):ImGuiContext;
    inline function get_ctx():ImGuiContext { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiListClipper_get_Ctx(imguics.ImGuiCs.ptr(this))); }
    function set_ctx(v:ImGuiContext):ImGuiContext { imguics.DCImGui.dcjs_ImGuiListClipper_set_Ctx(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var tempData(get, set):Float;
    inline function get_tempData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiListClipper_get_TempData(imguics.ImGuiCs.ptr(this))); }
    function set_tempData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiListClipper_set_TempData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImGuiListClipper) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiListClipper(); }

    public static function begin(self:ImGuiListClipper, itemsCount:Int, itemsHeight:Float = -1.0):Void {
        imguics.DCImGui.ImGuiListClipper_Begin(imguics.ImGuiCs.ptr(self), itemsCount, itemsHeight);
    }
    public static function end(self:ImGuiListClipper):Void {
        imguics.DCImGui.ImGuiListClipper_End(imguics.ImGuiCs.ptr(self));
    }
    public static function step(self:ImGuiListClipper):Bool {
        return imguics.DCImGui.ImGuiListClipper_Step(imguics.ImGuiCs.ptr(self));
    }
    public static function includeItemByIndex(self:ImGuiListClipper, itemIndex:Int):Void {
        imguics.DCImGui.ImGuiListClipper_IncludeItemByIndex(imguics.ImGuiCs.ptr(self), itemIndex);
    }
    public static function includeItemsByIndex(self:ImGuiListClipper, itemBegin:Int, itemEnd:Int):Void {
        imguics.DCImGui.ImGuiListClipper_IncludeItemsByIndex(imguics.ImGuiCs.ptr(self), itemBegin, itemEnd);
    }
    public static function seekCursorForItem(self:ImGuiListClipper, itemIndex:Int):Void {
        imguics.DCImGui.ImGuiListClipper_SeekCursorForItem(imguics.ImGuiCs.ptr(self), itemIndex);
    }
}

abstract ImColor(Float) from Float to Float {
    public var value(get, set):ImVec4;
    inline function get_value():ImVec4 { var v = new ImVec4(0, 0, 0, 0); imguics.DCImGui.dcjs_ImColor_get_Value(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_value(v:ImVec4):ImVec4 { imguics.DCImGui.dcjs_ImColor_set_Value(imguics.ImGuiCs.ptr(this), v.x, v.y, v.z, v.w); return v; }
    /** sizeof(ImColor) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImColor(); }

    public static function setHSV(self:ImColor, h:Float, s:Float, v:Float, a:Float = 1.0):Void {
        imguics.DCImGui.ImColor_SetHSV(imguics.ImGuiCs.ptr(self), h, s, v, a);
    }
}

abstract ImGuiMultiSelectIO(Float) from Float to Float {
    public var requests(get, never):ImVector_ImGuiSelectionRequest;
    inline function get_requests():ImVector_ImGuiSelectionRequest { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiMultiSelectIO_ptr_Requests(imguics.ImGuiCs.ptr(this))); }
    public var rangeSrcItem(get, set):Float;
    inline function get_rangeSrcItem():Float { return imguics.ImGuiCs.from64(imguics.DCImGui.dcjs_ImGuiMultiSelectIO_get_RangeSrcItem(imguics.ImGuiCs.ptr(this))); }
    function set_rangeSrcItem(v:Float):Float { imguics.DCImGui.dcjs_ImGuiMultiSelectIO_set_RangeSrcItem(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toI64(v)); return v; }
    public var navIdItem(get, set):Float;
    inline function get_navIdItem():Float { return imguics.ImGuiCs.from64(imguics.DCImGui.dcjs_ImGuiMultiSelectIO_get_NavIdItem(imguics.ImGuiCs.ptr(this))); }
    function set_navIdItem(v:Float):Float { imguics.DCImGui.dcjs_ImGuiMultiSelectIO_set_NavIdItem(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toI64(v)); return v; }
    public var navIdSelected(get, set):Bool;
    inline function get_navIdSelected():Bool { return imguics.DCImGui.dcjs_ImGuiMultiSelectIO_get_NavIdSelected(imguics.ImGuiCs.ptr(this)); }
    function set_navIdSelected(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiMultiSelectIO_set_NavIdSelected(imguics.ImGuiCs.ptr(this), v); return v; }
    public var rangeSrcReset(get, set):Bool;
    inline function get_rangeSrcReset():Bool { return imguics.DCImGui.dcjs_ImGuiMultiSelectIO_get_RangeSrcReset(imguics.ImGuiCs.ptr(this)); }
    function set_rangeSrcReset(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiMultiSelectIO_set_RangeSrcReset(imguics.ImGuiCs.ptr(this), v); return v; }
    public var itemsCount(get, set):Int;
    inline function get_itemsCount():Int { return imguics.DCImGui.dcjs_ImGuiMultiSelectIO_get_ItemsCount(imguics.ImGuiCs.ptr(this)); }
    function set_itemsCount(v:Int):Int { imguics.DCImGui.dcjs_ImGuiMultiSelectIO_set_ItemsCount(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImGuiMultiSelectIO) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiMultiSelectIO(); }
}

abstract ImGuiSelectionRequest(Float) from Float to Float {
    public var type(get, set):ImGuiSelectionRequestType;
    inline function get_type():ImGuiSelectionRequestType { return imguics.DCImGui.dcjs_ImGuiSelectionRequest_get_Type(imguics.ImGuiCs.ptr(this)); }
    function set_type(v:ImGuiSelectionRequestType):ImGuiSelectionRequestType { imguics.DCImGui.dcjs_ImGuiSelectionRequest_set_Type(imguics.ImGuiCs.ptr(this), (v:Int)); return v; }
    public var selected(get, set):Bool;
    inline function get_selected():Bool { return imguics.DCImGui.dcjs_ImGuiSelectionRequest_get_Selected(imguics.ImGuiCs.ptr(this)); }
    function set_selected(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiSelectionRequest_set_Selected(imguics.ImGuiCs.ptr(this), v); return v; }
    public var rangeDirection(get, set):Int;
    inline function get_rangeDirection():Int { return imguics.DCImGui.dcjs_ImGuiSelectionRequest_get_RangeDirection(imguics.ImGuiCs.ptr(this)); }
    function set_rangeDirection(v:Int):Int { imguics.DCImGui.dcjs_ImGuiSelectionRequest_set_RangeDirection(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toI8(v)); return v; }
    public var rangeFirstItem(get, set):Float;
    inline function get_rangeFirstItem():Float { return imguics.ImGuiCs.from64(imguics.DCImGui.dcjs_ImGuiSelectionRequest_get_RangeFirstItem(imguics.ImGuiCs.ptr(this))); }
    function set_rangeFirstItem(v:Float):Float { imguics.DCImGui.dcjs_ImGuiSelectionRequest_set_RangeFirstItem(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toI64(v)); return v; }
    public var rangeLastItem(get, set):Float;
    inline function get_rangeLastItem():Float { return imguics.ImGuiCs.from64(imguics.DCImGui.dcjs_ImGuiSelectionRequest_get_RangeLastItem(imguics.ImGuiCs.ptr(this))); }
    function set_rangeLastItem(v:Float):Float { imguics.DCImGui.dcjs_ImGuiSelectionRequest_set_RangeLastItem(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toI64(v)); return v; }
    /** sizeof(ImGuiSelectionRequest) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiSelectionRequest(); }
}

abstract ImGuiSelectionBasicStorage(Float) from Float to Float {
    public var size(get, set):Int;
    inline function get_size():Int { return imguics.DCImGui.dcjs_ImGuiSelectionBasicStorage_get_Size(imguics.ImGuiCs.ptr(this)); }
    function set_size(v:Int):Int { imguics.DCImGui.dcjs_ImGuiSelectionBasicStorage_set_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    public var preserveOrder(get, set):Bool;
    inline function get_preserveOrder():Bool { return imguics.DCImGui.dcjs_ImGuiSelectionBasicStorage_get_PreserveOrder(imguics.ImGuiCs.ptr(this)); }
    function set_preserveOrder(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiSelectionBasicStorage_set_PreserveOrder(imguics.ImGuiCs.ptr(this), v); return v; }
    public var userData(get, set):Float;
    inline function get_userData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiSelectionBasicStorage_get_UserData(imguics.ImGuiCs.ptr(this))); }
    function set_userData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiSelectionBasicStorage_set_UserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var adapterIndexToStorageId(get, never):Float;
    inline function get_adapterIndexToStorageId():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiSelectionBasicStorage_getp_AdapterIndexToStorageId(imguics.ImGuiCs.ptr(this))); }
    public var _SelectionOrder(get, set):Int;
    inline function get__SelectionOrder():Int { return imguics.DCImGui.dcjs_ImGuiSelectionBasicStorage_get__SelectionOrder(imguics.ImGuiCs.ptr(this)); }
    function set__SelectionOrder(v:Int):Int { imguics.DCImGui.dcjs_ImGuiSelectionBasicStorage_set__SelectionOrder(imguics.ImGuiCs.ptr(this), v); return v; }
    public var _Storage(get, never):ImGuiStorage;
    inline function get__Storage():ImGuiStorage { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiSelectionBasicStorage_ptr__Storage(imguics.ImGuiCs.ptr(this))); }
    /** sizeof(ImGuiSelectionBasicStorage) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiSelectionBasicStorage(); }

    public static function applyRequests(self:ImGuiSelectionBasicStorage, msIo:ImGuiMultiSelectIO):Void {
        imguics.DCImGui.ImGuiSelectionBasicStorage_ApplyRequests(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(msIo));
    }
    public static function contains(self:ImGuiSelectionBasicStorage, id:Int):Bool {
        return imguics.DCImGui.ImGuiSelectionBasicStorage_Contains(imguics.ImGuiCs.ptr(self), id);
    }
    public static function clear(self:ImGuiSelectionBasicStorage):Void {
        imguics.DCImGui.ImGuiSelectionBasicStorage_Clear(imguics.ImGuiCs.ptr(self));
    }
    public static function swap(self:ImGuiSelectionBasicStorage, r:ImGuiSelectionBasicStorage):Void {
        imguics.DCImGui.ImGuiSelectionBasicStorage_Swap(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(r));
    }
    public static function setItemSelected(self:ImGuiSelectionBasicStorage, id:Int, selected:Bool):Void {
        imguics.DCImGui.ImGuiSelectionBasicStorage_SetItemSelected(imguics.ImGuiCs.ptr(self), id, selected);
    }
    public static function getNextSelectedItem(self:ImGuiSelectionBasicStorage, opaqueIt:Float, outId:Float):Bool {
        return imguics.DCImGui.ImGuiSelectionBasicStorage_GetNextSelectedItem(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(opaqueIt), imguics.ImGuiCs.ptr(outId));
    }
    public static function getStorageIdFromIndex(self:ImGuiSelectionBasicStorage, idx:Int):Int {
        return imguics.DCImGui.ImGuiSelectionBasicStorage_GetStorageIdFromIndex(imguics.ImGuiCs.ptr(self), idx);
    }
}

abstract ImGuiSelectionExternalStorage(Float) from Float to Float {
    public var userData(get, set):Float;
    inline function get_userData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiSelectionExternalStorage_get_UserData(imguics.ImGuiCs.ptr(this))); }
    function set_userData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiSelectionExternalStorage_set_UserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var adapterSetItemSelected(get, never):Float;
    inline function get_adapterSetItemSelected():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiSelectionExternalStorage_getp_AdapterSetItemSelected(imguics.ImGuiCs.ptr(this))); }
    /** sizeof(ImGuiSelectionExternalStorage) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiSelectionExternalStorage(); }

    public static function applyRequests(self:ImGuiSelectionExternalStorage, msIo:ImGuiMultiSelectIO):Void {
        imguics.DCImGui.ImGuiSelectionExternalStorage_ApplyRequests(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(msIo));
    }
}

abstract ImDrawCmd(Float) from Float to Float {
    public var clipRect(get, set):ImVec4;
    inline function get_clipRect():ImVec4 { var v = new ImVec4(0, 0, 0, 0); imguics.DCImGui.dcjs_ImDrawCmd_get_ClipRect(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_clipRect(v:ImVec4):ImVec4 { imguics.DCImGui.dcjs_ImDrawCmd_set_ClipRect(imguics.ImGuiCs.ptr(this), v.x, v.y, v.z, v.w); return v; }
    public var texRef(get, set):ImTextureRef;
    inline function get_texRef():ImTextureRef { var v = new ImTextureRef(imguics.ImGuiCs.nullPtr(), imguics.ImGuiCs.toU64(0)); imguics.DCImGui.dcjs_ImDrawCmd_get_TexRef(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_texRef(v:ImTextureRef):ImTextureRef { imguics.DCImGui.dcjs_ImDrawCmd_set_TexRef(imguics.ImGuiCs.ptr(this), v._TexData, v._TexID); return v; }
    public var vtxOffset(get, set):Int;
    inline function get_vtxOffset():Int { return imguics.DCImGui.dcjs_ImDrawCmd_get_VtxOffset(imguics.ImGuiCs.ptr(this)); }
    function set_vtxOffset(v:Int):Int { imguics.DCImGui.dcjs_ImDrawCmd_set_VtxOffset(imguics.ImGuiCs.ptr(this), v); return v; }
    public var idxOffset(get, set):Int;
    inline function get_idxOffset():Int { return imguics.DCImGui.dcjs_ImDrawCmd_get_IdxOffset(imguics.ImGuiCs.ptr(this)); }
    function set_idxOffset(v:Int):Int { imguics.DCImGui.dcjs_ImDrawCmd_set_IdxOffset(imguics.ImGuiCs.ptr(this), v); return v; }
    public var elemCount(get, set):Int;
    inline function get_elemCount():Int { return imguics.DCImGui.dcjs_ImDrawCmd_get_ElemCount(imguics.ImGuiCs.ptr(this)); }
    function set_elemCount(v:Int):Int { imguics.DCImGui.dcjs_ImDrawCmd_set_ElemCount(imguics.ImGuiCs.ptr(this), v); return v; }
    public var userCallback(get, set):Float;
    inline function get_userCallback():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawCmd_get_UserCallback(imguics.ImGuiCs.ptr(this))); }
    function set_userCallback(v:Float):Float { imguics.DCImGui.dcjs_ImDrawCmd_set_UserCallback(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var userCallbackData(get, set):Float;
    inline function get_userCallbackData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawCmd_get_UserCallbackData(imguics.ImGuiCs.ptr(this))); }
    function set_userCallbackData(v:Float):Float { imguics.DCImGui.dcjs_ImDrawCmd_set_UserCallbackData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var userCallbackDataSize(get, set):Int;
    inline function get_userCallbackDataSize():Int { return imguics.DCImGui.dcjs_ImDrawCmd_get_UserCallbackDataSize(imguics.ImGuiCs.ptr(this)); }
    function set_userCallbackDataSize(v:Int):Int { imguics.DCImGui.dcjs_ImDrawCmd_set_UserCallbackDataSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var userCallbackDataOffset(get, set):Int;
    inline function get_userCallbackDataOffset():Int { return imguics.DCImGui.dcjs_ImDrawCmd_get_UserCallbackDataOffset(imguics.ImGuiCs.ptr(this)); }
    function set_userCallbackDataOffset(v:Int):Int { imguics.DCImGui.dcjs_ImDrawCmd_set_UserCallbackDataOffset(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImDrawCmd) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImDrawCmd(); }

    public static function getTexID(self:ImDrawCmd):Float {
        return imguics.ImGuiCs.from64(imguics.DCImGui.ImDrawCmd_GetTexID(imguics.ImGuiCs.ptr(self)));
    }
}

abstract ImDrawVert(Float) from Float to Float {
    public var pos(get, set):ImVec2;
    inline function get_pos():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImDrawVert_get_pos(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_pos(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImDrawVert_set_pos(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var uv(get, set):ImVec2;
    inline function get_uv():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImDrawVert_get_uv(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_uv(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImDrawVert_set_uv(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var col(get, set):Int;
    inline function get_col():Int { return imguics.DCImGui.dcjs_ImDrawVert_get_col(imguics.ImGuiCs.ptr(this)); }
    function set_col(v:Int):Int { imguics.DCImGui.dcjs_ImDrawVert_set_col(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImDrawVert) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImDrawVert(); }
}

abstract ImDrawListSplitter(Float) from Float to Float {
    public var _Current(get, set):Int;
    inline function get__Current():Int { return imguics.DCImGui.dcjs_ImDrawListSplitter_get__Current(imguics.ImGuiCs.ptr(this)); }
    function set__Current(v:Int):Int { imguics.DCImGui.dcjs_ImDrawListSplitter_set__Current(imguics.ImGuiCs.ptr(this), v); return v; }
    public var _Count(get, set):Int;
    inline function get__Count():Int { return imguics.DCImGui.dcjs_ImDrawListSplitter_get__Count(imguics.ImGuiCs.ptr(this)); }
    function set__Count(v:Int):Int { imguics.DCImGui.dcjs_ImDrawListSplitter_set__Count(imguics.ImGuiCs.ptr(this), v); return v; }
    public var _Channels(get, never):ImVector_ImDrawChannel;
    inline function get__Channels():ImVector_ImDrawChannel { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawListSplitter_ptr__Channels(imguics.ImGuiCs.ptr(this))); }
    /** sizeof(ImDrawListSplitter) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImDrawListSplitter(); }

    public static function clear(self:ImDrawListSplitter):Void {
        imguics.DCImGui.ImDrawListSplitter_Clear(imguics.ImGuiCs.ptr(self));
    }
    public static function clearFreeMemory(self:ImDrawListSplitter):Void {
        imguics.DCImGui.ImDrawListSplitter_ClearFreeMemory(imguics.ImGuiCs.ptr(self));
    }
    public static function split(self:ImDrawListSplitter, drawList:ImDrawList, count:Int):Void {
        imguics.DCImGui.ImDrawListSplitter_Split(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(drawList), count);
    }
    public static function merge(self:ImDrawListSplitter, drawList:ImDrawList):Void {
        imguics.DCImGui.ImDrawListSplitter_Merge(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(drawList));
    }
    public static function setCurrentChannel(self:ImDrawListSplitter, drawList:ImDrawList, channelIdx:Int):Void {
        imguics.DCImGui.ImDrawListSplitter_SetCurrentChannel(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(drawList), channelIdx);
    }
}

abstract ImDrawList(Float) from Float to Float {
    public var cmdBuffer(get, never):ImVector_ImDrawCmd;
    inline function get_cmdBuffer():ImVector_ImDrawCmd { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_ptr_CmdBuffer(imguics.ImGuiCs.ptr(this))); }
    public var idxBuffer(get, never):ImVector_ImDrawIdx;
    inline function get_idxBuffer():ImVector_ImDrawIdx { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_ptr_IdxBuffer(imguics.ImGuiCs.ptr(this))); }
    public var vtxBuffer(get, never):ImVector_ImDrawVert;
    inline function get_vtxBuffer():ImVector_ImDrawVert { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_ptr_VtxBuffer(imguics.ImGuiCs.ptr(this))); }
    public var flags(get, set):Int;
    inline function get_flags():Int { return imguics.DCImGui.dcjs_ImDrawList_get_Flags(imguics.ImGuiCs.ptr(this)); }
    function set_flags(v:Int):Int { imguics.DCImGui.dcjs_ImDrawList_set_Flags(imguics.ImGuiCs.ptr(this), v); return v; }
    public var _VtxCurrentIdx(get, set):Int;
    inline function get__VtxCurrentIdx():Int { return imguics.DCImGui.dcjs_ImDrawList_get__VtxCurrentIdx(imguics.ImGuiCs.ptr(this)); }
    function set__VtxCurrentIdx(v:Int):Int { imguics.DCImGui.dcjs_ImDrawList_set__VtxCurrentIdx(imguics.ImGuiCs.ptr(this), v); return v; }
    public var _Data(get, set):ImDrawListSharedData;
    inline function get__Data():ImDrawListSharedData { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_get__Data(imguics.ImGuiCs.ptr(this))); }
    function set__Data(v:ImDrawListSharedData):ImDrawListSharedData { imguics.DCImGui.dcjs_ImDrawList_set__Data(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var _VtxWritePtr(get, set):ImDrawVert;
    inline function get__VtxWritePtr():ImDrawVert { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_get__VtxWritePtr(imguics.ImGuiCs.ptr(this))); }
    function set__VtxWritePtr(v:ImDrawVert):ImDrawVert { imguics.DCImGui.dcjs_ImDrawList_set__VtxWritePtr(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var _IdxWritePtr(get, set):Float;
    inline function get__IdxWritePtr():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_get__IdxWritePtr(imguics.ImGuiCs.ptr(this))); }
    function set__IdxWritePtr(v:Float):Float { imguics.DCImGui.dcjs_ImDrawList_set__IdxWritePtr(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var _Path(get, never):ImVector_ImVec2;
    inline function get__Path():ImVector_ImVec2 { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_ptr__Path(imguics.ImGuiCs.ptr(this))); }
    public var _Splitter(get, never):ImDrawListSplitter;
    inline function get__Splitter():ImDrawListSplitter { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_ptr__Splitter(imguics.ImGuiCs.ptr(this))); }
    public var _ClipRectStack(get, never):ImVector_ImVec4;
    inline function get__ClipRectStack():ImVector_ImVec4 { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_ptr__ClipRectStack(imguics.ImGuiCs.ptr(this))); }
    public var _TextureStack(get, never):ImVector_ImTextureRef;
    inline function get__TextureStack():ImVector_ImTextureRef { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_ptr__TextureStack(imguics.ImGuiCs.ptr(this))); }
    public var _CallbacksDataBuf(get, never):ImVector_ImU8;
    inline function get__CallbacksDataBuf():ImVector_ImU8 { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_ptr__CallbacksDataBuf(imguics.ImGuiCs.ptr(this))); }
    public var _FringeScale(get, set):Float;
    inline function get__FringeScale():Float { return imguics.DCImGui.dcjs_ImDrawList_get__FringeScale(imguics.ImGuiCs.ptr(this)); }
    function set__FringeScale(v:Float):Float { imguics.DCImGui.dcjs_ImDrawList_set__FringeScale(imguics.ImGuiCs.ptr(this), v); return v; }
    public var _OwnerName(get, set):Float;
    inline function get__OwnerName():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawList_get__OwnerName(imguics.ImGuiCs.ptr(this))); }
    function set__OwnerName(v:Float):Float { imguics.DCImGui.dcjs_ImDrawList_set__OwnerName(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImDrawList) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImDrawList(); }

    public static function pushClipRect(self:ImDrawList, clipRectMin:ImVec2, clipRectMax:ImVec2, intersectWithCurrentClipRect:Bool = false):Void {
        imguics.DCImGui.ImDrawList_PushClipRect(imguics.ImGuiCs.ptr(self), clipRectMin, clipRectMax, intersectWithCurrentClipRect);
    }
    public static function pushClipRectFullScreen(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList_PushClipRectFullScreen(imguics.ImGuiCs.ptr(self));
    }
    public static function popClipRect(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList_PopClipRect(imguics.ImGuiCs.ptr(self));
    }
    public static function pushTexture(self:ImDrawList, texRef:ImTextureRef):Void {
        imguics.DCImGui.ImDrawList_PushTexture(imguics.ImGuiCs.ptr(self), texRef);
    }
    public static function popTexture(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList_PopTexture(imguics.ImGuiCs.ptr(self));
    }
    public static function getClipRectMin(self:ImDrawList):ImVec2 {
        return imguics.DCImGui.ImDrawList_GetClipRectMin(imguics.ImGuiCs.ptr(self));
    }
    public static function getClipRectMax(self:ImDrawList):ImVec2 {
        return imguics.DCImGui.ImDrawList_GetClipRectMax(imguics.ImGuiCs.ptr(self));
    }
    public static function addLineEx(self:ImDrawList, p1:ImVec2, p2:ImVec2, col:Int, thickness:Float = 1.0):Void {
        imguics.DCImGui.ImDrawList_AddLineEx(imguics.ImGuiCs.ptr(self), p1, p2, col, thickness);
    }
    public static function addLine(self:ImDrawList, p1:ImVec2, p2:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddLine(imguics.ImGuiCs.ptr(self), p1, p2, col);
    }
    public static function addLineHEx(self:ImDrawList, minX:Float, maxX:Float, y:Float, col:Int, thickness:Float = 1.0):Void {
        imguics.DCImGui.ImDrawList_AddLineHEx(imguics.ImGuiCs.ptr(self), minX, maxX, y, col, thickness);
    }
    public static function addLineH(self:ImDrawList, minX:Float, maxX:Float, y:Float, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddLineH(imguics.ImGuiCs.ptr(self), minX, maxX, y, col);
    }
    public static function addLineVEx(self:ImDrawList, x:Float, minY:Float, maxY:Float, col:Int, thickness:Float = 1.0):Void {
        imguics.DCImGui.ImDrawList_AddLineVEx(imguics.ImGuiCs.ptr(self), x, minY, maxY, col, thickness);
    }
    public static function addLineV(self:ImDrawList, x:Float, minY:Float, maxY:Float, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddLineV(imguics.ImGuiCs.ptr(self), x, minY, maxY, col);
    }
    public static function addRectEx(self:ImDrawList, pMin:ImVec2, pMax:ImVec2, col:Int, rounding:Float = 0.0, thickness:Float = 1.0, flags:Int = 0):Void {
        imguics.DCImGui.ImDrawList_AddRectEx(imguics.ImGuiCs.ptr(self), pMin, pMax, col, rounding, thickness, flags);
    }
    public static function addRect(self:ImDrawList, pMin:ImVec2, pMax:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddRect(imguics.ImGuiCs.ptr(self), pMin, pMax, col);
    }
    public static function addRectFilledEx(self:ImDrawList, pMin:ImVec2, pMax:ImVec2, col:Int, rounding:Float = 0.0, flags:Int = 0):Void {
        imguics.DCImGui.ImDrawList_AddRectFilledEx(imguics.ImGuiCs.ptr(self), pMin, pMax, col, rounding, flags);
    }
    public static function addRectFilled(self:ImDrawList, pMin:ImVec2, pMax:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddRectFilled(imguics.ImGuiCs.ptr(self), pMin, pMax, col);
    }
    public static function addRectFilledMultiColor(self:ImDrawList, pMin:ImVec2, pMax:ImVec2, colUprLeft:Int, colUprRight:Int, colBotRight:Int, colBotLeft:Int):Void {
        imguics.DCImGui.ImDrawList_AddRectFilledMultiColor(imguics.ImGuiCs.ptr(self), pMin, pMax, colUprLeft, colUprRight, colBotRight, colBotLeft);
    }
    public static function addQuadEx(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:Int, thickness:Float = 1.0):Void {
        imguics.DCImGui.ImDrawList_AddQuadEx(imguics.ImGuiCs.ptr(self), p1, p2, p3, p4, col, thickness);
    }
    public static function addQuad(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddQuad(imguics.ImGuiCs.ptr(self), p1, p2, p3, p4, col);
    }
    public static function addQuadFilled(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddQuadFilled(imguics.ImGuiCs.ptr(self), p1, p2, p3, p4, col);
    }
    public static function addTriangleEx(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:Int, thickness:Float = 1.0):Void {
        imguics.DCImGui.ImDrawList_AddTriangleEx(imguics.ImGuiCs.ptr(self), p1, p2, p3, col, thickness);
    }
    public static function addTriangle(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddTriangle(imguics.ImGuiCs.ptr(self), p1, p2, p3, col);
    }
    public static function addTriangleFilled(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddTriangleFilled(imguics.ImGuiCs.ptr(self), p1, p2, p3, col);
    }
    public static function addCircleEx(self:ImDrawList, center:ImVec2, radius:Float, col:Int, numSegments:Int = 0, thickness:Float = 1.0):Void {
        imguics.DCImGui.ImDrawList_AddCircleEx(imguics.ImGuiCs.ptr(self), center, radius, col, numSegments, thickness);
    }
    public static function addCircle(self:ImDrawList, center:ImVec2, radius:Float, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddCircle(imguics.ImGuiCs.ptr(self), center, radius, col);
    }
    public static function addCircleFilled(self:ImDrawList, center:ImVec2, radius:Float, col:Int, numSegments:Int = 0):Void {
        imguics.DCImGui.ImDrawList_AddCircleFilled(imguics.ImGuiCs.ptr(self), center, radius, col, numSegments);
    }
    public static function addNgonEx(self:ImDrawList, center:ImVec2, radius:Float, col:Int, numSegments:Int, thickness:Float = 1.0):Void {
        imguics.DCImGui.ImDrawList_AddNgonEx(imguics.ImGuiCs.ptr(self), center, radius, col, numSegments, thickness);
    }
    public static function addNgon(self:ImDrawList, center:ImVec2, radius:Float, col:Int, numSegments:Int):Void {
        imguics.DCImGui.ImDrawList_AddNgon(imguics.ImGuiCs.ptr(self), center, radius, col, numSegments);
    }
    public static function addNgonFilled(self:ImDrawList, center:ImVec2, radius:Float, col:Int, numSegments:Int):Void {
        imguics.DCImGui.ImDrawList_AddNgonFilled(imguics.ImGuiCs.ptr(self), center, radius, col, numSegments);
    }
    public static function addEllipseEx(self:ImDrawList, center:ImVec2, radius:ImVec2, col:Int, rot:Float = 0.0, numSegments:Int = 0, thickness:Float = 1.0):Void {
        imguics.DCImGui.ImDrawList_AddEllipseEx(imguics.ImGuiCs.ptr(self), center, radius, col, rot, numSegments, thickness);
    }
    public static function addEllipse(self:ImDrawList, center:ImVec2, radius:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddEllipse(imguics.ImGuiCs.ptr(self), center, radius, col);
    }
    public static function addEllipseFilledEx(self:ImDrawList, center:ImVec2, radius:ImVec2, col:Int, rot:Float = 0.0, numSegments:Int = 0):Void {
        imguics.DCImGui.ImDrawList_AddEllipseFilledEx(imguics.ImGuiCs.ptr(self), center, radius, col, rot, numSegments);
    }
    public static function addEllipseFilled(self:ImDrawList, center:ImVec2, radius:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddEllipseFilled(imguics.ImGuiCs.ptr(self), center, radius, col);
    }
    public static function addTextEx(self:ImDrawList, pos:ImVec2, col:Int, textBegin:String, textEnd:String = null):Void {
        imguics.DCImGui.ImDrawList_AddTextEx(imguics.ImGuiCs.ptr(self), pos, col, textBegin, textEnd);
    }
    public static function addText(self:ImDrawList, pos:ImVec2, col:Int, textBegin:String):Void {
        imguics.DCImGui.ImDrawList_AddText(imguics.ImGuiCs.ptr(self), pos, col, textBegin);
    }
    public static function addTextImFontPtrEx(self:ImDrawList, font:ImFont, fontSize:Float, pos:ImVec2, col:Int, textBegin:String, textEnd:String = null, wrapWidth:Float = 0.0, cpuFineClipRect:Float = 0):Void {
        imguics.DCImGui.ImDrawList_AddTextImFontPtrEx(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(font), fontSize, pos, col, textBegin, textEnd, wrapWidth, imguics.ImGuiCs.ptr(cpuFineClipRect));
    }
    public static function addTextImFontPtr(self:ImDrawList, font:ImFont, fontSize:Float, pos:ImVec2, col:Int, textBegin:String):Void {
        imguics.DCImGui.ImDrawList_AddTextImFontPtr(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(font), fontSize, pos, col, textBegin);
    }
    public static function addBezierCubic(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:Int, thickness:Float, numSegments:Int = 0):Void {
        imguics.DCImGui.ImDrawList_AddBezierCubic(imguics.ImGuiCs.ptr(self), p1, p2, p3, p4, col, thickness, numSegments);
    }
    public static function addBezierQuadratic(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:Int, thickness:Float, numSegments:Int = 0):Void {
        imguics.DCImGui.ImDrawList_AddBezierQuadratic(imguics.ImGuiCs.ptr(self), p1, p2, p3, col, thickness, numSegments);
    }
    public static function addPolyline(self:ImDrawList, points:Float, numPoints:Int, col:Int, thickness:Float, flags:Int = 0):Void {
        imguics.DCImGui.ImDrawList_AddPolyline(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(points), numPoints, col, thickness, flags);
    }
    public static function addConvexPolyFilled(self:ImDrawList, points:Float, numPoints:Int, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddConvexPolyFilled(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(points), numPoints, col);
    }
    public static function addConcavePolyFilled(self:ImDrawList, points:Float, numPoints:Int, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddConcavePolyFilled(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(points), numPoints, col);
    }
    public static function addImageEx(self:ImDrawList, texRef:ImTextureRef, pMin:ImVec2, pMax:ImVec2, uvMin:ImVec2, uvMax:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddImageEx(imguics.ImGuiCs.ptr(self), texRef, pMin, pMax, uvMin, uvMax, col);
    }
    public static function addImage(self:ImDrawList, texRef:ImTextureRef, pMin:ImVec2, pMax:ImVec2):Void {
        imguics.DCImGui.ImDrawList_AddImage(imguics.ImGuiCs.ptr(self), texRef, pMin, pMax);
    }
    public static function addImageQuadEx(self:ImDrawList, texRef:ImTextureRef, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv1:ImVec2, uv2:ImVec2, uv3:ImVec2, uv4:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_AddImageQuadEx(imguics.ImGuiCs.ptr(self), texRef, p1, p2, p3, p4, uv1, uv2, uv3, uv4, col);
    }
    public static function addImageQuad(self:ImDrawList, texRef:ImTextureRef, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2):Void {
        imguics.DCImGui.ImDrawList_AddImageQuad(imguics.ImGuiCs.ptr(self), texRef, p1, p2, p3, p4);
    }
    public static function addImageRounded(self:ImDrawList, texRef:ImTextureRef, pMin:ImVec2, pMax:ImVec2, uvMin:ImVec2, uvMax:ImVec2, col:Int, rounding:Float, flags:Int = 0):Void {
        imguics.DCImGui.ImDrawList_AddImageRounded(imguics.ImGuiCs.ptr(self), texRef, pMin, pMax, uvMin, uvMax, col, rounding, flags);
    }
    public static function pathClear(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList_PathClear(imguics.ImGuiCs.ptr(self));
    }
    public static function pathLineTo(self:ImDrawList, pos:ImVec2):Void {
        imguics.DCImGui.ImDrawList_PathLineTo(imguics.ImGuiCs.ptr(self), pos);
    }
    public static function pathLineToMergeDuplicate(self:ImDrawList, pos:ImVec2):Void {
        imguics.DCImGui.ImDrawList_PathLineToMergeDuplicate(imguics.ImGuiCs.ptr(self), pos);
    }
    public static function pathFillConvex(self:ImDrawList, col:Int):Void {
        imguics.DCImGui.ImDrawList_PathFillConvex(imguics.ImGuiCs.ptr(self), col);
    }
    public static function pathFillConcave(self:ImDrawList, col:Int):Void {
        imguics.DCImGui.ImDrawList_PathFillConcave(imguics.ImGuiCs.ptr(self), col);
    }
    public static function pathStroke(self:ImDrawList, col:Int, thickness:Float = 1.0, flags:Int = 0):Void {
        imguics.DCImGui.ImDrawList_PathStroke(imguics.ImGuiCs.ptr(self), col, thickness, flags);
    }
    public static function pathArcTo(self:ImDrawList, center:ImVec2, radius:Float, aMin:Float, aMax:Float, numSegments:Int = 0):Void {
        imguics.DCImGui.ImDrawList_PathArcTo(imguics.ImGuiCs.ptr(self), center, radius, aMin, aMax, numSegments);
    }
    public static function pathArcToFast(self:ImDrawList, center:ImVec2, radius:Float, aMinOf12:Int, aMaxOf12:Int):Void {
        imguics.DCImGui.ImDrawList_PathArcToFast(imguics.ImGuiCs.ptr(self), center, radius, aMinOf12, aMaxOf12);
    }
    public static function pathEllipticalArcToEx(self:ImDrawList, center:ImVec2, radius:ImVec2, rot:Float, aMin:Float, aMax:Float, numSegments:Int = 0):Void {
        imguics.DCImGui.ImDrawList_PathEllipticalArcToEx(imguics.ImGuiCs.ptr(self), center, radius, rot, aMin, aMax, numSegments);
    }
    public static function pathEllipticalArcTo(self:ImDrawList, center:ImVec2, radius:ImVec2, rot:Float, aMin:Float, aMax:Float):Void {
        imguics.DCImGui.ImDrawList_PathEllipticalArcTo(imguics.ImGuiCs.ptr(self), center, radius, rot, aMin, aMax);
    }
    public static function pathBezierCubicCurveTo(self:ImDrawList, p2:ImVec2, p3:ImVec2, p4:ImVec2, numSegments:Int = 0):Void {
        imguics.DCImGui.ImDrawList_PathBezierCubicCurveTo(imguics.ImGuiCs.ptr(self), p2, p3, p4, numSegments);
    }
    public static function pathBezierQuadraticCurveTo(self:ImDrawList, p2:ImVec2, p3:ImVec2, numSegments:Int = 0):Void {
        imguics.DCImGui.ImDrawList_PathBezierQuadraticCurveTo(imguics.ImGuiCs.ptr(self), p2, p3, numSegments);
    }
    public static function pathRect(self:ImDrawList, rectMin:ImVec2, rectMax:ImVec2, rounding:Float = 0.0, flags:Int = 0):Void {
        imguics.DCImGui.ImDrawList_PathRect(imguics.ImGuiCs.ptr(self), rectMin, rectMax, rounding, flags);
    }
    public static function addCallbackEx(self:ImDrawList, callback:Float, userdata:Float = 0, userdataSize:Int):Void {
        imguics.DCImGui.ImDrawList_AddCallbackEx(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(callback), imguics.ImGuiCs.ptr(userdata), imguics.ImGuiCs.ptr(userdataSize));
    }
    public static function addCallback(self:ImDrawList, callback:Float):Void {
        imguics.DCImGui.ImDrawList_AddCallback(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(callback));
    }
    public static function addDrawCmd(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList_AddDrawCmd(imguics.ImGuiCs.ptr(self));
    }
    public static function cloneOutput(self:ImDrawList):ImDrawList {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImDrawList_CloneOutput(imguics.ImGuiCs.ptr(self)));
    }
    public static function channelsSplit(self:ImDrawList, count:Int):Void {
        imguics.DCImGui.ImDrawList_ChannelsSplit(imguics.ImGuiCs.ptr(self), count);
    }
    public static function channelsMerge(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList_ChannelsMerge(imguics.ImGuiCs.ptr(self));
    }
    public static function channelsSetCurrent(self:ImDrawList, n:Int):Void {
        imguics.DCImGui.ImDrawList_ChannelsSetCurrent(imguics.ImGuiCs.ptr(self), n);
    }
    public static function primReserve(self:ImDrawList, idxCount:Int, vtxCount:Int):Void {
        imguics.DCImGui.ImDrawList_PrimReserve(imguics.ImGuiCs.ptr(self), idxCount, vtxCount);
    }
    public static function primUnreserve(self:ImDrawList, idxCount:Int, vtxCount:Int):Void {
        imguics.DCImGui.ImDrawList_PrimUnreserve(imguics.ImGuiCs.ptr(self), idxCount, vtxCount);
    }
    public static function primRect(self:ImDrawList, a:ImVec2, b:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_PrimRect(imguics.ImGuiCs.ptr(self), a, b, col);
    }
    public static function primRectUV(self:ImDrawList, a:ImVec2, b:ImVec2, uvA:ImVec2, uvB:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_PrimRectUV(imguics.ImGuiCs.ptr(self), a, b, uvA, uvB, col);
    }
    public static function primQuadUV(self:ImDrawList, a:ImVec2, b:ImVec2, c:ImVec2, d:ImVec2, uvA:ImVec2, uvB:ImVec2, uvC:ImVec2, uvD:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_PrimQuadUV(imguics.ImGuiCs.ptr(self), a, b, c, d, uvA, uvB, uvC, uvD, col);
    }
    public static function primWriteVtx(self:ImDrawList, pos:ImVec2, uv:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_PrimWriteVtx(imguics.ImGuiCs.ptr(self), pos, uv, col);
    }
    public static function primWriteIdx(self:ImDrawList, idx:Int):Void {
        imguics.DCImGui.ImDrawList_PrimWriteIdx(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.toU16(idx));
    }
    public static function primVtx(self:ImDrawList, pos:ImVec2, uv:ImVec2, col:Int):Void {
        imguics.DCImGui.ImDrawList_PrimVtx(imguics.ImGuiCs.ptr(self), pos, uv, col);
    }
    public static function _SetDrawListSharedData(self:ImDrawList, data:ImDrawListSharedData):Void {
        imguics.DCImGui.ImDrawList__SetDrawListSharedData(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(data));
    }
    public static function _ResetForNewFrame(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList__ResetForNewFrame(imguics.ImGuiCs.ptr(self));
    }
    public static function _ClearFreeMemory(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList__ClearFreeMemory(imguics.ImGuiCs.ptr(self));
    }
    public static function _PopUnusedDrawCmd(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList__PopUnusedDrawCmd(imguics.ImGuiCs.ptr(self));
    }
    public static function _TryMergeDrawCmds(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList__TryMergeDrawCmds(imguics.ImGuiCs.ptr(self));
    }
    public static function _OnChangedClipRect(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList__OnChangedClipRect(imguics.ImGuiCs.ptr(self));
    }
    public static function _OnChangedTexture(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList__OnChangedTexture(imguics.ImGuiCs.ptr(self));
    }
    public static function _OnChangedVtxOffset(self:ImDrawList):Void {
        imguics.DCImGui.ImDrawList__OnChangedVtxOffset(imguics.ImGuiCs.ptr(self));
    }
    public static function _SetTexture(self:ImDrawList, texRef:ImTextureRef):Void {
        imguics.DCImGui.ImDrawList__SetTexture(imguics.ImGuiCs.ptr(self), texRef);
    }
    public static function _CalcCircleAutoSegmentCount(self:ImDrawList, radius:Float):Int {
        return imguics.DCImGui.ImDrawList__CalcCircleAutoSegmentCount(imguics.ImGuiCs.ptr(self), radius);
    }
    public static function _PathArcToFastEx(self:ImDrawList, center:ImVec2, radius:Float, aMinSample:Int, aMaxSample:Int, aStep:Int):Void {
        imguics.DCImGui.ImDrawList__PathArcToFastEx(imguics.ImGuiCs.ptr(self), center, radius, aMinSample, aMaxSample, aStep);
    }
    public static function _PathArcToN(self:ImDrawList, center:ImVec2, radius:Float, aMin:Float, aMax:Float, numSegments:Int):Void {
        imguics.DCImGui.ImDrawList__PathArcToN(imguics.ImGuiCs.ptr(self), center, radius, aMin, aMax, numSegments);
    }
}

abstract ImDrawData(Float) from Float to Float {
    public var valid(get, set):Bool;
    inline function get_valid():Bool { return imguics.DCImGui.dcjs_ImDrawData_get_Valid(imguics.ImGuiCs.ptr(this)); }
    function set_valid(v:Bool):Bool { imguics.DCImGui.dcjs_ImDrawData_set_Valid(imguics.ImGuiCs.ptr(this), v); return v; }
    public var cmdListsCount(get, set):Int;
    inline function get_cmdListsCount():Int { return imguics.DCImGui.dcjs_ImDrawData_get_CmdListsCount(imguics.ImGuiCs.ptr(this)); }
    function set_cmdListsCount(v:Int):Int { imguics.DCImGui.dcjs_ImDrawData_set_CmdListsCount(imguics.ImGuiCs.ptr(this), v); return v; }
    public var totalIdxCount(get, set):Int;
    inline function get_totalIdxCount():Int { return imguics.DCImGui.dcjs_ImDrawData_get_TotalIdxCount(imguics.ImGuiCs.ptr(this)); }
    function set_totalIdxCount(v:Int):Int { imguics.DCImGui.dcjs_ImDrawData_set_TotalIdxCount(imguics.ImGuiCs.ptr(this), v); return v; }
    public var totalVtxCount(get, set):Int;
    inline function get_totalVtxCount():Int { return imguics.DCImGui.dcjs_ImDrawData_get_TotalVtxCount(imguics.ImGuiCs.ptr(this)); }
    function set_totalVtxCount(v:Int):Int { imguics.DCImGui.dcjs_ImDrawData_set_TotalVtxCount(imguics.ImGuiCs.ptr(this), v); return v; }
    public var cmdLists(get, never):ImVector_ImDrawListPtr;
    inline function get_cmdLists():ImVector_ImDrawListPtr { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawData_ptr_CmdLists(imguics.ImGuiCs.ptr(this))); }
    public var displayPos(get, set):ImVec2;
    inline function get_displayPos():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImDrawData_get_DisplayPos(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_displayPos(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImDrawData_set_DisplayPos(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var displaySize(get, set):ImVec2;
    inline function get_displaySize():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImDrawData_get_DisplaySize(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_displaySize(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImDrawData_set_DisplaySize(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var framebufferScale(get, set):ImVec2;
    inline function get_framebufferScale():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImDrawData_get_FramebufferScale(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_framebufferScale(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImDrawData_set_FramebufferScale(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var ownerViewport(get, set):ImGuiViewport;
    inline function get_ownerViewport():ImGuiViewport { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawData_get_OwnerViewport(imguics.ImGuiCs.ptr(this))); }
    function set_ownerViewport(v:ImGuiViewport):ImGuiViewport { imguics.DCImGui.dcjs_ImDrawData_set_OwnerViewport(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var textures(get, set):ImVector_ImTextureDataPtr;
    inline function get_textures():ImVector_ImTextureDataPtr { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImDrawData_get_Textures(imguics.ImGuiCs.ptr(this))); }
    function set_textures(v:ImVector_ImTextureDataPtr):ImVector_ImTextureDataPtr { imguics.DCImGui.dcjs_ImDrawData_set_Textures(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImDrawData) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImDrawData(); }

    public static function clear(self:ImDrawData):Void {
        imguics.DCImGui.ImDrawData_Clear(imguics.ImGuiCs.ptr(self));
    }
    public static function addDrawList(self:ImDrawData, drawList:ImDrawList):Void {
        imguics.DCImGui.ImDrawData_AddDrawList(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(drawList));
    }
    public static function deIndexAllBuffers(self:ImDrawData):Void {
        imguics.DCImGui.ImDrawData_DeIndexAllBuffers(imguics.ImGuiCs.ptr(self));
    }
    public static function scaleClipRects(self:ImDrawData, fbScale:ImVec2):Void {
        imguics.DCImGui.ImDrawData_ScaleClipRects(imguics.ImGuiCs.ptr(self), fbScale);
    }
}

abstract ImTextureRect(Float) from Float to Float {
    public var x(get, set):Int;
    inline function get_x():Int { return imguics.DCImGui.dcjs_ImTextureRect_get_x(imguics.ImGuiCs.ptr(this)); }
    function set_x(v:Int):Int { imguics.DCImGui.dcjs_ImTextureRect_set_x(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var y(get, set):Int;
    inline function get_y():Int { return imguics.DCImGui.dcjs_ImTextureRect_get_y(imguics.ImGuiCs.ptr(this)); }
    function set_y(v:Int):Int { imguics.DCImGui.dcjs_ImTextureRect_set_y(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var w(get, set):Int;
    inline function get_w():Int { return imguics.DCImGui.dcjs_ImTextureRect_get_w(imguics.ImGuiCs.ptr(this)); }
    function set_w(v:Int):Int { imguics.DCImGui.dcjs_ImTextureRect_set_w(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var h(get, set):Int;
    inline function get_h():Int { return imguics.DCImGui.dcjs_ImTextureRect_get_h(imguics.ImGuiCs.ptr(this)); }
    function set_h(v:Int):Int { imguics.DCImGui.dcjs_ImTextureRect_set_h(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    /** sizeof(ImTextureRect) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImTextureRect(); }
}

abstract ImTextureData(Float) from Float to Float {
    public var uniqueID(get, set):Int;
    inline function get_uniqueID():Int { return imguics.DCImGui.dcjs_ImTextureData_get_UniqueID(imguics.ImGuiCs.ptr(this)); }
    function set_uniqueID(v:Int):Int { imguics.DCImGui.dcjs_ImTextureData_set_UniqueID(imguics.ImGuiCs.ptr(this), v); return v; }
    public var status(get, set):ImTextureStatus;
    inline function get_status():ImTextureStatus { return imguics.DCImGui.dcjs_ImTextureData_get_Status(imguics.ImGuiCs.ptr(this)); }
    function set_status(v:ImTextureStatus):ImTextureStatus { imguics.DCImGui.dcjs_ImTextureData_set_Status(imguics.ImGuiCs.ptr(this), (v:Int)); return v; }
    public var backendUserData(get, set):Float;
    inline function get_backendUserData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImTextureData_get_BackendUserData(imguics.ImGuiCs.ptr(this))); }
    function set_backendUserData(v:Float):Float { imguics.DCImGui.dcjs_ImTextureData_set_BackendUserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var texID(get, set):Float;
    inline function get_texID():Float { return imguics.ImGuiCs.from64(imguics.DCImGui.dcjs_ImTextureData_get_TexID(imguics.ImGuiCs.ptr(this))); }
    function set_texID(v:Float):Float { imguics.DCImGui.dcjs_ImTextureData_set_TexID(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU64(v)); return v; }
    public var format(get, set):ImTextureFormat;
    inline function get_format():ImTextureFormat { return imguics.DCImGui.dcjs_ImTextureData_get_Format(imguics.ImGuiCs.ptr(this)); }
    function set_format(v:ImTextureFormat):ImTextureFormat { imguics.DCImGui.dcjs_ImTextureData_set_Format(imguics.ImGuiCs.ptr(this), (v:Int)); return v; }
    public var width(get, set):Int;
    inline function get_width():Int { return imguics.DCImGui.dcjs_ImTextureData_get_Width(imguics.ImGuiCs.ptr(this)); }
    function set_width(v:Int):Int { imguics.DCImGui.dcjs_ImTextureData_set_Width(imguics.ImGuiCs.ptr(this), v); return v; }
    public var height(get, set):Int;
    inline function get_height():Int { return imguics.DCImGui.dcjs_ImTextureData_get_Height(imguics.ImGuiCs.ptr(this)); }
    function set_height(v:Int):Int { imguics.DCImGui.dcjs_ImTextureData_set_Height(imguics.ImGuiCs.ptr(this), v); return v; }
    public var bytesPerPixel(get, set):Int;
    inline function get_bytesPerPixel():Int { return imguics.DCImGui.dcjs_ImTextureData_get_BytesPerPixel(imguics.ImGuiCs.ptr(this)); }
    function set_bytesPerPixel(v:Int):Int { imguics.DCImGui.dcjs_ImTextureData_set_BytesPerPixel(imguics.ImGuiCs.ptr(this), v); return v; }
    public var pixels(get, set):Float;
    inline function get_pixels():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImTextureData_get_Pixels(imguics.ImGuiCs.ptr(this))); }
    function set_pixels(v:Float):Float { imguics.DCImGui.dcjs_ImTextureData_set_Pixels(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var usedRect(get, never):ImTextureRect;
    inline function get_usedRect():ImTextureRect { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImTextureData_ptr_UsedRect(imguics.ImGuiCs.ptr(this))); }
    public var updateRect(get, never):ImTextureRect;
    inline function get_updateRect():ImTextureRect { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImTextureData_ptr_UpdateRect(imguics.ImGuiCs.ptr(this))); }
    public var updates(get, never):ImVector_ImTextureRect;
    inline function get_updates():ImVector_ImTextureRect { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImTextureData_ptr_Updates(imguics.ImGuiCs.ptr(this))); }
    public var unusedFrames(get, set):Int;
    inline function get_unusedFrames():Int { return imguics.DCImGui.dcjs_ImTextureData_get_UnusedFrames(imguics.ImGuiCs.ptr(this)); }
    function set_unusedFrames(v:Int):Int { imguics.DCImGui.dcjs_ImTextureData_set_UnusedFrames(imguics.ImGuiCs.ptr(this), v); return v; }
    public var refCount(get, set):Int;
    inline function get_refCount():Int { return imguics.DCImGui.dcjs_ImTextureData_get_RefCount(imguics.ImGuiCs.ptr(this)); }
    function set_refCount(v:Int):Int { imguics.DCImGui.dcjs_ImTextureData_set_RefCount(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var useColors(get, set):Bool;
    inline function get_useColors():Bool { return imguics.DCImGui.dcjs_ImTextureData_get_UseColors(imguics.ImGuiCs.ptr(this)); }
    function set_useColors(v:Bool):Bool { imguics.DCImGui.dcjs_ImTextureData_set_UseColors(imguics.ImGuiCs.ptr(this), v); return v; }
    public var wantDestroyNextFrame(get, set):Bool;
    inline function get_wantDestroyNextFrame():Bool { return imguics.DCImGui.dcjs_ImTextureData_get_WantDestroyNextFrame(imguics.ImGuiCs.ptr(this)); }
    function set_wantDestroyNextFrame(v:Bool):Bool { imguics.DCImGui.dcjs_ImTextureData_set_WantDestroyNextFrame(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImTextureData) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImTextureData(); }

    public static function create(self:ImTextureData, format:ImTextureFormat, w:Int, h:Int):Void {
        imguics.DCImGui.ImTextureData_Create(imguics.ImGuiCs.ptr(self), (format:Int), w, h);
    }
    public static function destroyPixels(self:ImTextureData):Void {
        imguics.DCImGui.ImTextureData_DestroyPixels(imguics.ImGuiCs.ptr(self));
    }
    public static function getPixels(self:ImTextureData):Float {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImTextureData_GetPixels(imguics.ImGuiCs.ptr(self)));
    }
    public static function getPixelsAt(self:ImTextureData, x:Int, y:Int):Float {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImTextureData_GetPixelsAt(imguics.ImGuiCs.ptr(self), x, y));
    }
    public static function getSizeInBytes(self:ImTextureData):Int {
        return imguics.DCImGui.ImTextureData_GetSizeInBytes(imguics.ImGuiCs.ptr(self));
    }
    public static function getPitch(self:ImTextureData):Int {
        return imguics.DCImGui.ImTextureData_GetPitch(imguics.ImGuiCs.ptr(self));
    }
    public static function getTexRef(self:ImTextureData):ImTextureRef {
        return imguics.DCImGui.ImTextureData_GetTexRef(imguics.ImGuiCs.ptr(self));
    }
    public static function getTexID(self:ImTextureData):Float {
        return imguics.ImGuiCs.from64(imguics.DCImGui.ImTextureData_GetTexID(imguics.ImGuiCs.ptr(self)));
    }
    public static function setTexID(self:ImTextureData, texId:Float):Void {
        imguics.DCImGui.ImTextureData_SetTexID(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.toU64(texId));
    }
    public static function setStatus(self:ImTextureData, status:ImTextureStatus):Void {
        imguics.DCImGui.ImTextureData_SetStatus(imguics.ImGuiCs.ptr(self), (status:Int));
    }
}

abstract ImFontConfig(Float) from Float to Float {
    public var fontData(get, set):Float;
    inline function get_fontData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImFontConfig_get_FontData(imguics.ImGuiCs.ptr(this))); }
    function set_fontData(v:Float):Float { imguics.DCImGui.dcjs_ImFontConfig_set_FontData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var fontDataSize(get, set):Int;
    inline function get_fontDataSize():Int { return imguics.DCImGui.dcjs_ImFontConfig_get_FontDataSize(imguics.ImGuiCs.ptr(this)); }
    function set_fontDataSize(v:Int):Int { imguics.DCImGui.dcjs_ImFontConfig_set_FontDataSize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var fontDataOwnedByAtlas(get, set):Bool;
    inline function get_fontDataOwnedByAtlas():Bool { return imguics.DCImGui.dcjs_ImFontConfig_get_FontDataOwnedByAtlas(imguics.ImGuiCs.ptr(this)); }
    function set_fontDataOwnedByAtlas(v:Bool):Bool { imguics.DCImGui.dcjs_ImFontConfig_set_FontDataOwnedByAtlas(imguics.ImGuiCs.ptr(this), v); return v; }
    public var mergeMode(get, set):Bool;
    inline function get_mergeMode():Bool { return imguics.DCImGui.dcjs_ImFontConfig_get_MergeMode(imguics.ImGuiCs.ptr(this)); }
    function set_mergeMode(v:Bool):Bool { imguics.DCImGui.dcjs_ImFontConfig_set_MergeMode(imguics.ImGuiCs.ptr(this), v); return v; }
    public var pixelSnapH(get, set):Bool;
    inline function get_pixelSnapH():Bool { return imguics.DCImGui.dcjs_ImFontConfig_get_PixelSnapH(imguics.ImGuiCs.ptr(this)); }
    function set_pixelSnapH(v:Bool):Bool { imguics.DCImGui.dcjs_ImFontConfig_set_PixelSnapH(imguics.ImGuiCs.ptr(this), v); return v; }
    public var oversampleH(get, set):Int;
    inline function get_oversampleH():Int { return imguics.DCImGui.dcjs_ImFontConfig_get_OversampleH(imguics.ImGuiCs.ptr(this)); }
    function set_oversampleH(v:Int):Int { imguics.DCImGui.dcjs_ImFontConfig_set_OversampleH(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toI8(v)); return v; }
    public var oversampleV(get, set):Int;
    inline function get_oversampleV():Int { return imguics.DCImGui.dcjs_ImFontConfig_get_OversampleV(imguics.ImGuiCs.ptr(this)); }
    function set_oversampleV(v:Int):Int { imguics.DCImGui.dcjs_ImFontConfig_set_OversampleV(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toI8(v)); return v; }
    public var ellipsisChar(get, set):Int;
    inline function get_ellipsisChar():Int { return imguics.DCImGui.dcjs_ImFontConfig_get_EllipsisChar(imguics.ImGuiCs.ptr(this)); }
    function set_ellipsisChar(v:Int):Int { imguics.DCImGui.dcjs_ImFontConfig_set_EllipsisChar(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var sizePixels(get, set):Float;
    inline function get_sizePixels():Float { return imguics.DCImGui.dcjs_ImFontConfig_get_SizePixels(imguics.ImGuiCs.ptr(this)); }
    function set_sizePixels(v:Float):Float { imguics.DCImGui.dcjs_ImFontConfig_set_SizePixels(imguics.ImGuiCs.ptr(this), v); return v; }
    public var glyphRanges(get, set):Float;
    inline function get_glyphRanges():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImFontConfig_get_GlyphRanges(imguics.ImGuiCs.ptr(this))); }
    function set_glyphRanges(v:Float):Float { imguics.DCImGui.dcjs_ImFontConfig_set_GlyphRanges(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var glyphExcludeRanges(get, set):Float;
    inline function get_glyphExcludeRanges():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImFontConfig_get_GlyphExcludeRanges(imguics.ImGuiCs.ptr(this))); }
    function set_glyphExcludeRanges(v:Float):Float { imguics.DCImGui.dcjs_ImFontConfig_set_GlyphExcludeRanges(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var glyphOffset(get, set):ImVec2;
    inline function get_glyphOffset():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImFontConfig_get_GlyphOffset(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_glyphOffset(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImFontConfig_set_GlyphOffset(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var glyphMinAdvanceX(get, set):Float;
    inline function get_glyphMinAdvanceX():Float { return imguics.DCImGui.dcjs_ImFontConfig_get_GlyphMinAdvanceX(imguics.ImGuiCs.ptr(this)); }
    function set_glyphMinAdvanceX(v:Float):Float { imguics.DCImGui.dcjs_ImFontConfig_set_GlyphMinAdvanceX(imguics.ImGuiCs.ptr(this), v); return v; }
    public var glyphMaxAdvanceX(get, set):Float;
    inline function get_glyphMaxAdvanceX():Float { return imguics.DCImGui.dcjs_ImFontConfig_get_GlyphMaxAdvanceX(imguics.ImGuiCs.ptr(this)); }
    function set_glyphMaxAdvanceX(v:Float):Float { imguics.DCImGui.dcjs_ImFontConfig_set_GlyphMaxAdvanceX(imguics.ImGuiCs.ptr(this), v); return v; }
    public var glyphExtraAdvanceX(get, set):Float;
    inline function get_glyphExtraAdvanceX():Float { return imguics.DCImGui.dcjs_ImFontConfig_get_GlyphExtraAdvanceX(imguics.ImGuiCs.ptr(this)); }
    function set_glyphExtraAdvanceX(v:Float):Float { imguics.DCImGui.dcjs_ImFontConfig_set_GlyphExtraAdvanceX(imguics.ImGuiCs.ptr(this), v); return v; }
    public var fontNo(get, set):Int;
    inline function get_fontNo():Int { return imguics.DCImGui.dcjs_ImFontConfig_get_FontNo(imguics.ImGuiCs.ptr(this)); }
    function set_fontNo(v:Int):Int { imguics.DCImGui.dcjs_ImFontConfig_set_FontNo(imguics.ImGuiCs.ptr(this), v); return v; }
    public var fontLoaderFlags(get, set):Int;
    inline function get_fontLoaderFlags():Int { return imguics.DCImGui.dcjs_ImFontConfig_get_FontLoaderFlags(imguics.ImGuiCs.ptr(this)); }
    function set_fontLoaderFlags(v:Int):Int { imguics.DCImGui.dcjs_ImFontConfig_set_FontLoaderFlags(imguics.ImGuiCs.ptr(this), v); return v; }
    public var rasterizerMultiply(get, set):Float;
    inline function get_rasterizerMultiply():Float { return imguics.DCImGui.dcjs_ImFontConfig_get_RasterizerMultiply(imguics.ImGuiCs.ptr(this)); }
    function set_rasterizerMultiply(v:Float):Float { imguics.DCImGui.dcjs_ImFontConfig_set_RasterizerMultiply(imguics.ImGuiCs.ptr(this), v); return v; }
    public var rasterizerDensity(get, set):Float;
    inline function get_rasterizerDensity():Float { return imguics.DCImGui.dcjs_ImFontConfig_get_RasterizerDensity(imguics.ImGuiCs.ptr(this)); }
    function set_rasterizerDensity(v:Float):Float { imguics.DCImGui.dcjs_ImFontConfig_set_RasterizerDensity(imguics.ImGuiCs.ptr(this), v); return v; }
    public var extraSizeScale(get, set):Float;
    inline function get_extraSizeScale():Float { return imguics.DCImGui.dcjs_ImFontConfig_get_ExtraSizeScale(imguics.ImGuiCs.ptr(this)); }
    function set_extraSizeScale(v:Float):Float { imguics.DCImGui.dcjs_ImFontConfig_set_ExtraSizeScale(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImFontConfig) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImFontConfig(); }
}

abstract ImFontGlyph(Float) from Float to Float {
    public var colored(get, set):Int;
    inline function get_colored():Int { return imguics.DCImGui.dcjs_ImFontGlyph_get_Colored(imguics.ImGuiCs.ptr(this)); }
    function set_colored(v:Int):Int { imguics.DCImGui.dcjs_ImFontGlyph_set_Colored(imguics.ImGuiCs.ptr(this), v); return v; }
    public var visible(get, set):Int;
    inline function get_visible():Int { return imguics.DCImGui.dcjs_ImFontGlyph_get_Visible(imguics.ImGuiCs.ptr(this)); }
    function set_visible(v:Int):Int { imguics.DCImGui.dcjs_ImFontGlyph_set_Visible(imguics.ImGuiCs.ptr(this), v); return v; }
    public var sourceIdx(get, set):Int;
    inline function get_sourceIdx():Int { return imguics.DCImGui.dcjs_ImFontGlyph_get_SourceIdx(imguics.ImGuiCs.ptr(this)); }
    function set_sourceIdx(v:Int):Int { imguics.DCImGui.dcjs_ImFontGlyph_set_SourceIdx(imguics.ImGuiCs.ptr(this), v); return v; }
    public var codepoint(get, set):Int;
    inline function get_codepoint():Int { return imguics.DCImGui.dcjs_ImFontGlyph_get_Codepoint(imguics.ImGuiCs.ptr(this)); }
    function set_codepoint(v:Int):Int { imguics.DCImGui.dcjs_ImFontGlyph_set_Codepoint(imguics.ImGuiCs.ptr(this), v); return v; }
    public var advanceX(get, set):Float;
    inline function get_advanceX():Float { return imguics.DCImGui.dcjs_ImFontGlyph_get_AdvanceX(imguics.ImGuiCs.ptr(this)); }
    function set_advanceX(v:Float):Float { imguics.DCImGui.dcjs_ImFontGlyph_set_AdvanceX(imguics.ImGuiCs.ptr(this), v); return v; }
    public var x0(get, set):Float;
    inline function get_x0():Float { return imguics.DCImGui.dcjs_ImFontGlyph_get_X0(imguics.ImGuiCs.ptr(this)); }
    function set_x0(v:Float):Float { imguics.DCImGui.dcjs_ImFontGlyph_set_X0(imguics.ImGuiCs.ptr(this), v); return v; }
    public var y0(get, set):Float;
    inline function get_y0():Float { return imguics.DCImGui.dcjs_ImFontGlyph_get_Y0(imguics.ImGuiCs.ptr(this)); }
    function set_y0(v:Float):Float { imguics.DCImGui.dcjs_ImFontGlyph_set_Y0(imguics.ImGuiCs.ptr(this), v); return v; }
    public var x1(get, set):Float;
    inline function get_x1():Float { return imguics.DCImGui.dcjs_ImFontGlyph_get_X1(imguics.ImGuiCs.ptr(this)); }
    function set_x1(v:Float):Float { imguics.DCImGui.dcjs_ImFontGlyph_set_X1(imguics.ImGuiCs.ptr(this), v); return v; }
    public var y1(get, set):Float;
    inline function get_y1():Float { return imguics.DCImGui.dcjs_ImFontGlyph_get_Y1(imguics.ImGuiCs.ptr(this)); }
    function set_y1(v:Float):Float { imguics.DCImGui.dcjs_ImFontGlyph_set_Y1(imguics.ImGuiCs.ptr(this), v); return v; }
    public var u0(get, set):Float;
    inline function get_u0():Float { return imguics.DCImGui.dcjs_ImFontGlyph_get_U0(imguics.ImGuiCs.ptr(this)); }
    function set_u0(v:Float):Float { imguics.DCImGui.dcjs_ImFontGlyph_set_U0(imguics.ImGuiCs.ptr(this), v); return v; }
    public var v0(get, set):Float;
    inline function get_v0():Float { return imguics.DCImGui.dcjs_ImFontGlyph_get_V0(imguics.ImGuiCs.ptr(this)); }
    function set_v0(v:Float):Float { imguics.DCImGui.dcjs_ImFontGlyph_set_V0(imguics.ImGuiCs.ptr(this), v); return v; }
    public var u1(get, set):Float;
    inline function get_u1():Float { return imguics.DCImGui.dcjs_ImFontGlyph_get_U1(imguics.ImGuiCs.ptr(this)); }
    function set_u1(v:Float):Float { imguics.DCImGui.dcjs_ImFontGlyph_set_U1(imguics.ImGuiCs.ptr(this), v); return v; }
    public var v1(get, set):Float;
    inline function get_v1():Float { return imguics.DCImGui.dcjs_ImFontGlyph_get_V1(imguics.ImGuiCs.ptr(this)); }
    function set_v1(v:Float):Float { imguics.DCImGui.dcjs_ImFontGlyph_set_V1(imguics.ImGuiCs.ptr(this), v); return v; }
    public var packId(get, set):Int;
    inline function get_packId():Int { return imguics.DCImGui.dcjs_ImFontGlyph_get_PackId(imguics.ImGuiCs.ptr(this)); }
    function set_packId(v:Int):Int { imguics.DCImGui.dcjs_ImFontGlyph_set_PackId(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImFontGlyph) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImFontGlyph(); }
}

abstract ImFontGlyphRangesBuilder(Float) from Float to Float {
    public var usedChars(get, never):ImVector_ImU32;
    inline function get_usedChars():ImVector_ImU32 { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImFontGlyphRangesBuilder_ptr_UsedChars(imguics.ImGuiCs.ptr(this))); }
    /** sizeof(ImFontGlyphRangesBuilder) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImFontGlyphRangesBuilder(); }

    public static function clear(self:ImFontGlyphRangesBuilder):Void {
        imguics.DCImGui.ImFontGlyphRangesBuilder_Clear(imguics.ImGuiCs.ptr(self));
    }
    public static function getBit(self:ImFontGlyphRangesBuilder, n:Int):Bool {
        return imguics.DCImGui.ImFontGlyphRangesBuilder_GetBit(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(n));
    }
    public static function setBit(self:ImFontGlyphRangesBuilder, n:Int):Void {
        imguics.DCImGui.ImFontGlyphRangesBuilder_SetBit(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(n));
    }
    public static function addChar(self:ImFontGlyphRangesBuilder, c:Int):Void {
        imguics.DCImGui.ImFontGlyphRangesBuilder_AddChar(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.toU16(c));
    }
    public static function addText(self:ImFontGlyphRangesBuilder, text:String, textEnd:String = null):Void {
        imguics.DCImGui.ImFontGlyphRangesBuilder_AddText(imguics.ImGuiCs.ptr(self), text, textEnd);
    }
    public static function addRanges(self:ImFontGlyphRangesBuilder, ranges:Float):Void {
        imguics.DCImGui.ImFontGlyphRangesBuilder_AddRanges(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(ranges));
    }
    public static function buildRanges(self:ImFontGlyphRangesBuilder, outRanges:ImVector_ImWchar):Void {
        imguics.DCImGui.ImFontGlyphRangesBuilder_BuildRanges(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(outRanges));
    }
}

abstract ImFontAtlasRect(Float) from Float to Float {
    public var x(get, set):Int;
    inline function get_x():Int { return imguics.DCImGui.dcjs_ImFontAtlasRect_get_x(imguics.ImGuiCs.ptr(this)); }
    function set_x(v:Int):Int { imguics.DCImGui.dcjs_ImFontAtlasRect_set_x(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var y(get, set):Int;
    inline function get_y():Int { return imguics.DCImGui.dcjs_ImFontAtlasRect_get_y(imguics.ImGuiCs.ptr(this)); }
    function set_y(v:Int):Int { imguics.DCImGui.dcjs_ImFontAtlasRect_set_y(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var w(get, set):Int;
    inline function get_w():Int { return imguics.DCImGui.dcjs_ImFontAtlasRect_get_w(imguics.ImGuiCs.ptr(this)); }
    function set_w(v:Int):Int { imguics.DCImGui.dcjs_ImFontAtlasRect_set_w(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var h(get, set):Int;
    inline function get_h():Int { return imguics.DCImGui.dcjs_ImFontAtlasRect_get_h(imguics.ImGuiCs.ptr(this)); }
    function set_h(v:Int):Int { imguics.DCImGui.dcjs_ImFontAtlasRect_set_h(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var uv0(get, set):ImVec2;
    inline function get_uv0():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImFontAtlasRect_get_uv0(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_uv0(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImFontAtlasRect_set_uv0(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var uv1(get, set):ImVec2;
    inline function get_uv1():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImFontAtlasRect_get_uv1(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_uv1(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImFontAtlasRect_set_uv1(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    /** sizeof(ImFontAtlasRect) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImFontAtlasRect(); }
}

abstract ImFontAtlas(Float) from Float to Float {
    public var flags(get, set):Int;
    inline function get_flags():Int { return imguics.DCImGui.dcjs_ImFontAtlas_get_Flags(imguics.ImGuiCs.ptr(this)); }
    function set_flags(v:Int):Int { imguics.DCImGui.dcjs_ImFontAtlas_set_Flags(imguics.ImGuiCs.ptr(this), v); return v; }
    public var texDesiredFormat(get, set):ImTextureFormat;
    inline function get_texDesiredFormat():ImTextureFormat { return imguics.DCImGui.dcjs_ImFontAtlas_get_TexDesiredFormat(imguics.ImGuiCs.ptr(this)); }
    function set_texDesiredFormat(v:ImTextureFormat):ImTextureFormat { imguics.DCImGui.dcjs_ImFontAtlas_set_TexDesiredFormat(imguics.ImGuiCs.ptr(this), (v:Int)); return v; }
    public var texGlyphPadding(get, set):Int;
    inline function get_texGlyphPadding():Int { return imguics.DCImGui.dcjs_ImFontAtlas_get_TexGlyphPadding(imguics.ImGuiCs.ptr(this)); }
    function set_texGlyphPadding(v:Int):Int { imguics.DCImGui.dcjs_ImFontAtlas_set_TexGlyphPadding(imguics.ImGuiCs.ptr(this), v); return v; }
    public var texMinWidth(get, set):Int;
    inline function get_texMinWidth():Int { return imguics.DCImGui.dcjs_ImFontAtlas_get_TexMinWidth(imguics.ImGuiCs.ptr(this)); }
    function set_texMinWidth(v:Int):Int { imguics.DCImGui.dcjs_ImFontAtlas_set_TexMinWidth(imguics.ImGuiCs.ptr(this), v); return v; }
    public var texMinHeight(get, set):Int;
    inline function get_texMinHeight():Int { return imguics.DCImGui.dcjs_ImFontAtlas_get_TexMinHeight(imguics.ImGuiCs.ptr(this)); }
    function set_texMinHeight(v:Int):Int { imguics.DCImGui.dcjs_ImFontAtlas_set_TexMinHeight(imguics.ImGuiCs.ptr(this), v); return v; }
    public var texMaxWidth(get, set):Int;
    inline function get_texMaxWidth():Int { return imguics.DCImGui.dcjs_ImFontAtlas_get_TexMaxWidth(imguics.ImGuiCs.ptr(this)); }
    function set_texMaxWidth(v:Int):Int { imguics.DCImGui.dcjs_ImFontAtlas_set_TexMaxWidth(imguics.ImGuiCs.ptr(this), v); return v; }
    public var texMaxHeight(get, set):Int;
    inline function get_texMaxHeight():Int { return imguics.DCImGui.dcjs_ImFontAtlas_get_TexMaxHeight(imguics.ImGuiCs.ptr(this)); }
    function set_texMaxHeight(v:Int):Int { imguics.DCImGui.dcjs_ImFontAtlas_set_TexMaxHeight(imguics.ImGuiCs.ptr(this), v); return v; }
    public var userData(get, set):Float;
    inline function get_userData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImFontAtlas_get_UserData(imguics.ImGuiCs.ptr(this))); }
    function set_userData(v:Float):Float { imguics.DCImGui.dcjs_ImFontAtlas_set_UserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var texRef(get, set):ImTextureRef;
    inline function get_texRef():ImTextureRef { var v = new ImTextureRef(imguics.ImGuiCs.nullPtr(), imguics.ImGuiCs.toU64(0)); imguics.DCImGui.dcjs_ImFontAtlas_get_TexRef(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_texRef(v:ImTextureRef):ImTextureRef { imguics.DCImGui.dcjs_ImFontAtlas_set_TexRef(imguics.ImGuiCs.ptr(this), v._TexData, v._TexID); return v; }
    public var texData(get, set):ImTextureData;
    inline function get_texData():ImTextureData { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImFontAtlas_get_TexData(imguics.ImGuiCs.ptr(this))); }
    function set_texData(v:ImTextureData):ImTextureData { imguics.DCImGui.dcjs_ImFontAtlas_set_TexData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImFontAtlas) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImFontAtlas(); }

    public static function addFont(self:ImFontAtlas, fontCfg:ImFontConfig):ImFont {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImFontAtlas_AddFont(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(fontCfg)));
    }
    public static function addFontDefault(self:ImFontAtlas, fontCfg:ImFontConfig = 0):ImFont {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImFontAtlas_AddFontDefault(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(fontCfg)));
    }
    public static function addFontDefaultVector(self:ImFontAtlas, fontCfg:ImFontConfig = 0):ImFont {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImFontAtlas_AddFontDefaultVector(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(fontCfg)));
    }
    public static function addFontDefaultBitmap(self:ImFontAtlas, fontCfg:ImFontConfig = 0):ImFont {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImFontAtlas_AddFontDefaultBitmap(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(fontCfg)));
    }
    public static function addFontFromFileTTF(self:ImFontAtlas, filename:String, sizePixels:Float = 0.0, fontCfg:ImFontConfig = 0, glyphRanges:Float = 0):ImFont {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImFontAtlas_AddFontFromFileTTF(imguics.ImGuiCs.ptr(self), filename, sizePixels, imguics.ImGuiCs.ptr(fontCfg), imguics.ImGuiCs.ptr(glyphRanges)));
    }
    public static function addFontFromMemoryTTF(self:ImFontAtlas, fontData:Float, fontDataSize:Int, sizePixels:Float = 0.0, fontCfg:ImFontConfig = 0, glyphRanges:Float = 0):ImFont {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImFontAtlas_AddFontFromMemoryTTF(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(fontData), fontDataSize, sizePixels, imguics.ImGuiCs.ptr(fontCfg), imguics.ImGuiCs.ptr(glyphRanges)));
    }
    public static function addFontFromMemoryCompressedTTF(self:ImFontAtlas, compressedFontData:Float, compressedFontDataSize:Int, sizePixels:Float = 0.0, fontCfg:ImFontConfig = 0, glyphRanges:Float = 0):ImFont {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImFontAtlas_AddFontFromMemoryCompressedTTF(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(compressedFontData), compressedFontDataSize, sizePixels, imguics.ImGuiCs.ptr(fontCfg), imguics.ImGuiCs.ptr(glyphRanges)));
    }
    public static function addFontFromMemoryCompressedBase85TTF(self:ImFontAtlas, compressedFontDataBase85:String, sizePixels:Float = 0.0, fontCfg:ImFontConfig = 0, glyphRanges:Float = 0):ImFont {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(imguics.ImGuiCs.ptr(self), compressedFontDataBase85, sizePixels, imguics.ImGuiCs.ptr(fontCfg), imguics.ImGuiCs.ptr(glyphRanges)));
    }
    public static function removeFont(self:ImFontAtlas, font:ImFont):Void {
        imguics.DCImGui.ImFontAtlas_RemoveFont(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(font));
    }
    public static function clear(self:ImFontAtlas):Void {
        imguics.DCImGui.ImFontAtlas_Clear(imguics.ImGuiCs.ptr(self));
    }
    public static function clearFonts(self:ImFontAtlas):Void {
        imguics.DCImGui.ImFontAtlas_ClearFonts(imguics.ImGuiCs.ptr(self));
    }
    public static function compactCache(self:ImFontAtlas):Void {
        imguics.DCImGui.ImFontAtlas_CompactCache(imguics.ImGuiCs.ptr(self));
    }
    public static function setFontLoader(self:ImFontAtlas, fontLoader:ImFontLoader):Void {
        imguics.DCImGui.ImFontAtlas_SetFontLoader(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.ptr(fontLoader));
    }
    public static function clearInputData(self:ImFontAtlas):Void {
        imguics.DCImGui.ImFontAtlas_ClearInputData(imguics.ImGuiCs.ptr(self));
    }
    public static function clearTexData(self:ImFontAtlas):Void {
        imguics.DCImGui.ImFontAtlas_ClearTexData(imguics.ImGuiCs.ptr(self));
    }
    public static function getGlyphRangesDefault(self:ImFontAtlas):Float {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImFontAtlas_GetGlyphRangesDefault(imguics.ImGuiCs.ptr(self)));
    }
    public static function addCustomRect(self:ImFontAtlas, width:Int, height:Int, outR:ImFontAtlasRect = 0):Int {
        return imguics.DCImGui.ImFontAtlas_AddCustomRect(imguics.ImGuiCs.ptr(self), width, height, imguics.ImGuiCs.ptr(outR));
    }
    public static function removeCustomRect(self:ImFontAtlas, id:Int):Void {
        imguics.DCImGui.ImFontAtlas_RemoveCustomRect(imguics.ImGuiCs.ptr(self), id);
    }
    public static function getCustomRect(self:ImFontAtlas, id:Int, outR:ImFontAtlasRect):Bool {
        return imguics.DCImGui.ImFontAtlas_GetCustomRect(imguics.ImGuiCs.ptr(self), id, imguics.ImGuiCs.ptr(outR));
    }
}

abstract ImFontBaked(Float) from Float to Float {
    /** sizeof(ImFontBaked) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImFontBaked(); }

    public static function clearOutputData(self:ImFontBaked):Void {
        imguics.DCImGui.ImFontBaked_ClearOutputData(imguics.ImGuiCs.ptr(self));
    }
    public static function findGlyph(self:ImFontBaked, c:Int):ImFontGlyph {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImFontBaked_FindGlyph(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.toU16(c)));
    }
    public static function findGlyphNoFallback(self:ImFontBaked, c:Int):ImFontGlyph {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImFontBaked_FindGlyphNoFallback(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.toU16(c)));
    }
    public static function getCharAdvance(self:ImFontBaked, c:Int):Float {
        return imguics.DCImGui.ImFontBaked_GetCharAdvance(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.toU16(c));
    }
    public static function isGlyphLoaded(self:ImFontBaked, c:Int):Bool {
        return imguics.DCImGui.ImFontBaked_IsGlyphLoaded(imguics.ImGuiCs.ptr(self), imguics.ImGuiCs.toU16(c));
    }
}

abstract ImFont(Float) from Float to Float {
    /** sizeof(ImFont) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImFont(); }
}

abstract ImGuiViewport(Float) from Float to Float {
    public var id(get, set):Int;
    inline function get_id():Int { return imguics.DCImGui.dcjs_ImGuiViewport_get_ID(imguics.ImGuiCs.ptr(this)); }
    function set_id(v:Int):Int { imguics.DCImGui.dcjs_ImGuiViewport_set_ID(imguics.ImGuiCs.ptr(this), v); return v; }
    public var flags(get, set):Int;
    inline function get_flags():Int { return imguics.DCImGui.dcjs_ImGuiViewport_get_Flags(imguics.ImGuiCs.ptr(this)); }
    function set_flags(v:Int):Int { imguics.DCImGui.dcjs_ImGuiViewport_set_Flags(imguics.ImGuiCs.ptr(this), v); return v; }
    public var pos(get, set):ImVec2;
    inline function get_pos():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiViewport_get_Pos(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_pos(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiViewport_set_Pos(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var size(get, set):ImVec2;
    inline function get_size():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiViewport_get_Size(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_size(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiViewport_set_Size(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var framebufferScale(get, set):ImVec2;
    inline function get_framebufferScale():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiViewport_get_FramebufferScale(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_framebufferScale(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiViewport_set_FramebufferScale(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var workPos(get, set):ImVec2;
    inline function get_workPos():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiViewport_get_WorkPos(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_workPos(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiViewport_set_WorkPos(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var workSize(get, set):ImVec2;
    inline function get_workSize():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiViewport_get_WorkSize(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_workSize(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiViewport_set_WorkSize(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var dpiScale(get, set):Float;
    inline function get_dpiScale():Float { return imguics.DCImGui.dcjs_ImGuiViewport_get_DpiScale(imguics.ImGuiCs.ptr(this)); }
    function set_dpiScale(v:Float):Float { imguics.DCImGui.dcjs_ImGuiViewport_set_DpiScale(imguics.ImGuiCs.ptr(this), v); return v; }
    public var parentViewportId(get, set):Int;
    inline function get_parentViewportId():Int { return imguics.DCImGui.dcjs_ImGuiViewport_get_ParentViewportId(imguics.ImGuiCs.ptr(this)); }
    function set_parentViewportId(v:Int):Int { imguics.DCImGui.dcjs_ImGuiViewport_set_ParentViewportId(imguics.ImGuiCs.ptr(this), v); return v; }
    public var parentViewport(get, set):ImGuiViewport;
    inline function get_parentViewport():ImGuiViewport { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiViewport_get_ParentViewport(imguics.ImGuiCs.ptr(this))); }
    function set_parentViewport(v:ImGuiViewport):ImGuiViewport { imguics.DCImGui.dcjs_ImGuiViewport_set_ParentViewport(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var drawData(get, set):ImDrawData;
    inline function get_drawData():ImDrawData { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiViewport_get_DrawData(imguics.ImGuiCs.ptr(this))); }
    function set_drawData(v:ImDrawData):ImDrawData { imguics.DCImGui.dcjs_ImGuiViewport_set_DrawData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var rendererUserData(get, set):Float;
    inline function get_rendererUserData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiViewport_get_RendererUserData(imguics.ImGuiCs.ptr(this))); }
    function set_rendererUserData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiViewport_set_RendererUserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var platformUserData(get, set):Float;
    inline function get_platformUserData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiViewport_get_PlatformUserData(imguics.ImGuiCs.ptr(this))); }
    function set_platformUserData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiViewport_set_PlatformUserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var platformIconData(get, set):Float;
    inline function get_platformIconData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiViewport_get_PlatformIconData(imguics.ImGuiCs.ptr(this))); }
    function set_platformIconData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiViewport_set_PlatformIconData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var platformHandle(get, set):Float;
    inline function get_platformHandle():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiViewport_get_PlatformHandle(imguics.ImGuiCs.ptr(this))); }
    function set_platformHandle(v:Float):Float { imguics.DCImGui.dcjs_ImGuiViewport_set_PlatformHandle(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var platformHandleRaw(get, set):Float;
    inline function get_platformHandleRaw():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiViewport_get_PlatformHandleRaw(imguics.ImGuiCs.ptr(this))); }
    function set_platformHandleRaw(v:Float):Float { imguics.DCImGui.dcjs_ImGuiViewport_set_PlatformHandleRaw(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var platformWindowCreated(get, set):Bool;
    inline function get_platformWindowCreated():Bool { return imguics.DCImGui.dcjs_ImGuiViewport_get_PlatformWindowCreated(imguics.ImGuiCs.ptr(this)); }
    function set_platformWindowCreated(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiViewport_set_PlatformWindowCreated(imguics.ImGuiCs.ptr(this), v); return v; }
    public var platformRequestMove(get, set):Bool;
    inline function get_platformRequestMove():Bool { return imguics.DCImGui.dcjs_ImGuiViewport_get_PlatformRequestMove(imguics.ImGuiCs.ptr(this)); }
    function set_platformRequestMove(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiViewport_set_PlatformRequestMove(imguics.ImGuiCs.ptr(this), v); return v; }
    public var platformRequestResize(get, set):Bool;
    inline function get_platformRequestResize():Bool { return imguics.DCImGui.dcjs_ImGuiViewport_get_PlatformRequestResize(imguics.ImGuiCs.ptr(this)); }
    function set_platformRequestResize(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiViewport_set_PlatformRequestResize(imguics.ImGuiCs.ptr(this), v); return v; }
    public var platformRequestClose(get, set):Bool;
    inline function get_platformRequestClose():Bool { return imguics.DCImGui.dcjs_ImGuiViewport_get_PlatformRequestClose(imguics.ImGuiCs.ptr(this)); }
    function set_platformRequestClose(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiViewport_set_PlatformRequestClose(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImGuiViewport) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiViewport(); }

    public static function getCenter(self:ImGuiViewport):ImVec2 {
        return imguics.DCImGui.ImGuiViewport_GetCenter(imguics.ImGuiCs.ptr(self));
    }
    public static function getWorkCenter(self:ImGuiViewport):ImVec2 {
        return imguics.DCImGui.ImGuiViewport_GetWorkCenter(imguics.ImGuiCs.ptr(self));
    }
    public static function getDebugName(self:ImGuiViewport):String {
        return imguics.ImGuiCs.readString(imguics.DCImGui.ImGuiViewport_GetDebugName(imguics.ImGuiCs.ptr(self)));
    }
}

abstract ImGuiPlatformIO(Float) from Float to Float {
    public var platform_GetClipboardTextFn(get, never):Float;
    inline function get_platform_GetClipboardTextFn():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_GetClipboardTextFn(imguics.ImGuiCs.ptr(this))); }
    public var platform_SetClipboardTextFn(get, never):Float;
    inline function get_platform_SetClipboardTextFn():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_SetClipboardTextFn(imguics.ImGuiCs.ptr(this))); }
    public var platform_ClipboardUserData(get, set):Float;
    inline function get_platform_ClipboardUserData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_get_Platform_ClipboardUserData(imguics.ImGuiCs.ptr(this))); }
    function set_platform_ClipboardUserData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiPlatformIO_set_Platform_ClipboardUserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var platform_OpenInShellFn(get, never):Float;
    inline function get_platform_OpenInShellFn():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_OpenInShellFn(imguics.ImGuiCs.ptr(this))); }
    public var platform_OpenInShellUserData(get, set):Float;
    inline function get_platform_OpenInShellUserData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_get_Platform_OpenInShellUserData(imguics.ImGuiCs.ptr(this))); }
    function set_platform_OpenInShellUserData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiPlatformIO_set_Platform_OpenInShellUserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var platform_SetImeDataFn(get, never):Float;
    inline function get_platform_SetImeDataFn():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_SetImeDataFn(imguics.ImGuiCs.ptr(this))); }
    public var platform_ImeUserData(get, set):Float;
    inline function get_platform_ImeUserData():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_get_Platform_ImeUserData(imguics.ImGuiCs.ptr(this))); }
    function set_platform_ImeUserData(v:Float):Float { imguics.DCImGui.dcjs_ImGuiPlatformIO_set_Platform_ImeUserData(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var platform_LocaleDecimalPoint(get, set):Int;
    inline function get_platform_LocaleDecimalPoint():Int { return imguics.DCImGui.dcjs_ImGuiPlatformIO_get_Platform_LocaleDecimalPoint(imguics.ImGuiCs.ptr(this)); }
    function set_platform_LocaleDecimalPoint(v:Int):Int { imguics.DCImGui.dcjs_ImGuiPlatformIO_set_Platform_LocaleDecimalPoint(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU16(v)); return v; }
    public var renderer_TextureMaxWidth(get, set):Int;
    inline function get_renderer_TextureMaxWidth():Int { return imguics.DCImGui.dcjs_ImGuiPlatformIO_get_Renderer_TextureMaxWidth(imguics.ImGuiCs.ptr(this)); }
    function set_renderer_TextureMaxWidth(v:Int):Int { imguics.DCImGui.dcjs_ImGuiPlatformIO_set_Renderer_TextureMaxWidth(imguics.ImGuiCs.ptr(this), v); return v; }
    public var renderer_TextureMaxHeight(get, set):Int;
    inline function get_renderer_TextureMaxHeight():Int { return imguics.DCImGui.dcjs_ImGuiPlatformIO_get_Renderer_TextureMaxHeight(imguics.ImGuiCs.ptr(this)); }
    function set_renderer_TextureMaxHeight(v:Int):Int { imguics.DCImGui.dcjs_ImGuiPlatformIO_set_Renderer_TextureMaxHeight(imguics.ImGuiCs.ptr(this), v); return v; }
    public var renderer_RenderState(get, set):Float;
    inline function get_renderer_RenderState():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_get_Renderer_RenderState(imguics.ImGuiCs.ptr(this))); }
    function set_renderer_RenderState(v:Float):Float { imguics.DCImGui.dcjs_ImGuiPlatformIO_set_Renderer_RenderState(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var drawCallback_ResetRenderState(get, set):Float;
    inline function get_drawCallback_ResetRenderState():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_get_DrawCallback_ResetRenderState(imguics.ImGuiCs.ptr(this))); }
    function set_drawCallback_ResetRenderState(v:Float):Float { imguics.DCImGui.dcjs_ImGuiPlatformIO_set_DrawCallback_ResetRenderState(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var drawCallback_SetSamplerLinear(get, set):Float;
    inline function get_drawCallback_SetSamplerLinear():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_get_DrawCallback_SetSamplerLinear(imguics.ImGuiCs.ptr(this))); }
    function set_drawCallback_SetSamplerLinear(v:Float):Float { imguics.DCImGui.dcjs_ImGuiPlatformIO_set_DrawCallback_SetSamplerLinear(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var drawCallback_SetSamplerNearest(get, set):Float;
    inline function get_drawCallback_SetSamplerNearest():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_get_DrawCallback_SetSamplerNearest(imguics.ImGuiCs.ptr(this))); }
    function set_drawCallback_SetSamplerNearest(v:Float):Float { imguics.DCImGui.dcjs_ImGuiPlatformIO_set_DrawCallback_SetSamplerNearest(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    public var platform_CreateWindow(get, never):Float;
    inline function get_platform_CreateWindow():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_CreateWindow(imguics.ImGuiCs.ptr(this))); }
    public var platform_DestroyWindow(get, never):Float;
    inline function get_platform_DestroyWindow():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_DestroyWindow(imguics.ImGuiCs.ptr(this))); }
    public var platform_ShowWindow(get, never):Float;
    inline function get_platform_ShowWindow():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_ShowWindow(imguics.ImGuiCs.ptr(this))); }
    public var platform_SetWindowPos(get, never):Float;
    inline function get_platform_SetWindowPos():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_SetWindowPos(imguics.ImGuiCs.ptr(this))); }
    public var platform_GetWindowPos(get, never):Float;
    inline function get_platform_GetWindowPos():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_GetWindowPos(imguics.ImGuiCs.ptr(this))); }
    public var platform_SetWindowSize(get, never):Float;
    inline function get_platform_SetWindowSize():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_SetWindowSize(imguics.ImGuiCs.ptr(this))); }
    public var platform_GetWindowSize(get, never):Float;
    inline function get_platform_GetWindowSize():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_GetWindowSize(imguics.ImGuiCs.ptr(this))); }
    public var platform_GetWindowFramebufferScale(get, never):Float;
    inline function get_platform_GetWindowFramebufferScale():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_GetWindowFramebufferScale(imguics.ImGuiCs.ptr(this))); }
    public var platform_SetWindowFocus(get, never):Float;
    inline function get_platform_SetWindowFocus():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_SetWindowFocus(imguics.ImGuiCs.ptr(this))); }
    public var platform_GetWindowFocus(get, never):Float;
    inline function get_platform_GetWindowFocus():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_GetWindowFocus(imguics.ImGuiCs.ptr(this))); }
    public var platform_GetWindowMinimized(get, never):Float;
    inline function get_platform_GetWindowMinimized():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_GetWindowMinimized(imguics.ImGuiCs.ptr(this))); }
    public var platform_SetWindowTitle(get, never):Float;
    inline function get_platform_SetWindowTitle():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_SetWindowTitle(imguics.ImGuiCs.ptr(this))); }
    public var platform_SetWindowAlpha(get, never):Float;
    inline function get_platform_SetWindowAlpha():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_SetWindowAlpha(imguics.ImGuiCs.ptr(this))); }
    public var platform_UpdateWindow(get, never):Float;
    inline function get_platform_UpdateWindow():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_UpdateWindow(imguics.ImGuiCs.ptr(this))); }
    public var platform_RenderWindow(get, never):Float;
    inline function get_platform_RenderWindow():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_RenderWindow(imguics.ImGuiCs.ptr(this))); }
    public var platform_SwapBuffers(get, never):Float;
    inline function get_platform_SwapBuffers():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_SwapBuffers(imguics.ImGuiCs.ptr(this))); }
    public var platform_GetWindowDpiScale(get, never):Float;
    inline function get_platform_GetWindowDpiScale():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_GetWindowDpiScale(imguics.ImGuiCs.ptr(this))); }
    public var platform_OnChangedViewport(get, never):Float;
    inline function get_platform_OnChangedViewport():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_OnChangedViewport(imguics.ImGuiCs.ptr(this))); }
    public var platform_GetWindowWorkAreaInsets(get, never):Float;
    inline function get_platform_GetWindowWorkAreaInsets():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_GetWindowWorkAreaInsets(imguics.ImGuiCs.ptr(this))); }
    public var platform_CreateVkSurface(get, never):Float;
    inline function get_platform_CreateVkSurface():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Platform_CreateVkSurface(imguics.ImGuiCs.ptr(this))); }
    public var renderer_CreateWindow(get, never):Float;
    inline function get_renderer_CreateWindow():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Renderer_CreateWindow(imguics.ImGuiCs.ptr(this))); }
    public var renderer_DestroyWindow(get, never):Float;
    inline function get_renderer_DestroyWindow():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Renderer_DestroyWindow(imguics.ImGuiCs.ptr(this))); }
    public var renderer_SetWindowSize(get, never):Float;
    inline function get_renderer_SetWindowSize():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Renderer_SetWindowSize(imguics.ImGuiCs.ptr(this))); }
    public var renderer_RenderWindow(get, never):Float;
    inline function get_renderer_RenderWindow():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Renderer_RenderWindow(imguics.ImGuiCs.ptr(this))); }
    public var renderer_SwapBuffers(get, never):Float;
    inline function get_renderer_SwapBuffers():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_getp_Renderer_SwapBuffers(imguics.ImGuiCs.ptr(this))); }
    public var monitors(get, never):ImVector_ImGuiPlatformMonitor;
    inline function get_monitors():ImVector_ImGuiPlatformMonitor { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_ptr_Monitors(imguics.ImGuiCs.ptr(this))); }
    public var textures(get, never):ImVector_ImTextureDataPtr;
    inline function get_textures():ImVector_ImTextureDataPtr { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_ptr_Textures(imguics.ImGuiCs.ptr(this))); }
    public var viewports(get, never):ImVector_ImGuiViewportPtr;
    inline function get_viewports():ImVector_ImGuiViewportPtr { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformIO_ptr_Viewports(imguics.ImGuiCs.ptr(this))); }
    /** sizeof(ImGuiPlatformIO) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiPlatformIO(); }

    public static function setPlatform_GetWindowWorkAreaInsets(getWindowWorkAreaInsetsFunc:Float):Void {
        imguics.DCImGui.ImGuiPlatformIO_SetPlatform_GetWindowWorkAreaInsets(imguics.ImGuiCs.ptr(getWindowWorkAreaInsetsFunc));
    }
    public static function setPlatform_GetWindowFramebufferScale(getWindowFramebufferScaleFunc:Float):Void {
        imguics.DCImGui.ImGuiPlatformIO_SetPlatform_GetWindowFramebufferScale(imguics.ImGuiCs.ptr(getWindowFramebufferScaleFunc));
    }
    public static function setPlatform_GetWindowPos(getWindowPosFunc:Float):Void {
        imguics.DCImGui.ImGuiPlatformIO_SetPlatform_GetWindowPos(imguics.ImGuiCs.ptr(getWindowPosFunc));
    }
    public static function setPlatform_GetWindowSize(getWindowSizeFunc:Float):Void {
        imguics.DCImGui.ImGuiPlatformIO_SetPlatform_GetWindowSize(imguics.ImGuiCs.ptr(getWindowSizeFunc));
    }
    public static function clearPlatformHandlers(self:ImGuiPlatformIO):Void {
        imguics.DCImGui.ImGuiPlatformIO_ClearPlatformHandlers(imguics.ImGuiCs.ptr(self));
    }
    public static function clearRendererHandlers(self:ImGuiPlatformIO):Void {
        imguics.DCImGui.ImGuiPlatformIO_ClearRendererHandlers(imguics.ImGuiCs.ptr(self));
    }
}

abstract ImGuiPlatformMonitor(Float) from Float to Float {
    public var mainPos(get, set):ImVec2;
    inline function get_mainPos():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiPlatformMonitor_get_MainPos(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_mainPos(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiPlatformMonitor_set_MainPos(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var mainSize(get, set):ImVec2;
    inline function get_mainSize():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiPlatformMonitor_get_MainSize(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_mainSize(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiPlatformMonitor_set_MainSize(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var workPos(get, set):ImVec2;
    inline function get_workPos():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiPlatformMonitor_get_WorkPos(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_workPos(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiPlatformMonitor_set_WorkPos(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var workSize(get, set):ImVec2;
    inline function get_workSize():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiPlatformMonitor_get_WorkSize(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_workSize(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiPlatformMonitor_set_WorkSize(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var dpiScale(get, set):Float;
    inline function get_dpiScale():Float { return imguics.DCImGui.dcjs_ImGuiPlatformMonitor_get_DpiScale(imguics.ImGuiCs.ptr(this)); }
    function set_dpiScale(v:Float):Float { imguics.DCImGui.dcjs_ImGuiPlatformMonitor_set_DpiScale(imguics.ImGuiCs.ptr(this), v); return v; }
    public var platformHandle(get, set):Float;
    inline function get_platformHandle():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_ImGuiPlatformMonitor_get_PlatformHandle(imguics.ImGuiCs.ptr(this))); }
    function set_platformHandle(v:Float):Float { imguics.DCImGui.dcjs_ImGuiPlatformMonitor_set_PlatformHandle(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }
    /** sizeof(ImGuiPlatformMonitor) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiPlatformMonitor(); }
}

abstract ImGuiPlatformImeData(Float) from Float to Float {
    public var wantVisible(get, set):Bool;
    inline function get_wantVisible():Bool { return imguics.DCImGui.dcjs_ImGuiPlatformImeData_get_WantVisible(imguics.ImGuiCs.ptr(this)); }
    function set_wantVisible(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiPlatformImeData_set_WantVisible(imguics.ImGuiCs.ptr(this), v); return v; }
    public var wantTextInput(get, set):Bool;
    inline function get_wantTextInput():Bool { return imguics.DCImGui.dcjs_ImGuiPlatformImeData_get_WantTextInput(imguics.ImGuiCs.ptr(this)); }
    function set_wantTextInput(v:Bool):Bool { imguics.DCImGui.dcjs_ImGuiPlatformImeData_set_WantTextInput(imguics.ImGuiCs.ptr(this), v); return v; }
    public var inputPos(get, set):ImVec2;
    inline function get_inputPos():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_ImGuiPlatformImeData_get_InputPos(imguics.ImGuiCs.ptr(this), v); return v; }
    function set_inputPos(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_ImGuiPlatformImeData_set_InputPos(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }
    public var inputLineHeight(get, set):Float;
    inline function get_inputLineHeight():Float { return imguics.DCImGui.dcjs_ImGuiPlatformImeData_get_InputLineHeight(imguics.ImGuiCs.ptr(this)); }
    function set_inputLineHeight(v:Float):Float { imguics.DCImGui.dcjs_ImGuiPlatformImeData_set_InputLineHeight(imguics.ImGuiCs.ptr(this), v); return v; }
    public var viewportId(get, set):Int;
    inline function get_viewportId():Int { return imguics.DCImGui.dcjs_ImGuiPlatformImeData_get_ViewportId(imguics.ImGuiCs.ptr(this)); }
    function set_viewportId(v:Int):Int { imguics.DCImGui.dcjs_ImGuiPlatformImeData_set_ViewportId(imguics.ImGuiCs.ptr(this), v); return v; }
    /** sizeof(ImGuiPlatformImeData) on the native side (element stride). */
    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_ImGuiPlatformImeData(); }
}

class ImGui {

    public static function createContext(sharedFontAtlas:ImFontAtlas = 0):ImGuiContext {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_CreateContext(imguics.ImGuiCs.ptr(sharedFontAtlas)));
    }
    public static function destroyContext(ctx:ImGuiContext = 0):Void {
        imguics.DCImGui.ImGui_DestroyContext(imguics.ImGuiCs.ptr(ctx));
    }
    public static function getCurrentContext():ImGuiContext {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetCurrentContext());
    }
    public static function setCurrentContext(ctx:ImGuiContext):Void {
        imguics.DCImGui.ImGui_SetCurrentContext(imguics.ImGuiCs.ptr(ctx));
    }
    public static function getIO():ImGuiIO {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetIO());
    }
    public static function getPlatformIO():ImGuiPlatformIO {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetPlatformIO());
    }
    public static function getStyle():ImGuiStyle {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetStyle());
    }
    public static function newFrame():Void {
        imguics.DCImGui.ImGui_NewFrame();
    }
    public static function endFrame():Void {
        imguics.DCImGui.ImGui_EndFrame();
    }
    public static function render():Void {
        imguics.DCImGui.ImGui_Render();
    }
    public static function getDrawData():ImDrawData {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetDrawData());
    }
    public static function showDemoWindow(pOpen:Float = 0):Void {
        imguics.DCImGui.ImGui_ShowDemoWindow(imguics.ImGuiCs.ptr(pOpen));
    }
    public static function showMetricsWindow(pOpen:Float = 0):Void {
        imguics.DCImGui.ImGui_ShowMetricsWindow(imguics.ImGuiCs.ptr(pOpen));
    }
    public static function showDebugLogWindow(pOpen:Float = 0):Void {
        imguics.DCImGui.ImGui_ShowDebugLogWindow(imguics.ImGuiCs.ptr(pOpen));
    }
    public static function showIDStackToolWindowEx(pOpen:Float = 0):Void {
        imguics.DCImGui.ImGui_ShowIDStackToolWindowEx(imguics.ImGuiCs.ptr(pOpen));
    }
    public static function showIDStackToolWindow():Void {
        imguics.DCImGui.ImGui_ShowIDStackToolWindow();
    }
    public static function showAboutWindow(pOpen:Float = 0):Void {
        imguics.DCImGui.ImGui_ShowAboutWindow(imguics.ImGuiCs.ptr(pOpen));
    }
    public static function showStyleEditor(ref:ImGuiStyle = 0):Void {
        imguics.DCImGui.ImGui_ShowStyleEditor(imguics.ImGuiCs.ptr(ref));
    }
    public static function showStyleSelector(label:String):Bool {
        return imguics.DCImGui.ImGui_ShowStyleSelector(label);
    }
    public static function showFontSelector(label:String):Void {
        imguics.DCImGui.ImGui_ShowFontSelector(label);
    }
    public static function showUserGuide():Void {
        imguics.DCImGui.ImGui_ShowUserGuide();
    }
    public static function getVersion():String {
        return imguics.ImGuiCs.readString(imguics.DCImGui.ImGui_GetVersion());
    }
    public static function styleColorsDark(dst:ImGuiStyle = 0):Void {
        imguics.DCImGui.ImGui_StyleColorsDark(imguics.ImGuiCs.ptr(dst));
    }
    public static function styleColorsLight(dst:ImGuiStyle = 0):Void {
        imguics.DCImGui.ImGui_StyleColorsLight(imguics.ImGuiCs.ptr(dst));
    }
    public static function styleColorsClassic(dst:ImGuiStyle = 0):Void {
        imguics.DCImGui.ImGui_StyleColorsClassic(imguics.ImGuiCs.ptr(dst));
    }
    public static function begin(name:String, pOpen:Float = 0, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_Begin(name, imguics.ImGuiCs.ptr(pOpen), flags);
    }
    public static function end():Void {
        imguics.DCImGui.ImGui_End();
    }
    public static function beginChild(strId:String, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginChild(strId, size, childFlags, windowFlags);
    }
    public static function beginChildID(id:Int, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginChildID(id, size, childFlags, windowFlags);
    }
    public static function endChild():Void {
        imguics.DCImGui.ImGui_EndChild();
    }
    public static function isWindowAppearing():Bool {
        return imguics.DCImGui.ImGui_IsWindowAppearing();
    }
    public static function isWindowCollapsed():Bool {
        return imguics.DCImGui.ImGui_IsWindowCollapsed();
    }
    public static function isWindowFocused(flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_IsWindowFocused(flags);
    }
    public static function isWindowHovered(flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_IsWindowHovered(flags);
    }
    public static function getWindowDrawList():ImDrawList {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetWindowDrawList());
    }
    public static function getWindowDpiScale():Float {
        return imguics.DCImGui.ImGui_GetWindowDpiScale();
    }
    public static function getWindowPos():ImVec2 {
        return imguics.DCImGui.ImGui_GetWindowPos();
    }
    public static function getWindowSize():ImVec2 {
        return imguics.DCImGui.ImGui_GetWindowSize();
    }
    public static function getWindowWidth():Float {
        return imguics.DCImGui.ImGui_GetWindowWidth();
    }
    public static function getWindowHeight():Float {
        return imguics.DCImGui.ImGui_GetWindowHeight();
    }
    public static function getWindowViewport():ImGuiViewport {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetWindowViewport());
    }
    public static function setNextWindowPosEx(pos:ImVec2, cond:Int = 0, pivot:ImVec2):Void {
        imguics.DCImGui.ImGui_SetNextWindowPosEx(pos, cond, pivot);
    }
    public static function setNextWindowPos(pos:ImVec2, cond:Int = 0):Void {
        imguics.DCImGui.ImGui_SetNextWindowPos(pos, cond);
    }
    public static function setNextWindowSize(size:ImVec2, cond:Int = 0):Void {
        imguics.DCImGui.ImGui_SetNextWindowSize(size, cond);
    }
    public static function setNextWindowSizeConstraints(sizeMin:ImVec2, sizeMax:ImVec2, customCallback:Float = 0, customCallbackData:Float = 0):Void {
        imguics.DCImGui.ImGui_SetNextWindowSizeConstraints(sizeMin, sizeMax, imguics.ImGuiCs.ptr(customCallback), imguics.ImGuiCs.ptr(customCallbackData));
    }
    public static function setNextWindowContentSize(size:ImVec2):Void {
        imguics.DCImGui.ImGui_SetNextWindowContentSize(size);
    }
    public static function setNextWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        imguics.DCImGui.ImGui_SetNextWindowCollapsed(collapsed, cond);
    }
    public static function setNextWindowFocus():Void {
        imguics.DCImGui.ImGui_SetNextWindowFocus();
    }
    public static function setNextWindowScroll(scroll:ImVec2):Void {
        imguics.DCImGui.ImGui_SetNextWindowScroll(scroll);
    }
    public static function setNextWindowBgAlpha(alpha:Float):Void {
        imguics.DCImGui.ImGui_SetNextWindowBgAlpha(alpha);
    }
    public static function setNextWindowViewport(viewportId:Int):Void {
        imguics.DCImGui.ImGui_SetNextWindowViewport(viewportId);
    }
    public static function setWindowPos(pos:ImVec2, cond:Int = 0):Void {
        imguics.DCImGui.ImGui_SetWindowPos(pos, cond);
    }
    public static function setWindowSize(size:ImVec2, cond:Int = 0):Void {
        imguics.DCImGui.ImGui_SetWindowSize(size, cond);
    }
    public static function setWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        imguics.DCImGui.ImGui_SetWindowCollapsed(collapsed, cond);
    }
    public static function setWindowFocus():Void {
        imguics.DCImGui.ImGui_SetWindowFocus();
    }
    public static function setWindowPosStr(name:String, pos:ImVec2, cond:Int = 0):Void {
        imguics.DCImGui.ImGui_SetWindowPosStr(name, pos, cond);
    }
    public static function setWindowSizeStr(name:String, size:ImVec2, cond:Int = 0):Void {
        imguics.DCImGui.ImGui_SetWindowSizeStr(name, size, cond);
    }
    public static function setWindowCollapsedStr(name:String, collapsed:Bool, cond:Int = 0):Void {
        imguics.DCImGui.ImGui_SetWindowCollapsedStr(name, collapsed, cond);
    }
    public static function setWindowFocusStr(name:String):Void {
        imguics.DCImGui.ImGui_SetWindowFocusStr(name);
    }
    public static function getScrollX():Float {
        return imguics.DCImGui.ImGui_GetScrollX();
    }
    public static function getScrollY():Float {
        return imguics.DCImGui.ImGui_GetScrollY();
    }
    public static function setScrollX(scrollX:Float):Void {
        imguics.DCImGui.ImGui_SetScrollX(scrollX);
    }
    public static function setScrollY(scrollY:Float):Void {
        imguics.DCImGui.ImGui_SetScrollY(scrollY);
    }
    public static function getScrollMaxX():Float {
        return imguics.DCImGui.ImGui_GetScrollMaxX();
    }
    public static function getScrollMaxY():Float {
        return imguics.DCImGui.ImGui_GetScrollMaxY();
    }
    public static function setScrollHereX(centerXRatio:Float = 0.5):Void {
        imguics.DCImGui.ImGui_SetScrollHereX(centerXRatio);
    }
    public static function setScrollHereY(centerYRatio:Float = 0.5):Void {
        imguics.DCImGui.ImGui_SetScrollHereY(centerYRatio);
    }
    public static function setScrollFromPosX(localX:Float, centerXRatio:Float = 0.5):Void {
        imguics.DCImGui.ImGui_SetScrollFromPosX(localX, centerXRatio);
    }
    public static function setScrollFromPosY(localY:Float, centerYRatio:Float = 0.5):Void {
        imguics.DCImGui.ImGui_SetScrollFromPosY(localY, centerYRatio);
    }
    public static function pushFontFloat(font:ImFont, fontSizeBaseUnscaled:Float):Void {
        imguics.DCImGui.ImGui_PushFontFloat(imguics.ImGuiCs.ptr(font), fontSizeBaseUnscaled);
    }
    public static function popFont():Void {
        imguics.DCImGui.ImGui_PopFont();
    }
    public static function getFont():ImFont {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetFont());
    }
    public static function getFontSize():Float {
        return imguics.DCImGui.ImGui_GetFontSize();
    }
    public static function getFontBaked():ImFontBaked {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetFontBaked());
    }
    public static function pushStyleColor(idx:Int, col:Int):Void {
        imguics.DCImGui.ImGui_PushStyleColor(idx, col);
    }
    public static function pushStyleColorImVec4(idx:Int, col:ImVec4):Void {
        imguics.DCImGui.ImGui_PushStyleColorImVec4(idx, col);
    }
    public static function popStyleColorEx(count:Int = 1):Void {
        imguics.DCImGui.ImGui_PopStyleColorEx(count);
    }
    public static function popStyleColor():Void {
        imguics.DCImGui.ImGui_PopStyleColor();
    }
    public static function pushStyleVar(idx:Int, val:Float):Void {
        imguics.DCImGui.ImGui_PushStyleVar(idx, val);
    }
    public static function pushStyleVarImVec2(idx:Int, val:ImVec2):Void {
        imguics.DCImGui.ImGui_PushStyleVarImVec2(idx, val);
    }
    public static function pushStyleVarX(idx:Int, valX:Float):Void {
        imguics.DCImGui.ImGui_PushStyleVarX(idx, valX);
    }
    public static function pushStyleVarY(idx:Int, valY:Float):Void {
        imguics.DCImGui.ImGui_PushStyleVarY(idx, valY);
    }
    public static function popStyleVarEx(count:Int = 1):Void {
        imguics.DCImGui.ImGui_PopStyleVarEx(count);
    }
    public static function popStyleVar():Void {
        imguics.DCImGui.ImGui_PopStyleVar();
    }
    public static function pushItemFlag(option:Int, enabled:Bool):Void {
        imguics.DCImGui.ImGui_PushItemFlag(option, enabled);
    }
    public static function popItemFlag():Void {
        imguics.DCImGui.ImGui_PopItemFlag();
    }
    public static function pushItemWidth(itemWidth:Float):Void {
        imguics.DCImGui.ImGui_PushItemWidth(itemWidth);
    }
    public static function popItemWidth():Void {
        imguics.DCImGui.ImGui_PopItemWidth();
    }
    public static function setNextItemWidth(itemWidth:Float):Void {
        imguics.DCImGui.ImGui_SetNextItemWidth(itemWidth);
    }
    public static function calcItemWidth():Float {
        return imguics.DCImGui.ImGui_CalcItemWidth();
    }
    public static function pushTextWrapPos(wrapLocalPosX:Float = 0.0):Void {
        imguics.DCImGui.ImGui_PushTextWrapPos(wrapLocalPosX);
    }
    public static function popTextWrapPos():Void {
        imguics.DCImGui.ImGui_PopTextWrapPos();
    }
    public static function getFontTexUvWhitePixel():ImVec2 {
        return imguics.DCImGui.ImGui_GetFontTexUvWhitePixel();
    }
    public static function getColorU32Ex(idx:Int, alphaMul:Float = 1.0):Int {
        return imguics.DCImGui.ImGui_GetColorU32Ex(idx, alphaMul);
    }
    public static function getColorU32(idx:Int):Int {
        return imguics.DCImGui.ImGui_GetColorU32(idx);
    }
    public static function getColorU32ImVec4(col:ImVec4):Int {
        return imguics.DCImGui.ImGui_GetColorU32ImVec4(col);
    }
    public static function getColorU32ImU32Ex(col:Int, alphaMul:Float = 1.0):Int {
        return imguics.DCImGui.ImGui_GetColorU32ImU32Ex(col, alphaMul);
    }
    public static function getColorU32ImU32(col:Int):Int {
        return imguics.DCImGui.ImGui_GetColorU32ImU32(col);
    }
    public static function getStyleColorVec4(idx:Int):Float {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetStyleColorVec4(idx));
    }
    public static function getCursorScreenPos():ImVec2 {
        return imguics.DCImGui.ImGui_GetCursorScreenPos();
    }
    public static function setCursorScreenPos(pos:ImVec2):Void {
        imguics.DCImGui.ImGui_SetCursorScreenPos(pos);
    }
    public static function getContentRegionAvail():ImVec2 {
        return imguics.DCImGui.ImGui_GetContentRegionAvail();
    }
    public static function getCursorPos():ImVec2 {
        return imguics.DCImGui.ImGui_GetCursorPos();
    }
    public static function getCursorPosX():Float {
        return imguics.DCImGui.ImGui_GetCursorPosX();
    }
    public static function getCursorPosY():Float {
        return imguics.DCImGui.ImGui_GetCursorPosY();
    }
    public static function setCursorPos(localPos:ImVec2):Void {
        imguics.DCImGui.ImGui_SetCursorPos(localPos);
    }
    public static function setCursorPosX(localX:Float):Void {
        imguics.DCImGui.ImGui_SetCursorPosX(localX);
    }
    public static function setCursorPosY(localY:Float):Void {
        imguics.DCImGui.ImGui_SetCursorPosY(localY);
    }
    public static function getCursorStartPos():ImVec2 {
        return imguics.DCImGui.ImGui_GetCursorStartPos();
    }
    public static function separator():Void {
        imguics.DCImGui.ImGui_Separator();
    }
    public static function sameLineEx(offsetFromStartX:Float = 0.0, spacing:Float = -1.0):Void {
        imguics.DCImGui.ImGui_SameLineEx(offsetFromStartX, spacing);
    }
    public static function sameLine():Void {
        imguics.DCImGui.ImGui_SameLine();
    }
    public static function newLine():Void {
        imguics.DCImGui.ImGui_NewLine();
    }
    public static function spacing():Void {
        imguics.DCImGui.ImGui_Spacing();
    }
    public static function dummy(size:ImVec2):Void {
        imguics.DCImGui.ImGui_Dummy(size);
    }
    public static function indentEx(indentW:Float = 0.0):Void {
        imguics.DCImGui.ImGui_IndentEx(indentW);
    }
    public static function indent():Void {
        imguics.DCImGui.ImGui_Indent();
    }
    public static function unindentEx(indentW:Float = 0.0):Void {
        imguics.DCImGui.ImGui_UnindentEx(indentW);
    }
    public static function unindent():Void {
        imguics.DCImGui.ImGui_Unindent();
    }
    public static function beginGroup():Void {
        imguics.DCImGui.ImGui_BeginGroup();
    }
    public static function endGroup():Void {
        imguics.DCImGui.ImGui_EndGroup();
    }
    public static function alignTextToFramePadding():Void {
        imguics.DCImGui.ImGui_AlignTextToFramePadding();
    }
    public static function getTextLineHeight():Float {
        return imguics.DCImGui.ImGui_GetTextLineHeight();
    }
    public static function getTextLineHeightWithSpacing():Float {
        return imguics.DCImGui.ImGui_GetTextLineHeightWithSpacing();
    }
    public static function getFrameHeight():Float {
        return imguics.DCImGui.ImGui_GetFrameHeight();
    }
    public static function getFrameHeightWithSpacing():Float {
        return imguics.DCImGui.ImGui_GetFrameHeightWithSpacing();
    }
    public static function pushID(strId:String):Void {
        imguics.DCImGui.ImGui_PushID(strId);
    }
    public static function pushIDStr(strIdBegin:String, strIdEnd:String):Void {
        imguics.DCImGui.ImGui_PushIDStr(strIdBegin, strIdEnd);
    }
    public static function pushIDPtr(ptrId:Float):Void {
        imguics.DCImGui.ImGui_PushIDPtr(imguics.ImGuiCs.ptr(ptrId));
    }
    public static function pushIDInt(intId:Int):Void {
        imguics.DCImGui.ImGui_PushIDInt(intId);
    }
    public static function popID():Void {
        imguics.DCImGui.ImGui_PopID();
    }
    public static function getID(strId:String):Int {
        return imguics.DCImGui.ImGui_GetID(strId);
    }
    public static function getIDStr(strIdBegin:String, strIdEnd:String):Int {
        return imguics.DCImGui.ImGui_GetIDStr(strIdBegin, strIdEnd);
    }
    public static function getIDPtr(ptrId:Float):Int {
        return imguics.DCImGui.ImGui_GetIDPtr(imguics.ImGuiCs.ptr(ptrId));
    }
    public static function getIDInt(intId:Int):Int {
        return imguics.DCImGui.ImGui_GetIDInt(intId);
    }
    public static function text(text:String, textEnd:String = null):Void {
        imguics.DCImGui.ImGui_TextUnformattedEx(text, textEnd);
    }
    public static function textUnformatted(text:String):Void {
        imguics.DCImGui.ImGui_TextUnformatted(text);
    }
    public static function textColored(col:ImVec4, text:String):Void {
        imguics.DCImGui.ImGui_TextColoredUnformatted(col, text);
    }
    public static function textDisabled(text:String):Void {
        imguics.DCImGui.ImGui_TextDisabledUnformatted(text);
    }
    public static function textWrapped(text:String):Void {
        imguics.DCImGui.ImGui_TextWrappedUnformatted(text);
    }
    public static function labelText(label:String, text:String):Void {
        imguics.DCImGui.ImGui_LabelTextUnformatted(label, text);
    }
    public static function bulletText(text:String):Void {
        imguics.DCImGui.ImGui_BulletTextUnformatted(text);
    }
    public static function separatorText(label:String):Void {
        imguics.DCImGui.ImGui_SeparatorText(label);
    }
    public static function buttonEx(label:String, size:ImVec2):Bool {
        return imguics.DCImGui.ImGui_ButtonEx(label, size);
    }
    public static function button(label:String):Bool {
        return imguics.DCImGui.ImGui_Button(label);
    }
    public static function smallButton(label:String):Bool {
        return imguics.DCImGui.ImGui_SmallButton(label);
    }
    public static function invisibleButton(strId:String, size:ImVec2, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InvisibleButton(strId, size, flags);
    }
    public static function arrowButton(strId:String, dir:Int):Bool {
        return imguics.DCImGui.ImGui_ArrowButton(strId, dir);
    }
    public static function checkbox(label:String, v:Float):Bool {
        return imguics.DCImGui.ImGui_Checkbox(label, imguics.ImGuiCs.ptr(v));
    }
    public static function checkboxFlagsIntPtr(label:String, flags:Float, flagsValue:Int):Bool {
        return imguics.DCImGui.ImGui_CheckboxFlagsIntPtr(label, imguics.ImGuiCs.ptr(flags), flagsValue);
    }
    public static function checkboxFlagsUintPtr(label:String, flags:Float, flagsValue:Int):Bool {
        return imguics.DCImGui.ImGui_CheckboxFlagsUintPtr(label, imguics.ImGuiCs.ptr(flags), flagsValue);
    }
    public static function radioButton(label:String, active:Bool):Bool {
        return imguics.DCImGui.ImGui_RadioButton(label, active);
    }
    public static function radioButtonIntPtr(label:String, v:Float, vButton:Int):Bool {
        return imguics.DCImGui.ImGui_RadioButtonIntPtr(label, imguics.ImGuiCs.ptr(v), vButton);
    }
    public static function progressBar(fraction:Float, sizeArg:ImVec2, overlay:String = null):Void {
        imguics.DCImGui.ImGui_ProgressBar(fraction, sizeArg, overlay);
    }
    public static function bullet():Void {
        imguics.DCImGui.ImGui_Bullet();
    }
    public static function textLink(label:String):Bool {
        return imguics.DCImGui.ImGui_TextLink(label);
    }
    public static function textLinkOpenURLEx(label:String, url:String = null):Bool {
        return imguics.DCImGui.ImGui_TextLinkOpenURLEx(label, url);
    }
    public static function textLinkOpenURL(label:String):Bool {
        return imguics.DCImGui.ImGui_TextLinkOpenURL(label);
    }
    public static function imageEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2):Void {
        imguics.DCImGui.ImGui_ImageEx(texRef, imageSize, uv0, uv1);
    }
    public static function image(texRef:ImTextureRef, imageSize:ImVec2):Void {
        imguics.DCImGui.ImGui_Image(texRef, imageSize);
    }
    public static function imageWithBgEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Void {
        imguics.DCImGui.ImGui_ImageWithBgEx(texRef, imageSize, uv0, uv1, bgCol, tintCol);
    }
    public static function imageWithBg(texRef:ImTextureRef, imageSize:ImVec2):Void {
        imguics.DCImGui.ImGui_ImageWithBg(texRef, imageSize);
    }
    public static function imageButtonEx(strId:String, texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Bool {
        return imguics.DCImGui.ImGui_ImageButtonEx(strId, texRef, imageSize, uv0, uv1, bgCol, tintCol);
    }
    public static function imageButton(strId:String, texRef:ImTextureRef, imageSize:ImVec2):Bool {
        return imguics.DCImGui.ImGui_ImageButton(strId, texRef, imageSize);
    }
    public static function beginCombo(label:String, previewValue:String, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginCombo(label, previewValue, flags);
    }
    public static function endCombo():Void {
        imguics.DCImGui.ImGui_EndCombo();
    }
    public static function comboCharEx(label:String, currentItem:Float, items:Float = 0, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        return imguics.DCImGui.ImGui_ComboCharEx(label, imguics.ImGuiCs.ptr(currentItem), imguics.ImGuiCs.ptr(items), itemsCount, popupMaxHeightInItems);
    }
    public static function comboChar(label:String, currentItem:Float, items:Float = 0, itemsCount:Int):Bool {
        return imguics.DCImGui.ImGui_ComboChar(label, imguics.ImGuiCs.ptr(currentItem), imguics.ImGuiCs.ptr(items), itemsCount);
    }
    public static function comboEx(label:String, currentItem:Float, itemsSeparatedByZeros:String, popupMaxHeightInItems:Int = -1):Bool {
        return imguics.DCImGui.ImGui_ComboEx(label, imguics.ImGuiCs.ptr(currentItem), itemsSeparatedByZeros, popupMaxHeightInItems);
    }
    public static function combo(label:String, currentItem:Float, itemsSeparatedByZeros:String):Bool {
        return imguics.DCImGui.ImGui_Combo(label, imguics.ImGuiCs.ptr(currentItem), itemsSeparatedByZeros);
    }
    public static function comboCallbackEx(label:String, currentItem:Float, getter:Float, userData:Float, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        return imguics.DCImGui.ImGui_ComboCallbackEx(label, imguics.ImGuiCs.ptr(currentItem), imguics.ImGuiCs.ptr(getter), imguics.ImGuiCs.ptr(userData), itemsCount, popupMaxHeightInItems);
    }
    public static function comboCallback(label:String, currentItem:Float, getter:Float, userData:Float, itemsCount:Int):Bool {
        return imguics.DCImGui.ImGui_ComboCallback(label, imguics.ImGuiCs.ptr(currentItem), imguics.ImGuiCs.ptr(getter), imguics.ImGuiCs.ptr(userData), itemsCount);
    }
    public static function dragFloatEx(label:String, v:Float, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragFloatEx(label, imguics.ImGuiCs.ptr(v), vSpeed, vMin, vMax, format, flags);
    }
    public static function dragFloat(label:String, v:Float):Bool {
        return imguics.DCImGui.ImGui_DragFloat(label, imguics.ImGuiCs.ptr(v));
    }
    public static function dragFloat2Ex(label:String, v:Float = 0, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragFloat2Ex(label, imguics.ImGuiCs.ptr(v), vSpeed, vMin, vMax, format, flags);
    }
    public static function dragFloat2(label:String, v:Float = 0):Bool {
        return imguics.DCImGui.ImGui_DragFloat2(label, imguics.ImGuiCs.ptr(v));
    }
    public static function dragFloat3Ex(label:String, v:Float = 0, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragFloat3Ex(label, imguics.ImGuiCs.ptr(v), vSpeed, vMin, vMax, format, flags);
    }
    public static function dragFloat3(label:String, v:Float = 0):Bool {
        return imguics.DCImGui.ImGui_DragFloat3(label, imguics.ImGuiCs.ptr(v));
    }
    public static function dragFloat4Ex(label:String, v:Float = 0, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragFloat4Ex(label, imguics.ImGuiCs.ptr(v), vSpeed, vMin, vMax, format, flags);
    }
    public static function dragFloat4(label:String, v:Float = 0):Bool {
        return imguics.DCImGui.ImGui_DragFloat4(label, imguics.ImGuiCs.ptr(v));
    }
    public static function dragFloatRange2Ex(label:String, vCurrentMin:Float, vCurrentMax:Float, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", formatMax:String = null, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragFloatRange2Ex(label, imguics.ImGuiCs.ptr(vCurrentMin), imguics.ImGuiCs.ptr(vCurrentMax), vSpeed, vMin, vMax, format, formatMax, flags);
    }
    public static function dragFloatRange2(label:String, vCurrentMin:Float, vCurrentMax:Float):Bool {
        return imguics.DCImGui.ImGui_DragFloatRange2(label, imguics.ImGuiCs.ptr(vCurrentMin), imguics.ImGuiCs.ptr(vCurrentMax));
    }
    public static function dragIntEx(label:String, v:Float, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragIntEx(label, imguics.ImGuiCs.ptr(v), vSpeed, vMin, vMax, format, flags);
    }
    public static function dragInt(label:String, v:Float):Bool {
        return imguics.DCImGui.ImGui_DragInt(label, imguics.ImGuiCs.ptr(v));
    }
    public static function dragInt2Ex(label:String, v:Float = 0, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragInt2Ex(label, imguics.ImGuiCs.ptr(v), vSpeed, vMin, vMax, format, flags);
    }
    public static function dragInt2(label:String, v:Float = 0):Bool {
        return imguics.DCImGui.ImGui_DragInt2(label, imguics.ImGuiCs.ptr(v));
    }
    public static function dragInt3Ex(label:String, v:Float = 0, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragInt3Ex(label, imguics.ImGuiCs.ptr(v), vSpeed, vMin, vMax, format, flags);
    }
    public static function dragInt3(label:String, v:Float = 0):Bool {
        return imguics.DCImGui.ImGui_DragInt3(label, imguics.ImGuiCs.ptr(v));
    }
    public static function dragInt4Ex(label:String, v:Float = 0, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragInt4Ex(label, imguics.ImGuiCs.ptr(v), vSpeed, vMin, vMax, format, flags);
    }
    public static function dragInt4(label:String, v:Float = 0):Bool {
        return imguics.DCImGui.ImGui_DragInt4(label, imguics.ImGuiCs.ptr(v));
    }
    public static function dragIntRange2Ex(label:String, vCurrentMin:Float, vCurrentMax:Float, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", formatMax:String = null, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragIntRange2Ex(label, imguics.ImGuiCs.ptr(vCurrentMin), imguics.ImGuiCs.ptr(vCurrentMax), vSpeed, vMin, vMax, format, formatMax, flags);
    }
    public static function dragIntRange2(label:String, vCurrentMin:Float, vCurrentMax:Float):Bool {
        return imguics.DCImGui.ImGui_DragIntRange2(label, imguics.ImGuiCs.ptr(vCurrentMin), imguics.ImGuiCs.ptr(vCurrentMax));
    }
    public static function dragScalarEx(label:String, dataType:Int, pData:Float, vSpeed:Float = 1.0, pMin:Float = 0, pMax:Float = 0, format:String = null, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragScalarEx(label, dataType, imguics.ImGuiCs.ptr(pData), vSpeed, imguics.ImGuiCs.ptr(pMin), imguics.ImGuiCs.ptr(pMax), format, flags);
    }
    public static function dragScalar(label:String, dataType:Int, pData:Float):Bool {
        return imguics.DCImGui.ImGui_DragScalar(label, dataType, imguics.ImGuiCs.ptr(pData));
    }
    public static function dragScalarNEx(label:String, dataType:Int, pData:Float, components:Int, vSpeed:Float = 1.0, pMin:Float = 0, pMax:Float = 0, format:String = null, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_DragScalarNEx(label, dataType, imguics.ImGuiCs.ptr(pData), components, vSpeed, imguics.ImGuiCs.ptr(pMin), imguics.ImGuiCs.ptr(pMax), format, flags);
    }
    public static function dragScalarN(label:String, dataType:Int, pData:Float, components:Int):Bool {
        return imguics.DCImGui.ImGui_DragScalarN(label, dataType, imguics.ImGuiCs.ptr(pData), components);
    }
    public static function sliderFloatEx(label:String, v:Float, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SliderFloatEx(label, imguics.ImGuiCs.ptr(v), vMin, vMax, format, flags);
    }
    public static function sliderFloat(label:String, v:Float, vMin:Float, vMax:Float):Bool {
        return imguics.DCImGui.ImGui_SliderFloat(label, imguics.ImGuiCs.ptr(v), vMin, vMax);
    }
    public static function sliderFloat2Ex(label:String, v:Float = 0, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SliderFloat2Ex(label, imguics.ImGuiCs.ptr(v), vMin, vMax, format, flags);
    }
    public static function sliderFloat2(label:String, v:Float = 0, vMin:Float, vMax:Float):Bool {
        return imguics.DCImGui.ImGui_SliderFloat2(label, imguics.ImGuiCs.ptr(v), vMin, vMax);
    }
    public static function sliderFloat3Ex(label:String, v:Float = 0, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SliderFloat3Ex(label, imguics.ImGuiCs.ptr(v), vMin, vMax, format, flags);
    }
    public static function sliderFloat3(label:String, v:Float = 0, vMin:Float, vMax:Float):Bool {
        return imguics.DCImGui.ImGui_SliderFloat3(label, imguics.ImGuiCs.ptr(v), vMin, vMax);
    }
    public static function sliderFloat4Ex(label:String, v:Float = 0, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SliderFloat4Ex(label, imguics.ImGuiCs.ptr(v), vMin, vMax, format, flags);
    }
    public static function sliderFloat4(label:String, v:Float = 0, vMin:Float, vMax:Float):Bool {
        return imguics.DCImGui.ImGui_SliderFloat4(label, imguics.ImGuiCs.ptr(v), vMin, vMax);
    }
    public static function sliderAngleEx(label:String, vRad:Float, vDegreesMin:Float = -360.0, vDegreesMax:Float, format:String = "%.0f deg", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SliderAngleEx(label, imguics.ImGuiCs.ptr(vRad), vDegreesMin, vDegreesMax, format, flags);
    }
    public static function sliderAngle(label:String, vRad:Float):Bool {
        return imguics.DCImGui.ImGui_SliderAngle(label, imguics.ImGuiCs.ptr(vRad));
    }
    public static function sliderIntEx(label:String, v:Float, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SliderIntEx(label, imguics.ImGuiCs.ptr(v), vMin, vMax, format, flags);
    }
    public static function sliderInt(label:String, v:Float, vMin:Int, vMax:Int):Bool {
        return imguics.DCImGui.ImGui_SliderInt(label, imguics.ImGuiCs.ptr(v), vMin, vMax);
    }
    public static function sliderInt2Ex(label:String, v:Float = 0, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SliderInt2Ex(label, imguics.ImGuiCs.ptr(v), vMin, vMax, format, flags);
    }
    public static function sliderInt2(label:String, v:Float = 0, vMin:Int, vMax:Int):Bool {
        return imguics.DCImGui.ImGui_SliderInt2(label, imguics.ImGuiCs.ptr(v), vMin, vMax);
    }
    public static function sliderInt3Ex(label:String, v:Float = 0, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SliderInt3Ex(label, imguics.ImGuiCs.ptr(v), vMin, vMax, format, flags);
    }
    public static function sliderInt3(label:String, v:Float = 0, vMin:Int, vMax:Int):Bool {
        return imguics.DCImGui.ImGui_SliderInt3(label, imguics.ImGuiCs.ptr(v), vMin, vMax);
    }
    public static function sliderInt4Ex(label:String, v:Float = 0, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SliderInt4Ex(label, imguics.ImGuiCs.ptr(v), vMin, vMax, format, flags);
    }
    public static function sliderInt4(label:String, v:Float = 0, vMin:Int, vMax:Int):Bool {
        return imguics.DCImGui.ImGui_SliderInt4(label, imguics.ImGuiCs.ptr(v), vMin, vMax);
    }
    public static function sliderScalarEx(label:String, dataType:Int, pData:Float, pMin:Float, pMax:Float, format:String = null, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SliderScalarEx(label, dataType, imguics.ImGuiCs.ptr(pData), imguics.ImGuiCs.ptr(pMin), imguics.ImGuiCs.ptr(pMax), format, flags);
    }
    public static function sliderScalar(label:String, dataType:Int, pData:Float, pMin:Float, pMax:Float):Bool {
        return imguics.DCImGui.ImGui_SliderScalar(label, dataType, imguics.ImGuiCs.ptr(pData), imguics.ImGuiCs.ptr(pMin), imguics.ImGuiCs.ptr(pMax));
    }
    public static function sliderScalarNEx(label:String, dataType:Int, pData:Float, components:Int, pMin:Float, pMax:Float, format:String = null, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SliderScalarNEx(label, dataType, imguics.ImGuiCs.ptr(pData), components, imguics.ImGuiCs.ptr(pMin), imguics.ImGuiCs.ptr(pMax), format, flags);
    }
    public static function sliderScalarN(label:String, dataType:Int, pData:Float, components:Int, pMin:Float, pMax:Float):Bool {
        return imguics.DCImGui.ImGui_SliderScalarN(label, dataType, imguics.ImGuiCs.ptr(pData), components, imguics.ImGuiCs.ptr(pMin), imguics.ImGuiCs.ptr(pMax));
    }
    public static function vSliderFloatEx(label:String, size:ImVec2, v:Float, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_VSliderFloatEx(label, size, imguics.ImGuiCs.ptr(v), vMin, vMax, format, flags);
    }
    public static function vSliderFloat(label:String, size:ImVec2, v:Float, vMin:Float, vMax:Float):Bool {
        return imguics.DCImGui.ImGui_VSliderFloat(label, size, imguics.ImGuiCs.ptr(v), vMin, vMax);
    }
    public static function vSliderIntEx(label:String, size:ImVec2, v:Float, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_VSliderIntEx(label, size, imguics.ImGuiCs.ptr(v), vMin, vMax, format, flags);
    }
    public static function vSliderInt(label:String, size:ImVec2, v:Float, vMin:Int, vMax:Int):Bool {
        return imguics.DCImGui.ImGui_VSliderInt(label, size, imguics.ImGuiCs.ptr(v), vMin, vMax);
    }
    public static function vSliderScalarEx(label:String, size:ImVec2, dataType:Int, pData:Float, pMin:Float, pMax:Float, format:String = null, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_VSliderScalarEx(label, size, dataType, imguics.ImGuiCs.ptr(pData), imguics.ImGuiCs.ptr(pMin), imguics.ImGuiCs.ptr(pMax), format, flags);
    }
    public static function vSliderScalar(label:String, size:ImVec2, dataType:Int, pData:Float, pMin:Float, pMax:Float):Bool {
        return imguics.DCImGui.ImGui_VSliderScalar(label, size, dataType, imguics.ImGuiCs.ptr(pData), imguics.ImGuiCs.ptr(pMin), imguics.ImGuiCs.ptr(pMax));
    }
    public static function inputTextEx(label:String, buf:Float, bufSize:Int, flags:Int = 0, callback:Float = 0, userData:Float = 0):Bool {
        return imguics.DCImGui.ImGui_InputTextEx(label, imguics.ImGuiCs.ptr(buf), imguics.ImGuiCs.ptr(bufSize), flags, imguics.ImGuiCs.ptr(callback), imguics.ImGuiCs.ptr(userData));
    }
    public static function inputText(label:String, buf:Float, bufSize:Int, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputText(label, imguics.ImGuiCs.ptr(buf), imguics.ImGuiCs.ptr(bufSize), flags);
    }
    public static function inputTextMultilineEx(label:String, buf:Float, bufSize:Int, size:ImVec2, flags:Int = 0, callback:Float = 0, userData:Float = 0):Bool {
        return imguics.DCImGui.ImGui_InputTextMultilineEx(label, imguics.ImGuiCs.ptr(buf), imguics.ImGuiCs.ptr(bufSize), size, flags, imguics.ImGuiCs.ptr(callback), imguics.ImGuiCs.ptr(userData));
    }
    public static function inputTextMultiline(label:String, buf:Float, bufSize:Int):Bool {
        return imguics.DCImGui.ImGui_InputTextMultiline(label, imguics.ImGuiCs.ptr(buf), imguics.ImGuiCs.ptr(bufSize));
    }
    public static function inputTextWithHintEx(label:String, hint:String, buf:Float, bufSize:Int, flags:Int = 0, callback:Float = 0, userData:Float = 0):Bool {
        return imguics.DCImGui.ImGui_InputTextWithHintEx(label, hint, imguics.ImGuiCs.ptr(buf), imguics.ImGuiCs.ptr(bufSize), flags, imguics.ImGuiCs.ptr(callback), imguics.ImGuiCs.ptr(userData));
    }
    public static function inputTextWithHint(label:String, hint:String, buf:Float, bufSize:Int, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputTextWithHint(label, hint, imguics.ImGuiCs.ptr(buf), imguics.ImGuiCs.ptr(bufSize), flags);
    }
    public static function inputFloatEx(label:String, v:Float, step:Float = 0.0, stepFast:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputFloatEx(label, imguics.ImGuiCs.ptr(v), step, stepFast, format, flags);
    }
    public static function inputFloat(label:String, v:Float):Bool {
        return imguics.DCImGui.ImGui_InputFloat(label, imguics.ImGuiCs.ptr(v));
    }
    public static function inputFloat2Ex(label:String, v:Float = 0, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputFloat2Ex(label, imguics.ImGuiCs.ptr(v), format, flags);
    }
    public static function inputFloat2(label:String, v:Float = 0):Bool {
        return imguics.DCImGui.ImGui_InputFloat2(label, imguics.ImGuiCs.ptr(v));
    }
    public static function inputFloat3Ex(label:String, v:Float = 0, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputFloat3Ex(label, imguics.ImGuiCs.ptr(v), format, flags);
    }
    public static function inputFloat3(label:String, v:Float = 0):Bool {
        return imguics.DCImGui.ImGui_InputFloat3(label, imguics.ImGuiCs.ptr(v));
    }
    public static function inputFloat4Ex(label:String, v:Float = 0, format:String = "%.3f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputFloat4Ex(label, imguics.ImGuiCs.ptr(v), format, flags);
    }
    public static function inputFloat4(label:String, v:Float = 0):Bool {
        return imguics.DCImGui.ImGui_InputFloat4(label, imguics.ImGuiCs.ptr(v));
    }
    public static function inputIntEx(label:String, v:Float, step:Int = 1, stepFast:Int = 100, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputIntEx(label, imguics.ImGuiCs.ptr(v), step, stepFast, flags);
    }
    public static function inputInt(label:String, v:Float):Bool {
        return imguics.DCImGui.ImGui_InputInt(label, imguics.ImGuiCs.ptr(v));
    }
    public static function inputInt2(label:String, v:Float = 0, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputInt2(label, imguics.ImGuiCs.ptr(v), flags);
    }
    public static function inputInt3(label:String, v:Float = 0, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputInt3(label, imguics.ImGuiCs.ptr(v), flags);
    }
    public static function inputInt4(label:String, v:Float = 0, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputInt4(label, imguics.ImGuiCs.ptr(v), flags);
    }
    public static function inputDoubleEx(label:String, v:Float, step:Float = 0.0, stepFast:Float = 0.0, format:String = "%.6f", flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputDoubleEx(label, imguics.ImGuiCs.ptr(v), step, stepFast, format, flags);
    }
    public static function inputDouble(label:String, v:Float):Bool {
        return imguics.DCImGui.ImGui_InputDouble(label, imguics.ImGuiCs.ptr(v));
    }
    public static function inputScalarEx(label:String, dataType:Int, pData:Float, pStep:Float = 0, pStepFast:Float = 0, format:String = null, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputScalarEx(label, dataType, imguics.ImGuiCs.ptr(pData), imguics.ImGuiCs.ptr(pStep), imguics.ImGuiCs.ptr(pStepFast), format, flags);
    }
    public static function inputScalar(label:String, dataType:Int, pData:Float):Bool {
        return imguics.DCImGui.ImGui_InputScalar(label, dataType, imguics.ImGuiCs.ptr(pData));
    }
    public static function inputScalarNEx(label:String, dataType:Int, pData:Float, components:Int, pStep:Float = 0, pStepFast:Float = 0, format:String = null, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_InputScalarNEx(label, dataType, imguics.ImGuiCs.ptr(pData), components, imguics.ImGuiCs.ptr(pStep), imguics.ImGuiCs.ptr(pStepFast), format, flags);
    }
    public static function inputScalarN(label:String, dataType:Int, pData:Float, components:Int):Bool {
        return imguics.DCImGui.ImGui_InputScalarN(label, dataType, imguics.ImGuiCs.ptr(pData), components);
    }
    public static function colorEdit3(label:String, col:Float = 0, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_ColorEdit3(label, imguics.ImGuiCs.ptr(col), flags);
    }
    public static function colorEdit4(label:String, col:Float = 0, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_ColorEdit4(label, imguics.ImGuiCs.ptr(col), flags);
    }
    public static function colorPicker3(label:String, col:Float = 0, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_ColorPicker3(label, imguics.ImGuiCs.ptr(col), flags);
    }
    public static function colorPicker4(label:String, col:Float = 0, flags:Int = 0, refCol:Float = 0):Bool {
        return imguics.DCImGui.ImGui_ColorPicker4(label, imguics.ImGuiCs.ptr(col), flags, imguics.ImGuiCs.ptr(refCol));
    }
    public static function colorButtonEx(descId:String, col:ImVec4, flags:Int = 0, size:ImVec2):Bool {
        return imguics.DCImGui.ImGui_ColorButtonEx(descId, col, flags, size);
    }
    public static function colorButton(descId:String, col:ImVec4, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_ColorButton(descId, col, flags);
    }
    public static function setColorEditOptions(flags:Int):Void {
        imguics.DCImGui.ImGui_SetColorEditOptions(flags);
    }
    public static function treeNode(label:String):Bool {
        return imguics.DCImGui.ImGui_TreeNode(label);
    }
    public static function treeNodeStr(strId:String, text:String):Bool {
        return imguics.DCImGui.ImGui_TreeNodeStrUnformatted(strId, text);
    }
    public static function treeNodePtr(ptrId:Float, text:String):Bool {
        return imguics.DCImGui.ImGui_TreeNodePtrUnformatted(imguics.ImGuiCs.ptr(ptrId), text);
    }
    public static function treeNodeEx(label:String, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_TreeNodeEx(label, flags);
    }
    public static function treeNodeExStr(strId:String, flags:Int, text:String):Bool {
        return imguics.DCImGui.ImGui_TreeNodeExStrUnformatted(strId, flags, text);
    }
    public static function treeNodeExPtr(ptrId:Float, flags:Int, text:String):Bool {
        return imguics.DCImGui.ImGui_TreeNodeExPtrUnformatted(imguics.ImGuiCs.ptr(ptrId), flags, text);
    }
    public static function treePush(strId:String):Void {
        imguics.DCImGui.ImGui_TreePush(strId);
    }
    public static function treePushPtr(ptrId:Float):Void {
        imguics.DCImGui.ImGui_TreePushPtr(imguics.ImGuiCs.ptr(ptrId));
    }
    public static function treePop():Void {
        imguics.DCImGui.ImGui_TreePop();
    }
    public static function getTreeNodeToLabelSpacing():Float {
        return imguics.DCImGui.ImGui_GetTreeNodeToLabelSpacing();
    }
    public static function collapsingHeader(label:String, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_CollapsingHeader(label, flags);
    }
    public static function collapsingHeaderBoolPtr(label:String, pVisible:Float, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_CollapsingHeaderBoolPtr(label, imguics.ImGuiCs.ptr(pVisible), flags);
    }
    public static function setNextItemOpen(isOpen:Bool, cond:Int = 0):Void {
        imguics.DCImGui.ImGui_SetNextItemOpen(isOpen, cond);
    }
    public static function setNextItemStorageID(storageId:Int):Void {
        imguics.DCImGui.ImGui_SetNextItemStorageID(storageId);
    }
    public static function treeNodeGetOpen(storageId:Int):Bool {
        return imguics.DCImGui.ImGui_TreeNodeGetOpen(storageId);
    }
    public static function selectableEx(label:String, selected:Bool = false, flags:Int = 0, size:ImVec2):Bool {
        return imguics.DCImGui.ImGui_SelectableEx(label, selected, flags, size);
    }
    public static function selectable(label:String):Bool {
        return imguics.DCImGui.ImGui_Selectable(label);
    }
    public static function selectableBoolPtrEx(label:String, pSelected:Float, flags:Int = 0, size:ImVec2):Bool {
        return imguics.DCImGui.ImGui_SelectableBoolPtrEx(label, imguics.ImGuiCs.ptr(pSelected), flags, size);
    }
    public static function selectableBoolPtr(label:String, pSelected:Float, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SelectableBoolPtr(label, imguics.ImGuiCs.ptr(pSelected), flags);
    }
    public static function beginMultiSelectEx(flags:Int, selectionSize:Int = -1, itemsCount:Int = -1):ImGuiMultiSelectIO {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_BeginMultiSelectEx(flags, selectionSize, itemsCount));
    }
    public static function beginMultiSelect(flags:Int):ImGuiMultiSelectIO {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_BeginMultiSelect(flags));
    }
    public static function endMultiSelect():ImGuiMultiSelectIO {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_EndMultiSelect());
    }
    public static function setNextItemSelectionUserData(selectionUserData:Float):Void {
        imguics.DCImGui.ImGui_SetNextItemSelectionUserData(imguics.ImGuiCs.toI64(selectionUserData));
    }
    public static function isItemToggledSelection():Bool {
        return imguics.DCImGui.ImGui_IsItemToggledSelection();
    }
    public static function beginListBox(label:String, size:ImVec2):Bool {
        return imguics.DCImGui.ImGui_BeginListBox(label, size);
    }
    public static function endListBox():Void {
        imguics.DCImGui.ImGui_EndListBox();
    }
    public static function listBox(label:String, currentItem:Float, items:Float = 0, itemsCount:Int, heightInItems:Int = -1):Bool {
        return imguics.DCImGui.ImGui_ListBox(label, imguics.ImGuiCs.ptr(currentItem), imguics.ImGuiCs.ptr(items), itemsCount, heightInItems);
    }
    public static function listBoxCallbackEx(label:String, currentItem:Float, getter:Float, userData:Float, itemsCount:Int, heightInItems:Int = -1):Bool {
        return imguics.DCImGui.ImGui_ListBoxCallbackEx(label, imguics.ImGuiCs.ptr(currentItem), imguics.ImGuiCs.ptr(getter), imguics.ImGuiCs.ptr(userData), itemsCount, heightInItems);
    }
    public static function listBoxCallback(label:String, currentItem:Float, getter:Float, userData:Float, itemsCount:Int):Bool {
        return imguics.DCImGui.ImGui_ListBoxCallback(label, imguics.ImGuiCs.ptr(currentItem), imguics.ImGuiCs.ptr(getter), imguics.ImGuiCs.ptr(userData), itemsCount);
    }
    public static function plotLinesEx(label:String, values:Float = 0, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        imguics.DCImGui.ImGui_PlotLinesEx(label, imguics.ImGuiCs.ptr(values), valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize, stride);
    }
    public static function plotLines(label:String, values:Float = 0, valuesCount:Int):Void {
        imguics.DCImGui.ImGui_PlotLines(label, imguics.ImGuiCs.ptr(values), valuesCount);
    }
    public static function plotLinesCallbackEx(label:String, valuesGetter:Float, data:Float, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2):Void {
        imguics.DCImGui.ImGui_PlotLinesCallbackEx(label, imguics.ImGuiCs.ptr(valuesGetter), imguics.ImGuiCs.ptr(data), valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize);
    }
    public static function plotLinesCallback(label:String, valuesGetter:Float, data:Float, valuesCount:Int):Void {
        imguics.DCImGui.ImGui_PlotLinesCallback(label, imguics.ImGuiCs.ptr(valuesGetter), imguics.ImGuiCs.ptr(data), valuesCount);
    }
    public static function plotHistogramEx(label:String, values:Float = 0, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        imguics.DCImGui.ImGui_PlotHistogramEx(label, imguics.ImGuiCs.ptr(values), valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize, stride);
    }
    public static function plotHistogram(label:String, values:Float = 0, valuesCount:Int):Void {
        imguics.DCImGui.ImGui_PlotHistogram(label, imguics.ImGuiCs.ptr(values), valuesCount);
    }
    public static function plotHistogramCallbackEx(label:String, valuesGetter:Float, data:Float, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2):Void {
        imguics.DCImGui.ImGui_PlotHistogramCallbackEx(label, imguics.ImGuiCs.ptr(valuesGetter), imguics.ImGuiCs.ptr(data), valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize);
    }
    public static function plotHistogramCallback(label:String, valuesGetter:Float, data:Float, valuesCount:Int):Void {
        imguics.DCImGui.ImGui_PlotHistogramCallback(label, imguics.ImGuiCs.ptr(valuesGetter), imguics.ImGuiCs.ptr(data), valuesCount);
    }
    public static function beginMenuBar():Bool {
        return imguics.DCImGui.ImGui_BeginMenuBar();
    }
    public static function endMenuBar():Void {
        imguics.DCImGui.ImGui_EndMenuBar();
    }
    public static function beginMainMenuBar():Bool {
        return imguics.DCImGui.ImGui_BeginMainMenuBar();
    }
    public static function endMainMenuBar():Void {
        imguics.DCImGui.ImGui_EndMainMenuBar();
    }
    public static function beginMenuEx(label:String, enabled:Bool = true):Bool {
        return imguics.DCImGui.ImGui_BeginMenuEx(label, enabled);
    }
    public static function beginMenu(label:String):Bool {
        return imguics.DCImGui.ImGui_BeginMenu(label);
    }
    public static function endMenu():Void {
        imguics.DCImGui.ImGui_EndMenu();
    }
    public static function menuItemEx(label:String, shortcut:String = null, selected:Bool = false, enabled:Bool = true):Bool {
        return imguics.DCImGui.ImGui_MenuItemEx(label, shortcut, selected, enabled);
    }
    public static function menuItem(label:String):Bool {
        return imguics.DCImGui.ImGui_MenuItem(label);
    }
    public static function menuItemBoolPtr(label:String, shortcut:String, pSelected:Float, enabled:Bool = true):Bool {
        return imguics.DCImGui.ImGui_MenuItemBoolPtr(label, shortcut, imguics.ImGuiCs.ptr(pSelected), enabled);
    }
    public static function beginTooltip():Bool {
        return imguics.DCImGui.ImGui_BeginTooltip();
    }
    public static function endTooltip():Void {
        imguics.DCImGui.ImGui_EndTooltip();
    }
    public static function setTooltip(text:String):Void {
        imguics.DCImGui.ImGui_SetTooltipUnformatted(text);
    }
    public static function beginItemTooltip():Bool {
        return imguics.DCImGui.ImGui_BeginItemTooltip();
    }
    public static function setItemTooltip(text:String):Void {
        imguics.DCImGui.ImGui_SetItemTooltipUnformatted(text);
    }
    public static function beginPopup(strId:String, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginPopup(strId, flags);
    }
    public static function beginPopupModal(name:String, pOpen:Float = 0, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginPopupModal(name, imguics.ImGuiCs.ptr(pOpen), flags);
    }
    public static function endPopup():Void {
        imguics.DCImGui.ImGui_EndPopup();
    }
    public static function openPopup(strId:String, popupFlags:Int = 0):Void {
        imguics.DCImGui.ImGui_OpenPopup(strId, popupFlags);
    }
    public static function openPopupID(id:Int, popupFlags:Int = 0):Void {
        imguics.DCImGui.ImGui_OpenPopupID(id, popupFlags);
    }
    public static function openPopupOnItemClick(strId:String = null, popupFlags:Int = 0):Void {
        imguics.DCImGui.ImGui_OpenPopupOnItemClick(strId, popupFlags);
    }
    public static function closeCurrentPopup():Void {
        imguics.DCImGui.ImGui_CloseCurrentPopup();
    }
    public static function beginPopupContextItemEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginPopupContextItemEx(strId, popupFlags);
    }
    public static function beginPopupContextItem():Bool {
        return imguics.DCImGui.ImGui_BeginPopupContextItem();
    }
    public static function beginPopupContextWindowEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginPopupContextWindowEx(strId, popupFlags);
    }
    public static function beginPopupContextWindow():Bool {
        return imguics.DCImGui.ImGui_BeginPopupContextWindow();
    }
    public static function beginPopupContextVoidEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginPopupContextVoidEx(strId, popupFlags);
    }
    public static function beginPopupContextVoid():Bool {
        return imguics.DCImGui.ImGui_BeginPopupContextVoid();
    }
    public static function isPopupOpen(strId:String, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_IsPopupOpen(strId, flags);
    }
    public static function beginTableEx(strId:String, columns:Int, flags:Int = 0, outerSize:ImVec2, innerWidth:Float = 0.0):Bool {
        return imguics.DCImGui.ImGui_BeginTableEx(strId, columns, flags, outerSize, innerWidth);
    }
    public static function beginTable(strId:String, columns:Int, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginTable(strId, columns, flags);
    }
    public static function endTable():Void {
        imguics.DCImGui.ImGui_EndTable();
    }
    public static function tableNextRowEx(rowFlags:Int = 0, minRowHeight:Float = 0.0):Void {
        imguics.DCImGui.ImGui_TableNextRowEx(rowFlags, minRowHeight);
    }
    public static function tableNextRow():Void {
        imguics.DCImGui.ImGui_TableNextRow();
    }
    public static function tableNextColumn():Bool {
        return imguics.DCImGui.ImGui_TableNextColumn();
    }
    public static function tableSetColumnIndex(columnN:Int):Bool {
        return imguics.DCImGui.ImGui_TableSetColumnIndex(columnN);
    }
    public static function tableSetupColumnEx(label:String, flags:Int = 0, initWidthOrWeight:Float = 0.0, userId:Int = 0):Void {
        imguics.DCImGui.ImGui_TableSetupColumnEx(label, flags, initWidthOrWeight, userId);
    }
    public static function tableSetupColumn(label:String, flags:Int = 0):Void {
        imguics.DCImGui.ImGui_TableSetupColumn(label, flags);
    }
    public static function tableSetupScrollFreeze(cols:Int, rows:Int):Void {
        imguics.DCImGui.ImGui_TableSetupScrollFreeze(cols, rows);
    }
    public static function tableHeader(label:String):Void {
        imguics.DCImGui.ImGui_TableHeader(label);
    }
    public static function tableHeadersRow():Void {
        imguics.DCImGui.ImGui_TableHeadersRow();
    }
    public static function tableAngledHeadersRow():Void {
        imguics.DCImGui.ImGui_TableAngledHeadersRow();
    }
    public static function tableGetSortSpecs():ImGuiTableSortSpecs {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_TableGetSortSpecs());
    }
    public static function tableGetColumnCount():Int {
        return imguics.DCImGui.ImGui_TableGetColumnCount();
    }
    public static function tableGetColumnIndex():Int {
        return imguics.DCImGui.ImGui_TableGetColumnIndex();
    }
    public static function tableGetRowIndex():Int {
        return imguics.DCImGui.ImGui_TableGetRowIndex();
    }
    public static function tableGetColumnName(columnN:Int = -1):String {
        return imguics.ImGuiCs.readString(imguics.DCImGui.ImGui_TableGetColumnName(columnN));
    }
    public static function tableGetColumnFlags(columnN:Int = -1):Int {
        return imguics.DCImGui.ImGui_TableGetColumnFlags(columnN);
    }
    public static function tableSetColumnEnabled(columnN:Int, v:Bool):Void {
        imguics.DCImGui.ImGui_TableSetColumnEnabled(columnN, v);
    }
    public static function tableGetHoveredColumn():Int {
        return imguics.DCImGui.ImGui_TableGetHoveredColumn();
    }
    public static function tableSetBgColor(target:Int, color:Int, columnN:Int = -1):Void {
        imguics.DCImGui.ImGui_TableSetBgColor(target, color, columnN);
    }
    public static function columnsEx(count:Int = 1, id:String = null, borders:Bool = true):Void {
        imguics.DCImGui.ImGui_ColumnsEx(count, id, borders);
    }
    public static function columns():Void {
        imguics.DCImGui.ImGui_Columns();
    }
    public static function nextColumn():Void {
        imguics.DCImGui.ImGui_NextColumn();
    }
    public static function getColumnIndex():Int {
        return imguics.DCImGui.ImGui_GetColumnIndex();
    }
    public static function getColumnWidth(columnIndex:Int = -1):Float {
        return imguics.DCImGui.ImGui_GetColumnWidth(columnIndex);
    }
    public static function setColumnWidth(columnIndex:Int, width:Float):Void {
        imguics.DCImGui.ImGui_SetColumnWidth(columnIndex, width);
    }
    public static function getColumnOffset(columnIndex:Int = -1):Float {
        return imguics.DCImGui.ImGui_GetColumnOffset(columnIndex);
    }
    public static function setColumnOffset(columnIndex:Int, offsetX:Float):Void {
        imguics.DCImGui.ImGui_SetColumnOffset(columnIndex, offsetX);
    }
    public static function getColumnsCount():Int {
        return imguics.DCImGui.ImGui_GetColumnsCount();
    }
    public static function beginTabBar(strId:String, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginTabBar(strId, flags);
    }
    public static function endTabBar():Void {
        imguics.DCImGui.ImGui_EndTabBar();
    }
    public static function beginTabItem(label:String, pOpen:Float = 0, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginTabItem(label, imguics.ImGuiCs.ptr(pOpen), flags);
    }
    public static function endTabItem():Void {
        imguics.DCImGui.ImGui_EndTabItem();
    }
    public static function tabItemButton(label:String, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_TabItemButton(label, flags);
    }
    public static function setTabItemClosed(tabOrDockedWindowLabel:String):Void {
        imguics.DCImGui.ImGui_SetTabItemClosed(tabOrDockedWindowLabel);
    }
    public static function dockSpaceEx(dockspaceId:Int, size:ImVec2, flags:Int = 0, windowClass:ImGuiWindowClass = 0):Int {
        return imguics.DCImGui.ImGui_DockSpaceEx(dockspaceId, size, flags, imguics.ImGuiCs.ptr(windowClass));
    }
    public static function dockSpace(dockspaceId:Int):Int {
        return imguics.DCImGui.ImGui_DockSpace(dockspaceId);
    }
    public static function dockSpaceOverViewportEx(dockspaceId:Int = 0, viewport:ImGuiViewport = 0, flags:Int = 0, windowClass:ImGuiWindowClass = 0):Int {
        return imguics.DCImGui.ImGui_DockSpaceOverViewportEx(dockspaceId, imguics.ImGuiCs.ptr(viewport), flags, imguics.ImGuiCs.ptr(windowClass));
    }
    public static function dockSpaceOverViewport():Int {
        return imguics.DCImGui.ImGui_DockSpaceOverViewport();
    }
    public static function setNextWindowDockID(dockId:Int, cond:Int = 0):Void {
        imguics.DCImGui.ImGui_SetNextWindowDockID(dockId, cond);
    }
    public static function setNextWindowClass(windowClass:ImGuiWindowClass):Void {
        imguics.DCImGui.ImGui_SetNextWindowClass(imguics.ImGuiCs.ptr(windowClass));
    }
    public static function getWindowDockID():Int {
        return imguics.DCImGui.ImGui_GetWindowDockID();
    }
    public static function isWindowDocked():Bool {
        return imguics.DCImGui.ImGui_IsWindowDocked();
    }
    public static function logToTTY(autoOpenDepth:Int = -1):Void {
        imguics.DCImGui.ImGui_LogToTTY(autoOpenDepth);
    }
    public static function logToFile(autoOpenDepth:Int = -1, filename:String = null):Void {
        imguics.DCImGui.ImGui_LogToFile(autoOpenDepth, filename);
    }
    public static function logToClipboard(autoOpenDepth:Int = -1):Void {
        imguics.DCImGui.ImGui_LogToClipboard(autoOpenDepth);
    }
    public static function logFinish():Void {
        imguics.DCImGui.ImGui_LogFinish();
    }
    public static function logButtons():Void {
        imguics.DCImGui.ImGui_LogButtons();
    }
    public static function logText(text:String):Void {
        imguics.DCImGui.ImGui_LogTextUnformatted(text);
    }
    public static function beginDragDropSource(flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_BeginDragDropSource(flags);
    }
    public static function setDragDropPayload(type:String, data:Float, sz:Int, cond:Int = 0):Bool {
        return imguics.DCImGui.ImGui_SetDragDropPayload(type, imguics.ImGuiCs.ptr(data), imguics.ImGuiCs.ptr(sz), cond);
    }
    public static function endDragDropSource():Void {
        imguics.DCImGui.ImGui_EndDragDropSource();
    }
    public static function beginDragDropTarget():Bool {
        return imguics.DCImGui.ImGui_BeginDragDropTarget();
    }
    public static function acceptDragDropPayload(type:String, flags:Int = 0):ImGuiPayload {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_AcceptDragDropPayload(type, flags));
    }
    public static function endDragDropTarget():Void {
        imguics.DCImGui.ImGui_EndDragDropTarget();
    }
    public static function getDragDropPayload():ImGuiPayload {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetDragDropPayload());
    }
    public static function beginDisabled(disabled:Bool = true):Void {
        imguics.DCImGui.ImGui_BeginDisabled(disabled);
    }
    public static function endDisabled():Void {
        imguics.DCImGui.ImGui_EndDisabled();
    }
    public static function pushClipRect(clipRectMin:ImVec2, clipRectMax:ImVec2, intersectWithCurrentClipRect:Bool):Void {
        imguics.DCImGui.ImGui_PushClipRect(clipRectMin, clipRectMax, intersectWithCurrentClipRect);
    }
    public static function popClipRect():Void {
        imguics.DCImGui.ImGui_PopClipRect();
    }
    public static function setItemDefaultFocus():Void {
        imguics.DCImGui.ImGui_SetItemDefaultFocus();
    }
    public static function setKeyboardFocusHereEx(offset:Int = 0):Void {
        imguics.DCImGui.ImGui_SetKeyboardFocusHereEx(offset);
    }
    public static function setKeyboardFocusHere():Void {
        imguics.DCImGui.ImGui_SetKeyboardFocusHere();
    }
    public static function setNavCursorVisible(visible:Bool):Void {
        imguics.DCImGui.ImGui_SetNavCursorVisible(visible);
    }
    public static function setNextItemAllowOverlap():Void {
        imguics.DCImGui.ImGui_SetNextItemAllowOverlap();
    }
    public static function isItemHovered(flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_IsItemHovered(flags);
    }
    public static function isItemActive():Bool {
        return imguics.DCImGui.ImGui_IsItemActive();
    }
    public static function isItemFocused():Bool {
        return imguics.DCImGui.ImGui_IsItemFocused();
    }
    public static function isItemClickedEx(mouseButton:Int = 0):Bool {
        return imguics.DCImGui.ImGui_IsItemClickedEx(mouseButton);
    }
    public static function isItemClicked():Bool {
        return imguics.DCImGui.ImGui_IsItemClicked();
    }
    public static function isItemVisible():Bool {
        return imguics.DCImGui.ImGui_IsItemVisible();
    }
    public static function isItemEdited():Bool {
        return imguics.DCImGui.ImGui_IsItemEdited();
    }
    public static function isItemActivated():Bool {
        return imguics.DCImGui.ImGui_IsItemActivated();
    }
    public static function isItemDeactivated():Bool {
        return imguics.DCImGui.ImGui_IsItemDeactivated();
    }
    public static function isItemDeactivatedAfterEdit():Bool {
        return imguics.DCImGui.ImGui_IsItemDeactivatedAfterEdit();
    }
    public static function isItemToggledOpen():Bool {
        return imguics.DCImGui.ImGui_IsItemToggledOpen();
    }
    public static function isAnyItemHovered():Bool {
        return imguics.DCImGui.ImGui_IsAnyItemHovered();
    }
    public static function isAnyItemActive():Bool {
        return imguics.DCImGui.ImGui_IsAnyItemActive();
    }
    public static function isAnyItemFocused():Bool {
        return imguics.DCImGui.ImGui_IsAnyItemFocused();
    }
    public static function getItemID():Int {
        return imguics.DCImGui.ImGui_GetItemID();
    }
    public static function getItemRectMin():ImVec2 {
        return imguics.DCImGui.ImGui_GetItemRectMin();
    }
    public static function getItemRectMax():ImVec2 {
        return imguics.DCImGui.ImGui_GetItemRectMax();
    }
    public static function getItemRectSize():ImVec2 {
        return imguics.DCImGui.ImGui_GetItemRectSize();
    }
    public static function getItemFlags():Int {
        return imguics.DCImGui.ImGui_GetItemFlags();
    }
    public static function getMainViewport():ImGuiViewport {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetMainViewport());
    }
    public static function getBackgroundDrawListEx(viewport:ImGuiViewport = 0):ImDrawList {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetBackgroundDrawListEx(imguics.ImGuiCs.ptr(viewport)));
    }
    public static function getBackgroundDrawList():ImDrawList {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetBackgroundDrawList());
    }
    public static function getForegroundDrawListEx(viewport:ImGuiViewport = 0):ImDrawList {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetForegroundDrawListEx(imguics.ImGuiCs.ptr(viewport)));
    }
    public static function getForegroundDrawList():ImDrawList {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetForegroundDrawList());
    }
    public static function isRectVisibleBySize(size:ImVec2):Bool {
        return imguics.DCImGui.ImGui_IsRectVisibleBySize(size);
    }
    public static function isRectVisible(rectMin:ImVec2, rectMax:ImVec2):Bool {
        return imguics.DCImGui.ImGui_IsRectVisible(rectMin, rectMax);
    }
    public static function getTime():Float {
        return imguics.DCImGui.ImGui_GetTime();
    }
    public static function getFrameCount():Int {
        return imguics.DCImGui.ImGui_GetFrameCount();
    }
    public static function getDrawListSharedData():ImDrawListSharedData {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetDrawListSharedData());
    }
    public static function getStyleColorName(idx:Int):String {
        return imguics.ImGuiCs.readString(imguics.DCImGui.ImGui_GetStyleColorName(idx));
    }
    public static function setStateStorage(storage:ImGuiStorage):Void {
        imguics.DCImGui.ImGui_SetStateStorage(imguics.ImGuiCs.ptr(storage));
    }
    public static function getStateStorage():ImGuiStorage {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_GetStateStorage());
    }
    public static function calcTextSizeEx(text:String, textEnd:String = null, hideTextAfterDoubleHash:Bool = false, wrapWidth:Float = -1.0):ImVec2 {
        return imguics.DCImGui.ImGui_CalcTextSizeEx(text, textEnd, hideTextAfterDoubleHash, wrapWidth);
    }
    public static function calcTextSize(text:String):ImVec2 {
        return imguics.DCImGui.ImGui_CalcTextSize(text);
    }
    public static function colorConvertU32ToFloat4(in_:Int):ImVec4 {
        return imguics.DCImGui.ImGui_ColorConvertU32ToFloat4(in_);
    }
    public static function colorConvertFloat4ToU32(in_:ImVec4):Int {
        return imguics.DCImGui.ImGui_ColorConvertFloat4ToU32(in_);
    }
    public static function colorConvertRGBtoHSV(r:Float, g:Float, b:Float, outH:Float, outS:Float, outV:Float):Void {
        imguics.DCImGui.ImGui_ColorConvertRGBtoHSV(r, g, b, imguics.ImGuiCs.ptr(outH), imguics.ImGuiCs.ptr(outS), imguics.ImGuiCs.ptr(outV));
    }
    public static function colorConvertHSVtoRGB(h:Float, s:Float, v:Float, outR:Float, outG:Float, outB:Float):Void {
        imguics.DCImGui.ImGui_ColorConvertHSVtoRGB(h, s, v, imguics.ImGuiCs.ptr(outR), imguics.ImGuiCs.ptr(outG), imguics.ImGuiCs.ptr(outB));
    }
    public static function isKeyDown(key:Int):Bool {
        return imguics.DCImGui.ImGui_IsKeyDown(key);
    }
    public static function isKeyPressedEx(key:Int, repeat:Bool = true):Bool {
        return imguics.DCImGui.ImGui_IsKeyPressedEx(key, repeat);
    }
    public static function isKeyPressed(key:Int):Bool {
        return imguics.DCImGui.ImGui_IsKeyPressed(key);
    }
    public static function isKeyReleased(key:Int):Bool {
        return imguics.DCImGui.ImGui_IsKeyReleased(key);
    }
    public static function isKeyChordPressed(keyChord:Int):Bool {
        return imguics.DCImGui.ImGui_IsKeyChordPressed(keyChord);
    }
    public static function getKeyPressedAmount(key:Int, repeatDelay:Float, rate:Float):Int {
        return imguics.DCImGui.ImGui_GetKeyPressedAmount(key, repeatDelay, rate);
    }
    public static function getKeyName(key:Int):String {
        return imguics.ImGuiCs.readString(imguics.DCImGui.ImGui_GetKeyName(key));
    }
    public static function setNextFrameWantCaptureKeyboard(wantCaptureKeyboard:Bool):Void {
        imguics.DCImGui.ImGui_SetNextFrameWantCaptureKeyboard(wantCaptureKeyboard);
    }
    public static function shortcut(keyChord:Int, flags:Int = 0):Bool {
        return imguics.DCImGui.ImGui_Shortcut(keyChord, flags);
    }
    public static function setNextItemShortcut(keyChord:Int, flags:Int = 0):Void {
        imguics.DCImGui.ImGui_SetNextItemShortcut(keyChord, flags);
    }
    public static function setItemKeyOwner(key:Int):Bool {
        return imguics.DCImGui.ImGui_SetItemKeyOwner(key);
    }
    public static function isMouseDown(button:Int):Bool {
        return imguics.DCImGui.ImGui_IsMouseDown(button);
    }
    public static function isMouseClickedEx(button:Int, repeat:Bool = false):Bool {
        return imguics.DCImGui.ImGui_IsMouseClickedEx(button, repeat);
    }
    public static function isMouseClicked(button:Int):Bool {
        return imguics.DCImGui.ImGui_IsMouseClicked(button);
    }
    public static function isMouseReleased(button:Int):Bool {
        return imguics.DCImGui.ImGui_IsMouseReleased(button);
    }
    public static function isMouseDoubleClicked(button:Int):Bool {
        return imguics.DCImGui.ImGui_IsMouseDoubleClicked(button);
    }
    public static function isMouseReleasedWithDelay(button:Int, delay:Float):Bool {
        return imguics.DCImGui.ImGui_IsMouseReleasedWithDelay(button, delay);
    }
    public static function getMouseClickedCount(button:Int):Int {
        return imguics.DCImGui.ImGui_GetMouseClickedCount(button);
    }
    public static function isMouseHoveringRectEx(rMin:ImVec2, rMax:ImVec2, clip:Bool = true):Bool {
        return imguics.DCImGui.ImGui_IsMouseHoveringRectEx(rMin, rMax, clip);
    }
    public static function isMouseHoveringRect(rMin:ImVec2, rMax:ImVec2):Bool {
        return imguics.DCImGui.ImGui_IsMouseHoveringRect(rMin, rMax);
    }
    public static function isMousePosValid(mousePos:Float = 0):Bool {
        return imguics.DCImGui.ImGui_IsMousePosValid(imguics.ImGuiCs.ptr(mousePos));
    }
    public static function isAnyMouseDown():Bool {
        return imguics.DCImGui.ImGui_IsAnyMouseDown();
    }
    public static function getMousePos():ImVec2 {
        return imguics.DCImGui.ImGui_GetMousePos();
    }
    public static function getMousePosOnOpeningCurrentPopup():ImVec2 {
        return imguics.DCImGui.ImGui_GetMousePosOnOpeningCurrentPopup();
    }
    public static function isMouseDragging(button:Int, lockThreshold:Float = -1.0):Bool {
        return imguics.DCImGui.ImGui_IsMouseDragging(button, lockThreshold);
    }
    public static function getMouseDragDelta(button:Int = 0, lockThreshold:Float = -1.0):ImVec2 {
        return imguics.DCImGui.ImGui_GetMouseDragDelta(button, lockThreshold);
    }
    public static function resetMouseDragDeltaEx(button:Int = 0):Void {
        imguics.DCImGui.ImGui_ResetMouseDragDeltaEx(button);
    }
    public static function resetMouseDragDelta():Void {
        imguics.DCImGui.ImGui_ResetMouseDragDelta();
    }
    public static function getMouseCursor():Int {
        return imguics.DCImGui.ImGui_GetMouseCursor();
    }
    public static function setMouseCursor(cursorType:Int):Void {
        imguics.DCImGui.ImGui_SetMouseCursor(cursorType);
    }
    public static function setNextFrameWantCaptureMouse(wantCaptureMouse:Bool):Void {
        imguics.DCImGui.ImGui_SetNextFrameWantCaptureMouse(wantCaptureMouse);
    }
    public static function getClipboardText():String {
        return imguics.ImGuiCs.readString(imguics.DCImGui.ImGui_GetClipboardText());
    }
    public static function setClipboardText(text:String):Void {
        imguics.DCImGui.ImGui_SetClipboardText(text);
    }
    public static function loadIniSettingsFromDisk(iniFilename:String):Void {
        imguics.DCImGui.ImGui_LoadIniSettingsFromDisk(iniFilename);
    }
    public static function loadIniSettingsFromMemory(iniData:String, iniSize:Int):Void {
        imguics.DCImGui.ImGui_LoadIniSettingsFromMemory(iniData, imguics.ImGuiCs.ptr(iniSize));
    }
    public static function saveIniSettingsToDisk(iniFilename:String):Void {
        imguics.DCImGui.ImGui_SaveIniSettingsToDisk(iniFilename);
    }
    public static function saveIniSettingsToMemory(outIniSize:Float = 0):String {
        return imguics.ImGuiCs.readString(imguics.DCImGui.ImGui_SaveIniSettingsToMemory(imguics.ImGuiCs.ptr(outIniSize)));
    }
    public static function debugTextEncoding(text:String):Void {
        imguics.DCImGui.ImGui_DebugTextEncoding(text);
    }
    public static function debugFlashStyleColor(idx:Int):Void {
        imguics.DCImGui.ImGui_DebugFlashStyleColor(idx);
    }
    public static function debugStartItemPicker():Void {
        imguics.DCImGui.ImGui_DebugStartItemPicker();
    }
    public static function debugCheckVersionAndDataLayout(versionStr:String, szIo:Int, szStyle:Int, szVec2:Int, szVec4:Int, szDrawvert:Int, szDrawidx:Int):Bool {
        return imguics.DCImGui.ImGui_DebugCheckVersionAndDataLayout(versionStr, imguics.ImGuiCs.ptr(szIo), imguics.ImGuiCs.ptr(szStyle), imguics.ImGuiCs.ptr(szVec2), imguics.ImGuiCs.ptr(szVec4), imguics.ImGuiCs.ptr(szDrawvert), imguics.ImGuiCs.ptr(szDrawidx));
    }
    public static function debugLog(text:String):Void {
        imguics.DCImGui.ImGui_DebugLogUnformatted(text);
    }
    public static function setAllocatorFunctions(allocFunc:Float, freeFunc:Float, userData:Float = 0):Void {
        imguics.DCImGui.ImGui_SetAllocatorFunctions(imguics.ImGuiCs.ptr(allocFunc), imguics.ImGuiCs.ptr(freeFunc), imguics.ImGuiCs.ptr(userData));
    }
    public static function getAllocatorFunctions(pAllocFunc:Float, pFreeFunc:Float, pUserData:Float):Void {
        imguics.DCImGui.ImGui_GetAllocatorFunctions(imguics.ImGuiCs.ptr(pAllocFunc), imguics.ImGuiCs.ptr(pFreeFunc), imguics.ImGuiCs.ptr(pUserData));
    }
    public static function memAlloc(size:Int):Float {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_MemAlloc(imguics.ImGuiCs.ptr(size)));
    }
    public static function memFree(ptr:Float):Void {
        imguics.DCImGui.ImGui_MemFree(imguics.ImGuiCs.ptr(ptr));
    }
    public static function updatePlatformWindows():Void {
        imguics.DCImGui.ImGui_UpdatePlatformWindows();
    }
    public static function renderPlatformWindowsDefaultEx(platformRenderArg:Float = 0, rendererRenderArg:Float = 0):Void {
        imguics.DCImGui.ImGui_RenderPlatformWindowsDefaultEx(imguics.ImGuiCs.ptr(platformRenderArg), imguics.ImGuiCs.ptr(rendererRenderArg));
    }
    public static function renderPlatformWindowsDefault():Void {
        imguics.DCImGui.ImGui_RenderPlatformWindowsDefault();
    }
    public static function destroyPlatformWindows():Void {
        imguics.DCImGui.ImGui_DestroyPlatformWindows();
    }
    public static function findViewportByID(viewportId:Int):ImGuiViewport {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_FindViewportByID(viewportId));
    }
    public static function findViewportByPlatformHandle(platformHandle:Float):ImGuiViewport {
        return imguics.ImGuiCs.addr(imguics.DCImGui.ImGui_FindViewportByPlatformHandle(imguics.ImGuiCs.ptr(platformHandle)));
    }
    public static function imVector_Construct(vector:Float):Void {
        imguics.DCImGui.ImVector_Construct(imguics.ImGuiCs.ptr(vector));
    }
    public static function imVector_Destruct(vector:Float):Void {
        imguics.DCImGui.ImVector_Destruct(imguics.ImGuiCs.ptr(vector));
    }

}
