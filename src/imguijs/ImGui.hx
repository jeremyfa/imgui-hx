package imguijs;

// =============================================================================
// GENERATED FILE - do not edit by hand (see gen/Gen.hx).
// js-target bindings over the emscripten-built dcimgui module (dcjs_* glue):
// structs are wasm heap addresses wrapped in Int abstracts with field props;
// ImVec2/ImVec4/ImTextureRef are value classes; strings marshal through a
// bump scratch (see ImGuiJs). Load the module and call ImGuiJs.init() first.
// =============================================================================

typedef ImGuiOpaqueCallback = Int;

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

class ImVec2 {
    public var x:Float;
    public var y:Float;
    public inline function new(x:Float, y:Float) { this.x = x; this.y = y; }
    inline public static function make(x:Float, y:Float):ImVec2 return new ImVec2(x, y);
}

class ImVec4 {
    public var x:Float;
    public var y:Float;
    public var z:Float;
    public var w:Float;
    public inline function new(x:Float, y:Float, z:Float, w:Float) { this.x = x; this.y = y; this.z = z; this.w = w; }
    inline public static function make(x:Float, y:Float, z:Float, w:Float):ImVec4 return new ImVec4(x, y, z, w);
}

class ImTextureRef {
    public var _TexData:Int;
    public var _TexID:Float;
    public inline function new(texData:Int, texID:Float) { this._TexData = texData; this._TexID = texID; }
    inline public static function fromID(texID:Float):ImTextureRef return new ImTextureRef(0, texID);
    inline public static function fromParts(texData:Int, texID:Float):ImTextureRef return new ImTextureRef(texData, texID);
}

abstract ImDrawListSharedData(Int) from Int to Int {
}

abstract ImFontAtlasBuilder(Int) from Int to Int {
}

abstract ImFontLoader(Int) from Int to Int {
}

abstract ImGuiContext(Int) from Int to Int {
}

abstract ImGuiTableSortSpecs(Int) from Int to Int {
    public var specs(get, set):ImGuiTableColumnSortSpecs;
    inline function get_specs():ImGuiTableColumnSortSpecs { return imguijs.ImGuiJs.M._dcjs_ImGuiTableSortSpecs_get_Specs(this); }
    inline function set_specs(v:ImGuiTableColumnSortSpecs):ImGuiTableColumnSortSpecs { imguijs.ImGuiJs.M._dcjs_ImGuiTableSortSpecs_set_Specs(this, v); return v; }
    public var specsCount(get, set):Int;
    inline function get_specsCount():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiTableSortSpecs_get_SpecsCount(this); }
    inline function set_specsCount(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiTableSortSpecs_set_SpecsCount(this, v); return v; }
    public var specsDirty(get, set):Bool;
    inline function get_specsDirty():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiTableSortSpecs_get_SpecsDirty(this)) != 0; }
    inline function set_specsDirty(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiTableSortSpecs_set_SpecsDirty(this, v); return v; }
    /** sizeof(ImGuiTableSortSpecs) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiTableSortSpecs(); }
}

abstract ImGuiTableColumnSortSpecs(Int) from Int to Int {
    public var columnUserID(get, set):Int;
    inline function get_columnUserID():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiTableColumnSortSpecs_get_ColumnUserID(this); }
    inline function set_columnUserID(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiTableColumnSortSpecs_set_ColumnUserID(this, v); return v; }
    public var columnIndex(get, set):Int;
    inline function get_columnIndex():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiTableColumnSortSpecs_get_ColumnIndex(this); }
    inline function set_columnIndex(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiTableColumnSortSpecs_set_ColumnIndex(this, v); return v; }
    public var sortOrder(get, set):Int;
    inline function get_sortOrder():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiTableColumnSortSpecs_get_SortOrder(this); }
    inline function set_sortOrder(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiTableColumnSortSpecs_set_SortOrder(this, v); return v; }
    public var sortDirection(get, set):Int;
    inline function get_sortDirection():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiTableColumnSortSpecs_get_SortDirection(this); }
    inline function set_sortDirection(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiTableColumnSortSpecs_set_SortDirection(this, v); return v; }
    /** sizeof(ImGuiTableColumnSortSpecs) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiTableColumnSortSpecs(); }
}

abstract ImVector_ImGuiTextRange(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiTextRange_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiTextRange_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiTextRange_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiTextRange_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiTextRange_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiTextRange_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImGuiTextRange) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImGuiTextRange(); }
}

abstract ImVector_char(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_char_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_char_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_char_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_char_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_char_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_char_set_Data(this, v); return v; }
    /** sizeof(ImVector_char) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_char(); }
}

abstract ImVector_ImGuiStoragePair(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiStoragePair_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiStoragePair_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiStoragePair_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiStoragePair_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiStoragePair_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiStoragePair_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImGuiStoragePair) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImGuiStoragePair(); }
}

abstract ImVector_ImGuiSelectionRequest(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiSelectionRequest_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiSelectionRequest_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiSelectionRequest_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiSelectionRequest_set_Capacity(this, v); return v; }
    public var data(get, set):ImGuiSelectionRequest;
    inline function get_data():ImGuiSelectionRequest { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiSelectionRequest_get_Data(this); }
    inline function set_data(v:ImGuiSelectionRequest):ImGuiSelectionRequest { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiSelectionRequest_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImGuiSelectionRequest) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImGuiSelectionRequest(); }
}

abstract ImVector_ImDrawChannel(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawChannel_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawChannel_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawChannel_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawChannel_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawChannel_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawChannel_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImDrawChannel) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImDrawChannel(); }
}

abstract ImVector_ImDrawCmd(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawCmd_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawCmd_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawCmd_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawCmd_set_Capacity(this, v); return v; }
    public var data(get, set):ImDrawCmd;
    inline function get_data():ImDrawCmd { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawCmd_get_Data(this); }
    inline function set_data(v:ImDrawCmd):ImDrawCmd { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawCmd_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImDrawCmd) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImDrawCmd(); }
}

abstract ImVector_ImDrawIdx(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawIdx_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawIdx_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawIdx_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawIdx_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawIdx_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawIdx_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImDrawIdx) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImDrawIdx(); }
}

abstract ImVector_ImDrawVert(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawVert_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawVert_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawVert_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawVert_set_Capacity(this, v); return v; }
    public var data(get, set):ImDrawVert;
    inline function get_data():ImDrawVert { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawVert_get_Data(this); }
    inline function set_data(v:ImDrawVert):ImDrawVert { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawVert_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImDrawVert) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImDrawVert(); }
}

abstract ImVector_ImVec2(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImVec2_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImVec2_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImVec2_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImVec2_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImVec2_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImVec2_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImVec2) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImVec2(); }
}

abstract ImVector_ImVec4(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImVec4_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImVec4_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImVec4_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImVec4_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImVec4_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImVec4_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImVec4) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImVec4(); }
}

abstract ImVector_ImTextureRef(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRef_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRef_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRef_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRef_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRef_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRef_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImTextureRef) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImTextureRef(); }
}

abstract ImVector_ImU8(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImU8_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImU8_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImU8_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImU8_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImU8_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImU8_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImU8) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImU8(); }
}

abstract ImVector_ImDrawListPtr(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListPtr_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListPtr_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListPtr_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListPtr_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListPtr_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListPtr_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImDrawListPtr) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImDrawListPtr(); }
}

abstract ImVector_ImTextureRect(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRect_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRect_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRect_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRect_set_Capacity(this, v); return v; }
    public var data(get, set):ImTextureRect;
    inline function get_data():ImTextureRect { return imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRect_get_Data(this); }
    inline function set_data(v:ImTextureRect):ImTextureRect { imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureRect_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImTextureRect) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImTextureRect(); }
}

abstract ImVector_ImU32(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImU32_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImU32_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImU32_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImU32_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImU32_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImU32_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImU32) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImU32(); }
}

abstract ImVector_ImWchar(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImWchar_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImWchar_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImWchar_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImWchar_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImWchar_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImWchar_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImWchar) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImWchar(); }
}

abstract ImVector_ImFontPtr(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontPtr_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontPtr_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontPtr_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontPtr_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontPtr_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontPtr_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImFontPtr) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImFontPtr(); }
}

abstract ImVector_ImFontConfig(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfig_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfig_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfig_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfig_set_Capacity(this, v); return v; }
    public var data(get, set):ImFontConfig;
    inline function get_data():ImFontConfig { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfig_get_Data(this); }
    inline function set_data(v:ImFontConfig):ImFontConfig { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfig_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImFontConfig) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImFontConfig(); }
}

abstract ImVector_ImDrawListSharedDataPtr(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListSharedDataPtr_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListSharedDataPtr_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListSharedDataPtr_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListSharedDataPtr_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListSharedDataPtr_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImDrawListSharedDataPtr_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImDrawListSharedDataPtr) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImDrawListSharedDataPtr(); }
}

abstract ImVector_float(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_float_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_float_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_float_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_float_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_float_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_float_set_Data(this, v); return v; }
    /** sizeof(ImVector_float) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_float(); }
}

abstract ImVector_ImU16(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImU16_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImU16_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImU16_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImU16_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImU16_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImU16_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImU16) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImU16(); }
}

abstract ImVector_ImFontGlyph(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontGlyph_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontGlyph_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontGlyph_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontGlyph_set_Capacity(this, v); return v; }
    public var data(get, set):ImFontGlyph;
    inline function get_data():ImFontGlyph { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontGlyph_get_Data(this); }
    inline function set_data(v:ImFontGlyph):ImFontGlyph { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontGlyph_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImFontGlyph) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImFontGlyph(); }
}

abstract ImVector_ImFontConfigPtr(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfigPtr_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfigPtr_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfigPtr_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfigPtr_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfigPtr_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImFontConfigPtr_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImFontConfigPtr) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImFontConfigPtr(); }
}

abstract ImVector_ImGuiPlatformMonitor(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiPlatformMonitor_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiPlatformMonitor_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiPlatformMonitor_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiPlatformMonitor_set_Capacity(this, v); return v; }
    public var data(get, set):ImGuiPlatformMonitor;
    inline function get_data():ImGuiPlatformMonitor { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiPlatformMonitor_get_Data(this); }
    inline function set_data(v:ImGuiPlatformMonitor):ImGuiPlatformMonitor { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiPlatformMonitor_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImGuiPlatformMonitor) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImGuiPlatformMonitor(); }
}

abstract ImVector_ImTextureDataPtr(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureDataPtr_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureDataPtr_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureDataPtr_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureDataPtr_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureDataPtr_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImTextureDataPtr_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImTextureDataPtr) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImTextureDataPtr(); }
}

abstract ImVector_ImGuiViewportPtr(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiViewportPtr_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiViewportPtr_set_Size(this, v); return v; }
    public var capacity(get, set):Int;
    inline function get_capacity():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiViewportPtr_get_Capacity(this); }
    inline function set_capacity(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiViewportPtr_set_Capacity(this, v); return v; }
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiViewportPtr_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImVector_ImGuiViewportPtr_set_Data(this, v); return v; }
    /** sizeof(ImVector_ImGuiViewportPtr) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImVector_ImGuiViewportPtr(); }
}

abstract ImGuiStyle(Int) from Int to Int {
    public var fontSizeBase(get, set):Float;
    inline function get_fontSizeBase():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_FontSizeBase(this); }
    inline function set_fontSizeBase(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_FontSizeBase(this, v); return v; }
    public var fontScaleMain(get, set):Float;
    inline function get_fontScaleMain():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_FontScaleMain(this); }
    inline function set_fontScaleMain(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_FontScaleMain(this, v); return v; }
    public var fontScaleDpi(get, set):Float;
    inline function get_fontScaleDpi():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_FontScaleDpi(this); }
    inline function set_fontScaleDpi(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_FontScaleDpi(this, v); return v; }
    public var alpha(get, set):Float;
    inline function get_alpha():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_Alpha(this); }
    inline function set_alpha(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_Alpha(this, v); return v; }
    public var disabledAlpha(get, set):Float;
    inline function get_disabledAlpha():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_DisabledAlpha(this); }
    inline function set_disabledAlpha(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_DisabledAlpha(this, v); return v; }
    public var windowPadding(get, set):ImVec2;
    inline function get_windowPadding():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_WindowPadding(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_windowPadding(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_WindowPadding(this, v.x, v.y); return v; }
    public var windowRounding(get, set):Float;
    inline function get_windowRounding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_WindowRounding(this); }
    inline function set_windowRounding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_WindowRounding(this, v); return v; }
    public var windowBorderSize(get, set):Float;
    inline function get_windowBorderSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_WindowBorderSize(this); }
    inline function set_windowBorderSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_WindowBorderSize(this, v); return v; }
    public var windowBorderHoverPadding(get, set):Float;
    inline function get_windowBorderHoverPadding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_WindowBorderHoverPadding(this); }
    inline function set_windowBorderHoverPadding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_WindowBorderHoverPadding(this, v); return v; }
    public var windowMinSize(get, set):ImVec2;
    inline function get_windowMinSize():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_WindowMinSize(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_windowMinSize(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_WindowMinSize(this, v.x, v.y); return v; }
    public var windowTitleAlign(get, set):ImVec2;
    inline function get_windowTitleAlign():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_WindowTitleAlign(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_windowTitleAlign(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_WindowTitleAlign(this, v.x, v.y); return v; }
    public var windowMenuButtonPosition(get, set):Int;
    inline function get_windowMenuButtonPosition():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_WindowMenuButtonPosition(this); }
    inline function set_windowMenuButtonPosition(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_WindowMenuButtonPosition(this, v); return v; }
    public var childRounding(get, set):Float;
    inline function get_childRounding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ChildRounding(this); }
    inline function set_childRounding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ChildRounding(this, v); return v; }
    public var childBorderSize(get, set):Float;
    inline function get_childBorderSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ChildBorderSize(this); }
    inline function set_childBorderSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ChildBorderSize(this, v); return v; }
    public var popupRounding(get, set):Float;
    inline function get_popupRounding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_PopupRounding(this); }
    inline function set_popupRounding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_PopupRounding(this, v); return v; }
    public var popupBorderSize(get, set):Float;
    inline function get_popupBorderSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_PopupBorderSize(this); }
    inline function set_popupBorderSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_PopupBorderSize(this, v); return v; }
    public var framePadding(get, set):ImVec2;
    inline function get_framePadding():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_FramePadding(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_framePadding(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_FramePadding(this, v.x, v.y); return v; }
    public var frameRounding(get, set):Float;
    inline function get_frameRounding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_FrameRounding(this); }
    inline function set_frameRounding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_FrameRounding(this, v); return v; }
    public var frameBorderSize(get, set):Float;
    inline function get_frameBorderSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_FrameBorderSize(this); }
    inline function set_frameBorderSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_FrameBorderSize(this, v); return v; }
    public var itemSpacing(get, set):ImVec2;
    inline function get_itemSpacing():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ItemSpacing(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_itemSpacing(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ItemSpacing(this, v.x, v.y); return v; }
    public var itemInnerSpacing(get, set):ImVec2;
    inline function get_itemInnerSpacing():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ItemInnerSpacing(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_itemInnerSpacing(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ItemInnerSpacing(this, v.x, v.y); return v; }
    public var cellPadding(get, set):ImVec2;
    inline function get_cellPadding():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_CellPadding(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_cellPadding(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_CellPadding(this, v.x, v.y); return v; }
    public var touchExtraPadding(get, set):ImVec2;
    inline function get_touchExtraPadding():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TouchExtraPadding(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_touchExtraPadding(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TouchExtraPadding(this, v.x, v.y); return v; }
    public var indentSpacing(get, set):Float;
    inline function get_indentSpacing():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_IndentSpacing(this); }
    inline function set_indentSpacing(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_IndentSpacing(this, v); return v; }
    public var columnsMinSpacing(get, set):Float;
    inline function get_columnsMinSpacing():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ColumnsMinSpacing(this); }
    inline function set_columnsMinSpacing(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ColumnsMinSpacing(this, v); return v; }
    public var scrollbarSize(get, set):Float;
    inline function get_scrollbarSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ScrollbarSize(this); }
    inline function set_scrollbarSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ScrollbarSize(this, v); return v; }
    public var scrollbarRounding(get, set):Float;
    inline function get_scrollbarRounding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ScrollbarRounding(this); }
    inline function set_scrollbarRounding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ScrollbarRounding(this, v); return v; }
    public var scrollbarPadding(get, set):Float;
    inline function get_scrollbarPadding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ScrollbarPadding(this); }
    inline function set_scrollbarPadding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ScrollbarPadding(this, v); return v; }
    public var grabMinSize(get, set):Float;
    inline function get_grabMinSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_GrabMinSize(this); }
    inline function set_grabMinSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_GrabMinSize(this, v); return v; }
    public var grabRounding(get, set):Float;
    inline function get_grabRounding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_GrabRounding(this); }
    inline function set_grabRounding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_GrabRounding(this, v); return v; }
    public var logSliderDeadzone(get, set):Float;
    inline function get_logSliderDeadzone():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_LogSliderDeadzone(this); }
    inline function set_logSliderDeadzone(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_LogSliderDeadzone(this, v); return v; }
    public var imageRounding(get, set):Float;
    inline function get_imageRounding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ImageRounding(this); }
    inline function set_imageRounding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ImageRounding(this, v); return v; }
    public var imageBorderSize(get, set):Float;
    inline function get_imageBorderSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ImageBorderSize(this); }
    inline function set_imageBorderSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ImageBorderSize(this, v); return v; }
    public var tabRounding(get, set):Float;
    inline function get_tabRounding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TabRounding(this); }
    inline function set_tabRounding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TabRounding(this, v); return v; }
    public var tabBorderSize(get, set):Float;
    inline function get_tabBorderSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TabBorderSize(this); }
    inline function set_tabBorderSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TabBorderSize(this, v); return v; }
    public var tabMinWidthBase(get, set):Float;
    inline function get_tabMinWidthBase():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TabMinWidthBase(this); }
    inline function set_tabMinWidthBase(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TabMinWidthBase(this, v); return v; }
    public var tabMinWidthShrink(get, set):Float;
    inline function get_tabMinWidthShrink():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TabMinWidthShrink(this); }
    inline function set_tabMinWidthShrink(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TabMinWidthShrink(this, v); return v; }
    public var tabCloseButtonMinWidthSelected(get, set):Float;
    inline function get_tabCloseButtonMinWidthSelected():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TabCloseButtonMinWidthSelected(this); }
    inline function set_tabCloseButtonMinWidthSelected(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TabCloseButtonMinWidthSelected(this, v); return v; }
    public var tabCloseButtonMinWidthUnselected(get, set):Float;
    inline function get_tabCloseButtonMinWidthUnselected():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TabCloseButtonMinWidthUnselected(this); }
    inline function set_tabCloseButtonMinWidthUnselected(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TabCloseButtonMinWidthUnselected(this, v); return v; }
    public var tabBarBorderSize(get, set):Float;
    inline function get_tabBarBorderSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TabBarBorderSize(this); }
    inline function set_tabBarBorderSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TabBarBorderSize(this, v); return v; }
    public var tabBarOverlineSize(get, set):Float;
    inline function get_tabBarOverlineSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TabBarOverlineSize(this); }
    inline function set_tabBarOverlineSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TabBarOverlineSize(this, v); return v; }
    public var tableAngledHeadersAngle(get, set):Float;
    inline function get_tableAngledHeadersAngle():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TableAngledHeadersAngle(this); }
    inline function set_tableAngledHeadersAngle(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TableAngledHeadersAngle(this, v); return v; }
    public var tableAngledHeadersTextAlign(get, set):ImVec2;
    inline function get_tableAngledHeadersTextAlign():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TableAngledHeadersTextAlign(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_tableAngledHeadersTextAlign(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TableAngledHeadersTextAlign(this, v.x, v.y); return v; }
    public var treeLinesFlags(get, set):Int;
    inline function get_treeLinesFlags():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TreeLinesFlags(this); }
    inline function set_treeLinesFlags(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TreeLinesFlags(this, v); return v; }
    public var treeLinesSize(get, set):Float;
    inline function get_treeLinesSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TreeLinesSize(this); }
    inline function set_treeLinesSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TreeLinesSize(this, v); return v; }
    public var treeLinesRounding(get, set):Float;
    inline function get_treeLinesRounding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_TreeLinesRounding(this); }
    inline function set_treeLinesRounding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_TreeLinesRounding(this, v); return v; }
    public var dragDropTargetRounding(get, set):Float;
    inline function get_dragDropTargetRounding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_DragDropTargetRounding(this); }
    inline function set_dragDropTargetRounding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_DragDropTargetRounding(this, v); return v; }
    public var dragDropTargetBorderSize(get, set):Float;
    inline function get_dragDropTargetBorderSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_DragDropTargetBorderSize(this); }
    inline function set_dragDropTargetBorderSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_DragDropTargetBorderSize(this, v); return v; }
    public var dragDropTargetPadding(get, set):Float;
    inline function get_dragDropTargetPadding():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_DragDropTargetPadding(this); }
    inline function set_dragDropTargetPadding(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_DragDropTargetPadding(this, v); return v; }
    public var colorMarkerSize(get, set):Float;
    inline function get_colorMarkerSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ColorMarkerSize(this); }
    inline function set_colorMarkerSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ColorMarkerSize(this, v); return v; }
    public var colorButtonPosition(get, set):Int;
    inline function get_colorButtonPosition():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ColorButtonPosition(this); }
    inline function set_colorButtonPosition(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ColorButtonPosition(this, v); return v; }
    public var buttonTextAlign(get, set):ImVec2;
    inline function get_buttonTextAlign():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_ButtonTextAlign(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_buttonTextAlign(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_ButtonTextAlign(this, v.x, v.y); return v; }
    public var selectableTextAlign(get, set):ImVec2;
    inline function get_selectableTextAlign():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_SelectableTextAlign(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_selectableTextAlign(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_SelectableTextAlign(this, v.x, v.y); return v; }
    public var separatorSize(get, set):Float;
    inline function get_separatorSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_SeparatorSize(this); }
    inline function set_separatorSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_SeparatorSize(this, v); return v; }
    public var separatorTextBorderSize(get, set):Float;
    inline function get_separatorTextBorderSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_SeparatorTextBorderSize(this); }
    inline function set_separatorTextBorderSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_SeparatorTextBorderSize(this, v); return v; }
    public var separatorTextAlign(get, set):ImVec2;
    inline function get_separatorTextAlign():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_SeparatorTextAlign(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_separatorTextAlign(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_SeparatorTextAlign(this, v.x, v.y); return v; }
    public var separatorTextPadding(get, set):ImVec2;
    inline function get_separatorTextPadding():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_SeparatorTextPadding(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_separatorTextPadding(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_SeparatorTextPadding(this, v.x, v.y); return v; }
    public var displayWindowPadding(get, set):ImVec2;
    inline function get_displayWindowPadding():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_DisplayWindowPadding(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_displayWindowPadding(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_DisplayWindowPadding(this, v.x, v.y); return v; }
    public var displaySafeAreaPadding(get, set):ImVec2;
    inline function get_displaySafeAreaPadding():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_DisplaySafeAreaPadding(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_displaySafeAreaPadding(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_DisplaySafeAreaPadding(this, v.x, v.y); return v; }
    public var dockingNodeHasCloseButton(get, set):Bool;
    inline function get_dockingNodeHasCloseButton():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_DockingNodeHasCloseButton(this)) != 0; }
    inline function set_dockingNodeHasCloseButton(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_DockingNodeHasCloseButton(this, v); return v; }
    public var dockingSeparatorSize(get, set):Float;
    inline function get_dockingSeparatorSize():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_DockingSeparatorSize(this); }
    inline function set_dockingSeparatorSize(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_DockingSeparatorSize(this, v); return v; }
    public var mouseCursorScale(get, set):Float;
    inline function get_mouseCursorScale():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_MouseCursorScale(this); }
    inline function set_mouseCursorScale(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_MouseCursorScale(this, v); return v; }
    public var antiAliasedLines(get, set):Bool;
    inline function get_antiAliasedLines():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_AntiAliasedLines(this)) != 0; }
    inline function set_antiAliasedLines(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_AntiAliasedLines(this, v); return v; }
    public var antiAliasedLinesUseTex(get, set):Bool;
    inline function get_antiAliasedLinesUseTex():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_AntiAliasedLinesUseTex(this)) != 0; }
    inline function set_antiAliasedLinesUseTex(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_AntiAliasedLinesUseTex(this, v); return v; }
    public var antiAliasedFill(get, set):Bool;
    inline function get_antiAliasedFill():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_AntiAliasedFill(this)) != 0; }
    inline function set_antiAliasedFill(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_AntiAliasedFill(this, v); return v; }
    public var curveTessellationTol(get, set):Float;
    inline function get_curveTessellationTol():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_CurveTessellationTol(this); }
    inline function set_curveTessellationTol(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_CurveTessellationTol(this, v); return v; }
    public var circleTessellationMaxError(get, set):Float;
    inline function get_circleTessellationMaxError():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_CircleTessellationMaxError(this); }
    inline function set_circleTessellationMaxError(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_CircleTessellationMaxError(this, v); return v; }
    public var hoverStationaryDelay(get, set):Float;
    inline function get_hoverStationaryDelay():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_HoverStationaryDelay(this); }
    inline function set_hoverStationaryDelay(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_HoverStationaryDelay(this, v); return v; }
    public var hoverDelayShort(get, set):Float;
    inline function get_hoverDelayShort():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_HoverDelayShort(this); }
    inline function set_hoverDelayShort(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_HoverDelayShort(this, v); return v; }
    public var hoverDelayNormal(get, set):Float;
    inline function get_hoverDelayNormal():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_HoverDelayNormal(this); }
    inline function set_hoverDelayNormal(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_HoverDelayNormal(this, v); return v; }
    public var hoverFlagsForTooltipMouse(get, set):Int;
    inline function get_hoverFlagsForTooltipMouse():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_HoverFlagsForTooltipMouse(this); }
    inline function set_hoverFlagsForTooltipMouse(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_HoverFlagsForTooltipMouse(this, v); return v; }
    public var hoverFlagsForTooltipNav(get, set):Int;
    inline function get_hoverFlagsForTooltipNav():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiStyle_get_HoverFlagsForTooltipNav(this); }
    inline function set_hoverFlagsForTooltipNav(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiStyle_set_HoverFlagsForTooltipNav(this, v); return v; }
    /** sizeof(ImGuiStyle) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiStyle(); }

    inline public static function scaleAllSizes(self:ImGuiStyle, scaleFactor:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiStyle_ScaleAllSizes(self, scaleFactor);
    }
}

abstract ImGuiIO(Int) from Int to Int {
    public var configFlags(get, set):Int;
    inline function get_configFlags():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigFlags(this); }
    inline function set_configFlags(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigFlags(this, v); return v; }
    public var backendFlags(get, set):Int;
    inline function get_backendFlags():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_BackendFlags(this); }
    inline function set_backendFlags(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_BackendFlags(this, v); return v; }
    public var displaySize(get, set):ImVec2;
    inline function get_displaySize():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_DisplaySize(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_displaySize(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_DisplaySize(this, v.x, v.y); return v; }
    public var displayFramebufferScale(get, set):ImVec2;
    inline function get_displayFramebufferScale():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_DisplayFramebufferScale(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_displayFramebufferScale(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_DisplayFramebufferScale(this, v.x, v.y); return v; }
    public var deltaTime(get, set):Float;
    inline function get_deltaTime():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_DeltaTime(this); }
    inline function set_deltaTime(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_DeltaTime(this, v); return v; }
    public var iniSavingRate(get, set):Float;
    inline function get_iniSavingRate():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_IniSavingRate(this); }
    inline function set_iniSavingRate(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_IniSavingRate(this, v); return v; }
    public var iniFilename(get, set):Int;
    inline function get_iniFilename():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_IniFilename(this); }
    inline function set_iniFilename(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_IniFilename(this, v); return v; }
    public var logFilename(get, set):Int;
    inline function get_logFilename():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_LogFilename(this); }
    inline function set_logFilename(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_LogFilename(this, v); return v; }
    public var userData(get, set):Int;
    inline function get_userData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_UserData(this); }
    inline function set_userData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_UserData(this, v); return v; }
    public var fonts(get, set):ImFontAtlas;
    inline function get_fonts():ImFontAtlas { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_Fonts(this); }
    inline function set_fonts(v:ImFontAtlas):ImFontAtlas { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_Fonts(this, v); return v; }
    public var fontDefault(get, set):ImFont;
    inline function get_fontDefault():ImFont { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_FontDefault(this); }
    inline function set_fontDefault(v:ImFont):ImFont { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_FontDefault(this, v); return v; }
    public var fontAllowUserScaling(get, set):Bool;
    inline function get_fontAllowUserScaling():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_FontAllowUserScaling(this)) != 0; }
    inline function set_fontAllowUserScaling(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_FontAllowUserScaling(this, v); return v; }
    public var configNavSwapGamepadButtons(get, set):Bool;
    inline function get_configNavSwapGamepadButtons():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigNavSwapGamepadButtons(this)) != 0; }
    inline function set_configNavSwapGamepadButtons(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigNavSwapGamepadButtons(this, v); return v; }
    public var configNavMoveSetMousePos(get, set):Bool;
    inline function get_configNavMoveSetMousePos():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigNavMoveSetMousePos(this)) != 0; }
    inline function set_configNavMoveSetMousePos(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigNavMoveSetMousePos(this, v); return v; }
    public var configNavCaptureKeyboard(get, set):Bool;
    inline function get_configNavCaptureKeyboard():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigNavCaptureKeyboard(this)) != 0; }
    inline function set_configNavCaptureKeyboard(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigNavCaptureKeyboard(this, v); return v; }
    public var configNavEscapeClearFocusItem(get, set):Bool;
    inline function get_configNavEscapeClearFocusItem():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigNavEscapeClearFocusItem(this)) != 0; }
    inline function set_configNavEscapeClearFocusItem(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigNavEscapeClearFocusItem(this, v); return v; }
    public var configNavEscapeClearFocusWindow(get, set):Bool;
    inline function get_configNavEscapeClearFocusWindow():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigNavEscapeClearFocusWindow(this)) != 0; }
    inline function set_configNavEscapeClearFocusWindow(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigNavEscapeClearFocusWindow(this, v); return v; }
    public var configNavCursorVisibleAuto(get, set):Bool;
    inline function get_configNavCursorVisibleAuto():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigNavCursorVisibleAuto(this)) != 0; }
    inline function set_configNavCursorVisibleAuto(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigNavCursorVisibleAuto(this, v); return v; }
    public var configNavCursorVisibleAlways(get, set):Bool;
    inline function get_configNavCursorVisibleAlways():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigNavCursorVisibleAlways(this)) != 0; }
    inline function set_configNavCursorVisibleAlways(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigNavCursorVisibleAlways(this, v); return v; }
    public var configDockingNoSplit(get, set):Bool;
    inline function get_configDockingNoSplit():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDockingNoSplit(this)) != 0; }
    inline function set_configDockingNoSplit(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDockingNoSplit(this, v); return v; }
    public var configDockingNoDockingOver(get, set):Bool;
    inline function get_configDockingNoDockingOver():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDockingNoDockingOver(this)) != 0; }
    inline function set_configDockingNoDockingOver(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDockingNoDockingOver(this, v); return v; }
    public var configDockingWithShift(get, set):Bool;
    inline function get_configDockingWithShift():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDockingWithShift(this)) != 0; }
    inline function set_configDockingWithShift(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDockingWithShift(this, v); return v; }
    public var configDockingAlwaysTabBar(get, set):Bool;
    inline function get_configDockingAlwaysTabBar():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDockingAlwaysTabBar(this)) != 0; }
    inline function set_configDockingAlwaysTabBar(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDockingAlwaysTabBar(this, v); return v; }
    public var configDockingTransparentPayload(get, set):Bool;
    inline function get_configDockingTransparentPayload():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDockingTransparentPayload(this)) != 0; }
    inline function set_configDockingTransparentPayload(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDockingTransparentPayload(this, v); return v; }
    public var configViewportsNoAutoMerge(get, set):Bool;
    inline function get_configViewportsNoAutoMerge():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigViewportsNoAutoMerge(this)) != 0; }
    inline function set_configViewportsNoAutoMerge(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigViewportsNoAutoMerge(this, v); return v; }
    public var configViewportsNoTaskBarIcon(get, set):Bool;
    inline function get_configViewportsNoTaskBarIcon():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigViewportsNoTaskBarIcon(this)) != 0; }
    inline function set_configViewportsNoTaskBarIcon(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigViewportsNoTaskBarIcon(this, v); return v; }
    public var configViewportsNoDecoration(get, set):Bool;
    inline function get_configViewportsNoDecoration():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigViewportsNoDecoration(this)) != 0; }
    inline function set_configViewportsNoDecoration(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigViewportsNoDecoration(this, v); return v; }
    public var configViewportsNoDefaultParent(get, set):Bool;
    inline function get_configViewportsNoDefaultParent():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigViewportsNoDefaultParent(this)) != 0; }
    inline function set_configViewportsNoDefaultParent(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigViewportsNoDefaultParent(this, v); return v; }
    public var configViewportsPlatformFocusSetsImGuiFocus(get, set):Bool;
    inline function get_configViewportsPlatformFocusSetsImGuiFocus():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigViewportsPlatformFocusSetsImGuiFocus(this)) != 0; }
    inline function set_configViewportsPlatformFocusSetsImGuiFocus(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigViewportsPlatformFocusSetsImGuiFocus(this, v); return v; }
    public var configDpiScaleFonts(get, set):Bool;
    inline function get_configDpiScaleFonts():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDpiScaleFonts(this)) != 0; }
    inline function set_configDpiScaleFonts(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDpiScaleFonts(this, v); return v; }
    public var configDpiScaleViewports(get, set):Bool;
    inline function get_configDpiScaleViewports():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDpiScaleViewports(this)) != 0; }
    inline function set_configDpiScaleViewports(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDpiScaleViewports(this, v); return v; }
    public var mouseDrawCursor(get, set):Bool;
    inline function get_mouseDrawCursor():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MouseDrawCursor(this)) != 0; }
    inline function set_mouseDrawCursor(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MouseDrawCursor(this, v); return v; }
    public var configMacOSXBehaviors(get, set):Bool;
    inline function get_configMacOSXBehaviors():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigMacOSXBehaviors(this)) != 0; }
    inline function set_configMacOSXBehaviors(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigMacOSXBehaviors(this, v); return v; }
    public var configInputTrickleEventQueue(get, set):Bool;
    inline function get_configInputTrickleEventQueue():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigInputTrickleEventQueue(this)) != 0; }
    inline function set_configInputTrickleEventQueue(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigInputTrickleEventQueue(this, v); return v; }
    public var configInputTextCursorBlink(get, set):Bool;
    inline function get_configInputTextCursorBlink():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigInputTextCursorBlink(this)) != 0; }
    inline function set_configInputTextCursorBlink(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigInputTextCursorBlink(this, v); return v; }
    public var configInputTextEnterKeepActive(get, set):Bool;
    inline function get_configInputTextEnterKeepActive():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigInputTextEnterKeepActive(this)) != 0; }
    inline function set_configInputTextEnterKeepActive(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigInputTextEnterKeepActive(this, v); return v; }
    public var configDragClickToInputText(get, set):Bool;
    inline function get_configDragClickToInputText():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDragClickToInputText(this)) != 0; }
    inline function set_configDragClickToInputText(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDragClickToInputText(this, v); return v; }
    public var configWindowsResizeFromEdges(get, set):Bool;
    inline function get_configWindowsResizeFromEdges():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigWindowsResizeFromEdges(this)) != 0; }
    inline function set_configWindowsResizeFromEdges(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigWindowsResizeFromEdges(this, v); return v; }
    public var configWindowsMoveFromTitleBarOnly(get, set):Bool;
    inline function get_configWindowsMoveFromTitleBarOnly():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigWindowsMoveFromTitleBarOnly(this)) != 0; }
    inline function set_configWindowsMoveFromTitleBarOnly(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigWindowsMoveFromTitleBarOnly(this, v); return v; }
    public var configWindowsCopyContentsWithCtrlC(get, set):Bool;
    inline function get_configWindowsCopyContentsWithCtrlC():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigWindowsCopyContentsWithCtrlC(this)) != 0; }
    inline function set_configWindowsCopyContentsWithCtrlC(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigWindowsCopyContentsWithCtrlC(this, v); return v; }
    public var configScrollbarScrollByPage(get, set):Bool;
    inline function get_configScrollbarScrollByPage():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigScrollbarScrollByPage(this)) != 0; }
    inline function set_configScrollbarScrollByPage(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigScrollbarScrollByPage(this, v); return v; }
    public var configMemoryCompactTimer(get, set):Float;
    inline function get_configMemoryCompactTimer():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigMemoryCompactTimer(this); }
    inline function set_configMemoryCompactTimer(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigMemoryCompactTimer(this, v); return v; }
    public var mouseDoubleClickTime(get, set):Float;
    inline function get_mouseDoubleClickTime():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MouseDoubleClickTime(this); }
    inline function set_mouseDoubleClickTime(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MouseDoubleClickTime(this, v); return v; }
    public var mouseDoubleClickMaxDist(get, set):Float;
    inline function get_mouseDoubleClickMaxDist():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MouseDoubleClickMaxDist(this); }
    inline function set_mouseDoubleClickMaxDist(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MouseDoubleClickMaxDist(this, v); return v; }
    public var mouseDragThreshold(get, set):Float;
    inline function get_mouseDragThreshold():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MouseDragThreshold(this); }
    inline function set_mouseDragThreshold(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MouseDragThreshold(this, v); return v; }
    public var keyRepeatDelay(get, set):Float;
    inline function get_keyRepeatDelay():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_KeyRepeatDelay(this); }
    inline function set_keyRepeatDelay(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_KeyRepeatDelay(this, v); return v; }
    public var keyRepeatRate(get, set):Float;
    inline function get_keyRepeatRate():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_KeyRepeatRate(this); }
    inline function set_keyRepeatRate(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_KeyRepeatRate(this, v); return v; }
    public var configErrorRecovery(get, set):Bool;
    inline function get_configErrorRecovery():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigErrorRecovery(this)) != 0; }
    inline function set_configErrorRecovery(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigErrorRecovery(this, v); return v; }
    public var configErrorRecoveryEnableAssert(get, set):Bool;
    inline function get_configErrorRecoveryEnableAssert():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableAssert(this)) != 0; }
    inline function set_configErrorRecoveryEnableAssert(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableAssert(this, v); return v; }
    public var configErrorRecoveryEnableDebugLog(get, set):Bool;
    inline function get_configErrorRecoveryEnableDebugLog():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableDebugLog(this)) != 0; }
    inline function set_configErrorRecoveryEnableDebugLog(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableDebugLog(this, v); return v; }
    public var configErrorRecoveryEnableTooltip(get, set):Bool;
    inline function get_configErrorRecoveryEnableTooltip():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigErrorRecoveryEnableTooltip(this)) != 0; }
    inline function set_configErrorRecoveryEnableTooltip(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigErrorRecoveryEnableTooltip(this, v); return v; }
    public var configDebugIsDebuggerPresent(get, set):Bool;
    inline function get_configDebugIsDebuggerPresent():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDebugIsDebuggerPresent(this)) != 0; }
    inline function set_configDebugIsDebuggerPresent(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDebugIsDebuggerPresent(this, v); return v; }
    public var configDebugHighlightIdConflicts(get, set):Bool;
    inline function get_configDebugHighlightIdConflicts():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDebugHighlightIdConflicts(this)) != 0; }
    inline function set_configDebugHighlightIdConflicts(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDebugHighlightIdConflicts(this, v); return v; }
    public var configDebugHighlightIdConflictsShowItemPicker(get, set):Bool;
    inline function get_configDebugHighlightIdConflictsShowItemPicker():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDebugHighlightIdConflictsShowItemPicker(this)) != 0; }
    inline function set_configDebugHighlightIdConflictsShowItemPicker(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDebugHighlightIdConflictsShowItemPicker(this, v); return v; }
    public var configDebugBeginReturnValueOnce(get, set):Bool;
    inline function get_configDebugBeginReturnValueOnce():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDebugBeginReturnValueOnce(this)) != 0; }
    inline function set_configDebugBeginReturnValueOnce(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDebugBeginReturnValueOnce(this, v); return v; }
    public var configDebugBeginReturnValueLoop(get, set):Bool;
    inline function get_configDebugBeginReturnValueLoop():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDebugBeginReturnValueLoop(this)) != 0; }
    inline function set_configDebugBeginReturnValueLoop(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDebugBeginReturnValueLoop(this, v); return v; }
    public var configDebugIgnoreFocusLoss(get, set):Bool;
    inline function get_configDebugIgnoreFocusLoss():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDebugIgnoreFocusLoss(this)) != 0; }
    inline function set_configDebugIgnoreFocusLoss(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDebugIgnoreFocusLoss(this, v); return v; }
    public var configDebugIniSettings(get, set):Bool;
    inline function get_configDebugIniSettings():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_ConfigDebugIniSettings(this)) != 0; }
    inline function set_configDebugIniSettings(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_ConfigDebugIniSettings(this, v); return v; }
    public var backendPlatformName(get, set):Int;
    inline function get_backendPlatformName():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_BackendPlatformName(this); }
    inline function set_backendPlatformName(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_BackendPlatformName(this, v); return v; }
    public var backendRendererName(get, set):Int;
    inline function get_backendRendererName():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_BackendRendererName(this); }
    inline function set_backendRendererName(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_BackendRendererName(this, v); return v; }
    public var backendPlatformUserData(get, set):Int;
    inline function get_backendPlatformUserData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_BackendPlatformUserData(this); }
    inline function set_backendPlatformUserData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_BackendPlatformUserData(this, v); return v; }
    public var backendRendererUserData(get, set):Int;
    inline function get_backendRendererUserData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_BackendRendererUserData(this); }
    inline function set_backendRendererUserData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_BackendRendererUserData(this, v); return v; }
    public var backendLanguageUserData(get, set):Int;
    inline function get_backendLanguageUserData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_BackendLanguageUserData(this); }
    inline function set_backendLanguageUserData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_BackendLanguageUserData(this, v); return v; }
    public var wantCaptureMouse(get, set):Bool;
    inline function get_wantCaptureMouse():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_WantCaptureMouse(this)) != 0; }
    inline function set_wantCaptureMouse(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_WantCaptureMouse(this, v); return v; }
    public var wantCaptureKeyboard(get, set):Bool;
    inline function get_wantCaptureKeyboard():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_WantCaptureKeyboard(this)) != 0; }
    inline function set_wantCaptureKeyboard(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_WantCaptureKeyboard(this, v); return v; }
    public var wantTextInput(get, set):Bool;
    inline function get_wantTextInput():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_WantTextInput(this)) != 0; }
    inline function set_wantTextInput(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_WantTextInput(this, v); return v; }
    public var wantSetMousePos(get, set):Bool;
    inline function get_wantSetMousePos():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_WantSetMousePos(this)) != 0; }
    inline function set_wantSetMousePos(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_WantSetMousePos(this, v); return v; }
    public var wantSaveIniSettings(get, set):Bool;
    inline function get_wantSaveIniSettings():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_WantSaveIniSettings(this)) != 0; }
    inline function set_wantSaveIniSettings(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_WantSaveIniSettings(this, v); return v; }
    public var navActive(get, set):Bool;
    inline function get_navActive():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_NavActive(this)) != 0; }
    inline function set_navActive(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_NavActive(this, v); return v; }
    public var navVisible(get, set):Bool;
    inline function get_navVisible():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_NavVisible(this)) != 0; }
    inline function set_navVisible(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_NavVisible(this, v); return v; }
    public var framerate(get, set):Float;
    inline function get_framerate():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_Framerate(this); }
    inline function set_framerate(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_Framerate(this, v); return v; }
    public var metricsRenderVertices(get, set):Int;
    inline function get_metricsRenderVertices():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MetricsRenderVertices(this); }
    inline function set_metricsRenderVertices(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MetricsRenderVertices(this, v); return v; }
    public var metricsRenderIndices(get, set):Int;
    inline function get_metricsRenderIndices():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MetricsRenderIndices(this); }
    inline function set_metricsRenderIndices(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MetricsRenderIndices(this, v); return v; }
    public var metricsRenderWindows(get, set):Int;
    inline function get_metricsRenderWindows():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MetricsRenderWindows(this); }
    inline function set_metricsRenderWindows(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MetricsRenderWindows(this, v); return v; }
    public var metricsActiveWindows(get, set):Int;
    inline function get_metricsActiveWindows():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MetricsActiveWindows(this); }
    inline function set_metricsActiveWindows(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MetricsActiveWindows(this, v); return v; }
    public var mouseDelta(get, set):ImVec2;
    inline function get_mouseDelta():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MouseDelta(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_mouseDelta(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MouseDelta(this, v.x, v.y); return v; }
    public var ctx(get, set):ImGuiContext;
    inline function get_ctx():ImGuiContext { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_Ctx(this); }
    inline function set_ctx(v:ImGuiContext):ImGuiContext { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_Ctx(this, v); return v; }
    public var mousePos(get, set):ImVec2;
    inline function get_mousePos():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MousePos(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_mousePos(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MousePos(this, v.x, v.y); return v; }
    public var mouseWheel(get, set):Float;
    inline function get_mouseWheel():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MouseWheel(this); }
    inline function set_mouseWheel(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MouseWheel(this, v); return v; }
    public var mouseWheelH(get, set):Float;
    inline function get_mouseWheelH():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MouseWheelH(this); }
    inline function set_mouseWheelH(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MouseWheelH(this, v); return v; }
    public var mouseSource(get, set):Int;
    inline function get_mouseSource():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MouseSource(this); }
    inline function set_mouseSource(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MouseSource(this, v); return v; }
    public var mouseHoveredViewport(get, set):Int;
    inline function get_mouseHoveredViewport():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MouseHoveredViewport(this); }
    inline function set_mouseHoveredViewport(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MouseHoveredViewport(this, v); return v; }
    public var keyCtrl(get, set):Bool;
    inline function get_keyCtrl():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_KeyCtrl(this)) != 0; }
    inline function set_keyCtrl(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_KeyCtrl(this, v); return v; }
    public var keyShift(get, set):Bool;
    inline function get_keyShift():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_KeyShift(this)) != 0; }
    inline function set_keyShift(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_KeyShift(this, v); return v; }
    public var keyAlt(get, set):Bool;
    inline function get_keyAlt():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_KeyAlt(this)) != 0; }
    inline function set_keyAlt(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_KeyAlt(this, v); return v; }
    public var keySuper(get, set):Bool;
    inline function get_keySuper():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_KeySuper(this)) != 0; }
    inline function set_keySuper(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_KeySuper(this, v); return v; }
    public var keyMods(get, set):Int;
    inline function get_keyMods():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_KeyMods(this); }
    inline function set_keyMods(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_KeyMods(this, v); return v; }
    public var wantCaptureMouseUnlessPopupClose(get, set):Bool;
    inline function get_wantCaptureMouseUnlessPopupClose():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_WantCaptureMouseUnlessPopupClose(this)) != 0; }
    inline function set_wantCaptureMouseUnlessPopupClose(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_WantCaptureMouseUnlessPopupClose(this, v); return v; }
    public var mousePosPrev(get, set):ImVec2;
    inline function get_mousePosPrev():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MousePosPrev(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_mousePosPrev(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MousePosPrev(this, v.x, v.y); return v; }
    public var mouseWheelRequestAxisSwap(get, set):Bool;
    inline function get_mouseWheelRequestAxisSwap():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MouseWheelRequestAxisSwap(this)) != 0; }
    inline function set_mouseWheelRequestAxisSwap(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MouseWheelRequestAxisSwap(this, v); return v; }
    public var mouseCtrlLeftAsRightClick(get, set):Bool;
    inline function get_mouseCtrlLeftAsRightClick():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_MouseCtrlLeftAsRightClick(this)) != 0; }
    inline function set_mouseCtrlLeftAsRightClick(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_MouseCtrlLeftAsRightClick(this, v); return v; }
    public var penPressure(get, set):Float;
    inline function get_penPressure():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_PenPressure(this); }
    inline function set_penPressure(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_PenPressure(this, v); return v; }
    public var appFocusLost(get, set):Bool;
    inline function get_appFocusLost():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_AppFocusLost(this)) != 0; }
    inline function set_appFocusLost(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_AppFocusLost(this, v); return v; }
    public var appAcceptingEvents(get, set):Bool;
    inline function get_appAcceptingEvents():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_AppAcceptingEvents(this)) != 0; }
    inline function set_appAcceptingEvents(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_AppAcceptingEvents(this, v); return v; }
    public var inputQueueSurrogate(get, set):Int;
    inline function get_inputQueueSurrogate():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_get_InputQueueSurrogate(this); }
    inline function set_inputQueueSurrogate(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiIO_set_InputQueueSurrogate(this, v); return v; }
    public var inputQueueCharacters(get, never):ImVector_ImWchar;
    inline function get_inputQueueCharacters():ImVector_ImWchar { return imguijs.ImGuiJs.M._dcjs_ImGuiIO_ptr_InputQueueCharacters(this); }
    /** sizeof(ImGuiIO) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiIO(); }

    inline public static function addKeyEvent(self:ImGuiIO, key:Int, down:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_AddKeyEvent(self, key, down);
    }
    inline public static function addKeyAnalogEvent(self:ImGuiIO, key:Int, down:Bool, v:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_AddKeyAnalogEvent(self, key, down, v);
    }
    inline public static function addMousePosEvent(self:ImGuiIO, x:Float, y:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_AddMousePosEvent(self, x, y);
    }
    inline public static function addMouseButtonEvent(self:ImGuiIO, button:Int, down:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_AddMouseButtonEvent(self, button, down);
    }
    inline public static function addMouseWheelEvent(self:ImGuiIO, wheelX:Float, wheelY:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_AddMouseWheelEvent(self, wheelX, wheelY);
    }
    inline public static function addMouseSourceEvent(self:ImGuiIO, source:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_AddMouseSourceEvent(self, source);
    }
    inline public static function addMouseViewportEvent(self:ImGuiIO, id:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_AddMouseViewportEvent(self, id);
    }
    inline public static function addFocusEvent(self:ImGuiIO, focused:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_AddFocusEvent(self, focused);
    }
    inline public static function addInputCharacter(self:ImGuiIO, c:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_AddInputCharacter(self, c);
    }
    inline public static function addInputCharacterUTF16(self:ImGuiIO, c:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_AddInputCharacterUTF16(self, c);
    }
    inline public static function addInputCharactersUTF8(self:ImGuiIO, str:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_AddInputCharactersUTF8(self, imguijs.ImGuiJs.str(str));
    }
    inline public static function setKeyEventNativeDataEx(self:ImGuiIO, key:Int, nativeKeycode:Int, nativeScancode:Int, nativeLegacyIndex:Int = -1):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_SetKeyEventNativeDataEx(self, key, nativeKeycode, nativeScancode, nativeLegacyIndex);
    }
    inline public static function setKeyEventNativeData(self:ImGuiIO, key:Int, nativeKeycode:Int, nativeScancode:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_SetKeyEventNativeData(self, key, nativeKeycode, nativeScancode);
    }
    inline public static function setAppAcceptingEvents(self:ImGuiIO, acceptingEvents:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_SetAppAcceptingEvents(self, acceptingEvents);
    }
    inline public static function clearEventsQueue(self:ImGuiIO):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_ClearEventsQueue(self);
    }
    inline public static function clearInputKeys(self:ImGuiIO):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_ClearInputKeys(self);
    }
    inline public static function clearInputMouse(self:ImGuiIO):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiIO_ClearInputMouse(self);
    }
}

abstract ImGuiInputTextCallbackData(Int) from Int to Int {
    public var ctx(get, set):ImGuiContext;
    inline function get_ctx():ImGuiContext { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_Ctx(this); }
    inline function set_ctx(v:ImGuiContext):ImGuiContext { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_Ctx(this, v); return v; }
    public var eventFlag(get, set):Int;
    inline function get_eventFlag():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_EventFlag(this); }
    inline function set_eventFlag(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_EventFlag(this, v); return v; }
    public var flags(get, set):Int;
    inline function get_flags():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_Flags(this); }
    inline function set_flags(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_Flags(this, v); return v; }
    public var userData(get, set):Int;
    inline function get_userData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_UserData(this); }
    inline function set_userData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_UserData(this, v); return v; }
    public var id(get, set):Int;
    inline function get_id():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_ID(this); }
    inline function set_id(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_ID(this, v); return v; }
    public var eventKey(get, set):Int;
    inline function get_eventKey():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_EventKey(this); }
    inline function set_eventKey(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_EventKey(this, v); return v; }
    public var eventChar(get, set):Int;
    inline function get_eventChar():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_EventChar(this); }
    inline function set_eventChar(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_EventChar(this, v); return v; }
    public var eventActivated(get, set):Bool;
    inline function get_eventActivated():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_EventActivated(this)) != 0; }
    inline function set_eventActivated(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_EventActivated(this, v); return v; }
    public var bufDirty(get, set):Bool;
    inline function get_bufDirty():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_BufDirty(this)) != 0; }
    inline function set_bufDirty(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_BufDirty(this, v); return v; }
    public var buf(get, set):Int;
    inline function get_buf():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_Buf(this); }
    inline function set_buf(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_Buf(this, v); return v; }
    public var bufTextLen(get, set):Int;
    inline function get_bufTextLen():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_BufTextLen(this); }
    inline function set_bufTextLen(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_BufTextLen(this, v); return v; }
    public var bufSize(get, set):Int;
    inline function get_bufSize():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_BufSize(this); }
    inline function set_bufSize(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_BufSize(this, v); return v; }
    public var cursorPos(get, set):Int;
    inline function get_cursorPos():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_CursorPos(this); }
    inline function set_cursorPos(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_CursorPos(this, v); return v; }
    public var selectionStart(get, set):Int;
    inline function get_selectionStart():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_SelectionStart(this); }
    inline function set_selectionStart(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_SelectionStart(this, v); return v; }
    public var selectionEnd(get, set):Int;
    inline function get_selectionEnd():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_get_SelectionEnd(this); }
    inline function set_selectionEnd(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_set_SelectionEnd(this, v); return v; }
    /** sizeof(ImGuiInputTextCallbackData) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiInputTextCallbackData(); }

    inline public static function deleteChars(self:ImGuiInputTextCallbackData, pos:Int, bytesCount:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_DeleteChars(self, pos, bytesCount);
    }
    inline public static function insertChars(self:ImGuiInputTextCallbackData, pos:Int, text:String, textEnd:String = null):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_InsertChars(self, pos, imguijs.ImGuiJs.str(text), imguijs.ImGuiJs.str(textEnd));
    }
    inline public static function selectAll(self:ImGuiInputTextCallbackData):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_SelectAll(self);
    }
    inline public static function setSelection(self:ImGuiInputTextCallbackData, s:Int, e:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_SetSelection(self, s, e);
    }
    inline public static function clearSelection(self:ImGuiInputTextCallbackData):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_ClearSelection(self);
    }
    inline public static function hasSelection(self:ImGuiInputTextCallbackData):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGuiInputTextCallbackData_HasSelection(self)) != 0;
    }
}

abstract ImGuiSizeCallbackData(Int) from Int to Int {
    public var userData(get, set):Int;
    inline function get_userData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiSizeCallbackData_get_UserData(this); }
    inline function set_userData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiSizeCallbackData_set_UserData(this, v); return v; }
    public var pos(get, set):ImVec2;
    inline function get_pos():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiSizeCallbackData_get_Pos(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_pos(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiSizeCallbackData_set_Pos(this, v.x, v.y); return v; }
    public var currentSize(get, set):ImVec2;
    inline function get_currentSize():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiSizeCallbackData_get_CurrentSize(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_currentSize(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiSizeCallbackData_set_CurrentSize(this, v.x, v.y); return v; }
    public var desiredSize(get, set):ImVec2;
    inline function get_desiredSize():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiSizeCallbackData_get_DesiredSize(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_desiredSize(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiSizeCallbackData_set_DesiredSize(this, v.x, v.y); return v; }
    /** sizeof(ImGuiSizeCallbackData) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiSizeCallbackData(); }
}

abstract ImGuiWindowClass(Int) from Int to Int {
    public var classId(get, set):Int;
    inline function get_classId():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_get_ClassId(this); }
    inline function set_classId(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_set_ClassId(this, v); return v; }
    public var parentViewportId(get, set):Int;
    inline function get_parentViewportId():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_get_ParentViewportId(this); }
    inline function set_parentViewportId(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_set_ParentViewportId(this, v); return v; }
    public var focusRouteParentWindowId(get, set):Int;
    inline function get_focusRouteParentWindowId():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_get_FocusRouteParentWindowId(this); }
    inline function set_focusRouteParentWindowId(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_set_FocusRouteParentWindowId(this, v); return v; }
    public var viewportFlagsOverrideSet(get, set):Int;
    inline function get_viewportFlagsOverrideSet():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_get_ViewportFlagsOverrideSet(this); }
    inline function set_viewportFlagsOverrideSet(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_set_ViewportFlagsOverrideSet(this, v); return v; }
    public var viewportFlagsOverrideClear(get, set):Int;
    inline function get_viewportFlagsOverrideClear():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_get_ViewportFlagsOverrideClear(this); }
    inline function set_viewportFlagsOverrideClear(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_set_ViewportFlagsOverrideClear(this, v); return v; }
    public var tabItemFlagsOverrideSet(get, set):Int;
    inline function get_tabItemFlagsOverrideSet():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_get_TabItemFlagsOverrideSet(this); }
    inline function set_tabItemFlagsOverrideSet(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_set_TabItemFlagsOverrideSet(this, v); return v; }
    public var dockNodeFlagsOverrideSet(get, set):Int;
    inline function get_dockNodeFlagsOverrideSet():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_get_DockNodeFlagsOverrideSet(this); }
    inline function set_dockNodeFlagsOverrideSet(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_set_DockNodeFlagsOverrideSet(this, v); return v; }
    public var dockingAlwaysTabBar(get, set):Bool;
    inline function get_dockingAlwaysTabBar():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_get_DockingAlwaysTabBar(this)) != 0; }
    inline function set_dockingAlwaysTabBar(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_set_DockingAlwaysTabBar(this, v); return v; }
    public var dockingAllowUnclassed(get, set):Bool;
    inline function get_dockingAllowUnclassed():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_get_DockingAllowUnclassed(this)) != 0; }
    inline function set_dockingAllowUnclassed(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_set_DockingAllowUnclassed(this, v); return v; }
    public var platformIconData(get, set):Int;
    inline function get_platformIconData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_get_PlatformIconData(this); }
    inline function set_platformIconData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiWindowClass_set_PlatformIconData(this, v); return v; }
    /** sizeof(ImGuiWindowClass) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiWindowClass(); }
}

abstract ImGuiPayload(Int) from Int to Int {
    public var data(get, set):Int;
    inline function get_data():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPayload_get_Data(this); }
    inline function set_data(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPayload_set_Data(this, v); return v; }
    public var dataSize(get, set):Int;
    inline function get_dataSize():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPayload_get_DataSize(this); }
    inline function set_dataSize(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPayload_set_DataSize(this, v); return v; }
    /** sizeof(ImGuiPayload) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiPayload(); }

    inline public static function clear(self:ImGuiPayload):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiPayload_Clear(self);
    }
    inline public static function isDataType(self:ImGuiPayload, type:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGuiPayload_IsDataType(self, imguijs.ImGuiJs.str(type))) != 0;
    }
    inline public static function isPreview(self:ImGuiPayload):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGuiPayload_IsPreview(self)) != 0;
    }
    inline public static function isDelivery(self:ImGuiPayload):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGuiPayload_IsDelivery(self)) != 0;
    }
}

abstract ImGuiTextBuffer(Int) from Int to Int {
    public var buf(get, never):ImVector_char;
    inline function get_buf():ImVector_char { return imguijs.ImGuiJs.M._dcjs_ImGuiTextBuffer_ptr_Buf(this); }
    /** sizeof(ImGuiTextBuffer) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiTextBuffer(); }

    inline public static function begin(self:ImGuiTextBuffer):String {
        return imguijs.ImGuiJs.M.UTF8ToString(imguijs.ImGuiJs.M._dcjs_ImGuiTextBuffer_begin(self));
    }
    inline public static function end(self:ImGuiTextBuffer):String {
        return imguijs.ImGuiJs.M.UTF8ToString(imguijs.ImGuiJs.M._dcjs_ImGuiTextBuffer_end(self));
    }
    inline public static function size(self:ImGuiTextBuffer):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGuiTextBuffer_size(self);
    }
    inline public static function empty(self:ImGuiTextBuffer):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGuiTextBuffer_empty(self)) != 0;
    }
    inline public static function clear(self:ImGuiTextBuffer):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiTextBuffer_clear(self);
    }
    inline public static function resize(self:ImGuiTextBuffer, size:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiTextBuffer_resize(self, size);
    }
    inline public static function reserve(self:ImGuiTextBuffer, capacity:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiTextBuffer_reserve(self, capacity);
    }
    inline public static function c_str(self:ImGuiTextBuffer):String {
        return imguijs.ImGuiJs.M.UTF8ToString(imguijs.ImGuiJs.M._dcjs_ImGuiTextBuffer_c_str(self));
    }
    inline public static function append(self:ImGuiTextBuffer, str:String, strEnd:String = null):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGuiTextBuffer_append(self, imguijs.ImGuiJs.str(str), imguijs.ImGuiJs.str(strEnd));
    }
}

abstract ImGuiStorage(Int) from Int to Int {
    /** sizeof(ImGuiStorage) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiStorage(); }

    inline public static function clear(self:ImGuiStorage):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiStorage_Clear(self);
    }
    inline public static function getInt(self:ImGuiStorage, key:Int, defaultVal:Int = 0):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGuiStorage_GetInt(self, key, defaultVal);
    }
    inline public static function setInt(self:ImGuiStorage, key:Int, val:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiStorage_SetInt(self, key, val);
    }
    inline public static function getBool(self:ImGuiStorage, key:Int, defaultVal:Bool = false):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGuiStorage_GetBool(self, key, defaultVal)) != 0;
    }
    inline public static function setBool(self:ImGuiStorage, key:Int, val:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiStorage_SetBool(self, key, val);
    }
    inline public static function getFloat(self:ImGuiStorage, key:Int, defaultVal:Float = 0.0):Float {
        return imguijs.ImGuiJs.M._dcjs_ImGuiStorage_GetFloat(self, key, defaultVal);
    }
    inline public static function setFloat(self:ImGuiStorage, key:Int, val:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiStorage_SetFloat(self, key, val);
    }
    inline public static function getVoidPtr(self:ImGuiStorage, key:Int):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGuiStorage_GetVoidPtr(self, key);
    }
    inline public static function setVoidPtr(self:ImGuiStorage, key:Int, val:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiStorage_SetVoidPtr(self, key, val);
    }
    inline public static function getIntRef(self:ImGuiStorage, key:Int, defaultVal:Int = 0):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGuiStorage_GetIntRef(self, key, defaultVal);
    }
    inline public static function getBoolRef(self:ImGuiStorage, key:Int, defaultVal:Bool = false):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGuiStorage_GetBoolRef(self, key, defaultVal);
    }
    inline public static function getFloatRef(self:ImGuiStorage, key:Int, defaultVal:Float = 0.0):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGuiStorage_GetFloatRef(self, key, defaultVal);
    }
    inline public static function getVoidPtrRef(self:ImGuiStorage, key:Int, defaultVal:Int = 0):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGuiStorage_GetVoidPtrRef(self, key, defaultVal);
    }
    inline public static function buildSortByKey(self:ImGuiStorage):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiStorage_BuildSortByKey(self);
    }
    inline public static function setAllInt(self:ImGuiStorage, val:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiStorage_SetAllInt(self, val);
    }
}

abstract ImGuiListClipper(Int) from Int to Int {
    public var displayStart(get, set):Int;
    inline function get_displayStart():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_get_DisplayStart(this); }
    inline function set_displayStart(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_set_DisplayStart(this, v); return v; }
    public var displayEnd(get, set):Int;
    inline function get_displayEnd():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_get_DisplayEnd(this); }
    inline function set_displayEnd(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_set_DisplayEnd(this, v); return v; }
    public var userIndex(get, set):Int;
    inline function get_userIndex():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_get_UserIndex(this); }
    inline function set_userIndex(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_set_UserIndex(this, v); return v; }
    public var itemsCount(get, set):Int;
    inline function get_itemsCount():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_get_ItemsCount(this); }
    inline function set_itemsCount(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_set_ItemsCount(this, v); return v; }
    public var itemsHeight(get, set):Float;
    inline function get_itemsHeight():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_get_ItemsHeight(this); }
    inline function set_itemsHeight(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_set_ItemsHeight(this, v); return v; }
    public var flags(get, set):Int;
    inline function get_flags():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_get_Flags(this); }
    inline function set_flags(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_set_Flags(this, v); return v; }
    public var startPosY(get, set):Float;
    inline function get_startPosY():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_get_StartPosY(this); }
    inline function set_startPosY(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_set_StartPosY(this, v); return v; }
    public var startSeekOffsetY(get, set):Float;
    inline function get_startSeekOffsetY():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_get_StartSeekOffsetY(this); }
    inline function set_startSeekOffsetY(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_set_StartSeekOffsetY(this, v); return v; }
    public var ctx(get, set):ImGuiContext;
    inline function get_ctx():ImGuiContext { return imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_get_Ctx(this); }
    inline function set_ctx(v:ImGuiContext):ImGuiContext { imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_set_Ctx(this, v); return v; }
    public var tempData(get, set):Int;
    inline function get_tempData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_get_TempData(this); }
    inline function set_tempData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_set_TempData(this, v); return v; }
    /** sizeof(ImGuiListClipper) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiListClipper(); }

    inline public static function begin(self:ImGuiListClipper, itemsCount:Int, itemsHeight:Float = -1.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_Begin(self, itemsCount, itemsHeight);
    }
    inline public static function end(self:ImGuiListClipper):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_End(self);
    }
    inline public static function step(self:ImGuiListClipper):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_Step(self)) != 0;
    }
    inline public static function includeItemByIndex(self:ImGuiListClipper, itemIndex:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_IncludeItemByIndex(self, itemIndex);
    }
    inline public static function includeItemsByIndex(self:ImGuiListClipper, itemBegin:Int, itemEnd:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_IncludeItemsByIndex(self, itemBegin, itemEnd);
    }
    inline public static function seekCursorForItem(self:ImGuiListClipper, itemIndex:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiListClipper_SeekCursorForItem(self, itemIndex);
    }
}

abstract ImColor(Int) from Int to Int {
    public var value(get, set):ImVec4;
    inline function get_value():ImVec4 { imguijs.ImGuiJs.M._dcjs_ImColor_get_Value(this, imguijs.ImGuiJs.vecScratch); return ImVec4.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 8), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 12)); }
    inline function set_value(v:ImVec4):ImVec4 { imguijs.ImGuiJs.M._dcjs_ImColor_set_Value(this, v.x, v.y, v.z, v.w); return v; }
    /** sizeof(ImColor) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImColor(); }

    inline public static function setHSV(self:ImColor, h:Float, s:Float, v:Float, a:Float = 1.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImColor_SetHSV(self, h, s, v, a);
    }
}

abstract ImGuiMultiSelectIO(Int) from Int to Int {
    public var requests(get, never):ImVector_ImGuiSelectionRequest;
    inline function get_requests():ImVector_ImGuiSelectionRequest { return imguijs.ImGuiJs.M._dcjs_ImGuiMultiSelectIO_ptr_Requests(this); }
    public var rangeSrcItem(get, set):Float;
    inline function get_rangeSrcItem():Float { return imguijs.ImGuiJs.num64(imguijs.ImGuiJs.M._dcjs_ImGuiMultiSelectIO_get_RangeSrcItem(this)); }
    inline function set_rangeSrcItem(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiMultiSelectIO_set_RangeSrcItem(this, imguijs.ImGuiJs.u64(v)); return v; }
    public var navIdItem(get, set):Float;
    inline function get_navIdItem():Float { return imguijs.ImGuiJs.num64(imguijs.ImGuiJs.M._dcjs_ImGuiMultiSelectIO_get_NavIdItem(this)); }
    inline function set_navIdItem(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiMultiSelectIO_set_NavIdItem(this, imguijs.ImGuiJs.u64(v)); return v; }
    public var navIdSelected(get, set):Bool;
    inline function get_navIdSelected():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiMultiSelectIO_get_NavIdSelected(this)) != 0; }
    inline function set_navIdSelected(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiMultiSelectIO_set_NavIdSelected(this, v); return v; }
    public var rangeSrcReset(get, set):Bool;
    inline function get_rangeSrcReset():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiMultiSelectIO_get_RangeSrcReset(this)) != 0; }
    inline function set_rangeSrcReset(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiMultiSelectIO_set_RangeSrcReset(this, v); return v; }
    public var itemsCount(get, set):Int;
    inline function get_itemsCount():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiMultiSelectIO_get_ItemsCount(this); }
    inline function set_itemsCount(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiMultiSelectIO_set_ItemsCount(this, v); return v; }
    /** sizeof(ImGuiMultiSelectIO) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiMultiSelectIO(); }
}

abstract ImGuiSelectionRequest(Int) from Int to Int {
    public var type(get, set):ImGuiSelectionRequestType;
    inline function get_type():ImGuiSelectionRequestType { return imguijs.ImGuiJs.M._dcjs_ImGuiSelectionRequest_get_Type(this); }
    inline function set_type(v:ImGuiSelectionRequestType):ImGuiSelectionRequestType { imguijs.ImGuiJs.M._dcjs_ImGuiSelectionRequest_set_Type(this, (v:Int)); return v; }
    public var selected(get, set):Bool;
    inline function get_selected():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiSelectionRequest_get_Selected(this)) != 0; }
    inline function set_selected(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiSelectionRequest_set_Selected(this, v); return v; }
    public var rangeDirection(get, set):Int;
    inline function get_rangeDirection():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiSelectionRequest_get_RangeDirection(this); }
    inline function set_rangeDirection(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiSelectionRequest_set_RangeDirection(this, v); return v; }
    public var rangeFirstItem(get, set):Float;
    inline function get_rangeFirstItem():Float { return imguijs.ImGuiJs.num64(imguijs.ImGuiJs.M._dcjs_ImGuiSelectionRequest_get_RangeFirstItem(this)); }
    inline function set_rangeFirstItem(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiSelectionRequest_set_RangeFirstItem(this, imguijs.ImGuiJs.u64(v)); return v; }
    public var rangeLastItem(get, set):Float;
    inline function get_rangeLastItem():Float { return imguijs.ImGuiJs.num64(imguijs.ImGuiJs.M._dcjs_ImGuiSelectionRequest_get_RangeLastItem(this)); }
    inline function set_rangeLastItem(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiSelectionRequest_set_RangeLastItem(this, imguijs.ImGuiJs.u64(v)); return v; }
    /** sizeof(ImGuiSelectionRequest) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiSelectionRequest(); }
}

abstract ImGuiSelectionBasicStorage(Int) from Int to Int {
    public var size(get, set):Int;
    inline function get_size():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_get_Size(this); }
    inline function set_size(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_set_Size(this, v); return v; }
    public var preserveOrder(get, set):Bool;
    inline function get_preserveOrder():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_get_PreserveOrder(this)) != 0; }
    inline function set_preserveOrder(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_set_PreserveOrder(this, v); return v; }
    public var userData(get, set):Int;
    inline function get_userData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_get_UserData(this); }
    inline function set_userData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_set_UserData(this, v); return v; }
    public var adapterIndexToStorageId(get, never):Int;
    inline function get_adapterIndexToStorageId():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_getp_AdapterIndexToStorageId(this); }
    public var _SelectionOrder(get, set):Int;
    inline function get__SelectionOrder():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_get__SelectionOrder(this); }
    inline function set__SelectionOrder(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_set__SelectionOrder(this, v); return v; }
    public var _Storage(get, never):ImGuiStorage;
    inline function get__Storage():ImGuiStorage { return imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_ptr__Storage(this); }
    /** sizeof(ImGuiSelectionBasicStorage) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiSelectionBasicStorage(); }

    inline public static function applyRequests(self:ImGuiSelectionBasicStorage, msIo:ImGuiMultiSelectIO):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_ApplyRequests(self, msIo);
    }
    inline public static function contains(self:ImGuiSelectionBasicStorage, id:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_Contains(self, id)) != 0;
    }
    inline public static function clear(self:ImGuiSelectionBasicStorage):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_Clear(self);
    }
    inline public static function swap(self:ImGuiSelectionBasicStorage, r:ImGuiSelectionBasicStorage):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_Swap(self, r);
    }
    inline public static function setItemSelected(self:ImGuiSelectionBasicStorage, id:Int, selected:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_SetItemSelected(self, id, selected);
    }
    inline public static function getNextSelectedItem(self:ImGuiSelectionBasicStorage, opaqueIt:Int, outId:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_GetNextSelectedItem(self, opaqueIt, outId)) != 0;
    }
    inline public static function getStorageIdFromIndex(self:ImGuiSelectionBasicStorage, idx:Int):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGuiSelectionBasicStorage_GetStorageIdFromIndex(self, idx);
    }
}

abstract ImGuiSelectionExternalStorage(Int) from Int to Int {
    public var userData(get, set):Int;
    inline function get_userData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiSelectionExternalStorage_get_UserData(this); }
    inline function set_userData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiSelectionExternalStorage_set_UserData(this, v); return v; }
    public var adapterSetItemSelected(get, never):Int;
    inline function get_adapterSetItemSelected():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiSelectionExternalStorage_getp_AdapterSetItemSelected(this); }
    /** sizeof(ImGuiSelectionExternalStorage) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiSelectionExternalStorage(); }

    inline public static function applyRequests(self:ImGuiSelectionExternalStorage, msIo:ImGuiMultiSelectIO):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiSelectionExternalStorage_ApplyRequests(self, msIo);
    }
}

abstract ImDrawCmd(Int) from Int to Int {
    public var clipRect(get, set):ImVec4;
    inline function get_clipRect():ImVec4 { imguijs.ImGuiJs.M._dcjs_ImDrawCmd_get_ClipRect(this, imguijs.ImGuiJs.vecScratch); return ImVec4.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 8), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 12)); }
    inline function set_clipRect(v:ImVec4):ImVec4 { imguijs.ImGuiJs.M._dcjs_ImDrawCmd_set_ClipRect(this, v.x, v.y, v.z, v.w); return v; }
    public var texRef(get, set):ImTextureRef;
    inline function get_texRef():ImTextureRef { imguijs.ImGuiJs.M._dcjs_ImDrawCmd_get_TexRef(this, imguijs.ImGuiJs.vecScratch); return ImTextureRef.fromParts(imguijs.ImGuiJs.getU32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getU64(imguijs.ImGuiJs.vecScratch + 8)); }
    inline function set_texRef(v:ImTextureRef):ImTextureRef { imguijs.ImGuiJs.M._dcjs_ImDrawCmd_set_TexRef(this, v._TexData, imguijs.ImGuiJs.u64(v._TexID)); return v; }
    public var vtxOffset(get, set):Int;
    inline function get_vtxOffset():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawCmd_get_VtxOffset(this); }
    inline function set_vtxOffset(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawCmd_set_VtxOffset(this, v); return v; }
    public var idxOffset(get, set):Int;
    inline function get_idxOffset():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawCmd_get_IdxOffset(this); }
    inline function set_idxOffset(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawCmd_set_IdxOffset(this, v); return v; }
    public var elemCount(get, set):Int;
    inline function get_elemCount():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawCmd_get_ElemCount(this); }
    inline function set_elemCount(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawCmd_set_ElemCount(this, v); return v; }
    public var userCallback(get, set):Int;
    inline function get_userCallback():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawCmd_get_UserCallback(this); }
    inline function set_userCallback(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawCmd_set_UserCallback(this, v); return v; }
    public var userCallbackData(get, set):Int;
    inline function get_userCallbackData():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawCmd_get_UserCallbackData(this); }
    inline function set_userCallbackData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawCmd_set_UserCallbackData(this, v); return v; }
    public var userCallbackDataSize(get, set):Int;
    inline function get_userCallbackDataSize():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawCmd_get_UserCallbackDataSize(this); }
    inline function set_userCallbackDataSize(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawCmd_set_UserCallbackDataSize(this, v); return v; }
    public var userCallbackDataOffset(get, set):Int;
    inline function get_userCallbackDataOffset():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawCmd_get_UserCallbackDataOffset(this); }
    inline function set_userCallbackDataOffset(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawCmd_set_UserCallbackDataOffset(this, v); return v; }
    /** sizeof(ImDrawCmd) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImDrawCmd(); }

    inline public static function getTexID(self:ImDrawCmd):Float {
        return imguijs.ImGuiJs.num64(imguijs.ImGuiJs.M._dcjs_ImDrawCmd_GetTexID(self));
    }
}

abstract ImDrawVert(Int) from Int to Int {
    public var pos(get, set):ImVec2;
    inline function get_pos():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImDrawVert_get_pos(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_pos(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImDrawVert_set_pos(this, v.x, v.y); return v; }
    public var uv(get, set):ImVec2;
    inline function get_uv():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImDrawVert_get_uv(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_uv(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImDrawVert_set_uv(this, v.x, v.y); return v; }
    public var col(get, set):Int;
    inline function get_col():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawVert_get_col(this); }
    inline function set_col(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawVert_set_col(this, v); return v; }
    /** sizeof(ImDrawVert) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImDrawVert(); }
}

abstract ImDrawListSplitter(Int) from Int to Int {
    public var _Current(get, set):Int;
    inline function get__Current():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawListSplitter_get__Current(this); }
    inline function set__Current(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawListSplitter_set__Current(this, v); return v; }
    public var _Count(get, set):Int;
    inline function get__Count():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawListSplitter_get__Count(this); }
    inline function set__Count(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawListSplitter_set__Count(this, v); return v; }
    public var _Channels(get, never):ImVector_ImDrawChannel;
    inline function get__Channels():ImVector_ImDrawChannel { return imguijs.ImGuiJs.M._dcjs_ImDrawListSplitter_ptr__Channels(this); }
    /** sizeof(ImDrawListSplitter) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImDrawListSplitter(); }

    inline public static function clear(self:ImDrawListSplitter):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawListSplitter_Clear(self);
    }
    inline public static function clearFreeMemory(self:ImDrawListSplitter):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawListSplitter_ClearFreeMemory(self);
    }
    inline public static function split(self:ImDrawListSplitter, drawList:ImDrawList, count:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawListSplitter_Split(self, drawList, count);
    }
    inline public static function merge(self:ImDrawListSplitter, drawList:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawListSplitter_Merge(self, drawList);
    }
    inline public static function setCurrentChannel(self:ImDrawListSplitter, drawList:ImDrawList, channelIdx:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawListSplitter_SetCurrentChannel(self, drawList, channelIdx);
    }
}

abstract ImDrawList(Int) from Int to Int {
    public var cmdBuffer(get, never):ImVector_ImDrawCmd;
    inline function get_cmdBuffer():ImVector_ImDrawCmd { return imguijs.ImGuiJs.M._dcjs_ImDrawList_ptr_CmdBuffer(this); }
    public var idxBuffer(get, never):ImVector_ImDrawIdx;
    inline function get_idxBuffer():ImVector_ImDrawIdx { return imguijs.ImGuiJs.M._dcjs_ImDrawList_ptr_IdxBuffer(this); }
    public var vtxBuffer(get, never):ImVector_ImDrawVert;
    inline function get_vtxBuffer():ImVector_ImDrawVert { return imguijs.ImGuiJs.M._dcjs_ImDrawList_ptr_VtxBuffer(this); }
    public var flags(get, set):Int;
    inline function get_flags():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawList_get_Flags(this); }
    inline function set_flags(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawList_set_Flags(this, v); return v; }
    public var _VtxCurrentIdx(get, set):Int;
    inline function get__VtxCurrentIdx():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawList_get__VtxCurrentIdx(this); }
    inline function set__VtxCurrentIdx(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawList_set__VtxCurrentIdx(this, v); return v; }
    public var _Data(get, set):ImDrawListSharedData;
    inline function get__Data():ImDrawListSharedData { return imguijs.ImGuiJs.M._dcjs_ImDrawList_get__Data(this); }
    inline function set__Data(v:ImDrawListSharedData):ImDrawListSharedData { imguijs.ImGuiJs.M._dcjs_ImDrawList_set__Data(this, v); return v; }
    public var _VtxWritePtr(get, set):ImDrawVert;
    inline function get__VtxWritePtr():ImDrawVert { return imguijs.ImGuiJs.M._dcjs_ImDrawList_get__VtxWritePtr(this); }
    inline function set__VtxWritePtr(v:ImDrawVert):ImDrawVert { imguijs.ImGuiJs.M._dcjs_ImDrawList_set__VtxWritePtr(this, v); return v; }
    public var _IdxWritePtr(get, set):Int;
    inline function get__IdxWritePtr():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawList_get__IdxWritePtr(this); }
    inline function set__IdxWritePtr(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawList_set__IdxWritePtr(this, v); return v; }
    public var _Path(get, never):ImVector_ImVec2;
    inline function get__Path():ImVector_ImVec2 { return imguijs.ImGuiJs.M._dcjs_ImDrawList_ptr__Path(this); }
    public var _Splitter(get, never):ImDrawListSplitter;
    inline function get__Splitter():ImDrawListSplitter { return imguijs.ImGuiJs.M._dcjs_ImDrawList_ptr__Splitter(this); }
    public var _ClipRectStack(get, never):ImVector_ImVec4;
    inline function get__ClipRectStack():ImVector_ImVec4 { return imguijs.ImGuiJs.M._dcjs_ImDrawList_ptr__ClipRectStack(this); }
    public var _TextureStack(get, never):ImVector_ImTextureRef;
    inline function get__TextureStack():ImVector_ImTextureRef { return imguijs.ImGuiJs.M._dcjs_ImDrawList_ptr__TextureStack(this); }
    public var _CallbacksDataBuf(get, never):ImVector_ImU8;
    inline function get__CallbacksDataBuf():ImVector_ImU8 { return imguijs.ImGuiJs.M._dcjs_ImDrawList_ptr__CallbacksDataBuf(this); }
    public var _FringeScale(get, set):Float;
    inline function get__FringeScale():Float { return imguijs.ImGuiJs.M._dcjs_ImDrawList_get__FringeScale(this); }
    inline function set__FringeScale(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImDrawList_set__FringeScale(this, v); return v; }
    public var _OwnerName(get, set):Int;
    inline function get__OwnerName():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawList_get__OwnerName(this); }
    inline function set__OwnerName(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawList_set__OwnerName(this, v); return v; }
    /** sizeof(ImDrawList) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImDrawList(); }

    inline public static function pushClipRect(self:ImDrawList, clipRectMin:ImVec2, clipRectMax:ImVec2, intersectWithCurrentClipRect:Bool = false):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PushClipRect(self, clipRectMin.x, clipRectMin.y, clipRectMax.x, clipRectMax.y, intersectWithCurrentClipRect);
    }
    inline public static function pushClipRectFullScreen(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PushClipRectFullScreen(self);
    }
    inline public static function popClipRect(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PopClipRect(self);
    }
    inline public static function pushTexture(self:ImDrawList, texRef:ImTextureRef):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PushTexture(self, texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID));
    }
    inline public static function popTexture(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PopTexture(self);
    }
    inline public static function getClipRectMin(self:ImDrawList):ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_GetClipRectMin(imguijs.ImGuiJs.vecScratch, self);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getClipRectMax(self:ImDrawList):ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_GetClipRectMax(imguijs.ImGuiJs.vecScratch, self);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function addLineEx(self:ImDrawList, p1:ImVec2, p2:ImVec2, col:Int, thickness:Float = 1.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddLineEx(self, p1.x, p1.y, p2.x, p2.y, col, thickness);
    }
    inline public static function addLine(self:ImDrawList, p1:ImVec2, p2:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddLine(self, p1.x, p1.y, p2.x, p2.y, col);
    }
    inline public static function addLineHEx(self:ImDrawList, minX:Float, maxX:Float, y:Float, col:Int, thickness:Float = 1.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddLineHEx(self, minX, maxX, y, col, thickness);
    }
    inline public static function addLineH(self:ImDrawList, minX:Float, maxX:Float, y:Float, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddLineH(self, minX, maxX, y, col);
    }
    inline public static function addLineVEx(self:ImDrawList, x:Float, minY:Float, maxY:Float, col:Int, thickness:Float = 1.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddLineVEx(self, x, minY, maxY, col, thickness);
    }
    inline public static function addLineV(self:ImDrawList, x:Float, minY:Float, maxY:Float, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddLineV(self, x, minY, maxY, col);
    }
    inline public static function addRectEx(self:ImDrawList, pMin:ImVec2, pMax:ImVec2, col:Int, rounding:Float = 0.0, thickness:Float = 1.0, flags:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddRectEx(self, pMin.x, pMin.y, pMax.x, pMax.y, col, rounding, thickness, flags);
    }
    inline public static function addRect(self:ImDrawList, pMin:ImVec2, pMax:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddRect(self, pMin.x, pMin.y, pMax.x, pMax.y, col);
    }
    inline public static function addRectFilledEx(self:ImDrawList, pMin:ImVec2, pMax:ImVec2, col:Int, rounding:Float = 0.0, flags:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddRectFilledEx(self, pMin.x, pMin.y, pMax.x, pMax.y, col, rounding, flags);
    }
    inline public static function addRectFilled(self:ImDrawList, pMin:ImVec2, pMax:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddRectFilled(self, pMin.x, pMin.y, pMax.x, pMax.y, col);
    }
    inline public static function addRectFilledMultiColor(self:ImDrawList, pMin:ImVec2, pMax:ImVec2, colUprLeft:Int, colUprRight:Int, colBotRight:Int, colBotLeft:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddRectFilledMultiColor(self, pMin.x, pMin.y, pMax.x, pMax.y, colUprLeft, colUprRight, colBotRight, colBotLeft);
    }
    inline public static function addQuadEx(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:Int, thickness:Float = 1.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddQuadEx(self, p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y, col, thickness);
    }
    inline public static function addQuad(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddQuad(self, p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y, col);
    }
    inline public static function addQuadFilled(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddQuadFilled(self, p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y, col);
    }
    inline public static function addTriangleEx(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:Int, thickness:Float = 1.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddTriangleEx(self, p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, col, thickness);
    }
    inline public static function addTriangle(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddTriangle(self, p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, col);
    }
    inline public static function addTriangleFilled(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddTriangleFilled(self, p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, col);
    }
    inline public static function addCircleEx(self:ImDrawList, center:ImVec2, radius:Float, col:Int, numSegments:Int = 0, thickness:Float = 1.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddCircleEx(self, center.x, center.y, radius, col, numSegments, thickness);
    }
    inline public static function addCircle(self:ImDrawList, center:ImVec2, radius:Float, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddCircle(self, center.x, center.y, radius, col);
    }
    inline public static function addCircleFilled(self:ImDrawList, center:ImVec2, radius:Float, col:Int, numSegments:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddCircleFilled(self, center.x, center.y, radius, col, numSegments);
    }
    inline public static function addNgonEx(self:ImDrawList, center:ImVec2, radius:Float, col:Int, numSegments:Int, thickness:Float = 1.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddNgonEx(self, center.x, center.y, radius, col, numSegments, thickness);
    }
    inline public static function addNgon(self:ImDrawList, center:ImVec2, radius:Float, col:Int, numSegments:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddNgon(self, center.x, center.y, radius, col, numSegments);
    }
    inline public static function addNgonFilled(self:ImDrawList, center:ImVec2, radius:Float, col:Int, numSegments:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddNgonFilled(self, center.x, center.y, radius, col, numSegments);
    }
    inline public static function addEllipseEx(self:ImDrawList, center:ImVec2, radius:ImVec2, col:Int, rot:Float = 0.0, numSegments:Int = 0, thickness:Float = 1.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddEllipseEx(self, center.x, center.y, radius.x, radius.y, col, rot, numSegments, thickness);
    }
    inline public static function addEllipse(self:ImDrawList, center:ImVec2, radius:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddEllipse(self, center.x, center.y, radius.x, radius.y, col);
    }
    inline public static function addEllipseFilledEx(self:ImDrawList, center:ImVec2, radius:ImVec2, col:Int, rot:Float = 0.0, numSegments:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddEllipseFilledEx(self, center.x, center.y, radius.x, radius.y, col, rot, numSegments);
    }
    inline public static function addEllipseFilled(self:ImDrawList, center:ImVec2, radius:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddEllipseFilled(self, center.x, center.y, radius.x, radius.y, col);
    }
    inline public static function addTextEx(self:ImDrawList, pos:ImVec2, col:Int, textBegin:String, textEnd:String = null):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddTextEx(self, pos.x, pos.y, col, imguijs.ImGuiJs.str(textBegin), imguijs.ImGuiJs.str(textEnd));
    }
    inline public static function addText(self:ImDrawList, pos:ImVec2, col:Int, textBegin:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddText(self, pos.x, pos.y, col, imguijs.ImGuiJs.str(textBegin));
    }
    inline public static function addTextImFontPtrEx(self:ImDrawList, font:ImFont, fontSize:Float, pos:ImVec2, col:Int, textBegin:String, textEnd:String = null, wrapWidth:Float = 0.0, cpuFineClipRect:Int = 0):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddTextImFontPtrEx(self, font, fontSize, pos.x, pos.y, col, imguijs.ImGuiJs.str(textBegin), imguijs.ImGuiJs.str(textEnd), wrapWidth, cpuFineClipRect);
    }
    inline public static function addTextImFontPtr(self:ImDrawList, font:ImFont, fontSize:Float, pos:ImVec2, col:Int, textBegin:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddTextImFontPtr(self, font, fontSize, pos.x, pos.y, col, imguijs.ImGuiJs.str(textBegin));
    }
    inline public static function addBezierCubic(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, col:Int, thickness:Float, numSegments:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddBezierCubic(self, p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y, col, thickness, numSegments);
    }
    inline public static function addBezierQuadratic(self:ImDrawList, p1:ImVec2, p2:ImVec2, p3:ImVec2, col:Int, thickness:Float, numSegments:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddBezierQuadratic(self, p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, col, thickness, numSegments);
    }
    inline public static function addPolyline(self:ImDrawList, points:Int, numPoints:Int, col:Int, thickness:Float, flags:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddPolyline(self, points, numPoints, col, thickness, flags);
    }
    inline public static function addConvexPolyFilled(self:ImDrawList, points:Int, numPoints:Int, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddConvexPolyFilled(self, points, numPoints, col);
    }
    inline public static function addConcavePolyFilled(self:ImDrawList, points:Int, numPoints:Int, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddConcavePolyFilled(self, points, numPoints, col);
    }
    inline public static function addImageEx(self:ImDrawList, texRef:ImTextureRef, pMin:ImVec2, pMax:ImVec2, uvMin:ImVec2, uvMax:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddImageEx(self, texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID), pMin.x, pMin.y, pMax.x, pMax.y, uvMin.x, uvMin.y, uvMax.x, uvMax.y, col);
    }
    inline public static function addImage(self:ImDrawList, texRef:ImTextureRef, pMin:ImVec2, pMax:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddImage(self, texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID), pMin.x, pMin.y, pMax.x, pMax.y);
    }
    inline public static function addImageQuadEx(self:ImDrawList, texRef:ImTextureRef, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2, uv1:ImVec2, uv2:ImVec2, uv3:ImVec2, uv4:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddImageQuadEx(self, texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID), p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y, uv1.x, uv1.y, uv2.x, uv2.y, uv3.x, uv3.y, uv4.x, uv4.y, col);
    }
    inline public static function addImageQuad(self:ImDrawList, texRef:ImTextureRef, p1:ImVec2, p2:ImVec2, p3:ImVec2, p4:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddImageQuad(self, texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID), p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y);
    }
    inline public static function addImageRounded(self:ImDrawList, texRef:ImTextureRef, pMin:ImVec2, pMax:ImVec2, uvMin:ImVec2, uvMax:ImVec2, col:Int, rounding:Float, flags:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddImageRounded(self, texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID), pMin.x, pMin.y, pMax.x, pMax.y, uvMin.x, uvMin.y, uvMax.x, uvMax.y, col, rounding, flags);
    }
    inline public static function pathClear(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathClear(self);
    }
    inline public static function pathLineTo(self:ImDrawList, pos:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathLineTo(self, pos.x, pos.y);
    }
    inline public static function pathLineToMergeDuplicate(self:ImDrawList, pos:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathLineToMergeDuplicate(self, pos.x, pos.y);
    }
    inline public static function pathFillConvex(self:ImDrawList, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathFillConvex(self, col);
    }
    inline public static function pathFillConcave(self:ImDrawList, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathFillConcave(self, col);
    }
    inline public static function pathStroke(self:ImDrawList, col:Int, thickness:Float = 1.0, flags:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathStroke(self, col, thickness, flags);
    }
    inline public static function pathArcTo(self:ImDrawList, center:ImVec2, radius:Float, aMin:Float, aMax:Float, numSegments:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathArcTo(self, center.x, center.y, radius, aMin, aMax, numSegments);
    }
    inline public static function pathArcToFast(self:ImDrawList, center:ImVec2, radius:Float, aMinOf12:Int, aMaxOf12:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathArcToFast(self, center.x, center.y, radius, aMinOf12, aMaxOf12);
    }
    inline public static function pathEllipticalArcToEx(self:ImDrawList, center:ImVec2, radius:ImVec2, rot:Float, aMin:Float, aMax:Float, numSegments:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathEllipticalArcToEx(self, center.x, center.y, radius.x, radius.y, rot, aMin, aMax, numSegments);
    }
    inline public static function pathEllipticalArcTo(self:ImDrawList, center:ImVec2, radius:ImVec2, rot:Float, aMin:Float, aMax:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathEllipticalArcTo(self, center.x, center.y, radius.x, radius.y, rot, aMin, aMax);
    }
    inline public static function pathBezierCubicCurveTo(self:ImDrawList, p2:ImVec2, p3:ImVec2, p4:ImVec2, numSegments:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathBezierCubicCurveTo(self, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y, numSegments);
    }
    inline public static function pathBezierQuadraticCurveTo(self:ImDrawList, p2:ImVec2, p3:ImVec2, numSegments:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathBezierQuadraticCurveTo(self, p2.x, p2.y, p3.x, p3.y, numSegments);
    }
    inline public static function pathRect(self:ImDrawList, rectMin:ImVec2, rectMax:ImVec2, rounding:Float = 0.0, flags:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PathRect(self, rectMin.x, rectMin.y, rectMax.x, rectMax.y, rounding, flags);
    }
    inline public static function addCallbackEx(self:ImDrawList, callback:Int, userdata:Int = 0, userdataSize:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddCallbackEx(self, callback, userdata, userdataSize);
    }
    inline public static function addCallback(self:ImDrawList, callback:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddCallback(self, callback);
    }
    inline public static function addDrawCmd(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_AddDrawCmd(self);
    }
    inline public static function cloneOutput(self:ImDrawList):ImDrawList {
        return imguijs.ImGuiJs.M._dcjs_ImDrawList_CloneOutput(self);
    }
    inline public static function channelsSplit(self:ImDrawList, count:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_ChannelsSplit(self, count);
    }
    inline public static function channelsMerge(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_ChannelsMerge(self);
    }
    inline public static function channelsSetCurrent(self:ImDrawList, n:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_ChannelsSetCurrent(self, n);
    }
    inline public static function primReserve(self:ImDrawList, idxCount:Int, vtxCount:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PrimReserve(self, idxCount, vtxCount);
    }
    inline public static function primUnreserve(self:ImDrawList, idxCount:Int, vtxCount:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PrimUnreserve(self, idxCount, vtxCount);
    }
    inline public static function primRect(self:ImDrawList, a:ImVec2, b:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PrimRect(self, a.x, a.y, b.x, b.y, col);
    }
    inline public static function primRectUV(self:ImDrawList, a:ImVec2, b:ImVec2, uvA:ImVec2, uvB:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PrimRectUV(self, a.x, a.y, b.x, b.y, uvA.x, uvA.y, uvB.x, uvB.y, col);
    }
    inline public static function primQuadUV(self:ImDrawList, a:ImVec2, b:ImVec2, c:ImVec2, d:ImVec2, uvA:ImVec2, uvB:ImVec2, uvC:ImVec2, uvD:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PrimQuadUV(self, a.x, a.y, b.x, b.y, c.x, c.y, d.x, d.y, uvA.x, uvA.y, uvB.x, uvB.y, uvC.x, uvC.y, uvD.x, uvD.y, col);
    }
    inline public static function primWriteVtx(self:ImDrawList, pos:ImVec2, uv:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PrimWriteVtx(self, pos.x, pos.y, uv.x, uv.y, col);
    }
    inline public static function primWriteIdx(self:ImDrawList, idx:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PrimWriteIdx(self, idx);
    }
    inline public static function primVtx(self:ImDrawList, pos:ImVec2, uv:ImVec2, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList_PrimVtx(self, pos.x, pos.y, uv.x, uv.y, col);
    }
    inline public static function _SetDrawListSharedData(self:ImDrawList, data:ImDrawListSharedData):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList__SetDrawListSharedData(self, data);
    }
    inline public static function _ResetForNewFrame(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList__ResetForNewFrame(self);
    }
    inline public static function _ClearFreeMemory(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList__ClearFreeMemory(self);
    }
    inline public static function _PopUnusedDrawCmd(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList__PopUnusedDrawCmd(self);
    }
    inline public static function _TryMergeDrawCmds(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList__TryMergeDrawCmds(self);
    }
    inline public static function _OnChangedClipRect(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList__OnChangedClipRect(self);
    }
    inline public static function _OnChangedTexture(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList__OnChangedTexture(self);
    }
    inline public static function _OnChangedVtxOffset(self:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList__OnChangedVtxOffset(self);
    }
    inline public static function _SetTexture(self:ImDrawList, texRef:ImTextureRef):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList__SetTexture(self, texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID));
    }
    inline public static function _CalcCircleAutoSegmentCount(self:ImDrawList, radius:Float):Int {
        return imguijs.ImGuiJs.M._dcjs_ImDrawList__CalcCircleAutoSegmentCount(self, radius);
    }
    inline public static function _PathArcToFastEx(self:ImDrawList, center:ImVec2, radius:Float, aMinSample:Int, aMaxSample:Int, aStep:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList__PathArcToFastEx(self, center.x, center.y, radius, aMinSample, aMaxSample, aStep);
    }
    inline public static function _PathArcToN(self:ImDrawList, center:ImVec2, radius:Float, aMin:Float, aMax:Float, numSegments:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawList__PathArcToN(self, center.x, center.y, radius, aMin, aMax, numSegments);
    }
}

abstract ImDrawData(Int) from Int to Int {
    public var valid(get, set):Bool;
    inline function get_valid():Bool { return (imguijs.ImGuiJs.M._dcjs_ImDrawData_get_Valid(this)) != 0; }
    inline function set_valid(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImDrawData_set_Valid(this, v); return v; }
    public var cmdListsCount(get, set):Int;
    inline function get_cmdListsCount():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawData_get_CmdListsCount(this); }
    inline function set_cmdListsCount(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawData_set_CmdListsCount(this, v); return v; }
    public var totalIdxCount(get, set):Int;
    inline function get_totalIdxCount():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawData_get_TotalIdxCount(this); }
    inline function set_totalIdxCount(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawData_set_TotalIdxCount(this, v); return v; }
    public var totalVtxCount(get, set):Int;
    inline function get_totalVtxCount():Int { return imguijs.ImGuiJs.M._dcjs_ImDrawData_get_TotalVtxCount(this); }
    inline function set_totalVtxCount(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImDrawData_set_TotalVtxCount(this, v); return v; }
    public var cmdLists(get, never):ImVector_ImDrawListPtr;
    inline function get_cmdLists():ImVector_ImDrawListPtr { return imguijs.ImGuiJs.M._dcjs_ImDrawData_ptr_CmdLists(this); }
    public var displayPos(get, set):ImVec2;
    inline function get_displayPos():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImDrawData_get_DisplayPos(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_displayPos(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImDrawData_set_DisplayPos(this, v.x, v.y); return v; }
    public var displaySize(get, set):ImVec2;
    inline function get_displaySize():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImDrawData_get_DisplaySize(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_displaySize(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImDrawData_set_DisplaySize(this, v.x, v.y); return v; }
    public var framebufferScale(get, set):ImVec2;
    inline function get_framebufferScale():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImDrawData_get_FramebufferScale(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_framebufferScale(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImDrawData_set_FramebufferScale(this, v.x, v.y); return v; }
    public var ownerViewport(get, set):ImGuiViewport;
    inline function get_ownerViewport():ImGuiViewport { return imguijs.ImGuiJs.M._dcjs_ImDrawData_get_OwnerViewport(this); }
    inline function set_ownerViewport(v:ImGuiViewport):ImGuiViewport { imguijs.ImGuiJs.M._dcjs_ImDrawData_set_OwnerViewport(this, v); return v; }
    public var textures(get, set):ImVector_ImTextureDataPtr;
    inline function get_textures():ImVector_ImTextureDataPtr { return imguijs.ImGuiJs.M._dcjs_ImDrawData_get_Textures(this); }
    inline function set_textures(v:ImVector_ImTextureDataPtr):ImVector_ImTextureDataPtr { imguijs.ImGuiJs.M._dcjs_ImDrawData_set_Textures(this, v); return v; }
    /** sizeof(ImDrawData) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImDrawData(); }

    inline public static function clear(self:ImDrawData):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawData_Clear(self);
    }
    inline public static function addDrawList(self:ImDrawData, drawList:ImDrawList):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawData_AddDrawList(self, drawList);
    }
    inline public static function deIndexAllBuffers(self:ImDrawData):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawData_DeIndexAllBuffers(self);
    }
    inline public static function scaleClipRects(self:ImDrawData, fbScale:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImDrawData_ScaleClipRects(self, fbScale.x, fbScale.y);
    }
}

abstract ImTextureRect(Int) from Int to Int {
    public var x(get, set):Int;
    inline function get_x():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureRect_get_x(this); }
    inline function set_x(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureRect_set_x(this, v); return v; }
    public var y(get, set):Int;
    inline function get_y():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureRect_get_y(this); }
    inline function set_y(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureRect_set_y(this, v); return v; }
    public var w(get, set):Int;
    inline function get_w():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureRect_get_w(this); }
    inline function set_w(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureRect_set_w(this, v); return v; }
    public var h(get, set):Int;
    inline function get_h():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureRect_get_h(this); }
    inline function set_h(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureRect_set_h(this, v); return v; }
    /** sizeof(ImTextureRect) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImTextureRect(); }
}

abstract ImTextureData(Int) from Int to Int {
    public var uniqueID(get, set):Int;
    inline function get_uniqueID():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureData_get_UniqueID(this); }
    inline function set_uniqueID(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_UniqueID(this, v); return v; }
    public var status(get, set):ImTextureStatus;
    inline function get_status():ImTextureStatus { return imguijs.ImGuiJs.M._dcjs_ImTextureData_get_Status(this); }
    inline function set_status(v:ImTextureStatus):ImTextureStatus { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_Status(this, (v:Int)); return v; }
    public var backendUserData(get, set):Int;
    inline function get_backendUserData():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureData_get_BackendUserData(this); }
    inline function set_backendUserData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_BackendUserData(this, v); return v; }
    public var texID(get, set):Float;
    inline function get_texID():Float { return imguijs.ImGuiJs.num64(imguijs.ImGuiJs.M._dcjs_ImTextureData_get_TexID(this)); }
    inline function set_texID(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_TexID(this, imguijs.ImGuiJs.u64(v)); return v; }
    public var format(get, set):ImTextureFormat;
    inline function get_format():ImTextureFormat { return imguijs.ImGuiJs.M._dcjs_ImTextureData_get_Format(this); }
    inline function set_format(v:ImTextureFormat):ImTextureFormat { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_Format(this, (v:Int)); return v; }
    public var width(get, set):Int;
    inline function get_width():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureData_get_Width(this); }
    inline function set_width(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_Width(this, v); return v; }
    public var height(get, set):Int;
    inline function get_height():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureData_get_Height(this); }
    inline function set_height(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_Height(this, v); return v; }
    public var bytesPerPixel(get, set):Int;
    inline function get_bytesPerPixel():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureData_get_BytesPerPixel(this); }
    inline function set_bytesPerPixel(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_BytesPerPixel(this, v); return v; }
    public var pixels(get, set):Int;
    inline function get_pixels():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureData_get_Pixels(this); }
    inline function set_pixels(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_Pixels(this, v); return v; }
    public var usedRect(get, never):ImTextureRect;
    inline function get_usedRect():ImTextureRect { return imguijs.ImGuiJs.M._dcjs_ImTextureData_ptr_UsedRect(this); }
    public var updateRect(get, never):ImTextureRect;
    inline function get_updateRect():ImTextureRect { return imguijs.ImGuiJs.M._dcjs_ImTextureData_ptr_UpdateRect(this); }
    public var updates(get, never):ImVector_ImTextureRect;
    inline function get_updates():ImVector_ImTextureRect { return imguijs.ImGuiJs.M._dcjs_ImTextureData_ptr_Updates(this); }
    public var unusedFrames(get, set):Int;
    inline function get_unusedFrames():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureData_get_UnusedFrames(this); }
    inline function set_unusedFrames(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_UnusedFrames(this, v); return v; }
    public var refCount(get, set):Int;
    inline function get_refCount():Int { return imguijs.ImGuiJs.M._dcjs_ImTextureData_get_RefCount(this); }
    inline function set_refCount(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_RefCount(this, v); return v; }
    public var useColors(get, set):Bool;
    inline function get_useColors():Bool { return (imguijs.ImGuiJs.M._dcjs_ImTextureData_get_UseColors(this)) != 0; }
    inline function set_useColors(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_UseColors(this, v); return v; }
    public var wantDestroyNextFrame(get, set):Bool;
    inline function get_wantDestroyNextFrame():Bool { return (imguijs.ImGuiJs.M._dcjs_ImTextureData_get_WantDestroyNextFrame(this)) != 0; }
    inline function set_wantDestroyNextFrame(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImTextureData_set_WantDestroyNextFrame(this, v); return v; }
    /** sizeof(ImTextureData) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImTextureData(); }

    inline public static function create(self:ImTextureData, format:ImTextureFormat, w:Int, h:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImTextureData_Create(self, format, w, h);
    }
    inline public static function destroyPixels(self:ImTextureData):Void {
        imguijs.ImGuiJs.M._dcjs_ImTextureData_DestroyPixels(self);
    }
    inline public static function getPixels(self:ImTextureData):Int {
        return imguijs.ImGuiJs.M._dcjs_ImTextureData_GetPixels(self);
    }
    inline public static function getPixelsAt(self:ImTextureData, x:Int, y:Int):Int {
        return imguijs.ImGuiJs.M._dcjs_ImTextureData_GetPixelsAt(self, x, y);
    }
    inline public static function getSizeInBytes(self:ImTextureData):Int {
        return imguijs.ImGuiJs.M._dcjs_ImTextureData_GetSizeInBytes(self);
    }
    inline public static function getPitch(self:ImTextureData):Int {
        return imguijs.ImGuiJs.M._dcjs_ImTextureData_GetPitch(self);
    }
    inline public static function getTexRef(self:ImTextureData):ImTextureRef {
        imguijs.ImGuiJs.M._dcjs_ImTextureData_GetTexRef(imguijs.ImGuiJs.vecScratch, self);
        return ImTextureRef.fromParts(imguijs.ImGuiJs.getU32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getU64(imguijs.ImGuiJs.vecScratch + 8));
    }
    inline public static function getTexID(self:ImTextureData):Float {
        return imguijs.ImGuiJs.num64(imguijs.ImGuiJs.M._dcjs_ImTextureData_GetTexID(self));
    }
    inline public static function setTexID(self:ImTextureData, texId:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImTextureData_SetTexID(self, imguijs.ImGuiJs.u64(texId));
    }
    inline public static function setStatus(self:ImTextureData, status:ImTextureStatus):Void {
        imguijs.ImGuiJs.M._dcjs_ImTextureData_SetStatus(self, status);
    }
}

abstract ImFontConfig(Int) from Int to Int {
    public var fontData(get, set):Int;
    inline function get_fontData():Int { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_FontData(this); }
    inline function set_fontData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_FontData(this, v); return v; }
    public var fontDataSize(get, set):Int;
    inline function get_fontDataSize():Int { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_FontDataSize(this); }
    inline function set_fontDataSize(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_FontDataSize(this, v); return v; }
    public var fontDataOwnedByAtlas(get, set):Bool;
    inline function get_fontDataOwnedByAtlas():Bool { return (imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_FontDataOwnedByAtlas(this)) != 0; }
    inline function set_fontDataOwnedByAtlas(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_FontDataOwnedByAtlas(this, v); return v; }
    public var mergeMode(get, set):Bool;
    inline function get_mergeMode():Bool { return (imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_MergeMode(this)) != 0; }
    inline function set_mergeMode(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_MergeMode(this, v); return v; }
    public var pixelSnapH(get, set):Bool;
    inline function get_pixelSnapH():Bool { return (imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_PixelSnapH(this)) != 0; }
    inline function set_pixelSnapH(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_PixelSnapH(this, v); return v; }
    public var oversampleH(get, set):Int;
    inline function get_oversampleH():Int { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_OversampleH(this); }
    inline function set_oversampleH(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_OversampleH(this, v); return v; }
    public var oversampleV(get, set):Int;
    inline function get_oversampleV():Int { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_OversampleV(this); }
    inline function set_oversampleV(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_OversampleV(this, v); return v; }
    public var ellipsisChar(get, set):Int;
    inline function get_ellipsisChar():Int { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_EllipsisChar(this); }
    inline function set_ellipsisChar(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_EllipsisChar(this, v); return v; }
    public var sizePixels(get, set):Float;
    inline function get_sizePixels():Float { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_SizePixels(this); }
    inline function set_sizePixels(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_SizePixels(this, v); return v; }
    public var glyphRanges(get, set):Int;
    inline function get_glyphRanges():Int { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_GlyphRanges(this); }
    inline function set_glyphRanges(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_GlyphRanges(this, v); return v; }
    public var glyphExcludeRanges(get, set):Int;
    inline function get_glyphExcludeRanges():Int { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_GlyphExcludeRanges(this); }
    inline function set_glyphExcludeRanges(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_GlyphExcludeRanges(this, v); return v; }
    public var glyphOffset(get, set):ImVec2;
    inline function get_glyphOffset():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_GlyphOffset(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_glyphOffset(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_GlyphOffset(this, v.x, v.y); return v; }
    public var glyphMinAdvanceX(get, set):Float;
    inline function get_glyphMinAdvanceX():Float { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_GlyphMinAdvanceX(this); }
    inline function set_glyphMinAdvanceX(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_GlyphMinAdvanceX(this, v); return v; }
    public var glyphMaxAdvanceX(get, set):Float;
    inline function get_glyphMaxAdvanceX():Float { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_GlyphMaxAdvanceX(this); }
    inline function set_glyphMaxAdvanceX(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_GlyphMaxAdvanceX(this, v); return v; }
    public var glyphExtraAdvanceX(get, set):Float;
    inline function get_glyphExtraAdvanceX():Float { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_GlyphExtraAdvanceX(this); }
    inline function set_glyphExtraAdvanceX(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_GlyphExtraAdvanceX(this, v); return v; }
    public var fontNo(get, set):Int;
    inline function get_fontNo():Int { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_FontNo(this); }
    inline function set_fontNo(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_FontNo(this, v); return v; }
    public var fontLoaderFlags(get, set):Int;
    inline function get_fontLoaderFlags():Int { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_FontLoaderFlags(this); }
    inline function set_fontLoaderFlags(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_FontLoaderFlags(this, v); return v; }
    public var rasterizerMultiply(get, set):Float;
    inline function get_rasterizerMultiply():Float { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_RasterizerMultiply(this); }
    inline function set_rasterizerMultiply(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_RasterizerMultiply(this, v); return v; }
    public var rasterizerDensity(get, set):Float;
    inline function get_rasterizerDensity():Float { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_RasterizerDensity(this); }
    inline function set_rasterizerDensity(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_RasterizerDensity(this, v); return v; }
    public var extraSizeScale(get, set):Float;
    inline function get_extraSizeScale():Float { return imguijs.ImGuiJs.M._dcjs_ImFontConfig_get_ExtraSizeScale(this); }
    inline function set_extraSizeScale(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontConfig_set_ExtraSizeScale(this, v); return v; }
    /** sizeof(ImFontConfig) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImFontConfig(); }
}

abstract ImFontGlyph(Int) from Int to Int {
    public var colored(get, set):Int;
    inline function get_colored():Int { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_Colored(this); }
    inline function set_colored(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_Colored(this, v); return v; }
    public var visible(get, set):Int;
    inline function get_visible():Int { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_Visible(this); }
    inline function set_visible(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_Visible(this, v); return v; }
    public var sourceIdx(get, set):Int;
    inline function get_sourceIdx():Int { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_SourceIdx(this); }
    inline function set_sourceIdx(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_SourceIdx(this, v); return v; }
    public var codepoint(get, set):Int;
    inline function get_codepoint():Int { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_Codepoint(this); }
    inline function set_codepoint(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_Codepoint(this, v); return v; }
    public var advanceX(get, set):Float;
    inline function get_advanceX():Float { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_AdvanceX(this); }
    inline function set_advanceX(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_AdvanceX(this, v); return v; }
    public var x0(get, set):Float;
    inline function get_x0():Float { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_X0(this); }
    inline function set_x0(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_X0(this, v); return v; }
    public var y0(get, set):Float;
    inline function get_y0():Float { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_Y0(this); }
    inline function set_y0(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_Y0(this, v); return v; }
    public var x1(get, set):Float;
    inline function get_x1():Float { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_X1(this); }
    inline function set_x1(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_X1(this, v); return v; }
    public var y1(get, set):Float;
    inline function get_y1():Float { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_Y1(this); }
    inline function set_y1(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_Y1(this, v); return v; }
    public var u0(get, set):Float;
    inline function get_u0():Float { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_U0(this); }
    inline function set_u0(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_U0(this, v); return v; }
    public var v0(get, set):Float;
    inline function get_v0():Float { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_V0(this); }
    inline function set_v0(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_V0(this, v); return v; }
    public var u1(get, set):Float;
    inline function get_u1():Float { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_U1(this); }
    inline function set_u1(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_U1(this, v); return v; }
    public var v1(get, set):Float;
    inline function get_v1():Float { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_V1(this); }
    inline function set_v1(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_V1(this, v); return v; }
    public var packId(get, set):Int;
    inline function get_packId():Int { return imguijs.ImGuiJs.M._dcjs_ImFontGlyph_get_PackId(this); }
    inline function set_packId(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontGlyph_set_PackId(this, v); return v; }
    /** sizeof(ImFontGlyph) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImFontGlyph(); }
}

abstract ImFontGlyphRangesBuilder(Int) from Int to Int {
    public var usedChars(get, never):ImVector_ImU32;
    inline function get_usedChars():ImVector_ImU32 { return imguijs.ImGuiJs.M._dcjs_ImFontGlyphRangesBuilder_ptr_UsedChars(this); }
    /** sizeof(ImFontGlyphRangesBuilder) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImFontGlyphRangesBuilder(); }

    inline public static function clear(self:ImFontGlyphRangesBuilder):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontGlyphRangesBuilder_Clear(self);
    }
    inline public static function getBit(self:ImFontGlyphRangesBuilder, n:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImFontGlyphRangesBuilder_GetBit(self, n)) != 0;
    }
    inline public static function setBit(self:ImFontGlyphRangesBuilder, n:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontGlyphRangesBuilder_SetBit(self, n);
    }
    inline public static function addChar(self:ImFontGlyphRangesBuilder, c:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontGlyphRangesBuilder_AddChar(self, c);
    }
    inline public static function addText(self:ImFontGlyphRangesBuilder, text:String, textEnd:String = null):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImFontGlyphRangesBuilder_AddText(self, imguijs.ImGuiJs.str(text), imguijs.ImGuiJs.str(textEnd));
    }
    inline public static function addRanges(self:ImFontGlyphRangesBuilder, ranges:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontGlyphRangesBuilder_AddRanges(self, ranges);
    }
    inline public static function buildRanges(self:ImFontGlyphRangesBuilder, outRanges:ImVector_ImWchar):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontGlyphRangesBuilder_BuildRanges(self, outRanges);
    }
}

abstract ImFontAtlasRect(Int) from Int to Int {
    public var x(get, set):Int;
    inline function get_x():Int { return imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_get_x(this); }
    inline function set_x(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_set_x(this, v); return v; }
    public var y(get, set):Int;
    inline function get_y():Int { return imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_get_y(this); }
    inline function set_y(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_set_y(this, v); return v; }
    public var w(get, set):Int;
    inline function get_w():Int { return imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_get_w(this); }
    inline function set_w(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_set_w(this, v); return v; }
    public var h(get, set):Int;
    inline function get_h():Int { return imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_get_h(this); }
    inline function set_h(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_set_h(this, v); return v; }
    public var uv0(get, set):ImVec2;
    inline function get_uv0():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_get_uv0(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_uv0(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_set_uv0(this, v.x, v.y); return v; }
    public var uv1(get, set):ImVec2;
    inline function get_uv1():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_get_uv1(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_uv1(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImFontAtlasRect_set_uv1(this, v.x, v.y); return v; }
    /** sizeof(ImFontAtlasRect) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImFontAtlasRect(); }
}

abstract ImFontAtlas(Int) from Int to Int {
    public var flags(get, set):Int;
    inline function get_flags():Int { return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_get_Flags(this); }
    inline function set_flags(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontAtlas_set_Flags(this, v); return v; }
    public var texDesiredFormat(get, set):ImTextureFormat;
    inline function get_texDesiredFormat():ImTextureFormat { return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_get_TexDesiredFormat(this); }
    inline function set_texDesiredFormat(v:ImTextureFormat):ImTextureFormat { imguijs.ImGuiJs.M._dcjs_ImFontAtlas_set_TexDesiredFormat(this, (v:Int)); return v; }
    public var texGlyphPadding(get, set):Int;
    inline function get_texGlyphPadding():Int { return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_get_TexGlyphPadding(this); }
    inline function set_texGlyphPadding(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontAtlas_set_TexGlyphPadding(this, v); return v; }
    public var texMinWidth(get, set):Int;
    inline function get_texMinWidth():Int { return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_get_TexMinWidth(this); }
    inline function set_texMinWidth(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontAtlas_set_TexMinWidth(this, v); return v; }
    public var texMinHeight(get, set):Int;
    inline function get_texMinHeight():Int { return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_get_TexMinHeight(this); }
    inline function set_texMinHeight(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontAtlas_set_TexMinHeight(this, v); return v; }
    public var texMaxWidth(get, set):Int;
    inline function get_texMaxWidth():Int { return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_get_TexMaxWidth(this); }
    inline function set_texMaxWidth(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontAtlas_set_TexMaxWidth(this, v); return v; }
    public var texMaxHeight(get, set):Int;
    inline function get_texMaxHeight():Int { return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_get_TexMaxHeight(this); }
    inline function set_texMaxHeight(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontAtlas_set_TexMaxHeight(this, v); return v; }
    public var userData(get, set):Int;
    inline function get_userData():Int { return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_get_UserData(this); }
    inline function set_userData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImFontAtlas_set_UserData(this, v); return v; }
    public var texRef(get, set):ImTextureRef;
    inline function get_texRef():ImTextureRef { imguijs.ImGuiJs.M._dcjs_ImFontAtlas_get_TexRef(this, imguijs.ImGuiJs.vecScratch); return ImTextureRef.fromParts(imguijs.ImGuiJs.getU32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getU64(imguijs.ImGuiJs.vecScratch + 8)); }
    inline function set_texRef(v:ImTextureRef):ImTextureRef { imguijs.ImGuiJs.M._dcjs_ImFontAtlas_set_TexRef(this, v._TexData, imguijs.ImGuiJs.u64(v._TexID)); return v; }
    public var texData(get, set):ImTextureData;
    inline function get_texData():ImTextureData { return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_get_TexData(this); }
    inline function set_texData(v:ImTextureData):ImTextureData { imguijs.ImGuiJs.M._dcjs_ImFontAtlas_set_TexData(this, v); return v; }
    /** sizeof(ImFontAtlas) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImFontAtlas(); }

    inline public static function addFont(self:ImFontAtlas, fontCfg:ImFontConfig):ImFont {
        return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_AddFont(self, fontCfg);
    }
    inline public static function addFontDefault(self:ImFontAtlas, fontCfg:ImFontConfig = cast 0):ImFont {
        return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_AddFontDefault(self, fontCfg);
    }
    inline public static function addFontDefaultVector(self:ImFontAtlas, fontCfg:ImFontConfig = cast 0):ImFont {
        return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_AddFontDefaultVector(self, fontCfg);
    }
    inline public static function addFontDefaultBitmap(self:ImFontAtlas, fontCfg:ImFontConfig = cast 0):ImFont {
        return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_AddFontDefaultBitmap(self, fontCfg);
    }
    inline public static function addFontFromFileTTF(self:ImFontAtlas, filename:String, sizePixels:Float = 0.0, fontCfg:ImFontConfig = cast 0, glyphRanges:Int = 0):ImFont {
        imguijs.ImGuiJs.strReset();
        return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_AddFontFromFileTTF(self, imguijs.ImGuiJs.str(filename), sizePixels, fontCfg, glyphRanges);
    }
    inline public static function addFontFromMemoryTTF(self:ImFontAtlas, fontData:Int, fontDataSize:Int, sizePixels:Float = 0.0, fontCfg:ImFontConfig = cast 0, glyphRanges:Int = 0):ImFont {
        return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_AddFontFromMemoryTTF(self, fontData, fontDataSize, sizePixels, fontCfg, glyphRanges);
    }
    inline public static function addFontFromMemoryCompressedTTF(self:ImFontAtlas, compressedFontData:Int, compressedFontDataSize:Int, sizePixels:Float = 0.0, fontCfg:ImFontConfig = cast 0, glyphRanges:Int = 0):ImFont {
        return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_AddFontFromMemoryCompressedTTF(self, compressedFontData, compressedFontDataSize, sizePixels, fontCfg, glyphRanges);
    }
    inline public static function addFontFromMemoryCompressedBase85TTF(self:ImFontAtlas, compressedFontDataBase85:String, sizePixels:Float = 0.0, fontCfg:ImFontConfig = cast 0, glyphRanges:Int = 0):ImFont {
        imguijs.ImGuiJs.strReset();
        return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self, imguijs.ImGuiJs.str(compressedFontDataBase85), sizePixels, fontCfg, glyphRanges);
    }
    inline public static function removeFont(self:ImFontAtlas, font:ImFont):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontAtlas_RemoveFont(self, font);
    }
    inline public static function clear(self:ImFontAtlas):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontAtlas_Clear(self);
    }
    inline public static function clearFonts(self:ImFontAtlas):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontAtlas_ClearFonts(self);
    }
    inline public static function compactCache(self:ImFontAtlas):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontAtlas_CompactCache(self);
    }
    inline public static function setFontLoader(self:ImFontAtlas, fontLoader:ImFontLoader):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontAtlas_SetFontLoader(self, fontLoader);
    }
    inline public static function clearInputData(self:ImFontAtlas):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontAtlas_ClearInputData(self);
    }
    inline public static function clearTexData(self:ImFontAtlas):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontAtlas_ClearTexData(self);
    }
    inline public static function getGlyphRangesDefault(self:ImFontAtlas):Int {
        return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_GetGlyphRangesDefault(self);
    }
    inline public static function addCustomRect(self:ImFontAtlas, width:Int, height:Int, outR:ImFontAtlasRect = cast 0):Int {
        return imguijs.ImGuiJs.M._dcjs_ImFontAtlas_AddCustomRect(self, width, height, outR);
    }
    inline public static function removeCustomRect(self:ImFontAtlas, id:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontAtlas_RemoveCustomRect(self, id);
    }
    inline public static function getCustomRect(self:ImFontAtlas, id:Int, outR:ImFontAtlasRect):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImFontAtlas_GetCustomRect(self, id, outR)) != 0;
    }
}

abstract ImFontBaked(Int) from Int to Int {
    /** sizeof(ImFontBaked) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImFontBaked(); }

    inline public static function clearOutputData(self:ImFontBaked):Void {
        imguijs.ImGuiJs.M._dcjs_ImFontBaked_ClearOutputData(self);
    }
    inline public static function findGlyph(self:ImFontBaked, c:Int):ImFontGlyph {
        return imguijs.ImGuiJs.M._dcjs_ImFontBaked_FindGlyph(self, c);
    }
    inline public static function findGlyphNoFallback(self:ImFontBaked, c:Int):ImFontGlyph {
        return imguijs.ImGuiJs.M._dcjs_ImFontBaked_FindGlyphNoFallback(self, c);
    }
    inline public static function getCharAdvance(self:ImFontBaked, c:Int):Float {
        return imguijs.ImGuiJs.M._dcjs_ImFontBaked_GetCharAdvance(self, c);
    }
    inline public static function isGlyphLoaded(self:ImFontBaked, c:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImFontBaked_IsGlyphLoaded(self, c)) != 0;
    }
}

abstract ImFont(Int) from Int to Int {
    /** sizeof(ImFont) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImFont(); }
}

abstract ImGuiViewport(Int) from Int to Int {
    public var id(get, set):Int;
    inline function get_id():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_ID(this); }
    inline function set_id(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_ID(this, v); return v; }
    public var flags(get, set):Int;
    inline function get_flags():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_Flags(this); }
    inline function set_flags(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_Flags(this, v); return v; }
    public var pos(get, set):ImVec2;
    inline function get_pos():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_Pos(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_pos(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_Pos(this, v.x, v.y); return v; }
    public var size(get, set):ImVec2;
    inline function get_size():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_Size(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_size(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_Size(this, v.x, v.y); return v; }
    public var framebufferScale(get, set):ImVec2;
    inline function get_framebufferScale():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_FramebufferScale(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_framebufferScale(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_FramebufferScale(this, v.x, v.y); return v; }
    public var workPos(get, set):ImVec2;
    inline function get_workPos():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_WorkPos(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_workPos(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_WorkPos(this, v.x, v.y); return v; }
    public var workSize(get, set):ImVec2;
    inline function get_workSize():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_WorkSize(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_workSize(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_WorkSize(this, v.x, v.y); return v; }
    public var dpiScale(get, set):Float;
    inline function get_dpiScale():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_DpiScale(this); }
    inline function set_dpiScale(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_DpiScale(this, v); return v; }
    public var parentViewportId(get, set):Int;
    inline function get_parentViewportId():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_ParentViewportId(this); }
    inline function set_parentViewportId(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_ParentViewportId(this, v); return v; }
    public var parentViewport(get, set):ImGuiViewport;
    inline function get_parentViewport():ImGuiViewport { return imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_ParentViewport(this); }
    inline function set_parentViewport(v:ImGuiViewport):ImGuiViewport { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_ParentViewport(this, v); return v; }
    public var drawData(get, set):ImDrawData;
    inline function get_drawData():ImDrawData { return imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_DrawData(this); }
    inline function set_drawData(v:ImDrawData):ImDrawData { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_DrawData(this, v); return v; }
    public var rendererUserData(get, set):Int;
    inline function get_rendererUserData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_RendererUserData(this); }
    inline function set_rendererUserData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_RendererUserData(this, v); return v; }
    public var platformUserData(get, set):Int;
    inline function get_platformUserData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_PlatformUserData(this); }
    inline function set_platformUserData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_PlatformUserData(this, v); return v; }
    public var platformIconData(get, set):Int;
    inline function get_platformIconData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_PlatformIconData(this); }
    inline function set_platformIconData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_PlatformIconData(this, v); return v; }
    public var platformHandle(get, set):Int;
    inline function get_platformHandle():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_PlatformHandle(this); }
    inline function set_platformHandle(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_PlatformHandle(this, v); return v; }
    public var platformHandleRaw(get, set):Int;
    inline function get_platformHandleRaw():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_PlatformHandleRaw(this); }
    inline function set_platformHandleRaw(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_PlatformHandleRaw(this, v); return v; }
    public var platformWindowCreated(get, set):Bool;
    inline function get_platformWindowCreated():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_PlatformWindowCreated(this)) != 0; }
    inline function set_platformWindowCreated(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_PlatformWindowCreated(this, v); return v; }
    public var platformRequestMove(get, set):Bool;
    inline function get_platformRequestMove():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_PlatformRequestMove(this)) != 0; }
    inline function set_platformRequestMove(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_PlatformRequestMove(this, v); return v; }
    public var platformRequestResize(get, set):Bool;
    inline function get_platformRequestResize():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_PlatformRequestResize(this)) != 0; }
    inline function set_platformRequestResize(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_PlatformRequestResize(this, v); return v; }
    public var platformRequestClose(get, set):Bool;
    inline function get_platformRequestClose():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiViewport_get_PlatformRequestClose(this)) != 0; }
    inline function set_platformRequestClose(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiViewport_set_PlatformRequestClose(this, v); return v; }
    /** sizeof(ImGuiViewport) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiViewport(); }

    inline public static function getCenter(self:ImGuiViewport):ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGuiViewport_GetCenter(imguijs.ImGuiJs.vecScratch, self);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getWorkCenter(self:ImGuiViewport):ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGuiViewport_GetWorkCenter(imguijs.ImGuiJs.vecScratch, self);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getDebugName(self:ImGuiViewport):String {
        return imguijs.ImGuiJs.M.UTF8ToString(imguijs.ImGuiJs.M._dcjs_ImGuiViewport_GetDebugName(self));
    }
}

abstract ImGuiPlatformIO(Int) from Int to Int {
    public var platform_GetClipboardTextFn(get, never):Int;
    inline function get_platform_GetClipboardTextFn():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_GetClipboardTextFn(this); }
    public var platform_SetClipboardTextFn(get, never):Int;
    inline function get_platform_SetClipboardTextFn():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_SetClipboardTextFn(this); }
    public var platform_ClipboardUserData(get, set):Int;
    inline function get_platform_ClipboardUserData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_get_Platform_ClipboardUserData(this); }
    inline function set_platform_ClipboardUserData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_set_Platform_ClipboardUserData(this, v); return v; }
    public var platform_OpenInShellFn(get, never):Int;
    inline function get_platform_OpenInShellFn():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_OpenInShellFn(this); }
    public var platform_OpenInShellUserData(get, set):Int;
    inline function get_platform_OpenInShellUserData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_get_Platform_OpenInShellUserData(this); }
    inline function set_platform_OpenInShellUserData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_set_Platform_OpenInShellUserData(this, v); return v; }
    public var platform_SetImeDataFn(get, never):Int;
    inline function get_platform_SetImeDataFn():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_SetImeDataFn(this); }
    public var platform_ImeUserData(get, set):Int;
    inline function get_platform_ImeUserData():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_get_Platform_ImeUserData(this); }
    inline function set_platform_ImeUserData(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_set_Platform_ImeUserData(this, v); return v; }
    public var platform_LocaleDecimalPoint(get, set):Int;
    inline function get_platform_LocaleDecimalPoint():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_get_Platform_LocaleDecimalPoint(this); }
    inline function set_platform_LocaleDecimalPoint(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_set_Platform_LocaleDecimalPoint(this, v); return v; }
    public var renderer_TextureMaxWidth(get, set):Int;
    inline function get_renderer_TextureMaxWidth():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_get_Renderer_TextureMaxWidth(this); }
    inline function set_renderer_TextureMaxWidth(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_set_Renderer_TextureMaxWidth(this, v); return v; }
    public var renderer_TextureMaxHeight(get, set):Int;
    inline function get_renderer_TextureMaxHeight():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_get_Renderer_TextureMaxHeight(this); }
    inline function set_renderer_TextureMaxHeight(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_set_Renderer_TextureMaxHeight(this, v); return v; }
    public var renderer_RenderState(get, set):Int;
    inline function get_renderer_RenderState():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_get_Renderer_RenderState(this); }
    inline function set_renderer_RenderState(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_set_Renderer_RenderState(this, v); return v; }
    public var drawCallback_ResetRenderState(get, set):Int;
    inline function get_drawCallback_ResetRenderState():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_get_DrawCallback_ResetRenderState(this); }
    inline function set_drawCallback_ResetRenderState(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_set_DrawCallback_ResetRenderState(this, v); return v; }
    public var drawCallback_SetSamplerLinear(get, set):Int;
    inline function get_drawCallback_SetSamplerLinear():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_get_DrawCallback_SetSamplerLinear(this); }
    inline function set_drawCallback_SetSamplerLinear(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_set_DrawCallback_SetSamplerLinear(this, v); return v; }
    public var drawCallback_SetSamplerNearest(get, set):Int;
    inline function get_drawCallback_SetSamplerNearest():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_get_DrawCallback_SetSamplerNearest(this); }
    inline function set_drawCallback_SetSamplerNearest(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_set_DrawCallback_SetSamplerNearest(this, v); return v; }
    public var platform_CreateWindow(get, never):Int;
    inline function get_platform_CreateWindow():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_CreateWindow(this); }
    public var platform_DestroyWindow(get, never):Int;
    inline function get_platform_DestroyWindow():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_DestroyWindow(this); }
    public var platform_ShowWindow(get, never):Int;
    inline function get_platform_ShowWindow():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_ShowWindow(this); }
    public var platform_SetWindowPos(get, never):Int;
    inline function get_platform_SetWindowPos():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_SetWindowPos(this); }
    public var platform_GetWindowPos(get, never):Int;
    inline function get_platform_GetWindowPos():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_GetWindowPos(this); }
    public var platform_SetWindowSize(get, never):Int;
    inline function get_platform_SetWindowSize():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_SetWindowSize(this); }
    public var platform_GetWindowSize(get, never):Int;
    inline function get_platform_GetWindowSize():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_GetWindowSize(this); }
    public var platform_GetWindowFramebufferScale(get, never):Int;
    inline function get_platform_GetWindowFramebufferScale():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_GetWindowFramebufferScale(this); }
    public var platform_SetWindowFocus(get, never):Int;
    inline function get_platform_SetWindowFocus():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_SetWindowFocus(this); }
    public var platform_GetWindowFocus(get, never):Int;
    inline function get_platform_GetWindowFocus():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_GetWindowFocus(this); }
    public var platform_GetWindowMinimized(get, never):Int;
    inline function get_platform_GetWindowMinimized():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_GetWindowMinimized(this); }
    public var platform_SetWindowTitle(get, never):Int;
    inline function get_platform_SetWindowTitle():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_SetWindowTitle(this); }
    public var platform_SetWindowAlpha(get, never):Int;
    inline function get_platform_SetWindowAlpha():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_SetWindowAlpha(this); }
    public var platform_UpdateWindow(get, never):Int;
    inline function get_platform_UpdateWindow():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_UpdateWindow(this); }
    public var platform_RenderWindow(get, never):Int;
    inline function get_platform_RenderWindow():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_RenderWindow(this); }
    public var platform_SwapBuffers(get, never):Int;
    inline function get_platform_SwapBuffers():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_SwapBuffers(this); }
    public var platform_GetWindowDpiScale(get, never):Int;
    inline function get_platform_GetWindowDpiScale():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_GetWindowDpiScale(this); }
    public var platform_OnChangedViewport(get, never):Int;
    inline function get_platform_OnChangedViewport():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_OnChangedViewport(this); }
    public var platform_GetWindowWorkAreaInsets(get, never):Int;
    inline function get_platform_GetWindowWorkAreaInsets():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_GetWindowWorkAreaInsets(this); }
    public var platform_CreateVkSurface(get, never):Int;
    inline function get_platform_CreateVkSurface():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Platform_CreateVkSurface(this); }
    public var renderer_CreateWindow(get, never):Int;
    inline function get_renderer_CreateWindow():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Renderer_CreateWindow(this); }
    public var renderer_DestroyWindow(get, never):Int;
    inline function get_renderer_DestroyWindow():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Renderer_DestroyWindow(this); }
    public var renderer_SetWindowSize(get, never):Int;
    inline function get_renderer_SetWindowSize():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Renderer_SetWindowSize(this); }
    public var renderer_RenderWindow(get, never):Int;
    inline function get_renderer_RenderWindow():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Renderer_RenderWindow(this); }
    public var renderer_SwapBuffers(get, never):Int;
    inline function get_renderer_SwapBuffers():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_getp_Renderer_SwapBuffers(this); }
    public var monitors(get, never):ImVector_ImGuiPlatformMonitor;
    inline function get_monitors():ImVector_ImGuiPlatformMonitor { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_ptr_Monitors(this); }
    public var textures(get, never):ImVector_ImTextureDataPtr;
    inline function get_textures():ImVector_ImTextureDataPtr { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_ptr_Textures(this); }
    public var viewports(get, never):ImVector_ImGuiViewportPtr;
    inline function get_viewports():ImVector_ImGuiViewportPtr { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_ptr_Viewports(this); }
    /** sizeof(ImGuiPlatformIO) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiPlatformIO(); }

    inline public static function setPlatform_GetWindowWorkAreaInsets(getWindowWorkAreaInsetsFunc:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_SetPlatform_GetWindowWorkAreaInsets(getWindowWorkAreaInsetsFunc);
    }
    inline public static function setPlatform_GetWindowFramebufferScale(getWindowFramebufferScaleFunc:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_SetPlatform_GetWindowFramebufferScale(getWindowFramebufferScaleFunc);
    }
    inline public static function setPlatform_GetWindowPos(getWindowPosFunc:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_SetPlatform_GetWindowPos(getWindowPosFunc);
    }
    inline public static function setPlatform_GetWindowSize(getWindowSizeFunc:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_SetPlatform_GetWindowSize(getWindowSizeFunc);
    }
    inline public static function clearPlatformHandlers(self:ImGuiPlatformIO):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_ClearPlatformHandlers(self);
    }
    inline public static function clearRendererHandlers(self:ImGuiPlatformIO):Void {
        imguijs.ImGuiJs.M._dcjs_ImGuiPlatformIO_ClearRendererHandlers(self);
    }
}

abstract ImGuiPlatformMonitor(Int) from Int to Int {
    public var mainPos(get, set):ImVec2;
    inline function get_mainPos():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_get_MainPos(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_mainPos(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_set_MainPos(this, v.x, v.y); return v; }
    public var mainSize(get, set):ImVec2;
    inline function get_mainSize():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_get_MainSize(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_mainSize(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_set_MainSize(this, v.x, v.y); return v; }
    public var workPos(get, set):ImVec2;
    inline function get_workPos():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_get_WorkPos(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_workPos(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_set_WorkPos(this, v.x, v.y); return v; }
    public var workSize(get, set):ImVec2;
    inline function get_workSize():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_get_WorkSize(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_workSize(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_set_WorkSize(this, v.x, v.y); return v; }
    public var dpiScale(get, set):Float;
    inline function get_dpiScale():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_get_DpiScale(this); }
    inline function set_dpiScale(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_set_DpiScale(this, v); return v; }
    public var platformHandle(get, set):Int;
    inline function get_platformHandle():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_get_PlatformHandle(this); }
    inline function set_platformHandle(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformMonitor_set_PlatformHandle(this, v); return v; }
    /** sizeof(ImGuiPlatformMonitor) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiPlatformMonitor(); }
}

abstract ImGuiPlatformImeData(Int) from Int to Int {
    public var wantVisible(get, set):Bool;
    inline function get_wantVisible():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiPlatformImeData_get_WantVisible(this)) != 0; }
    inline function set_wantVisible(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformImeData_set_WantVisible(this, v); return v; }
    public var wantTextInput(get, set):Bool;
    inline function get_wantTextInput():Bool { return (imguijs.ImGuiJs.M._dcjs_ImGuiPlatformImeData_get_WantTextInput(this)) != 0; }
    inline function set_wantTextInput(v:Bool):Bool { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformImeData_set_WantTextInput(this, v); return v; }
    public var inputPos(get, set):ImVec2;
    inline function get_inputPos():ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformImeData_get_InputPos(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }
    inline function set_inputPos(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformImeData_set_InputPos(this, v.x, v.y); return v; }
    public var inputLineHeight(get, set):Float;
    inline function get_inputLineHeight():Float { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformImeData_get_InputLineHeight(this); }
    inline function set_inputLineHeight(v:Float):Float { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformImeData_set_InputLineHeight(this, v); return v; }
    public var viewportId(get, set):Int;
    inline function get_viewportId():Int { return imguijs.ImGuiJs.M._dcjs_ImGuiPlatformImeData_get_ViewportId(this); }
    inline function set_viewportId(v:Int):Int { imguijs.ImGuiJs.M._dcjs_ImGuiPlatformImeData_set_ViewportId(this, v); return v; }
    /** sizeof(ImGuiPlatformImeData) on the wasm side (element stride). */
    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_ImGuiPlatformImeData(); }
}

class ImGui {

    inline public static function createContext(sharedFontAtlas:ImFontAtlas = cast 0):ImGuiContext {
        return imguijs.ImGuiJs.M._dcjs_ImGui_CreateContext(sharedFontAtlas);
    }
    inline public static function destroyContext(ctx:ImGuiContext = cast 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_DestroyContext(ctx);
    }
    inline public static function getCurrentContext():ImGuiContext {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetCurrentContext();
    }
    inline public static function setCurrentContext(ctx:ImGuiContext):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetCurrentContext(ctx);
    }
    inline public static function getIO():ImGuiIO {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetIO();
    }
    inline public static function getPlatformIO():ImGuiPlatformIO {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetPlatformIO();
    }
    inline public static function getStyle():ImGuiStyle {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetStyle();
    }
    inline public static function newFrame():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_NewFrame();
    }
    inline public static function endFrame():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndFrame();
    }
    inline public static function render():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_Render();
    }
    inline public static function getDrawData():ImDrawData {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetDrawData();
    }
    inline public static function showDemoWindow(pOpen:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ShowDemoWindow(pOpen);
    }
    inline public static function showMetricsWindow(pOpen:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ShowMetricsWindow(pOpen);
    }
    inline public static function showDebugLogWindow(pOpen:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ShowDebugLogWindow(pOpen);
    }
    inline public static function showIDStackToolWindowEx(pOpen:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ShowIDStackToolWindowEx(pOpen);
    }
    inline public static function showIDStackToolWindow():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ShowIDStackToolWindow();
    }
    inline public static function showAboutWindow(pOpen:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ShowAboutWindow(pOpen);
    }
    inline public static function showStyleEditor(ref:ImGuiStyle = cast 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ShowStyleEditor(ref);
    }
    inline public static function showStyleSelector(label:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ShowStyleSelector(imguijs.ImGuiJs.str(label))) != 0;
    }
    inline public static function showFontSelector(label:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_ShowFontSelector(imguijs.ImGuiJs.str(label));
    }
    inline public static function showUserGuide():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ShowUserGuide();
    }
    inline public static function getVersion():String {
        return imguijs.ImGuiJs.M.UTF8ToString(imguijs.ImGuiJs.M._dcjs_ImGui_GetVersion());
    }
    inline public static function styleColorsDark(dst:ImGuiStyle = cast 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_StyleColorsDark(dst);
    }
    inline public static function styleColorsLight(dst:ImGuiStyle = cast 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_StyleColorsLight(dst);
    }
    inline public static function styleColorsClassic(dst:ImGuiStyle = cast 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_StyleColorsClassic(dst);
    }
    inline public static function begin(name:String, pOpen:Int = 0, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_Begin(imguijs.ImGuiJs.str(name), pOpen, flags)) != 0;
    }
    inline public static function end():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_End();
    }
    inline public static function beginChild(strId:String, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginChild(imguijs.ImGuiJs.str(strId), size.x, size.y, childFlags, windowFlags)) != 0;
    }
    inline public static function beginChildID(id:Int, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginChildID(id, size.x, size.y, childFlags, windowFlags)) != 0;
    }
    inline public static function endChild():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndChild();
    }
    inline public static function isWindowAppearing():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsWindowAppearing()) != 0;
    }
    inline public static function isWindowCollapsed():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsWindowCollapsed()) != 0;
    }
    inline public static function isWindowFocused(flags:Int = 0):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsWindowFocused(flags)) != 0;
    }
    inline public static function isWindowHovered(flags:Int = 0):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsWindowHovered(flags)) != 0;
    }
    inline public static function getWindowDrawList():ImDrawList {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetWindowDrawList();
    }
    inline public static function getWindowDpiScale():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetWindowDpiScale();
    }
    inline public static function getWindowPos():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetWindowPos(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getWindowSize():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetWindowSize(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getWindowWidth():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetWindowWidth();
    }
    inline public static function getWindowHeight():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetWindowHeight();
    }
    inline public static function getWindowViewport():ImGuiViewport {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetWindowViewport();
    }
    inline public static function setNextWindowPosEx(pos:ImVec2, cond:Int = 0, pivot:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowPosEx(pos.x, pos.y, cond, pivot.x, pivot.y);
    }
    inline public static function setNextWindowPos(pos:ImVec2, cond:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowPos(pos.x, pos.y, cond);
    }
    inline public static function setNextWindowSize(size:ImVec2, cond:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowSize(size.x, size.y, cond);
    }
    inline public static function setNextWindowSizeConstraints(sizeMin:ImVec2, sizeMax:ImVec2, customCallback:Int = 0, customCallbackData:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowSizeConstraints(sizeMin.x, sizeMin.y, sizeMax.x, sizeMax.y, customCallback, customCallbackData);
    }
    inline public static function setNextWindowContentSize(size:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowContentSize(size.x, size.y);
    }
    inline public static function setNextWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowCollapsed(collapsed, cond);
    }
    inline public static function setNextWindowFocus():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowFocus();
    }
    inline public static function setNextWindowScroll(scroll:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowScroll(scroll.x, scroll.y);
    }
    inline public static function setNextWindowBgAlpha(alpha:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowBgAlpha(alpha);
    }
    inline public static function setNextWindowViewport(viewportId:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowViewport(viewportId);
    }
    inline public static function setWindowPos(pos:ImVec2, cond:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetWindowPos(pos.x, pos.y, cond);
    }
    inline public static function setWindowSize(size:ImVec2, cond:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetWindowSize(size.x, size.y, cond);
    }
    inline public static function setWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetWindowCollapsed(collapsed, cond);
    }
    inline public static function setWindowFocus():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetWindowFocus();
    }
    inline public static function setWindowPosStr(name:String, pos:ImVec2, cond:Int = 0):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_SetWindowPosStr(imguijs.ImGuiJs.str(name), pos.x, pos.y, cond);
    }
    inline public static function setWindowSizeStr(name:String, size:ImVec2, cond:Int = 0):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_SetWindowSizeStr(imguijs.ImGuiJs.str(name), size.x, size.y, cond);
    }
    inline public static function setWindowCollapsedStr(name:String, collapsed:Bool, cond:Int = 0):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_SetWindowCollapsedStr(imguijs.ImGuiJs.str(name), collapsed, cond);
    }
    inline public static function setWindowFocusStr(name:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_SetWindowFocusStr(imguijs.ImGuiJs.str(name));
    }
    inline public static function getScrollX():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetScrollX();
    }
    inline public static function getScrollY():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetScrollY();
    }
    inline public static function setScrollX(scrollX:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetScrollX(scrollX);
    }
    inline public static function setScrollY(scrollY:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetScrollY(scrollY);
    }
    inline public static function getScrollMaxX():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetScrollMaxX();
    }
    inline public static function getScrollMaxY():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetScrollMaxY();
    }
    inline public static function setScrollHereX(centerXRatio:Float = 0.5):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetScrollHereX(centerXRatio);
    }
    inline public static function setScrollHereY(centerYRatio:Float = 0.5):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetScrollHereY(centerYRatio);
    }
    inline public static function setScrollFromPosX(localX:Float, centerXRatio:Float = 0.5):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetScrollFromPosX(localX, centerXRatio);
    }
    inline public static function setScrollFromPosY(localY:Float, centerYRatio:Float = 0.5):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetScrollFromPosY(localY, centerYRatio);
    }
    inline public static function pushFontFloat(font:ImFont, fontSizeBaseUnscaled:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushFontFloat(font, fontSizeBaseUnscaled);
    }
    inline public static function popFont():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PopFont();
    }
    inline public static function getFont():ImFont {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetFont();
    }
    inline public static function getFontSize():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetFontSize();
    }
    inline public static function getFontBaked():ImFontBaked {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetFontBaked();
    }
    inline public static function pushStyleColor(idx:Int, col:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushStyleColor(idx, col);
    }
    inline public static function pushStyleColorImVec4(idx:Int, col:ImVec4):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushStyleColorImVec4(idx, col.x, col.y, col.z, col.w);
    }
    inline public static function popStyleColorEx(count:Int = 1):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PopStyleColorEx(count);
    }
    inline public static function popStyleColor():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PopStyleColor();
    }
    inline public static function pushStyleVar(idx:Int, val:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushStyleVar(idx, val);
    }
    inline public static function pushStyleVarImVec2(idx:Int, val:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushStyleVarImVec2(idx, val.x, val.y);
    }
    inline public static function pushStyleVarX(idx:Int, valX:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushStyleVarX(idx, valX);
    }
    inline public static function pushStyleVarY(idx:Int, valY:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushStyleVarY(idx, valY);
    }
    inline public static function popStyleVarEx(count:Int = 1):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PopStyleVarEx(count);
    }
    inline public static function popStyleVar():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PopStyleVar();
    }
    inline public static function pushItemFlag(option:Int, enabled:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushItemFlag(option, enabled);
    }
    inline public static function popItemFlag():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PopItemFlag();
    }
    inline public static function pushItemWidth(itemWidth:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushItemWidth(itemWidth);
    }
    inline public static function popItemWidth():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PopItemWidth();
    }
    inline public static function setNextItemWidth(itemWidth:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextItemWidth(itemWidth);
    }
    inline public static function calcItemWidth():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_CalcItemWidth();
    }
    inline public static function pushTextWrapPos(wrapLocalPosX:Float = 0.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushTextWrapPos(wrapLocalPosX);
    }
    inline public static function popTextWrapPos():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PopTextWrapPos();
    }
    inline public static function getFontTexUvWhitePixel():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetFontTexUvWhitePixel(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getColorU32Ex(idx:Int, alphaMul:Float = 1.0):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetColorU32Ex(idx, alphaMul);
    }
    inline public static function getColorU32(idx:Int):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetColorU32(idx);
    }
    inline public static function getColorU32ImVec4(col:ImVec4):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetColorU32ImVec4(col.x, col.y, col.z, col.w);
    }
    inline public static function getColorU32ImU32Ex(col:Int, alphaMul:Float = 1.0):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetColorU32ImU32Ex(col, alphaMul);
    }
    inline public static function getColorU32ImU32(col:Int):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetColorU32ImU32(col);
    }
    inline public static function getStyleColorVec4(idx:Int):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetStyleColorVec4(idx);
    }
    inline public static function getCursorScreenPos():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetCursorScreenPos(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function setCursorScreenPos(pos:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetCursorScreenPos(pos.x, pos.y);
    }
    inline public static function getContentRegionAvail():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetContentRegionAvail(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getCursorPos():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetCursorPos(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getCursorPosX():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetCursorPosX();
    }
    inline public static function getCursorPosY():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetCursorPosY();
    }
    inline public static function setCursorPos(localPos:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetCursorPos(localPos.x, localPos.y);
    }
    inline public static function setCursorPosX(localX:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetCursorPosX(localX);
    }
    inline public static function setCursorPosY(localY:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetCursorPosY(localY);
    }
    inline public static function getCursorStartPos():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetCursorStartPos(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function separator():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_Separator();
    }
    inline public static function sameLineEx(offsetFromStartX:Float = 0.0, spacing:Float = -1.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SameLineEx(offsetFromStartX, spacing);
    }
    inline public static function sameLine():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SameLine();
    }
    inline public static function newLine():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_NewLine();
    }
    inline public static function spacing():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_Spacing();
    }
    inline public static function dummy(size:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_Dummy(size.x, size.y);
    }
    inline public static function indentEx(indentW:Float = 0.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_IndentEx(indentW);
    }
    inline public static function indent():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_Indent();
    }
    inline public static function unindentEx(indentW:Float = 0.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_UnindentEx(indentW);
    }
    inline public static function unindent():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_Unindent();
    }
    inline public static function beginGroup():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_BeginGroup();
    }
    inline public static function endGroup():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndGroup();
    }
    inline public static function alignTextToFramePadding():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_AlignTextToFramePadding();
    }
    inline public static function getTextLineHeight():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetTextLineHeight();
    }
    inline public static function getTextLineHeightWithSpacing():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetTextLineHeightWithSpacing();
    }
    inline public static function getFrameHeight():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetFrameHeight();
    }
    inline public static function getFrameHeightWithSpacing():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetFrameHeightWithSpacing();
    }
    inline public static function pushID(strId:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_PushID(imguijs.ImGuiJs.str(strId));
    }
    inline public static function pushIDStr(strIdBegin:String, strIdEnd:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_PushIDStr(imguijs.ImGuiJs.str(strIdBegin), imguijs.ImGuiJs.str(strIdEnd));
    }
    inline public static function pushIDPtr(ptrId:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushIDPtr(ptrId);
    }
    inline public static function pushIDInt(intId:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushIDInt(intId);
    }
    inline public static function popID():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PopID();
    }
    inline public static function getID(strId:String):Int {
        imguijs.ImGuiJs.strReset();
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetID(imguijs.ImGuiJs.str(strId));
    }
    inline public static function getIDStr(strIdBegin:String, strIdEnd:String):Int {
        imguijs.ImGuiJs.strReset();
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetIDStr(imguijs.ImGuiJs.str(strIdBegin), imguijs.ImGuiJs.str(strIdEnd));
    }
    inline public static function getIDPtr(ptrId:Int):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetIDPtr(ptrId);
    }
    inline public static function getIDInt(intId:Int):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetIDInt(intId);
    }
    inline public static function text(text:String, textEnd:String = null):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_TextUnformattedEx(imguijs.ImGuiJs.str(text), imguijs.ImGuiJs.str(textEnd));
    }
    inline public static function textUnformatted(text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_TextUnformatted(imguijs.ImGuiJs.str(text));
    }
    inline public static function textColored(col:ImVec4, text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_TextColoredUnformatted(col.x, col.y, col.z, col.w, imguijs.ImGuiJs.str(text));
    }
    inline public static function textDisabled(text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_TextDisabledUnformatted(imguijs.ImGuiJs.str(text));
    }
    inline public static function textWrapped(text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_TextWrappedUnformatted(imguijs.ImGuiJs.str(text));
    }
    inline public static function labelText(label:String, text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_LabelTextUnformatted(imguijs.ImGuiJs.str(label), imguijs.ImGuiJs.str(text));
    }
    inline public static function bulletText(text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_BulletTextUnformatted(imguijs.ImGuiJs.str(text));
    }
    inline public static function separatorText(label:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_SeparatorText(imguijs.ImGuiJs.str(label));
    }
    inline public static function buttonEx(label:String, size:ImVec2):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ButtonEx(imguijs.ImGuiJs.str(label), size.x, size.y)) != 0;
    }
    inline public static function button(label:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_Button(imguijs.ImGuiJs.str(label))) != 0;
    }
    inline public static function smallButton(label:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SmallButton(imguijs.ImGuiJs.str(label))) != 0;
    }
    inline public static function invisibleButton(strId:String, size:ImVec2, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InvisibleButton(imguijs.ImGuiJs.str(strId), size.x, size.y, flags)) != 0;
    }
    inline public static function arrowButton(strId:String, dir:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ArrowButton(imguijs.ImGuiJs.str(strId), dir)) != 0;
    }
    inline public static function checkbox(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_Checkbox(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function checkboxFlagsIntPtr(label:String, flags:Int, flagsValue:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_CheckboxFlagsIntPtr(imguijs.ImGuiJs.str(label), flags, flagsValue)) != 0;
    }
    inline public static function checkboxFlagsUintPtr(label:String, flags:Int, flagsValue:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_CheckboxFlagsUintPtr(imguijs.ImGuiJs.str(label), flags, flagsValue)) != 0;
    }
    inline public static function radioButton(label:String, active:Bool):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_RadioButton(imguijs.ImGuiJs.str(label), active)) != 0;
    }
    inline public static function radioButtonIntPtr(label:String, v:Int, vButton:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_RadioButtonIntPtr(imguijs.ImGuiJs.str(label), v, vButton)) != 0;
    }
    inline public static function progressBar(fraction:Float, sizeArg:ImVec2, overlay:String = null):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_ProgressBar(fraction, sizeArg.x, sizeArg.y, imguijs.ImGuiJs.str(overlay));
    }
    inline public static function bullet():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_Bullet();
    }
    inline public static function textLink(label:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TextLink(imguijs.ImGuiJs.str(label))) != 0;
    }
    inline public static function textLinkOpenURLEx(label:String, url:String = null):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TextLinkOpenURLEx(imguijs.ImGuiJs.str(label), imguijs.ImGuiJs.str(url))) != 0;
    }
    inline public static function textLinkOpenURL(label:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TextLinkOpenURL(imguijs.ImGuiJs.str(label))) != 0;
    }
    inline public static function imageEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ImageEx(texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID), imageSize.x, imageSize.y, uv0.x, uv0.y, uv1.x, uv1.y);
    }
    inline public static function image(texRef:ImTextureRef, imageSize:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_Image(texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID), imageSize.x, imageSize.y);
    }
    inline public static function imageWithBgEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ImageWithBgEx(texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID), imageSize.x, imageSize.y, uv0.x, uv0.y, uv1.x, uv1.y, bgCol.x, bgCol.y, bgCol.z, bgCol.w, tintCol.x, tintCol.y, tintCol.z, tintCol.w);
    }
    inline public static function imageWithBg(texRef:ImTextureRef, imageSize:ImVec2):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ImageWithBg(texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID), imageSize.x, imageSize.y);
    }
    inline public static function imageButtonEx(strId:String, texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ImageButtonEx(imguijs.ImGuiJs.str(strId), texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID), imageSize.x, imageSize.y, uv0.x, uv0.y, uv1.x, uv1.y, bgCol.x, bgCol.y, bgCol.z, bgCol.w, tintCol.x, tintCol.y, tintCol.z, tintCol.w)) != 0;
    }
    inline public static function imageButton(strId:String, texRef:ImTextureRef, imageSize:ImVec2):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ImageButton(imguijs.ImGuiJs.str(strId), texRef._TexData, imguijs.ImGuiJs.u64(texRef._TexID), imageSize.x, imageSize.y)) != 0;
    }
    inline public static function beginCombo(label:String, previewValue:String, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginCombo(imguijs.ImGuiJs.str(label), imguijs.ImGuiJs.str(previewValue), flags)) != 0;
    }
    inline public static function endCombo():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndCombo();
    }
    inline public static function comboCharEx(label:String, currentItem:Int, items:Int, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ComboCharEx(imguijs.ImGuiJs.str(label), currentItem, items, itemsCount, popupMaxHeightInItems)) != 0;
    }
    inline public static function comboChar(label:String, currentItem:Int, items:Int, itemsCount:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ComboChar(imguijs.ImGuiJs.str(label), currentItem, items, itemsCount)) != 0;
    }
    inline public static function comboEx(label:String, currentItem:Int, itemsSeparatedByZeros:String, popupMaxHeightInItems:Int = -1):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ComboEx(imguijs.ImGuiJs.str(label), currentItem, imguijs.ImGuiJs.str(itemsSeparatedByZeros), popupMaxHeightInItems)) != 0;
    }
    inline public static function combo(label:String, currentItem:Int, itemsSeparatedByZeros:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_Combo(imguijs.ImGuiJs.str(label), currentItem, imguijs.ImGuiJs.str(itemsSeparatedByZeros))) != 0;
    }
    inline public static function comboCallbackEx(label:String, currentItem:Int, getter:Int, userData:Int, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ComboCallbackEx(imguijs.ImGuiJs.str(label), currentItem, getter, userData, itemsCount, popupMaxHeightInItems)) != 0;
    }
    inline public static function comboCallback(label:String, currentItem:Int, getter:Int, userData:Int, itemsCount:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ComboCallback(imguijs.ImGuiJs.str(label), currentItem, getter, userData, itemsCount)) != 0;
    }
    inline public static function dragFloatEx(label:String, v:Int, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragFloatEx(imguijs.ImGuiJs.str(label), v, vSpeed, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function dragFloat(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragFloat(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function dragFloat2Ex(label:String, v:Int, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragFloat2Ex(imguijs.ImGuiJs.str(label), v, vSpeed, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function dragFloat2(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragFloat2(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function dragFloat3Ex(label:String, v:Int, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragFloat3Ex(imguijs.ImGuiJs.str(label), v, vSpeed, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function dragFloat3(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragFloat3(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function dragFloat4Ex(label:String, v:Int, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragFloat4Ex(imguijs.ImGuiJs.str(label), v, vSpeed, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function dragFloat4(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragFloat4(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function dragFloatRange2Ex(label:String, vCurrentMin:Int, vCurrentMax:Int, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", formatMax:String = null, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragFloatRange2Ex(imguijs.ImGuiJs.str(label), vCurrentMin, vCurrentMax, vSpeed, vMin, vMax, imguijs.ImGuiJs.str(format), imguijs.ImGuiJs.str(formatMax), flags)) != 0;
    }
    inline public static function dragFloatRange2(label:String, vCurrentMin:Int, vCurrentMax:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragFloatRange2(imguijs.ImGuiJs.str(label), vCurrentMin, vCurrentMax)) != 0;
    }
    inline public static function dragIntEx(label:String, v:Int, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragIntEx(imguijs.ImGuiJs.str(label), v, vSpeed, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function dragInt(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragInt(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function dragInt2Ex(label:String, v:Int, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragInt2Ex(imguijs.ImGuiJs.str(label), v, vSpeed, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function dragInt2(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragInt2(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function dragInt3Ex(label:String, v:Int, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragInt3Ex(imguijs.ImGuiJs.str(label), v, vSpeed, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function dragInt3(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragInt3(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function dragInt4Ex(label:String, v:Int, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragInt4Ex(imguijs.ImGuiJs.str(label), v, vSpeed, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function dragInt4(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragInt4(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function dragIntRange2Ex(label:String, vCurrentMin:Int, vCurrentMax:Int, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", formatMax:String = null, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragIntRange2Ex(imguijs.ImGuiJs.str(label), vCurrentMin, vCurrentMax, vSpeed, vMin, vMax, imguijs.ImGuiJs.str(format), imguijs.ImGuiJs.str(formatMax), flags)) != 0;
    }
    inline public static function dragIntRange2(label:String, vCurrentMin:Int, vCurrentMax:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragIntRange2(imguijs.ImGuiJs.str(label), vCurrentMin, vCurrentMax)) != 0;
    }
    inline public static function dragScalarEx(label:String, dataType:Int, pData:Int, vSpeed:Float = 1.0, pMin:Int = 0, pMax:Int = 0, format:String = null, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragScalarEx(imguijs.ImGuiJs.str(label), dataType, pData, vSpeed, pMin, pMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function dragScalar(label:String, dataType:Int, pData:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragScalar(imguijs.ImGuiJs.str(label), dataType, pData)) != 0;
    }
    inline public static function dragScalarNEx(label:String, dataType:Int, pData:Int, components:Int, vSpeed:Float = 1.0, pMin:Int = 0, pMax:Int = 0, format:String = null, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragScalarNEx(imguijs.ImGuiJs.str(label), dataType, pData, components, vSpeed, pMin, pMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function dragScalarN(label:String, dataType:Int, pData:Int, components:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DragScalarN(imguijs.ImGuiJs.str(label), dataType, pData, components)) != 0;
    }
    inline public static function sliderFloatEx(label:String, v:Int, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderFloatEx(imguijs.ImGuiJs.str(label), v, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function sliderFloat(label:String, v:Int, vMin:Float, vMax:Float):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderFloat(imguijs.ImGuiJs.str(label), v, vMin, vMax)) != 0;
    }
    inline public static function sliderFloat2Ex(label:String, v:Int, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderFloat2Ex(imguijs.ImGuiJs.str(label), v, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function sliderFloat2(label:String, v:Int, vMin:Float, vMax:Float):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderFloat2(imguijs.ImGuiJs.str(label), v, vMin, vMax)) != 0;
    }
    inline public static function sliderFloat3Ex(label:String, v:Int, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderFloat3Ex(imguijs.ImGuiJs.str(label), v, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function sliderFloat3(label:String, v:Int, vMin:Float, vMax:Float):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderFloat3(imguijs.ImGuiJs.str(label), v, vMin, vMax)) != 0;
    }
    inline public static function sliderFloat4Ex(label:String, v:Int, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderFloat4Ex(imguijs.ImGuiJs.str(label), v, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function sliderFloat4(label:String, v:Int, vMin:Float, vMax:Float):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderFloat4(imguijs.ImGuiJs.str(label), v, vMin, vMax)) != 0;
    }
    inline public static function sliderAngleEx(label:String, vRad:Int, vDegreesMin:Float = -360.0, vDegreesMax:Float, format:String = "%.0f deg", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderAngleEx(imguijs.ImGuiJs.str(label), vRad, vDegreesMin, vDegreesMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function sliderAngle(label:String, vRad:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderAngle(imguijs.ImGuiJs.str(label), vRad)) != 0;
    }
    inline public static function sliderIntEx(label:String, v:Int, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderIntEx(imguijs.ImGuiJs.str(label), v, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function sliderInt(label:String, v:Int, vMin:Int, vMax:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderInt(imguijs.ImGuiJs.str(label), v, vMin, vMax)) != 0;
    }
    inline public static function sliderInt2Ex(label:String, v:Int, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderInt2Ex(imguijs.ImGuiJs.str(label), v, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function sliderInt2(label:String, v:Int, vMin:Int, vMax:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderInt2(imguijs.ImGuiJs.str(label), v, vMin, vMax)) != 0;
    }
    inline public static function sliderInt3Ex(label:String, v:Int, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderInt3Ex(imguijs.ImGuiJs.str(label), v, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function sliderInt3(label:String, v:Int, vMin:Int, vMax:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderInt3(imguijs.ImGuiJs.str(label), v, vMin, vMax)) != 0;
    }
    inline public static function sliderInt4Ex(label:String, v:Int, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderInt4Ex(imguijs.ImGuiJs.str(label), v, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function sliderInt4(label:String, v:Int, vMin:Int, vMax:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderInt4(imguijs.ImGuiJs.str(label), v, vMin, vMax)) != 0;
    }
    inline public static function sliderScalarEx(label:String, dataType:Int, pData:Int, pMin:Int, pMax:Int, format:String = null, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderScalarEx(imguijs.ImGuiJs.str(label), dataType, pData, pMin, pMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function sliderScalar(label:String, dataType:Int, pData:Int, pMin:Int, pMax:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderScalar(imguijs.ImGuiJs.str(label), dataType, pData, pMin, pMax)) != 0;
    }
    inline public static function sliderScalarNEx(label:String, dataType:Int, pData:Int, components:Int, pMin:Int, pMax:Int, format:String = null, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderScalarNEx(imguijs.ImGuiJs.str(label), dataType, pData, components, pMin, pMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function sliderScalarN(label:String, dataType:Int, pData:Int, components:Int, pMin:Int, pMax:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SliderScalarN(imguijs.ImGuiJs.str(label), dataType, pData, components, pMin, pMax)) != 0;
    }
    inline public static function vSliderFloatEx(label:String, size:ImVec2, v:Int, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_VSliderFloatEx(imguijs.ImGuiJs.str(label), size.x, size.y, v, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function vSliderFloat(label:String, size:ImVec2, v:Int, vMin:Float, vMax:Float):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_VSliderFloat(imguijs.ImGuiJs.str(label), size.x, size.y, v, vMin, vMax)) != 0;
    }
    inline public static function vSliderIntEx(label:String, size:ImVec2, v:Int, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_VSliderIntEx(imguijs.ImGuiJs.str(label), size.x, size.y, v, vMin, vMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function vSliderInt(label:String, size:ImVec2, v:Int, vMin:Int, vMax:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_VSliderInt(imguijs.ImGuiJs.str(label), size.x, size.y, v, vMin, vMax)) != 0;
    }
    inline public static function vSliderScalarEx(label:String, size:ImVec2, dataType:Int, pData:Int, pMin:Int, pMax:Int, format:String = null, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_VSliderScalarEx(imguijs.ImGuiJs.str(label), size.x, size.y, dataType, pData, pMin, pMax, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function vSliderScalar(label:String, size:ImVec2, dataType:Int, pData:Int, pMin:Int, pMax:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_VSliderScalar(imguijs.ImGuiJs.str(label), size.x, size.y, dataType, pData, pMin, pMax)) != 0;
    }
    inline public static function inputTextEx(label:String, buf:Int, bufSize:Int, flags:Int = 0, callback:Int = 0, userData:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputTextEx(imguijs.ImGuiJs.str(label), buf, bufSize, flags, callback, userData)) != 0;
    }
    inline public static function inputText(label:String, buf:Int, bufSize:Int, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputText(imguijs.ImGuiJs.str(label), buf, bufSize, flags)) != 0;
    }
    inline public static function inputTextMultilineEx(label:String, buf:Int, bufSize:Int, size:ImVec2, flags:Int = 0, callback:Int = 0, userData:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputTextMultilineEx(imguijs.ImGuiJs.str(label), buf, bufSize, size.x, size.y, flags, callback, userData)) != 0;
    }
    inline public static function inputTextMultiline(label:String, buf:Int, bufSize:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputTextMultiline(imguijs.ImGuiJs.str(label), buf, bufSize)) != 0;
    }
    inline public static function inputTextWithHintEx(label:String, hint:String, buf:Int, bufSize:Int, flags:Int = 0, callback:Int = 0, userData:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputTextWithHintEx(imguijs.ImGuiJs.str(label), imguijs.ImGuiJs.str(hint), buf, bufSize, flags, callback, userData)) != 0;
    }
    inline public static function inputTextWithHint(label:String, hint:String, buf:Int, bufSize:Int, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputTextWithHint(imguijs.ImGuiJs.str(label), imguijs.ImGuiJs.str(hint), buf, bufSize, flags)) != 0;
    }
    inline public static function inputFloatEx(label:String, v:Int, step:Float = 0.0, stepFast:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputFloatEx(imguijs.ImGuiJs.str(label), v, step, stepFast, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function inputFloat(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputFloat(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function inputFloat2Ex(label:String, v:Int, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputFloat2Ex(imguijs.ImGuiJs.str(label), v, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function inputFloat2(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputFloat2(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function inputFloat3Ex(label:String, v:Int, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputFloat3Ex(imguijs.ImGuiJs.str(label), v, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function inputFloat3(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputFloat3(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function inputFloat4Ex(label:String, v:Int, format:String = "%.3f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputFloat4Ex(imguijs.ImGuiJs.str(label), v, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function inputFloat4(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputFloat4(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function inputIntEx(label:String, v:Int, step:Int = 1, stepFast:Int = 100, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputIntEx(imguijs.ImGuiJs.str(label), v, step, stepFast, flags)) != 0;
    }
    inline public static function inputInt(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputInt(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function inputInt2(label:String, v:Int, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputInt2(imguijs.ImGuiJs.str(label), v, flags)) != 0;
    }
    inline public static function inputInt3(label:String, v:Int, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputInt3(imguijs.ImGuiJs.str(label), v, flags)) != 0;
    }
    inline public static function inputInt4(label:String, v:Int, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputInt4(imguijs.ImGuiJs.str(label), v, flags)) != 0;
    }
    inline public static function inputDoubleEx(label:String, v:Int, step:Float = 0.0, stepFast:Float = 0.0, format:String = "%.6f", flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputDoubleEx(imguijs.ImGuiJs.str(label), v, step, stepFast, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function inputDouble(label:String, v:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputDouble(imguijs.ImGuiJs.str(label), v)) != 0;
    }
    inline public static function inputScalarEx(label:String, dataType:Int, pData:Int, pStep:Int = 0, pStepFast:Int = 0, format:String = null, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputScalarEx(imguijs.ImGuiJs.str(label), dataType, pData, pStep, pStepFast, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function inputScalar(label:String, dataType:Int, pData:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputScalar(imguijs.ImGuiJs.str(label), dataType, pData)) != 0;
    }
    inline public static function inputScalarNEx(label:String, dataType:Int, pData:Int, components:Int, pStep:Int = 0, pStepFast:Int = 0, format:String = null, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputScalarNEx(imguijs.ImGuiJs.str(label), dataType, pData, components, pStep, pStepFast, imguijs.ImGuiJs.str(format), flags)) != 0;
    }
    inline public static function inputScalarN(label:String, dataType:Int, pData:Int, components:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_InputScalarN(imguijs.ImGuiJs.str(label), dataType, pData, components)) != 0;
    }
    inline public static function colorEdit3(label:String, col:Int, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ColorEdit3(imguijs.ImGuiJs.str(label), col, flags)) != 0;
    }
    inline public static function colorEdit4(label:String, col:Int, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ColorEdit4(imguijs.ImGuiJs.str(label), col, flags)) != 0;
    }
    inline public static function colorPicker3(label:String, col:Int, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ColorPicker3(imguijs.ImGuiJs.str(label), col, flags)) != 0;
    }
    inline public static function colorPicker4(label:String, col:Int, flags:Int = 0, refCol:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ColorPicker4(imguijs.ImGuiJs.str(label), col, flags, refCol)) != 0;
    }
    inline public static function colorButtonEx(descId:String, col:ImVec4, flags:Int = 0, size:ImVec2):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ColorButtonEx(imguijs.ImGuiJs.str(descId), col.x, col.y, col.z, col.w, flags, size.x, size.y)) != 0;
    }
    inline public static function colorButton(descId:String, col:ImVec4, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ColorButton(imguijs.ImGuiJs.str(descId), col.x, col.y, col.z, col.w, flags)) != 0;
    }
    inline public static function setColorEditOptions(flags:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetColorEditOptions(flags);
    }
    inline public static function treeNode(label:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TreeNode(imguijs.ImGuiJs.str(label))) != 0;
    }
    inline public static function treeNodeStr(strId:String, text:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TreeNodeStrUnformatted(imguijs.ImGuiJs.str(strId), imguijs.ImGuiJs.str(text))) != 0;
    }
    inline public static function treeNodePtr(ptrId:Int, text:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TreeNodePtrUnformatted(ptrId, imguijs.ImGuiJs.str(text))) != 0;
    }
    inline public static function treeNodeEx(label:String, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TreeNodeEx(imguijs.ImGuiJs.str(label), flags)) != 0;
    }
    inline public static function treeNodeExStr(strId:String, flags:Int, text:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TreeNodeExStrUnformatted(imguijs.ImGuiJs.str(strId), flags, imguijs.ImGuiJs.str(text))) != 0;
    }
    inline public static function treeNodeExPtr(ptrId:Int, flags:Int, text:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TreeNodeExPtrUnformatted(ptrId, flags, imguijs.ImGuiJs.str(text))) != 0;
    }
    inline public static function treePush(strId:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_TreePush(imguijs.ImGuiJs.str(strId));
    }
    inline public static function treePushPtr(ptrId:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_TreePushPtr(ptrId);
    }
    inline public static function treePop():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_TreePop();
    }
    inline public static function getTreeNodeToLabelSpacing():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetTreeNodeToLabelSpacing();
    }
    inline public static function collapsingHeader(label:String, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_CollapsingHeader(imguijs.ImGuiJs.str(label), flags)) != 0;
    }
    inline public static function collapsingHeaderBoolPtr(label:String, pVisible:Int, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_CollapsingHeaderBoolPtr(imguijs.ImGuiJs.str(label), pVisible, flags)) != 0;
    }
    inline public static function setNextItemOpen(isOpen:Bool, cond:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextItemOpen(isOpen, cond);
    }
    inline public static function setNextItemStorageID(storageId:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextItemStorageID(storageId);
    }
    inline public static function treeNodeGetOpen(storageId:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TreeNodeGetOpen(storageId)) != 0;
    }
    inline public static function selectableEx(label:String, selected:Bool = false, flags:Int = 0, size:ImVec2):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SelectableEx(imguijs.ImGuiJs.str(label), selected, flags, size.x, size.y)) != 0;
    }
    inline public static function selectable(label:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_Selectable(imguijs.ImGuiJs.str(label))) != 0;
    }
    inline public static function selectableBoolPtrEx(label:String, pSelected:Int, flags:Int = 0, size:ImVec2):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SelectableBoolPtrEx(imguijs.ImGuiJs.str(label), pSelected, flags, size.x, size.y)) != 0;
    }
    inline public static function selectableBoolPtr(label:String, pSelected:Int, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SelectableBoolPtr(imguijs.ImGuiJs.str(label), pSelected, flags)) != 0;
    }
    inline public static function beginMultiSelectEx(flags:Int, selectionSize:Int = -1, itemsCount:Int = -1):ImGuiMultiSelectIO {
        return imguijs.ImGuiJs.M._dcjs_ImGui_BeginMultiSelectEx(flags, selectionSize, itemsCount);
    }
    inline public static function beginMultiSelect(flags:Int):ImGuiMultiSelectIO {
        return imguijs.ImGuiJs.M._dcjs_ImGui_BeginMultiSelect(flags);
    }
    inline public static function endMultiSelect():ImGuiMultiSelectIO {
        return imguijs.ImGuiJs.M._dcjs_ImGui_EndMultiSelect();
    }
    inline public static function setNextItemSelectionUserData(selectionUserData:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextItemSelectionUserData(imguijs.ImGuiJs.u64(selectionUserData));
    }
    inline public static function isItemToggledSelection():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemToggledSelection()) != 0;
    }
    inline public static function beginListBox(label:String, size:ImVec2):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginListBox(imguijs.ImGuiJs.str(label), size.x, size.y)) != 0;
    }
    inline public static function endListBox():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndListBox();
    }
    inline public static function listBox(label:String, currentItem:Int, items:Int, itemsCount:Int, heightInItems:Int = -1):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ListBox(imguijs.ImGuiJs.str(label), currentItem, items, itemsCount, heightInItems)) != 0;
    }
    inline public static function listBoxCallbackEx(label:String, currentItem:Int, getter:Int, userData:Int, itemsCount:Int, heightInItems:Int = -1):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ListBoxCallbackEx(imguijs.ImGuiJs.str(label), currentItem, getter, userData, itemsCount, heightInItems)) != 0;
    }
    inline public static function listBoxCallback(label:String, currentItem:Int, getter:Int, userData:Int, itemsCount:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_ListBoxCallback(imguijs.ImGuiJs.str(label), currentItem, getter, userData, itemsCount)) != 0;
    }
    inline public static function plotLinesEx(label:String, values:Int, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_PlotLinesEx(imguijs.ImGuiJs.str(label), values, valuesCount, valuesOffset, imguijs.ImGuiJs.str(overlayText), scaleMin, scaleMax, graphSize.x, graphSize.y, stride);
    }
    inline public static function plotLines(label:String, values:Int, valuesCount:Int):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_PlotLines(imguijs.ImGuiJs.str(label), values, valuesCount);
    }
    inline public static function plotLinesCallbackEx(label:String, valuesGetter:Int, data:Int, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_PlotLinesCallbackEx(imguijs.ImGuiJs.str(label), valuesGetter, data, valuesCount, valuesOffset, imguijs.ImGuiJs.str(overlayText), scaleMin, scaleMax, graphSize.x, graphSize.y);
    }
    inline public static function plotLinesCallback(label:String, valuesGetter:Int, data:Int, valuesCount:Int):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_PlotLinesCallback(imguijs.ImGuiJs.str(label), valuesGetter, data, valuesCount);
    }
    inline public static function plotHistogramEx(label:String, values:Int, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_PlotHistogramEx(imguijs.ImGuiJs.str(label), values, valuesCount, valuesOffset, imguijs.ImGuiJs.str(overlayText), scaleMin, scaleMax, graphSize.x, graphSize.y, stride);
    }
    inline public static function plotHistogram(label:String, values:Int, valuesCount:Int):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_PlotHistogram(imguijs.ImGuiJs.str(label), values, valuesCount);
    }
    inline public static function plotHistogramCallbackEx(label:String, valuesGetter:Int, data:Int, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_PlotHistogramCallbackEx(imguijs.ImGuiJs.str(label), valuesGetter, data, valuesCount, valuesOffset, imguijs.ImGuiJs.str(overlayText), scaleMin, scaleMax, graphSize.x, graphSize.y);
    }
    inline public static function plotHistogramCallback(label:String, valuesGetter:Int, data:Int, valuesCount:Int):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_PlotHistogramCallback(imguijs.ImGuiJs.str(label), valuesGetter, data, valuesCount);
    }
    inline public static function beginMenuBar():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginMenuBar()) != 0;
    }
    inline public static function endMenuBar():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndMenuBar();
    }
    inline public static function beginMainMenuBar():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginMainMenuBar()) != 0;
    }
    inline public static function endMainMenuBar():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndMainMenuBar();
    }
    inline public static function beginMenuEx(label:String, enabled:Bool = true):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginMenuEx(imguijs.ImGuiJs.str(label), enabled)) != 0;
    }
    inline public static function beginMenu(label:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginMenu(imguijs.ImGuiJs.str(label))) != 0;
    }
    inline public static function endMenu():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndMenu();
    }
    inline public static function menuItemEx(label:String, shortcut:String = null, selected:Bool = false, enabled:Bool = true):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_MenuItemEx(imguijs.ImGuiJs.str(label), imguijs.ImGuiJs.str(shortcut), selected, enabled)) != 0;
    }
    inline public static function menuItem(label:String):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_MenuItem(imguijs.ImGuiJs.str(label))) != 0;
    }
    inline public static function menuItemBoolPtr(label:String, shortcut:String, pSelected:Int, enabled:Bool = true):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_MenuItemBoolPtr(imguijs.ImGuiJs.str(label), imguijs.ImGuiJs.str(shortcut), pSelected, enabled)) != 0;
    }
    inline public static function beginTooltip():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginTooltip()) != 0;
    }
    inline public static function endTooltip():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndTooltip();
    }
    inline public static function setTooltip(text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_SetTooltipUnformatted(imguijs.ImGuiJs.str(text));
    }
    inline public static function beginItemTooltip():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginItemTooltip()) != 0;
    }
    inline public static function setItemTooltip(text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_SetItemTooltipUnformatted(imguijs.ImGuiJs.str(text));
    }
    inline public static function beginPopup(strId:String, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginPopup(imguijs.ImGuiJs.str(strId), flags)) != 0;
    }
    inline public static function beginPopupModal(name:String, pOpen:Int = 0, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginPopupModal(imguijs.ImGuiJs.str(name), pOpen, flags)) != 0;
    }
    inline public static function endPopup():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndPopup();
    }
    inline public static function openPopup(strId:String, popupFlags:Int = 0):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_OpenPopup(imguijs.ImGuiJs.str(strId), popupFlags);
    }
    inline public static function openPopupID(id:Int, popupFlags:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_OpenPopupID(id, popupFlags);
    }
    inline public static function openPopupOnItemClick(strId:String = null, popupFlags:Int = 0):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_OpenPopupOnItemClick(imguijs.ImGuiJs.str(strId), popupFlags);
    }
    inline public static function closeCurrentPopup():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_CloseCurrentPopup();
    }
    inline public static function beginPopupContextItemEx(strId:String = null, popupFlags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginPopupContextItemEx(imguijs.ImGuiJs.str(strId), popupFlags)) != 0;
    }
    inline public static function beginPopupContextItem():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginPopupContextItem()) != 0;
    }
    inline public static function beginPopupContextWindowEx(strId:String = null, popupFlags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginPopupContextWindowEx(imguijs.ImGuiJs.str(strId), popupFlags)) != 0;
    }
    inline public static function beginPopupContextWindow():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginPopupContextWindow()) != 0;
    }
    inline public static function beginPopupContextVoidEx(strId:String = null, popupFlags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginPopupContextVoidEx(imguijs.ImGuiJs.str(strId), popupFlags)) != 0;
    }
    inline public static function beginPopupContextVoid():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginPopupContextVoid()) != 0;
    }
    inline public static function isPopupOpen(strId:String, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsPopupOpen(imguijs.ImGuiJs.str(strId), flags)) != 0;
    }
    inline public static function beginTableEx(strId:String, columns:Int, flags:Int = 0, outerSize:ImVec2, innerWidth:Float = 0.0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginTableEx(imguijs.ImGuiJs.str(strId), columns, flags, outerSize.x, outerSize.y, innerWidth)) != 0;
    }
    inline public static function beginTable(strId:String, columns:Int, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginTable(imguijs.ImGuiJs.str(strId), columns, flags)) != 0;
    }
    inline public static function endTable():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndTable();
    }
    inline public static function tableNextRowEx(rowFlags:Int = 0, minRowHeight:Float = 0.0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_TableNextRowEx(rowFlags, minRowHeight);
    }
    inline public static function tableNextRow():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_TableNextRow();
    }
    inline public static function tableNextColumn():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TableNextColumn()) != 0;
    }
    inline public static function tableSetColumnIndex(columnN:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TableSetColumnIndex(columnN)) != 0;
    }
    inline public static function tableSetupColumnEx(label:String, flags:Int = 0, initWidthOrWeight:Float = 0.0, userId:Int = 0):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_TableSetupColumnEx(imguijs.ImGuiJs.str(label), flags, initWidthOrWeight, userId);
    }
    inline public static function tableSetupColumn(label:String, flags:Int = 0):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_TableSetupColumn(imguijs.ImGuiJs.str(label), flags);
    }
    inline public static function tableSetupScrollFreeze(cols:Int, rows:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_TableSetupScrollFreeze(cols, rows);
    }
    inline public static function tableHeader(label:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_TableHeader(imguijs.ImGuiJs.str(label));
    }
    inline public static function tableHeadersRow():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_TableHeadersRow();
    }
    inline public static function tableAngledHeadersRow():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_TableAngledHeadersRow();
    }
    inline public static function tableGetSortSpecs():ImGuiTableSortSpecs {
        return imguijs.ImGuiJs.M._dcjs_ImGui_TableGetSortSpecs();
    }
    inline public static function tableGetColumnCount():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_TableGetColumnCount();
    }
    inline public static function tableGetColumnIndex():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_TableGetColumnIndex();
    }
    inline public static function tableGetRowIndex():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_TableGetRowIndex();
    }
    inline public static function tableGetColumnName(columnN:Int = -1):String {
        return imguijs.ImGuiJs.M.UTF8ToString(imguijs.ImGuiJs.M._dcjs_ImGui_TableGetColumnName(columnN));
    }
    inline public static function tableGetColumnFlags(columnN:Int = -1):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_TableGetColumnFlags(columnN);
    }
    inline public static function tableSetColumnEnabled(columnN:Int, v:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_TableSetColumnEnabled(columnN, v);
    }
    inline public static function tableGetHoveredColumn():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_TableGetHoveredColumn();
    }
    inline public static function tableSetBgColor(target:Int, color:Int, columnN:Int = -1):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_TableSetBgColor(target, color, columnN);
    }
    inline public static function columnsEx(count:Int = 1, id:String = null, borders:Bool = true):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_ColumnsEx(count, imguijs.ImGuiJs.str(id), borders);
    }
    inline public static function columns():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_Columns();
    }
    inline public static function nextColumn():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_NextColumn();
    }
    inline public static function getColumnIndex():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetColumnIndex();
    }
    inline public static function getColumnWidth(columnIndex:Int = -1):Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetColumnWidth(columnIndex);
    }
    inline public static function setColumnWidth(columnIndex:Int, width:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetColumnWidth(columnIndex, width);
    }
    inline public static function getColumnOffset(columnIndex:Int = -1):Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetColumnOffset(columnIndex);
    }
    inline public static function setColumnOffset(columnIndex:Int, offsetX:Float):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetColumnOffset(columnIndex, offsetX);
    }
    inline public static function getColumnsCount():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetColumnsCount();
    }
    inline public static function beginTabBar(strId:String, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginTabBar(imguijs.ImGuiJs.str(strId), flags)) != 0;
    }
    inline public static function endTabBar():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndTabBar();
    }
    inline public static function beginTabItem(label:String, pOpen:Int = 0, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginTabItem(imguijs.ImGuiJs.str(label), pOpen, flags)) != 0;
    }
    inline public static function endTabItem():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndTabItem();
    }
    inline public static function tabItemButton(label:String, flags:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_TabItemButton(imguijs.ImGuiJs.str(label), flags)) != 0;
    }
    inline public static function setTabItemClosed(tabOrDockedWindowLabel:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_SetTabItemClosed(imguijs.ImGuiJs.str(tabOrDockedWindowLabel));
    }
    inline public static function dockSpaceEx(dockspaceId:Int, size:ImVec2, flags:Int = 0, windowClass:ImGuiWindowClass = cast 0):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_DockSpaceEx(dockspaceId, size.x, size.y, flags, windowClass);
    }
    inline public static function dockSpace(dockspaceId:Int):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_DockSpace(dockspaceId);
    }
    inline public static function dockSpaceOverViewportEx(dockspaceId:Int = 0, viewport:ImGuiViewport = cast 0, flags:Int = 0, windowClass:ImGuiWindowClass = cast 0):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_DockSpaceOverViewportEx(dockspaceId, viewport, flags, windowClass);
    }
    inline public static function dockSpaceOverViewport():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_DockSpaceOverViewport();
    }
    inline public static function setNextWindowDockID(dockId:Int, cond:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowDockID(dockId, cond);
    }
    inline public static function setNextWindowClass(windowClass:ImGuiWindowClass):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextWindowClass(windowClass);
    }
    inline public static function getWindowDockID():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetWindowDockID();
    }
    inline public static function isWindowDocked():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsWindowDocked()) != 0;
    }
    inline public static function logToTTY(autoOpenDepth:Int = -1):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_LogToTTY(autoOpenDepth);
    }
    inline public static function logToFile(autoOpenDepth:Int = -1, filename:String = null):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_LogToFile(autoOpenDepth, imguijs.ImGuiJs.str(filename));
    }
    inline public static function logToClipboard(autoOpenDepth:Int = -1):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_LogToClipboard(autoOpenDepth);
    }
    inline public static function logFinish():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_LogFinish();
    }
    inline public static function logButtons():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_LogButtons();
    }
    inline public static function logText(text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_LogTextUnformatted(imguijs.ImGuiJs.str(text));
    }
    inline public static function beginDragDropSource(flags:Int = 0):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginDragDropSource(flags)) != 0;
    }
    inline public static function setDragDropPayload(type:String, data:Int, sz:Int, cond:Int = 0):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SetDragDropPayload(imguijs.ImGuiJs.str(type), data, sz, cond)) != 0;
    }
    inline public static function endDragDropSource():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndDragDropSource();
    }
    inline public static function beginDragDropTarget():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_BeginDragDropTarget()) != 0;
    }
    inline public static function acceptDragDropPayload(type:String, flags:Int = 0):ImGuiPayload {
        imguijs.ImGuiJs.strReset();
        return imguijs.ImGuiJs.M._dcjs_ImGui_AcceptDragDropPayload(imguijs.ImGuiJs.str(type), flags);
    }
    inline public static function endDragDropTarget():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndDragDropTarget();
    }
    inline public static function getDragDropPayload():ImGuiPayload {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetDragDropPayload();
    }
    inline public static function beginDisabled(disabled:Bool = true):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_BeginDisabled(disabled);
    }
    inline public static function endDisabled():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_EndDisabled();
    }
    inline public static function pushClipRect(clipRectMin:ImVec2, clipRectMax:ImVec2, intersectWithCurrentClipRect:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PushClipRect(clipRectMin.x, clipRectMin.y, clipRectMax.x, clipRectMax.y, intersectWithCurrentClipRect);
    }
    inline public static function popClipRect():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_PopClipRect();
    }
    inline public static function setItemDefaultFocus():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetItemDefaultFocus();
    }
    inline public static function setKeyboardFocusHereEx(offset:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetKeyboardFocusHereEx(offset);
    }
    inline public static function setKeyboardFocusHere():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetKeyboardFocusHere();
    }
    inline public static function setNavCursorVisible(visible:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNavCursorVisible(visible);
    }
    inline public static function setNextItemAllowOverlap():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextItemAllowOverlap();
    }
    inline public static function isItemHovered(flags:Int = 0):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemHovered(flags)) != 0;
    }
    inline public static function isItemActive():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemActive()) != 0;
    }
    inline public static function isItemFocused():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemFocused()) != 0;
    }
    inline public static function isItemClickedEx(mouseButton:Int = 0):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemClickedEx(mouseButton)) != 0;
    }
    inline public static function isItemClicked():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemClicked()) != 0;
    }
    inline public static function isItemVisible():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemVisible()) != 0;
    }
    inline public static function isItemEdited():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemEdited()) != 0;
    }
    inline public static function isItemActivated():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemActivated()) != 0;
    }
    inline public static function isItemDeactivated():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemDeactivated()) != 0;
    }
    inline public static function isItemDeactivatedAfterEdit():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemDeactivatedAfterEdit()) != 0;
    }
    inline public static function isItemToggledOpen():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsItemToggledOpen()) != 0;
    }
    inline public static function isAnyItemHovered():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsAnyItemHovered()) != 0;
    }
    inline public static function isAnyItemActive():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsAnyItemActive()) != 0;
    }
    inline public static function isAnyItemFocused():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsAnyItemFocused()) != 0;
    }
    inline public static function getItemID():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetItemID();
    }
    inline public static function getItemRectMin():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetItemRectMin(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getItemRectMax():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetItemRectMax(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getItemRectSize():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetItemRectSize(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getItemFlags():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetItemFlags();
    }
    inline public static function getMainViewport():ImGuiViewport {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetMainViewport();
    }
    inline public static function getBackgroundDrawListEx(viewport:ImGuiViewport = cast 0):ImDrawList {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetBackgroundDrawListEx(viewport);
    }
    inline public static function getBackgroundDrawList():ImDrawList {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetBackgroundDrawList();
    }
    inline public static function getForegroundDrawListEx(viewport:ImGuiViewport = cast 0):ImDrawList {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetForegroundDrawListEx(viewport);
    }
    inline public static function getForegroundDrawList():ImDrawList {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetForegroundDrawList();
    }
    inline public static function isRectVisibleBySize(size:ImVec2):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsRectVisibleBySize(size.x, size.y)) != 0;
    }
    inline public static function isRectVisible(rectMin:ImVec2, rectMax:ImVec2):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsRectVisible(rectMin.x, rectMin.y, rectMax.x, rectMax.y)) != 0;
    }
    inline public static function getTime():Float {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetTime();
    }
    inline public static function getFrameCount():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetFrameCount();
    }
    inline public static function getDrawListSharedData():ImDrawListSharedData {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetDrawListSharedData();
    }
    inline public static function getStyleColorName(idx:Int):String {
        return imguijs.ImGuiJs.M.UTF8ToString(imguijs.ImGuiJs.M._dcjs_ImGui_GetStyleColorName(idx));
    }
    inline public static function setStateStorage(storage:ImGuiStorage):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetStateStorage(storage);
    }
    inline public static function getStateStorage():ImGuiStorage {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetStateStorage();
    }
    inline public static function calcTextSizeEx(text:String, textEnd:String = null, hideTextAfterDoubleHash:Bool = false, wrapWidth:Float = -1.0):ImVec2 {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_CalcTextSizeEx(imguijs.ImGuiJs.vecScratch, imguijs.ImGuiJs.str(text), imguijs.ImGuiJs.str(textEnd), hideTextAfterDoubleHash, wrapWidth);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function calcTextSize(text:String):ImVec2 {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_CalcTextSize(imguijs.ImGuiJs.vecScratch, imguijs.ImGuiJs.str(text));
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function colorConvertU32ToFloat4(in_:Int):ImVec4 {
        imguijs.ImGuiJs.M._dcjs_ImGui_ColorConvertU32ToFloat4(imguijs.ImGuiJs.vecScratch, in_);
        return ImVec4.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 8), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 12));
    }
    inline public static function colorConvertFloat4ToU32(in_:ImVec4):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_ColorConvertFloat4ToU32(in_.x, in_.y, in_.z, in_.w);
    }
    inline public static function colorConvertRGBtoHSV(r:Float, g:Float, b:Float, outH:Int, outS:Int, outV:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ColorConvertRGBtoHSV(r, g, b, outH, outS, outV);
    }
    inline public static function colorConvertHSVtoRGB(h:Float, s:Float, v:Float, outR:Int, outG:Int, outB:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ColorConvertHSVtoRGB(h, s, v, outR, outG, outB);
    }
    inline public static function isKeyDown(key:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsKeyDown(key)) != 0;
    }
    inline public static function isKeyPressedEx(key:Int, repeat:Bool = true):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsKeyPressedEx(key, repeat)) != 0;
    }
    inline public static function isKeyPressed(key:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsKeyPressed(key)) != 0;
    }
    inline public static function isKeyReleased(key:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsKeyReleased(key)) != 0;
    }
    inline public static function isKeyChordPressed(keyChord:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsKeyChordPressed(keyChord)) != 0;
    }
    inline public static function getKeyPressedAmount(key:Int, repeatDelay:Float, rate:Float):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetKeyPressedAmount(key, repeatDelay, rate);
    }
    inline public static function getKeyName(key:Int):String {
        return imguijs.ImGuiJs.M.UTF8ToString(imguijs.ImGuiJs.M._dcjs_ImGui_GetKeyName(key));
    }
    inline public static function setNextFrameWantCaptureKeyboard(wantCaptureKeyboard:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextFrameWantCaptureKeyboard(wantCaptureKeyboard);
    }
    inline public static function shortcut(keyChord:Int, flags:Int = 0):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_Shortcut(keyChord, flags)) != 0;
    }
    inline public static function setNextItemShortcut(keyChord:Int, flags:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextItemShortcut(keyChord, flags);
    }
    inline public static function setItemKeyOwner(key:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_SetItemKeyOwner(key)) != 0;
    }
    inline public static function isMouseDown(button:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsMouseDown(button)) != 0;
    }
    inline public static function isMouseClickedEx(button:Int, repeat:Bool = false):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsMouseClickedEx(button, repeat)) != 0;
    }
    inline public static function isMouseClicked(button:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsMouseClicked(button)) != 0;
    }
    inline public static function isMouseReleased(button:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsMouseReleased(button)) != 0;
    }
    inline public static function isMouseDoubleClicked(button:Int):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsMouseDoubleClicked(button)) != 0;
    }
    inline public static function isMouseReleasedWithDelay(button:Int, delay:Float):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsMouseReleasedWithDelay(button, delay)) != 0;
    }
    inline public static function getMouseClickedCount(button:Int):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetMouseClickedCount(button);
    }
    inline public static function isMouseHoveringRectEx(rMin:ImVec2, rMax:ImVec2, clip:Bool = true):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsMouseHoveringRectEx(rMin.x, rMin.y, rMax.x, rMax.y, clip)) != 0;
    }
    inline public static function isMouseHoveringRect(rMin:ImVec2, rMax:ImVec2):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsMouseHoveringRect(rMin.x, rMin.y, rMax.x, rMax.y)) != 0;
    }
    inline public static function isMousePosValid(mousePos:Int = 0):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsMousePosValid(mousePos)) != 0;
    }
    inline public static function isAnyMouseDown():Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsAnyMouseDown()) != 0;
    }
    inline public static function getMousePos():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetMousePos(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function getMousePosOnOpeningCurrentPopup():ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetMousePosOnOpeningCurrentPopup(imguijs.ImGuiJs.vecScratch);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function isMouseDragging(button:Int, lockThreshold:Float = -1.0):Bool {
        return (imguijs.ImGuiJs.M._dcjs_ImGui_IsMouseDragging(button, lockThreshold)) != 0;
    }
    inline public static function getMouseDragDelta(button:Int = 0, lockThreshold:Float = -1.0):ImVec2 {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetMouseDragDelta(imguijs.ImGuiJs.vecScratch, button, lockThreshold);
        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));
    }
    inline public static function resetMouseDragDeltaEx(button:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ResetMouseDragDeltaEx(button);
    }
    inline public static function resetMouseDragDelta():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_ResetMouseDragDelta();
    }
    inline public static function getMouseCursor():Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_GetMouseCursor();
    }
    inline public static function setMouseCursor(cursorType:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetMouseCursor(cursorType);
    }
    inline public static function setNextFrameWantCaptureMouse(wantCaptureMouse:Bool):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetNextFrameWantCaptureMouse(wantCaptureMouse);
    }
    inline public static function getClipboardText():String {
        return imguijs.ImGuiJs.M.UTF8ToString(imguijs.ImGuiJs.M._dcjs_ImGui_GetClipboardText());
    }
    inline public static function setClipboardText(text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_SetClipboardText(imguijs.ImGuiJs.str(text));
    }
    inline public static function loadIniSettingsFromDisk(iniFilename:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_LoadIniSettingsFromDisk(imguijs.ImGuiJs.str(iniFilename));
    }
    inline public static function loadIniSettingsFromMemory(iniData:String, iniSize:Int = 0):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_LoadIniSettingsFromMemory(imguijs.ImGuiJs.str(iniData), iniSize);
    }
    inline public static function saveIniSettingsToDisk(iniFilename:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_SaveIniSettingsToDisk(imguijs.ImGuiJs.str(iniFilename));
    }
    inline public static function saveIniSettingsToMemory(outIniSize:Int = 0):String {
        return imguijs.ImGuiJs.M.UTF8ToString(imguijs.ImGuiJs.M._dcjs_ImGui_SaveIniSettingsToMemory(outIniSize));
    }
    inline public static function debugTextEncoding(text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_DebugTextEncoding(imguijs.ImGuiJs.str(text));
    }
    inline public static function debugFlashStyleColor(idx:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_DebugFlashStyleColor(idx);
    }
    inline public static function debugStartItemPicker():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_DebugStartItemPicker();
    }
    inline public static function debugCheckVersionAndDataLayout(versionStr:String, szIo:Int, szStyle:Int, szVec2:Int, szVec4:Int, szDrawvert:Int, szDrawidx:Int):Bool {
        imguijs.ImGuiJs.strReset();
        return (imguijs.ImGuiJs.M._dcjs_ImGui_DebugCheckVersionAndDataLayout(imguijs.ImGuiJs.str(versionStr), szIo, szStyle, szVec2, szVec4, szDrawvert, szDrawidx)) != 0;
    }
    inline public static function debugLog(text:String):Void {
        imguijs.ImGuiJs.strReset();
        imguijs.ImGuiJs.M._dcjs_ImGui_DebugLogUnformatted(imguijs.ImGuiJs.str(text));
    }
    inline public static function setAllocatorFunctions(allocFunc:Int, freeFunc:Int, userData:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_SetAllocatorFunctions(allocFunc, freeFunc, userData);
    }
    inline public static function getAllocatorFunctions(pAllocFunc:Int, pFreeFunc:Int, pUserData:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_GetAllocatorFunctions(pAllocFunc, pFreeFunc, pUserData);
    }
    inline public static function memAlloc(size:Int):Int {
        return imguijs.ImGuiJs.M._dcjs_ImGui_MemAlloc(size);
    }
    inline public static function memFree(ptr:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_MemFree(ptr);
    }
    inline public static function updatePlatformWindows():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_UpdatePlatformWindows();
    }
    inline public static function renderPlatformWindowsDefaultEx(platformRenderArg:Int = 0, rendererRenderArg:Int = 0):Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_RenderPlatformWindowsDefaultEx(platformRenderArg, rendererRenderArg);
    }
    inline public static function renderPlatformWindowsDefault():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_RenderPlatformWindowsDefault();
    }
    inline public static function destroyPlatformWindows():Void {
        imguijs.ImGuiJs.M._dcjs_ImGui_DestroyPlatformWindows();
    }
    inline public static function findViewportByID(viewportId:Int):ImGuiViewport {
        return imguijs.ImGuiJs.M._dcjs_ImGui_FindViewportByID(viewportId);
    }
    inline public static function findViewportByPlatformHandle(platformHandle:Int):ImGuiViewport {
        return imguijs.ImGuiJs.M._dcjs_ImGui_FindViewportByPlatformHandle(platformHandle);
    }
    inline public static function imVector_Construct(vector:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImVector_Construct(vector);
    }
    inline public static function imVector_Destruct(vector:Int):Void {
        imguijs.ImGuiJs.M._dcjs_ImVector_Destruct(vector);
    }

}
