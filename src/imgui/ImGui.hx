package imgui;

// =============================================================================
// GENERATED FILE - do not edit by hand (see gen/Gen.hx).
// Unified Dear ImGui module: user code imports `imgui.ImGui` and stays
// target-agnostic. Out-params are widget MACROS taking plain lvalues
// (zero allocation; custom getters/setters are invoked, write-back only
// when the value changed) or Ref closures for runtime indirection.
// =============================================================================

#if (cpp && !macro)

typedef ImGuiOpaqueCallback = imguicpp.ImGui.ImGuiOpaqueCallback;
typedef ImDrawIdx = imguicpp.ImGui.ImDrawIdx;
typedef ImGuiID = imguicpp.ImGui.ImGuiID;
typedef ImS8 = imguicpp.ImGui.ImS8;
typedef ImU8 = imguicpp.ImGui.ImU8;
typedef ImU16 = imguicpp.ImGui.ImU16;
typedef ImS32 = imguicpp.ImGui.ImS32;
typedef ImU32 = imguicpp.ImGui.ImU32;
typedef ImS64 = imguicpp.ImGui.ImS64;
typedef ImU64 = imguicpp.ImGui.ImU64;
typedef ImDrawTextFlags = imguicpp.ImGui.ImDrawTextFlags;
typedef ImGuiKeyChord = imguicpp.ImGui.ImGuiKeyChord;
typedef ImWchar32 = imguicpp.ImGui.ImWchar32;
typedef ImWchar16 = imguicpp.ImGui.ImWchar16;
typedef ImWchar = imguicpp.ImGui.ImWchar;
typedef ImGuiSelectionUserData = imguicpp.ImGui.ImGuiSelectionUserData;
typedef ImTextureID = imguicpp.ImGui.ImTextureID;
typedef ImFontAtlasRectId = imguicpp.ImGui.ImFontAtlasRectId;
typedef ImGuiWindowFlags = imguicpp.ImGui.ImGuiWindowFlags;
typedef ImGuiChildFlags = imguicpp.ImGui.ImGuiChildFlags;
typedef ImGuiItemFlags = imguicpp.ImGui.ImGuiItemFlags;
typedef ImGuiInputTextFlags = imguicpp.ImGui.ImGuiInputTextFlags;
typedef ImGuiTreeNodeFlags = imguicpp.ImGui.ImGuiTreeNodeFlags;
typedef ImGuiPopupFlags = imguicpp.ImGui.ImGuiPopupFlags;
typedef ImGuiSelectableFlags = imguicpp.ImGui.ImGuiSelectableFlags;
typedef ImGuiComboFlags = imguicpp.ImGui.ImGuiComboFlags;
typedef ImGuiTabBarFlags = imguicpp.ImGui.ImGuiTabBarFlags;
typedef ImGuiTabItemFlags = imguicpp.ImGui.ImGuiTabItemFlags;
typedef ImGuiFocusedFlags = imguicpp.ImGui.ImGuiFocusedFlags;
typedef ImGuiHoveredFlags = imguicpp.ImGui.ImGuiHoveredFlags;
typedef ImGuiDockNodeFlags = imguicpp.ImGui.ImGuiDockNodeFlags;
typedef ImGuiDragDropFlags = imguicpp.ImGui.ImGuiDragDropFlags;
typedef ImGuiDataType = imguicpp.ImGui.ImGuiDataType;
typedef ImGuiDir = imguicpp.ImGui.ImGuiDir;
typedef ImGuiSortDirection = imguicpp.ImGui.ImGuiSortDirection;
typedef ImGuiKey = imguicpp.ImGui.ImGuiKey;
typedef ImGuiInputFlags = imguicpp.ImGui.ImGuiInputFlags;
typedef ImGuiConfigFlags = imguicpp.ImGui.ImGuiConfigFlags;
typedef ImGuiBackendFlags = imguicpp.ImGui.ImGuiBackendFlags;
typedef ImGuiCol = imguicpp.ImGui.ImGuiCol;
typedef ImGuiStyleVar = imguicpp.ImGui.ImGuiStyleVar;
typedef ImGuiButtonFlags = imguicpp.ImGui.ImGuiButtonFlags;
typedef ImGuiColorEditFlags = imguicpp.ImGui.ImGuiColorEditFlags;
typedef ImGuiSliderFlags = imguicpp.ImGui.ImGuiSliderFlags;
typedef ImGuiMouseButton = imguicpp.ImGui.ImGuiMouseButton;
typedef ImGuiMouseCursor = imguicpp.ImGui.ImGuiMouseCursor;
typedef ImGuiMouseSource = imguicpp.ImGui.ImGuiMouseSource;
typedef ImGuiCond = imguicpp.ImGui.ImGuiCond;
typedef ImGuiTableFlags = imguicpp.ImGui.ImGuiTableFlags;
typedef ImGuiTableColumnFlags = imguicpp.ImGui.ImGuiTableColumnFlags;
typedef ImGuiTableRowFlags = imguicpp.ImGui.ImGuiTableRowFlags;
typedef ImGuiTableBgTarget = imguicpp.ImGui.ImGuiTableBgTarget;
typedef ImGuiListClipperFlags = imguicpp.ImGui.ImGuiListClipperFlags;
typedef ImGuiMultiSelectFlags = imguicpp.ImGui.ImGuiMultiSelectFlags;
typedef ImGuiSelectionRequestType = imguicpp.ImGui.ImGuiSelectionRequestType;
typedef ImDrawFlags = imguicpp.ImGui.ImDrawFlags;
typedef ImDrawListFlags = imguicpp.ImGui.ImDrawListFlags;
typedef ImTextureFormat = imguicpp.ImGui.ImTextureFormat;
typedef ImTextureStatus = imguicpp.ImGui.ImTextureStatus;
typedef ImFontAtlasFlags = imguicpp.ImGui.ImFontAtlasFlags;
typedef ImFontFlags = imguicpp.ImGui.ImFontFlags;
typedef ImGuiViewportFlags = imguicpp.ImGui.ImGuiViewportFlags;
typedef ImDrawListSharedData = imguicpp.ImGui.ImDrawListSharedData;
typedef ImFontAtlasBuilder = imguicpp.ImGui.ImFontAtlasBuilder;
typedef ImFontLoader = imguicpp.ImGui.ImFontLoader;
typedef ImGuiContext = imguicpp.ImGui.ImGuiContext;
typedef ImVec2 = imguicpp.ImGui.ImVec2;
typedef ImVec4 = imguicpp.ImGui.ImVec4;
typedef ImTextureRef = imguicpp.ImGui.ImTextureRef;
typedef ImGuiTableSortSpecs = imguicpp.ImGui.ImGuiTableSortSpecs;
typedef ImGuiTableColumnSortSpecs = imguicpp.ImGui.ImGuiTableColumnSortSpecs;
typedef ImVector_ImGuiTextRange = imguicpp.ImGui.ImVector_ImGuiTextRange;
typedef ImVector_char = imguicpp.ImGui.ImVector_char;
typedef ImVector_ImGuiStoragePair = imguicpp.ImGui.ImVector_ImGuiStoragePair;
typedef ImVector_ImGuiSelectionRequest = imguicpp.ImGui.ImVector_ImGuiSelectionRequest;
typedef ImVector_ImDrawChannel = imguicpp.ImGui.ImVector_ImDrawChannel;
typedef ImVector_ImDrawCmd = imguicpp.ImGui.ImVector_ImDrawCmd;
typedef ImVector_ImDrawIdx = imguicpp.ImGui.ImVector_ImDrawIdx;
typedef ImVector_ImDrawVert = imguicpp.ImGui.ImVector_ImDrawVert;
typedef ImVector_ImVec2 = imguicpp.ImGui.ImVector_ImVec2;
typedef ImVector_ImVec4 = imguicpp.ImGui.ImVector_ImVec4;
typedef ImVector_ImTextureRef = imguicpp.ImGui.ImVector_ImTextureRef;
typedef ImVector_ImU8 = imguicpp.ImGui.ImVector_ImU8;
typedef ImVector_ImDrawListPtr = imguicpp.ImGui.ImVector_ImDrawListPtr;
typedef ImVector_ImTextureRect = imguicpp.ImGui.ImVector_ImTextureRect;
typedef ImVector_ImU32 = imguicpp.ImGui.ImVector_ImU32;
typedef ImVector_ImWchar = imguicpp.ImGui.ImVector_ImWchar;
typedef ImVector_ImFontPtr = imguicpp.ImGui.ImVector_ImFontPtr;
typedef ImVector_ImFontConfig = imguicpp.ImGui.ImVector_ImFontConfig;
typedef ImVector_ImDrawListSharedDataPtr = imguicpp.ImGui.ImVector_ImDrawListSharedDataPtr;
typedef ImVector_float = imguicpp.ImGui.ImVector_float;
typedef ImVector_ImU16 = imguicpp.ImGui.ImVector_ImU16;
typedef ImVector_ImFontGlyph = imguicpp.ImGui.ImVector_ImFontGlyph;
typedef ImVector_ImFontConfigPtr = imguicpp.ImGui.ImVector_ImFontConfigPtr;
typedef ImVector_ImGuiPlatformMonitor = imguicpp.ImGui.ImVector_ImGuiPlatformMonitor;
typedef ImVector_ImTextureDataPtr = imguicpp.ImGui.ImVector_ImTextureDataPtr;
typedef ImVector_ImGuiViewportPtr = imguicpp.ImGui.ImVector_ImGuiViewportPtr;
typedef ImGuiStyle = imguicpp.ImGui.ImGuiStyle;
typedef ImGuiIO = imguicpp.ImGui.ImGuiIO;
typedef ImGuiInputTextCallbackData = imguicpp.ImGui.ImGuiInputTextCallbackData;
typedef ImGuiSizeCallbackData = imguicpp.ImGui.ImGuiSizeCallbackData;
typedef ImGuiWindowClass = imguicpp.ImGui.ImGuiWindowClass;
typedef ImGuiPayload = imguicpp.ImGui.ImGuiPayload;
typedef ImGuiTextBuffer = imguicpp.ImGui.ImGuiTextBuffer;
typedef ImGuiStorage = imguicpp.ImGui.ImGuiStorage;
typedef ImGuiListClipper = imguicpp.ImGui.ImGuiListClipper;
typedef ImColor = imguicpp.ImGui.ImColor;
typedef ImGuiMultiSelectIO = imguicpp.ImGui.ImGuiMultiSelectIO;
typedef ImGuiSelectionRequest = imguicpp.ImGui.ImGuiSelectionRequest;
typedef ImGuiSelectionBasicStorage = imguicpp.ImGui.ImGuiSelectionBasicStorage;
typedef ImGuiSelectionExternalStorage = imguicpp.ImGui.ImGuiSelectionExternalStorage;
typedef ImDrawCmd = imguicpp.ImGui.ImDrawCmd;
typedef ImDrawVert = imguicpp.ImGui.ImDrawVert;
typedef ImDrawListSplitter = imguicpp.ImGui.ImDrawListSplitter;
typedef ImDrawList = imguicpp.ImGui.ImDrawList;
typedef ImDrawData = imguicpp.ImGui.ImDrawData;
typedef ImTextureRect = imguicpp.ImGui.ImTextureRect;
typedef ImTextureData = imguicpp.ImGui.ImTextureData;
typedef ImFontConfig = imguicpp.ImGui.ImFontConfig;
typedef ImFontGlyph = imguicpp.ImGui.ImFontGlyph;
typedef ImFontGlyphRangesBuilder = imguicpp.ImGui.ImFontGlyphRangesBuilder;
typedef ImFontAtlasRect = imguicpp.ImGui.ImFontAtlasRect;
typedef ImFontAtlas = imguicpp.ImGui.ImFontAtlas;
typedef ImFontBaked = imguicpp.ImGui.ImFontBaked;
typedef ImFont = imguicpp.ImGui.ImFont;
typedef ImGuiViewport = imguicpp.ImGui.ImGuiViewport;
typedef ImGuiPlatformIO = imguicpp.ImGui.ImGuiPlatformIO;
typedef ImGuiPlatformMonitor = imguicpp.ImGui.ImGuiPlatformMonitor;
typedef ImGuiPlatformImeData = imguicpp.ImGui.ImGuiPlatformImeData;

#elseif (js && !macro)

typedef ImGuiOpaqueCallback = imguijs.ImGui.ImGuiOpaqueCallback;
typedef ImDrawIdx = imguijs.ImGui.ImDrawIdx;
typedef ImGuiID = imguijs.ImGui.ImGuiID;
typedef ImS8 = imguijs.ImGui.ImS8;
typedef ImU8 = imguijs.ImGui.ImU8;
typedef ImU16 = imguijs.ImGui.ImU16;
typedef ImS32 = imguijs.ImGui.ImS32;
typedef ImU32 = imguijs.ImGui.ImU32;
typedef ImS64 = imguijs.ImGui.ImS64;
typedef ImU64 = imguijs.ImGui.ImU64;
typedef ImDrawTextFlags = imguijs.ImGui.ImDrawTextFlags;
typedef ImGuiKeyChord = imguijs.ImGui.ImGuiKeyChord;
typedef ImWchar32 = imguijs.ImGui.ImWchar32;
typedef ImWchar16 = imguijs.ImGui.ImWchar16;
typedef ImWchar = imguijs.ImGui.ImWchar;
typedef ImGuiSelectionUserData = imguijs.ImGui.ImGuiSelectionUserData;
typedef ImTextureID = imguijs.ImGui.ImTextureID;
typedef ImFontAtlasRectId = imguijs.ImGui.ImFontAtlasRectId;
typedef ImGuiWindowFlags = imguijs.ImGui.ImGuiWindowFlags;
typedef ImGuiChildFlags = imguijs.ImGui.ImGuiChildFlags;
typedef ImGuiItemFlags = imguijs.ImGui.ImGuiItemFlags;
typedef ImGuiInputTextFlags = imguijs.ImGui.ImGuiInputTextFlags;
typedef ImGuiTreeNodeFlags = imguijs.ImGui.ImGuiTreeNodeFlags;
typedef ImGuiPopupFlags = imguijs.ImGui.ImGuiPopupFlags;
typedef ImGuiSelectableFlags = imguijs.ImGui.ImGuiSelectableFlags;
typedef ImGuiComboFlags = imguijs.ImGui.ImGuiComboFlags;
typedef ImGuiTabBarFlags = imguijs.ImGui.ImGuiTabBarFlags;
typedef ImGuiTabItemFlags = imguijs.ImGui.ImGuiTabItemFlags;
typedef ImGuiFocusedFlags = imguijs.ImGui.ImGuiFocusedFlags;
typedef ImGuiHoveredFlags = imguijs.ImGui.ImGuiHoveredFlags;
typedef ImGuiDockNodeFlags = imguijs.ImGui.ImGuiDockNodeFlags;
typedef ImGuiDragDropFlags = imguijs.ImGui.ImGuiDragDropFlags;
typedef ImGuiDataType = imguijs.ImGui.ImGuiDataType;
typedef ImGuiDir = imguijs.ImGui.ImGuiDir;
typedef ImGuiSortDirection = imguijs.ImGui.ImGuiSortDirection;
typedef ImGuiKey = imguijs.ImGui.ImGuiKey;
typedef ImGuiInputFlags = imguijs.ImGui.ImGuiInputFlags;
typedef ImGuiConfigFlags = imguijs.ImGui.ImGuiConfigFlags;
typedef ImGuiBackendFlags = imguijs.ImGui.ImGuiBackendFlags;
typedef ImGuiCol = imguijs.ImGui.ImGuiCol;
typedef ImGuiStyleVar = imguijs.ImGui.ImGuiStyleVar;
typedef ImGuiButtonFlags = imguijs.ImGui.ImGuiButtonFlags;
typedef ImGuiColorEditFlags = imguijs.ImGui.ImGuiColorEditFlags;
typedef ImGuiSliderFlags = imguijs.ImGui.ImGuiSliderFlags;
typedef ImGuiMouseButton = imguijs.ImGui.ImGuiMouseButton;
typedef ImGuiMouseCursor = imguijs.ImGui.ImGuiMouseCursor;
typedef ImGuiMouseSource = imguijs.ImGui.ImGuiMouseSource;
typedef ImGuiCond = imguijs.ImGui.ImGuiCond;
typedef ImGuiTableFlags = imguijs.ImGui.ImGuiTableFlags;
typedef ImGuiTableColumnFlags = imguijs.ImGui.ImGuiTableColumnFlags;
typedef ImGuiTableRowFlags = imguijs.ImGui.ImGuiTableRowFlags;
typedef ImGuiTableBgTarget = imguijs.ImGui.ImGuiTableBgTarget;
typedef ImGuiListClipperFlags = imguijs.ImGui.ImGuiListClipperFlags;
typedef ImGuiMultiSelectFlags = imguijs.ImGui.ImGuiMultiSelectFlags;
typedef ImGuiSelectionRequestType = imguijs.ImGui.ImGuiSelectionRequestType;
typedef ImDrawFlags = imguijs.ImGui.ImDrawFlags;
typedef ImDrawListFlags = imguijs.ImGui.ImDrawListFlags;
typedef ImTextureFormat = imguijs.ImGui.ImTextureFormat;
typedef ImTextureStatus = imguijs.ImGui.ImTextureStatus;
typedef ImFontAtlasFlags = imguijs.ImGui.ImFontAtlasFlags;
typedef ImFontFlags = imguijs.ImGui.ImFontFlags;
typedef ImGuiViewportFlags = imguijs.ImGui.ImGuiViewportFlags;
typedef ImDrawListSharedData = imguijs.ImGui.ImDrawListSharedData;
typedef ImFontAtlasBuilder = imguijs.ImGui.ImFontAtlasBuilder;
typedef ImFontLoader = imguijs.ImGui.ImFontLoader;
typedef ImGuiContext = imguijs.ImGui.ImGuiContext;
typedef ImVec2 = imguijs.ImGui.ImVec2;
typedef ImVec4 = imguijs.ImGui.ImVec4;
typedef ImTextureRef = imguijs.ImGui.ImTextureRef;
typedef ImGuiTableSortSpecs = imguijs.ImGui.ImGuiTableSortSpecs;
typedef ImGuiTableColumnSortSpecs = imguijs.ImGui.ImGuiTableColumnSortSpecs;
typedef ImVector_ImGuiTextRange = imguijs.ImGui.ImVector_ImGuiTextRange;
typedef ImVector_char = imguijs.ImGui.ImVector_char;
typedef ImVector_ImGuiStoragePair = imguijs.ImGui.ImVector_ImGuiStoragePair;
typedef ImVector_ImGuiSelectionRequest = imguijs.ImGui.ImVector_ImGuiSelectionRequest;
typedef ImVector_ImDrawChannel = imguijs.ImGui.ImVector_ImDrawChannel;
typedef ImVector_ImDrawCmd = imguijs.ImGui.ImVector_ImDrawCmd;
typedef ImVector_ImDrawIdx = imguijs.ImGui.ImVector_ImDrawIdx;
typedef ImVector_ImDrawVert = imguijs.ImGui.ImVector_ImDrawVert;
typedef ImVector_ImVec2 = imguijs.ImGui.ImVector_ImVec2;
typedef ImVector_ImVec4 = imguijs.ImGui.ImVector_ImVec4;
typedef ImVector_ImTextureRef = imguijs.ImGui.ImVector_ImTextureRef;
typedef ImVector_ImU8 = imguijs.ImGui.ImVector_ImU8;
typedef ImVector_ImDrawListPtr = imguijs.ImGui.ImVector_ImDrawListPtr;
typedef ImVector_ImTextureRect = imguijs.ImGui.ImVector_ImTextureRect;
typedef ImVector_ImU32 = imguijs.ImGui.ImVector_ImU32;
typedef ImVector_ImWchar = imguijs.ImGui.ImVector_ImWchar;
typedef ImVector_ImFontPtr = imguijs.ImGui.ImVector_ImFontPtr;
typedef ImVector_ImFontConfig = imguijs.ImGui.ImVector_ImFontConfig;
typedef ImVector_ImDrawListSharedDataPtr = imguijs.ImGui.ImVector_ImDrawListSharedDataPtr;
typedef ImVector_float = imguijs.ImGui.ImVector_float;
typedef ImVector_ImU16 = imguijs.ImGui.ImVector_ImU16;
typedef ImVector_ImFontGlyph = imguijs.ImGui.ImVector_ImFontGlyph;
typedef ImVector_ImFontConfigPtr = imguijs.ImGui.ImVector_ImFontConfigPtr;
typedef ImVector_ImGuiPlatformMonitor = imguijs.ImGui.ImVector_ImGuiPlatformMonitor;
typedef ImVector_ImTextureDataPtr = imguijs.ImGui.ImVector_ImTextureDataPtr;
typedef ImVector_ImGuiViewportPtr = imguijs.ImGui.ImVector_ImGuiViewportPtr;
typedef ImGuiStyle = imguijs.ImGui.ImGuiStyle;
typedef ImGuiIO = imguijs.ImGui.ImGuiIO;
typedef ImGuiInputTextCallbackData = imguijs.ImGui.ImGuiInputTextCallbackData;
typedef ImGuiSizeCallbackData = imguijs.ImGui.ImGuiSizeCallbackData;
typedef ImGuiWindowClass = imguijs.ImGui.ImGuiWindowClass;
typedef ImGuiPayload = imguijs.ImGui.ImGuiPayload;
typedef ImGuiTextBuffer = imguijs.ImGui.ImGuiTextBuffer;
typedef ImGuiStorage = imguijs.ImGui.ImGuiStorage;
typedef ImGuiListClipper = imguijs.ImGui.ImGuiListClipper;
typedef ImColor = imguijs.ImGui.ImColor;
typedef ImGuiMultiSelectIO = imguijs.ImGui.ImGuiMultiSelectIO;
typedef ImGuiSelectionRequest = imguijs.ImGui.ImGuiSelectionRequest;
typedef ImGuiSelectionBasicStorage = imguijs.ImGui.ImGuiSelectionBasicStorage;
typedef ImGuiSelectionExternalStorage = imguijs.ImGui.ImGuiSelectionExternalStorage;
typedef ImDrawCmd = imguijs.ImGui.ImDrawCmd;
typedef ImDrawVert = imguijs.ImGui.ImDrawVert;
typedef ImDrawListSplitter = imguijs.ImGui.ImDrawListSplitter;
typedef ImDrawList = imguijs.ImGui.ImDrawList;
typedef ImDrawData = imguijs.ImGui.ImDrawData;
typedef ImTextureRect = imguijs.ImGui.ImTextureRect;
typedef ImTextureData = imguijs.ImGui.ImTextureData;
typedef ImFontConfig = imguijs.ImGui.ImFontConfig;
typedef ImFontGlyph = imguijs.ImGui.ImFontGlyph;
typedef ImFontGlyphRangesBuilder = imguijs.ImGui.ImFontGlyphRangesBuilder;
typedef ImFontAtlasRect = imguijs.ImGui.ImFontAtlasRect;
typedef ImFontAtlas = imguijs.ImGui.ImFontAtlas;
typedef ImFontBaked = imguijs.ImGui.ImFontBaked;
typedef ImFont = imguijs.ImGui.ImFont;
typedef ImGuiViewport = imguijs.ImGui.ImGuiViewport;
typedef ImGuiPlatformIO = imguijs.ImGui.ImGuiPlatformIO;
typedef ImGuiPlatformMonitor = imguijs.ImGui.ImGuiPlatformMonitor;
typedef ImGuiPlatformImeData = imguijs.ImGui.ImGuiPlatformImeData;

#elseif (cs && !macro)

typedef ImGuiOpaqueCallback = imguics.ImGui.ImGuiOpaqueCallback;
typedef ImDrawIdx = imguics.ImGui.ImDrawIdx;
typedef ImGuiID = imguics.ImGui.ImGuiID;
typedef ImS8 = imguics.ImGui.ImS8;
typedef ImU8 = imguics.ImGui.ImU8;
typedef ImU16 = imguics.ImGui.ImU16;
typedef ImS32 = imguics.ImGui.ImS32;
typedef ImU32 = imguics.ImGui.ImU32;
typedef ImS64 = imguics.ImGui.ImS64;
typedef ImU64 = imguics.ImGui.ImU64;
typedef ImDrawTextFlags = imguics.ImGui.ImDrawTextFlags;
typedef ImGuiKeyChord = imguics.ImGui.ImGuiKeyChord;
typedef ImWchar32 = imguics.ImGui.ImWchar32;
typedef ImWchar16 = imguics.ImGui.ImWchar16;
typedef ImWchar = imguics.ImGui.ImWchar;
typedef ImGuiSelectionUserData = imguics.ImGui.ImGuiSelectionUserData;
typedef ImTextureID = imguics.ImGui.ImTextureID;
typedef ImFontAtlasRectId = imguics.ImGui.ImFontAtlasRectId;
typedef ImGuiWindowFlags = imguics.ImGui.ImGuiWindowFlags;
typedef ImGuiChildFlags = imguics.ImGui.ImGuiChildFlags;
typedef ImGuiItemFlags = imguics.ImGui.ImGuiItemFlags;
typedef ImGuiInputTextFlags = imguics.ImGui.ImGuiInputTextFlags;
typedef ImGuiTreeNodeFlags = imguics.ImGui.ImGuiTreeNodeFlags;
typedef ImGuiPopupFlags = imguics.ImGui.ImGuiPopupFlags;
typedef ImGuiSelectableFlags = imguics.ImGui.ImGuiSelectableFlags;
typedef ImGuiComboFlags = imguics.ImGui.ImGuiComboFlags;
typedef ImGuiTabBarFlags = imguics.ImGui.ImGuiTabBarFlags;
typedef ImGuiTabItemFlags = imguics.ImGui.ImGuiTabItemFlags;
typedef ImGuiFocusedFlags = imguics.ImGui.ImGuiFocusedFlags;
typedef ImGuiHoveredFlags = imguics.ImGui.ImGuiHoveredFlags;
typedef ImGuiDockNodeFlags = imguics.ImGui.ImGuiDockNodeFlags;
typedef ImGuiDragDropFlags = imguics.ImGui.ImGuiDragDropFlags;
typedef ImGuiDataType = imguics.ImGui.ImGuiDataType;
typedef ImGuiDir = imguics.ImGui.ImGuiDir;
typedef ImGuiSortDirection = imguics.ImGui.ImGuiSortDirection;
typedef ImGuiKey = imguics.ImGui.ImGuiKey;
typedef ImGuiInputFlags = imguics.ImGui.ImGuiInputFlags;
typedef ImGuiConfigFlags = imguics.ImGui.ImGuiConfigFlags;
typedef ImGuiBackendFlags = imguics.ImGui.ImGuiBackendFlags;
typedef ImGuiCol = imguics.ImGui.ImGuiCol;
typedef ImGuiStyleVar = imguics.ImGui.ImGuiStyleVar;
typedef ImGuiButtonFlags = imguics.ImGui.ImGuiButtonFlags;
typedef ImGuiColorEditFlags = imguics.ImGui.ImGuiColorEditFlags;
typedef ImGuiSliderFlags = imguics.ImGui.ImGuiSliderFlags;
typedef ImGuiMouseButton = imguics.ImGui.ImGuiMouseButton;
typedef ImGuiMouseCursor = imguics.ImGui.ImGuiMouseCursor;
typedef ImGuiMouseSource = imguics.ImGui.ImGuiMouseSource;
typedef ImGuiCond = imguics.ImGui.ImGuiCond;
typedef ImGuiTableFlags = imguics.ImGui.ImGuiTableFlags;
typedef ImGuiTableColumnFlags = imguics.ImGui.ImGuiTableColumnFlags;
typedef ImGuiTableRowFlags = imguics.ImGui.ImGuiTableRowFlags;
typedef ImGuiTableBgTarget = imguics.ImGui.ImGuiTableBgTarget;
typedef ImGuiListClipperFlags = imguics.ImGui.ImGuiListClipperFlags;
typedef ImGuiMultiSelectFlags = imguics.ImGui.ImGuiMultiSelectFlags;
typedef ImGuiSelectionRequestType = imguics.ImGui.ImGuiSelectionRequestType;
typedef ImDrawFlags = imguics.ImGui.ImDrawFlags;
typedef ImDrawListFlags = imguics.ImGui.ImDrawListFlags;
typedef ImTextureFormat = imguics.ImGui.ImTextureFormat;
typedef ImTextureStatus = imguics.ImGui.ImTextureStatus;
typedef ImFontAtlasFlags = imguics.ImGui.ImFontAtlasFlags;
typedef ImFontFlags = imguics.ImGui.ImFontFlags;
typedef ImGuiViewportFlags = imguics.ImGui.ImGuiViewportFlags;
typedef ImDrawListSharedData = imguics.ImGui.ImDrawListSharedData;
typedef ImFontAtlasBuilder = imguics.ImGui.ImFontAtlasBuilder;
typedef ImFontLoader = imguics.ImGui.ImFontLoader;
typedef ImGuiContext = imguics.ImGui.ImGuiContext;
typedef ImVec2 = imguics.ImGui.ImVec2;
typedef ImVec4 = imguics.ImGui.ImVec4;
typedef ImTextureRef = imguics.ImGui.ImTextureRef;
typedef ImGuiTableSortSpecs = imguics.ImGui.ImGuiTableSortSpecs;
typedef ImGuiTableColumnSortSpecs = imguics.ImGui.ImGuiTableColumnSortSpecs;
typedef ImVector_ImGuiTextRange = imguics.ImGui.ImVector_ImGuiTextRange;
typedef ImVector_char = imguics.ImGui.ImVector_char;
typedef ImVector_ImGuiStoragePair = imguics.ImGui.ImVector_ImGuiStoragePair;
typedef ImVector_ImGuiSelectionRequest = imguics.ImGui.ImVector_ImGuiSelectionRequest;
typedef ImVector_ImDrawChannel = imguics.ImGui.ImVector_ImDrawChannel;
typedef ImVector_ImDrawCmd = imguics.ImGui.ImVector_ImDrawCmd;
typedef ImVector_ImDrawIdx = imguics.ImGui.ImVector_ImDrawIdx;
typedef ImVector_ImDrawVert = imguics.ImGui.ImVector_ImDrawVert;
typedef ImVector_ImVec2 = imguics.ImGui.ImVector_ImVec2;
typedef ImVector_ImVec4 = imguics.ImGui.ImVector_ImVec4;
typedef ImVector_ImTextureRef = imguics.ImGui.ImVector_ImTextureRef;
typedef ImVector_ImU8 = imguics.ImGui.ImVector_ImU8;
typedef ImVector_ImDrawListPtr = imguics.ImGui.ImVector_ImDrawListPtr;
typedef ImVector_ImTextureRect = imguics.ImGui.ImVector_ImTextureRect;
typedef ImVector_ImU32 = imguics.ImGui.ImVector_ImU32;
typedef ImVector_ImWchar = imguics.ImGui.ImVector_ImWchar;
typedef ImVector_ImFontPtr = imguics.ImGui.ImVector_ImFontPtr;
typedef ImVector_ImFontConfig = imguics.ImGui.ImVector_ImFontConfig;
typedef ImVector_ImDrawListSharedDataPtr = imguics.ImGui.ImVector_ImDrawListSharedDataPtr;
typedef ImVector_float = imguics.ImGui.ImVector_float;
typedef ImVector_ImU16 = imguics.ImGui.ImVector_ImU16;
typedef ImVector_ImFontGlyph = imguics.ImGui.ImVector_ImFontGlyph;
typedef ImVector_ImFontConfigPtr = imguics.ImGui.ImVector_ImFontConfigPtr;
typedef ImVector_ImGuiPlatformMonitor = imguics.ImGui.ImVector_ImGuiPlatformMonitor;
typedef ImVector_ImTextureDataPtr = imguics.ImGui.ImVector_ImTextureDataPtr;
typedef ImVector_ImGuiViewportPtr = imguics.ImGui.ImVector_ImGuiViewportPtr;
typedef ImGuiStyle = imguics.ImGui.ImGuiStyle;
typedef ImGuiIO = imguics.ImGui.ImGuiIO;
typedef ImGuiInputTextCallbackData = imguics.ImGui.ImGuiInputTextCallbackData;
typedef ImGuiSizeCallbackData = imguics.ImGui.ImGuiSizeCallbackData;
typedef ImGuiWindowClass = imguics.ImGui.ImGuiWindowClass;
typedef ImGuiPayload = imguics.ImGui.ImGuiPayload;
typedef ImGuiTextBuffer = imguics.ImGui.ImGuiTextBuffer;
typedef ImGuiStorage = imguics.ImGui.ImGuiStorage;
typedef ImGuiListClipper = imguics.ImGui.ImGuiListClipper;
typedef ImColor = imguics.ImGui.ImColor;
typedef ImGuiMultiSelectIO = imguics.ImGui.ImGuiMultiSelectIO;
typedef ImGuiSelectionRequest = imguics.ImGui.ImGuiSelectionRequest;
typedef ImGuiSelectionBasicStorage = imguics.ImGui.ImGuiSelectionBasicStorage;
typedef ImGuiSelectionExternalStorage = imguics.ImGui.ImGuiSelectionExternalStorage;
typedef ImDrawCmd = imguics.ImGui.ImDrawCmd;
typedef ImDrawVert = imguics.ImGui.ImDrawVert;
typedef ImDrawListSplitter = imguics.ImGui.ImDrawListSplitter;
typedef ImDrawList = imguics.ImGui.ImDrawList;
typedef ImDrawData = imguics.ImGui.ImDrawData;
typedef ImTextureRect = imguics.ImGui.ImTextureRect;
typedef ImTextureData = imguics.ImGui.ImTextureData;
typedef ImFontConfig = imguics.ImGui.ImFontConfig;
typedef ImFontGlyph = imguics.ImGui.ImFontGlyph;
typedef ImFontGlyphRangesBuilder = imguics.ImGui.ImFontGlyphRangesBuilder;
typedef ImFontAtlasRect = imguics.ImGui.ImFontAtlasRect;
typedef ImFontAtlas = imguics.ImGui.ImFontAtlas;
typedef ImFontBaked = imguics.ImGui.ImFontBaked;
typedef ImFont = imguics.ImGui.ImFont;
typedef ImGuiViewport = imguics.ImGui.ImGuiViewport;
typedef ImGuiPlatformIO = imguics.ImGui.ImGuiPlatformIO;
typedef ImGuiPlatformMonitor = imguics.ImGui.ImGuiPlatformMonitor;
typedef ImGuiPlatformImeData = imguics.ImGui.ImGuiPlatformImeData;

#elseif !macro

#error "imgui: this target is not supported (cpp, js and cs only)"

#end

#if (cpp && !macro)
@:cppInclude('linc_imgui.h')
#end
class ImGui {

#if (cpp && !macro)

    extern inline public static function createContext(sharedFontAtlas:cpp.Star<ImFontAtlas> = null):cpp.Star<ImGuiContext> {
        return imguicpp.ImGui.createContext(sharedFontAtlas);
    }
    /** NULL = destroy current context */
    extern inline public static function destroyContext(ctx:cpp.Star<ImGuiContext> = null):Void {
        imguicpp.ImGui.destroyContext(ctx);
    }
    extern inline public static function getCurrentContext():cpp.Star<ImGuiContext> {
        return imguicpp.ImGui.getCurrentContext();
    }
    extern inline public static function setCurrentContext(ctx:cpp.Star<ImGuiContext>):Void {
        imguicpp.ImGui.setCurrentContext(ctx);
    }
    /** access the ImGuiIO structure (mouse/keyboard/gamepad inputs, time, various configuration options/flags) */
    extern inline public static function getIO():cpp.Star<ImGuiIO> {
        return imguicpp.ImGui.getIO();
    }
    /** access the ImGuiPlatformIO structure (mostly hooks/functions to connect to platform/renderer and OS Clipboard, IME etc.) */
    extern inline public static function getPlatformIO():cpp.Star<ImGuiPlatformIO> {
        return imguicpp.ImGui.getPlatformIO();
    }
    /** access the Style structure (colors, sizes). Always use PushStyleColor(), PushStyleVar() to modify style mid-frame! */
    extern inline public static function getStyle():cpp.Star<ImGuiStyle> {
        return imguicpp.ImGui.getStyle();
    }
    /** start a new Dear ImGui frame, you can submit any command from this point until Render()/EndFrame(). */
    extern inline public static function newFrame():Void {
        imguicpp.ImGui.newFrame();
    }
    /** ends the Dear ImGui frame. automatically called by Render(). If you don't need to render data (skipping rendering) you may call EndFrame() without Render()... but you'll have wasted CPU already! If you don't need to render, better to not create any windows and not call NewFrame() at all! */
    extern inline public static function endFrame():Void {
        imguicpp.ImGui.endFrame();
    }
    /** ends the Dear ImGui frame, finalize the draw data. You can then get call GetDrawData(). */
    extern inline public static function render():Void {
        imguicpp.ImGui.render();
    }
    /** valid after Render() and until the next call to NewFrame(). Call ImGui_ImplXXXX_RenderDrawData() function in your Renderer Backend to render. */
    extern inline public static function getDrawData():cpp.Star<ImDrawData> {
        return imguicpp.ImGui.getDrawData();
    }
    /** Implied p_open = NULL */
    extern inline public static function showIDStackToolWindow():Void {
        imguicpp.ImGui.showIDStackToolWindow();
    }
    /** add style editor block (not a window). you can pass in a reference ImGuiStyle structure to compare to, revert to and save to (else it uses the default style) */
    extern inline public static function showStyleEditor(ref:cpp.Star<ImGuiStyle> = null):Void {
        imguicpp.ImGui.showStyleEditor(ref);
    }
    /** add style selector block (not a window), essentially a combo listing the default styles. */
    extern inline public static function showStyleSelector(label:String):Bool {
        return imguicpp.ImGui.showStyleSelector(label);
    }
    /** add font selector block (not a window), essentially a combo listing the loaded fonts. */
    extern inline public static function showFontSelector(label:String):Void {
        imguicpp.ImGui.showFontSelector(label);
    }
    /** add basic help/info block (not a window): how to manipulate ImGui as an end-user (mouse/keyboard controls). */
    extern inline public static function showUserGuide():Void {
        imguicpp.ImGui.showUserGuide();
    }
    /** get the compiled version string e.g. "1.80 WIP" (essentially the value for IMGUI_VERSION from the compiled version of imgui.cpp) */
    extern inline public static function getVersion():String {
        return imguicpp.ImGui.getVersion().toString();
    }
    /** new, recommended style (default) */
    extern inline public static function styleColorsDark(dst:cpp.Star<ImGuiStyle> = null):Void {
        imguicpp.ImGui.styleColorsDark(dst);
    }
    /** best used with borders and a custom, thicker font */
    extern inline public static function styleColorsLight(dst:cpp.Star<ImGuiStyle> = null):Void {
        imguicpp.ImGui.styleColorsLight(dst);
    }
    /** classic imgui style */
    extern inline public static function styleColorsClassic(dst:cpp.Star<ImGuiStyle> = null):Void {
        imguicpp.ImGui.styleColorsClassic(dst);
    }
    extern inline public static function end():Void {
        imguicpp.ImGui.end();
    }
    extern inline public static function beginChild(strId:String, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        return imguicpp.ImGui.beginChild(strId, size, childFlags, windowFlags);
    }
    extern inline public static function beginChildID(id:ImGuiID, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        return imguicpp.ImGui.beginChildID(id, size, childFlags, windowFlags);
    }
    extern inline public static function endChild():Void {
        imguicpp.ImGui.endChild();
    }
    extern inline public static function isWindowAppearing():Bool {
        return imguicpp.ImGui.isWindowAppearing();
    }
    extern inline public static function isWindowCollapsed():Bool {
        return imguicpp.ImGui.isWindowCollapsed();
    }
    /** is current window focused? or its root/child, depending on flags. see flags for options. */
    extern inline public static function isWindowFocused(flags:Int = 0):Bool {
        return imguicpp.ImGui.isWindowFocused(flags);
    }
    /** is current window hovered and hoverable (e.g. not blocked by a popup/modal)? See ImGuiHoveredFlags_ for options. IMPORTANT: If you are trying to check whether your mouse should be dispatched to Dear ImGui or to your underlying app, you should not use this function! Use the 'io.WantCaptureMouse' boolean for that! Refer to FAQ entry "How can I tell whether to dispatch mouse/keyboard to Dear ImGui or my application?" for details. */
    extern inline public static function isWindowHovered(flags:Int = 0):Bool {
        return imguicpp.ImGui.isWindowHovered(flags);
    }
    /** get draw list associated to the current window, to append your own drawing primitives */
    extern inline public static function getWindowDrawList():cpp.Star<ImDrawList> {
        return imguicpp.ImGui.getWindowDrawList();
    }
    /** get DPI scale currently associated to the current window's viewport. */
    extern inline public static function getWindowDpiScale():Float {
        return imguicpp.ImGui.getWindowDpiScale();
    }
    /** get current window position in screen space (IT IS UNLIKELY YOU EVER NEED TO USE THIS. Consider always using GetCursorScreenPos() and GetContentRegionAvail() instead) */
    extern inline public static function getWindowPos():ImVec2 {
        return imguicpp.ImGui.getWindowPos();
    }
    /** get current window size (IT IS UNLIKELY YOU EVER NEED TO USE THIS. Consider always using GetCursorScreenPos() and GetContentRegionAvail() instead) */
    extern inline public static function getWindowSize():ImVec2 {
        return imguicpp.ImGui.getWindowSize();
    }
    /** get current window width (IT IS UNLIKELY YOU EVER NEED TO USE THIS). Shortcut for GetWindowSize().x. */
    extern inline public static function getWindowWidth():Float {
        return imguicpp.ImGui.getWindowWidth();
    }
    /** get current window height (IT IS UNLIKELY YOU EVER NEED TO USE THIS). Shortcut for GetWindowSize().y. */
    extern inline public static function getWindowHeight():Float {
        return imguicpp.ImGui.getWindowHeight();
    }
    /** get viewport currently associated to the current window. */
    extern inline public static function getWindowViewport():cpp.Star<ImGuiViewport> {
        return imguicpp.ImGui.getWindowViewport();
    }
    /** set next window position. call before Begin(). use pivot=(0.5f,0.5f) to center on given point, etc. */
    extern inline public static function setNextWindowPosEx(pos:ImVec2, cond:Int = 0, pivot:ImVec2):Void {
        imguicpp.ImGui.setNextWindowPosEx(pos, cond, pivot);
    }
    /** Implied pivot = ImVec2(0, 0) */
    extern inline public static function setNextWindowPos(pos:ImVec2, cond:Int = 0):Void {
        imguicpp.ImGui.setNextWindowPos(pos, cond);
    }
    /** set next window size. set axis to 0.0f to force an auto-fit on this axis. call before Begin() */
    extern inline public static function setNextWindowSize(size:ImVec2, cond:Int = 0):Void {
        imguicpp.ImGui.setNextWindowSize(size, cond);
    }
    /** set next window size limits. use 0.0f or FLT_MAX if you don't want limits. Use -1 for both min and max of same axis to preserve current size (which itself is a constraint). Use callback to apply non-trivial programmatic constraints. */
    extern inline public static function setNextWindowSizeConstraints(sizeMin:ImVec2, sizeMax:ImVec2, customCallback:ImGuiOpaqueCallback = null, customCallbackData:cpp.RawPointer<cpp.Void> = null):Void {
        imguicpp.ImGui.setNextWindowSizeConstraints(sizeMin, sizeMax, customCallback, customCallbackData);
    }
    /** set next window content size (~ scrollable client area, which enforce the range of scrollbars). Not including window decorations (title bar, menu bar, etc.) nor WindowPadding. set an axis to 0.0f to leave it automatic. call before Begin() */
    extern inline public static function setNextWindowContentSize(size:ImVec2):Void {
        imguicpp.ImGui.setNextWindowContentSize(size);
    }
    /** set next window collapsed state. call before Begin() */
    extern inline public static function setNextWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        imguicpp.ImGui.setNextWindowCollapsed(collapsed, cond);
    }
    /** set next window to be focused / top-most. call before Begin() */
    extern inline public static function setNextWindowFocus():Void {
        imguicpp.ImGui.setNextWindowFocus();
    }
    /** set next window scrolling value (use < 0.0f to not affect a given axis). */
    extern inline public static function setNextWindowScroll(scroll:ImVec2):Void {
        imguicpp.ImGui.setNextWindowScroll(scroll);
    }
    /** set next window background color alpha. helper to easily override the Alpha component of ImGuiCol_WindowBg/ChildBg/PopupBg. you may also use ImGuiWindowFlags_NoBackground. */
    extern inline public static function setNextWindowBgAlpha(alpha:Float):Void {
        imguicpp.ImGui.setNextWindowBgAlpha(alpha);
    }
    /** set next window viewport */
    extern inline public static function setNextWindowViewport(viewportId:ImGuiID):Void {
        imguicpp.ImGui.setNextWindowViewport(viewportId);
    }
    /** (not recommended) set current window position - call within Begin()/End(). prefer using SetNextWindowPos(), as this may incur tearing and side-effects. */
    extern inline public static function setWindowPos(pos:ImVec2, cond:Int = 0):Void {
        imguicpp.ImGui.setWindowPos(pos, cond);
    }
    /** (not recommended) set current window size - call within Begin()/End(). set to ImVec2(0, 0) to force an auto-fit. prefer using SetNextWindowSize(), as this may incur tearing and minor side-effects. */
    extern inline public static function setWindowSize(size:ImVec2, cond:Int = 0):Void {
        imguicpp.ImGui.setWindowSize(size, cond);
    }
    /** (not recommended) set current window collapsed state. prefer using SetNextWindowCollapsed(). */
    extern inline public static function setWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        imguicpp.ImGui.setWindowCollapsed(collapsed, cond);
    }
    /** (not recommended) set current window to be focused / top-most. prefer using SetNextWindowFocus(). */
    extern inline public static function setWindowFocus():Void {
        imguicpp.ImGui.setWindowFocus();
    }
    /** set named window position. */
    extern inline public static function setWindowPosStr(name:String, pos:ImVec2, cond:Int = 0):Void {
        imguicpp.ImGui.setWindowPosStr(name, pos, cond);
    }
    /** set named window size. set axis to 0.0f to force an auto-fit on this axis. */
    extern inline public static function setWindowSizeStr(name:String, size:ImVec2, cond:Int = 0):Void {
        imguicpp.ImGui.setWindowSizeStr(name, size, cond);
    }
    /** set named window collapsed state */
    extern inline public static function setWindowCollapsedStr(name:String, collapsed:Bool, cond:Int = 0):Void {
        imguicpp.ImGui.setWindowCollapsedStr(name, collapsed, cond);
    }
    /** set named window to be focused / top-most. use NULL to remove focus. */
    extern inline public static function setWindowFocusStr(name:String):Void {
        imguicpp.ImGui.setWindowFocusStr(name);
    }
    /** get scrolling amount [0 .. GetScrollMaxX()] */
    extern inline public static function getScrollX():Float {
        return imguicpp.ImGui.getScrollX();
    }
    /** get scrolling amount [0 .. GetScrollMaxY()] */
    extern inline public static function getScrollY():Float {
        return imguicpp.ImGui.getScrollY();
    }
    /** set scrolling amount [0 .. GetScrollMaxX()] */
    extern inline public static function setScrollX(scrollX:Float):Void {
        imguicpp.ImGui.setScrollX(scrollX);
    }
    /** set scrolling amount [0 .. GetScrollMaxY()] */
    extern inline public static function setScrollY(scrollY:Float):Void {
        imguicpp.ImGui.setScrollY(scrollY);
    }
    /** get maximum scrolling amount ~~ ContentSize.x - WindowSize.x - DecorationsSize.x */
    extern inline public static function getScrollMaxX():Float {
        return imguicpp.ImGui.getScrollMaxX();
    }
    /** get maximum scrolling amount ~~ ContentSize.y - WindowSize.y - DecorationsSize.y */
    extern inline public static function getScrollMaxY():Float {
        return imguicpp.ImGui.getScrollMaxY();
    }
    /** adjust scrolling amount to make current cursor position visible. center_x_ratio=0.0: left, 0.5: center, 1.0: right. When using to make a "default/current item" visible, consider using SetItemDefaultFocus() instead. */
    extern inline public static function setScrollHereX(centerXRatio:Float = 0.5):Void {
        imguicpp.ImGui.setScrollHereX(centerXRatio);
    }
    /** adjust scrolling amount to make current cursor position visible. center_y_ratio=0.0: top, 0.5: center, 1.0: bottom. When using to make a "default/current item" visible, consider using SetItemDefaultFocus() instead. */
    extern inline public static function setScrollHereY(centerYRatio:Float = 0.5):Void {
        imguicpp.ImGui.setScrollHereY(centerYRatio);
    }
    /** adjust scrolling amount to make given position visible. Generally GetCursorStartPos() + offset to compute a valid position. */
    extern inline public static function setScrollFromPosX(localX:Float, centerXRatio:Float = 0.5):Void {
        imguicpp.ImGui.setScrollFromPosX(localX, centerXRatio);
    }
    /** adjust scrolling amount to make given position visible. Generally GetCursorStartPos() + offset to compute a valid position. */
    extern inline public static function setScrollFromPosY(localY:Float, centerYRatio:Float = 0.5):Void {
        imguicpp.ImGui.setScrollFromPosY(localY, centerYRatio);
    }
    /** Use NULL as a shortcut to keep current font. Use 0.0f to keep current size. */
    extern inline public static function pushFontFloat(font:cpp.Star<ImFont>, fontSizeBaseUnscaled:cpp.Float32):Void {
        imguicpp.ImGui.pushFontFloat(font, fontSizeBaseUnscaled);
    }
    extern inline public static function popFont():Void {
        imguicpp.ImGui.popFont();
    }
    /** get current font */
    extern inline public static function getFont():cpp.Star<ImFont> {
        return imguicpp.ImGui.getFont();
    }
    /** get current scaled font size (= height in pixels). AFTER global scale factors applied. *IMPORTANT* DO NOT PASS THIS VALUE TO PushFont()! Use ImGui::GetStyle().FontSizeBase to get value before global scale factors. */
    extern inline public static function getFontSize():Float {
        return imguicpp.ImGui.getFontSize();
    }
    /** get current font bound at current size // == GetFont()->GetFontBaked(GetFontSize()) */
    extern inline public static function getFontBaked():cpp.Star<ImFontBaked> {
        return imguicpp.ImGui.getFontBaked();
    }
    /** modify a style color. always use this if you modify the style after NewFrame(). */
    extern inline public static function pushStyleColor(idx:Int, col:ImU32):Void {
        imguicpp.ImGui.pushStyleColor(idx, col);
    }
    extern inline public static function pushStyleColorImVec4(idx:Int, col:ImVec4):Void {
        imguicpp.ImGui.pushStyleColorImVec4(idx, col);
    }
    extern inline public static function popStyleColorEx(count:Int = 1):Void {
        imguicpp.ImGui.popStyleColorEx(count);
    }
    /** Implied count = 1 */
    extern inline public static function popStyleColor():Void {
        imguicpp.ImGui.popStyleColor();
    }
    /** modify a style float variable. always use this if you modify the style after NewFrame()! */
    extern inline public static function pushStyleVar(idx:Int, val:Float):Void {
        imguicpp.ImGui.pushStyleVar(idx, val);
    }
    /** modify a style ImVec2 variable. " */
    extern inline public static function pushStyleVarImVec2(idx:Int, val:ImVec2):Void {
        imguicpp.ImGui.pushStyleVarImVec2(idx, val);
    }
    /** modify X component of a style ImVec2 variable. " */
    extern inline public static function pushStyleVarX(idx:Int, valX:Float):Void {
        imguicpp.ImGui.pushStyleVarX(idx, valX);
    }
    /** modify Y component of a style ImVec2 variable. " */
    extern inline public static function pushStyleVarY(idx:Int, valY:Float):Void {
        imguicpp.ImGui.pushStyleVarY(idx, valY);
    }
    extern inline public static function popStyleVarEx(count:Int = 1):Void {
        imguicpp.ImGui.popStyleVarEx(count);
    }
    /** Implied count = 1 */
    extern inline public static function popStyleVar():Void {
        imguicpp.ImGui.popStyleVar();
    }
    /** modify specified shared item flag, e.g. PushItemFlag(ImGuiItemFlags_NoTabStop, true) */
    extern inline public static function pushItemFlag(option:Int, enabled:Bool):Void {
        imguicpp.ImGui.pushItemFlag(option, enabled);
    }
    extern inline public static function popItemFlag():Void {
        imguicpp.ImGui.popItemFlag();
    }
    /** push width of items for common large "item+label" widgets. >0.0f: width in pixels, <0.0f align xx pixels to the right of window (so -FLT_MIN always align width to the right side). */
    extern inline public static function pushItemWidth(itemWidth:Float):Void {
        imguicpp.ImGui.pushItemWidth(itemWidth);
    }
    extern inline public static function popItemWidth():Void {
        imguicpp.ImGui.popItemWidth();
    }
    /** set width of the _next_ common large "item+label" widget. >0.0f: width in pixels, <0.0f align xx pixels to the right of window (so -FLT_MIN always align width to the right side) */
    extern inline public static function setNextItemWidth(itemWidth:Float):Void {
        imguicpp.ImGui.setNextItemWidth(itemWidth);
    }
    /** width of item given pushed settings and current cursor position. NOT necessarily the width of last item unlike most 'Item' functions. */
    extern inline public static function calcItemWidth():Float {
        return imguicpp.ImGui.calcItemWidth();
    }
    /** push word-wrapping position for Text*() commands. < 0.0f: no wrapping; 0.0f: wrap to end of window (or column); > 0.0f: wrap at 'wrap_pos_x' position in window local space */
    extern inline public static function pushTextWrapPos(wrapLocalPosX:Float = 0.0):Void {
        imguicpp.ImGui.pushTextWrapPos(wrapLocalPosX);
    }
    extern inline public static function popTextWrapPos():Void {
        imguicpp.ImGui.popTextWrapPos();
    }
    /** get UV coordinate for a white pixel, useful to draw custom shapes via the ImDrawList API */
    extern inline public static function getFontTexUvWhitePixel():ImVec2 {
        return imguicpp.ImGui.getFontTexUvWhitePixel();
    }
    /** retrieve given style color with style alpha applied and optional extra alpha multiplier, packed as a 32-bit value suitable for ImDrawList */
    extern inline public static function getColorU32Ex(idx:Int, alphaMul:Float = 1.0):UInt {
        return imguicpp.ImGui.getColorU32Ex(idx, alphaMul);
    }
    /** Implied alpha_mul = 1.0f */
    extern inline public static function getColorU32(idx:Int):UInt {
        return imguicpp.ImGui.getColorU32(idx);
    }
    /** retrieve given color with style alpha applied, packed as a 32-bit value suitable for ImDrawList */
    extern inline public static function getColorU32ImVec4(col:ImVec4):UInt {
        return imguicpp.ImGui.getColorU32ImVec4(col);
    }
    /** retrieve given color with style alpha applied, packed as a 32-bit value suitable for ImDrawList */
    extern inline public static function getColorU32ImU32Ex(col:ImU32, alphaMul:Float = 1.0):UInt {
        return imguicpp.ImGui.getColorU32ImU32Ex(col, alphaMul);
    }
    /** Implied alpha_mul = 1.0f */
    extern inline public static function getColorU32ImU32(col:ImU32):UInt {
        return imguicpp.ImGui.getColorU32ImU32(col);
    }
    /** retrieve style color as stored in ImGuiStyle structure. use to feed back into PushStyleColor(), otherwise use GetColorU32() to get style color with style alpha baked in. */
    extern inline public static function getStyleColorVec4(idx:Int):cpp.Star<ImVec4> {
        return imguicpp.ImGui.getStyleColorVec4(idx);
    }
    /** cursor position, absolute coordinates. THIS IS YOUR BEST FRIEND (prefer using this rather than GetCursorPos(), also more useful to work with ImDrawList API). */
    extern inline public static function getCursorScreenPos():ImVec2 {
        return imguicpp.ImGui.getCursorScreenPos();
    }
    /** cursor position, absolute coordinates. THIS IS YOUR BEST FRIEND. */
    extern inline public static function setCursorScreenPos(pos:ImVec2):Void {
        imguicpp.ImGui.setCursorScreenPos(pos);
    }
    /** available space from current position. THIS IS YOUR BEST FRIEND. */
    extern inline public static function getContentRegionAvail():ImVec2 {
        return imguicpp.ImGui.getContentRegionAvail();
    }
    /** [window-local] cursor position in window-local coordinates. This is not your best friend. */
    extern inline public static function getCursorPos():ImVec2 {
        return imguicpp.ImGui.getCursorPos();
    }
    /** [window-local] " */
    extern inline public static function getCursorPosX():Float {
        return imguicpp.ImGui.getCursorPosX();
    }
    /** [window-local] " */
    extern inline public static function getCursorPosY():Float {
        return imguicpp.ImGui.getCursorPosY();
    }
    /** [window-local] " */
    extern inline public static function setCursorPos(localPos:ImVec2):Void {
        imguicpp.ImGui.setCursorPos(localPos);
    }
    /** [window-local] " */
    extern inline public static function setCursorPosX(localX:Float):Void {
        imguicpp.ImGui.setCursorPosX(localX);
    }
    /** [window-local] " */
    extern inline public static function setCursorPosY(localY:Float):Void {
        imguicpp.ImGui.setCursorPosY(localY);
    }
    /** [window-local] initial cursor position, in window-local coordinates. Call GetCursorScreenPos() after Begin() to get the absolute coordinates version. */
    extern inline public static function getCursorStartPos():ImVec2 {
        return imguicpp.ImGui.getCursorStartPos();
    }
    /** separator, generally horizontal. inside a menu bar or in horizontal layout mode, this becomes a vertical separator. */
    extern inline public static function separator():Void {
        imguicpp.ImGui.separator();
    }
    /** call between widgets or groups to layout them horizontally. X position given in window coordinates. */
    extern inline public static function sameLineEx(offsetFromStartX:Float = 0.0, spacing:Float = -1.0):Void {
        imguicpp.ImGui.sameLineEx(offsetFromStartX, spacing);
    }
    /** Implied offset_from_start_x = 0.0f, spacing = -1.0f */
    extern inline public static function sameLine():Void {
        imguicpp.ImGui.sameLine();
    }
    /** undo a SameLine() or force a new line when in a horizontal-layout context. */
    extern inline public static function newLine():Void {
        imguicpp.ImGui.newLine();
    }
    /** add vertical spacing. */
    extern inline public static function spacing():Void {
        imguicpp.ImGui.spacing();
    }
    /** add a dummy item of given size. unlike InvisibleButton(), Dummy() won't take the mouse click or be navigable into. */
    extern inline public static function dummy(size:ImVec2):Void {
        imguicpp.ImGui.dummy(size);
    }
    /** move content position toward the right, by indent_w, or style.IndentSpacing if indent_w <= 0 */
    extern inline public static function indentEx(indentW:Float = 0.0):Void {
        imguicpp.ImGui.indentEx(indentW);
    }
    /** Implied indent_w = 0.0f */
    extern inline public static function indent():Void {
        imguicpp.ImGui.indent();
    }
    /** move content position back to the left, by indent_w, or style.IndentSpacing if indent_w <= 0 */
    extern inline public static function unindentEx(indentW:Float = 0.0):Void {
        imguicpp.ImGui.unindentEx(indentW);
    }
    /** Implied indent_w = 0.0f */
    extern inline public static function unindent():Void {
        imguicpp.ImGui.unindent();
    }
    /** lock horizontal starting position */
    extern inline public static function beginGroup():Void {
        imguicpp.ImGui.beginGroup();
    }
    /** unlock horizontal starting position + capture the whole group bounding box into one "item" (so you can use IsItemHovered() or layout primitives such as SameLine() on whole group, etc.) */
    extern inline public static function endGroup():Void {
        imguicpp.ImGui.endGroup();
    }
    /** vertically align upcoming text baseline to FramePadding.y so that it will align properly to regularly framed items (call if you have text on a line before a framed item) */
    extern inline public static function alignTextToFramePadding():Void {
        imguicpp.ImGui.alignTextToFramePadding();
    }
    /** ~ FontSize */
    extern inline public static function getTextLineHeight():Float {
        return imguicpp.ImGui.getTextLineHeight();
    }
    /** ~ FontSize + style.ItemSpacing.y (distance in pixels between 2 consecutive lines of text) */
    extern inline public static function getTextLineHeightWithSpacing():Float {
        return imguicpp.ImGui.getTextLineHeightWithSpacing();
    }
    /** ~ FontSize + style.FramePadding.y * 2 */
    extern inline public static function getFrameHeight():Float {
        return imguicpp.ImGui.getFrameHeight();
    }
    /** ~ FontSize + style.FramePadding.y * 2 + style.ItemSpacing.y (distance in pixels between 2 consecutive lines of framed widgets) */
    extern inline public static function getFrameHeightWithSpacing():Float {
        return imguicpp.ImGui.getFrameHeightWithSpacing();
    }
    /** push string into the ID stack (will hash string). */
    extern inline public static function pushID(strId:String):Void {
        imguicpp.ImGui.pushID(strId);
    }
    /** push string into the ID stack (will hash string). */
    extern inline public static function pushIDStr(strIdBegin:String, strIdEnd:String):Void {
        imguicpp.ImGui.pushIDStr(strIdBegin, strIdEnd);
    }
    /** push pointer into the ID stack (will hash pointer). */
    extern inline public static function pushIDPtr(ptrId:cpp.RawPointer<cpp.Void>):Void {
        imguicpp.ImGui.pushIDPtr(ptrId);
    }
    /** push integer into the ID stack (will hash integer). */
    extern inline public static function pushIDInt(intId:Int):Void {
        imguicpp.ImGui.pushIDInt(intId);
    }
    /** pop from the ID stack. */
    extern inline public static function popID():Void {
        imguicpp.ImGui.popID();
    }
    /** calculate unique ID (hash of whole ID stack + given parameter). e.g. if you want to query into ImGuiStorage yourself */
    extern inline public static function getID(strId:String):UInt {
        return imguicpp.ImGui.getID(strId);
    }
    extern inline public static function getIDStr(strIdBegin:String, strIdEnd:String):UInt {
        return imguicpp.ImGui.getIDStr(strIdBegin, strIdEnd);
    }
    extern inline public static function getIDPtr(ptrId:cpp.RawPointer<cpp.Void>):UInt {
        return imguicpp.ImGui.getIDPtr(ptrId);
    }
    extern inline public static function getIDInt(intId:Int):UInt {
        return imguicpp.ImGui.getIDInt(intId);
    }
    /** raw text without formatting. Roughly equivalent to Text("%s", text) but: A) doesn't require null terminated string if 'text_end' is specified, B) it's faster, no memory copy is done, no buffer size limits, recommended for long chunks of text. */
    extern inline public static function text(text:String, textEnd:String = null):Void {
        imguicpp.ImGui.text(text, textEnd);
    }
    /** Implied text_end = NULL */
    extern inline public static function textUnformatted(text:String):Void {
        imguicpp.ImGui.textUnformatted(text);
    }
    /** shortcut for PushStyleColor(ImGuiCol_Text, col); Text(fmt, ...); PopStyleColor(); */
    extern inline public static function textColored(col:ImVec4, text:String):Void {
        imguicpp.ImGui.textColored(col, text);
    }
    /** shortcut for PushStyleColor(ImGuiCol_Text, style.Colors[ImGuiCol_TextDisabled]); Text(fmt, ...); PopStyleColor(); */
    extern inline public static function textDisabled(text:String):Void {
        imguicpp.ImGui.textDisabled(text);
    }
    /** shortcut for PushTextWrapPos(0.0f); Text(fmt, ...); PopTextWrapPos();. Note that this won't work on an auto-resizing window if there's no other widgets to extend the window width, yoy may need to set a size using SetNextWindowSize(). */
    extern inline public static function textWrapped(text:String):Void {
        imguicpp.ImGui.textWrapped(text);
    }
    /** display text+label aligned the same way as value+label widgets */
    extern inline public static function labelText(label:String, text:String):Void {
        imguicpp.ImGui.labelText(label, text);
    }
    /** shortcut for Bullet()+Text() */
    extern inline public static function bulletText(text:String):Void {
        imguicpp.ImGui.bulletText(text);
    }
    /** currently: formatted text with a horizontal line */
    extern inline public static function separatorText(label:String):Void {
        imguicpp.ImGui.separatorText(label);
    }
    /** button */
    extern inline public static function buttonEx(label:String, size:ImVec2):Bool {
        return imguicpp.ImGui.buttonEx(label, size);
    }
    /** Implied size = ImVec2(0, 0) */
    extern inline public static function button(label:String):Bool {
        return imguicpp.ImGui.button(label);
    }
    /** button with (FramePadding.y == 0) to easily embed within text */
    extern inline public static function smallButton(label:String):Bool {
        return imguicpp.ImGui.smallButton(label);
    }
    /** flexible button behavior without the visuals, frequently useful to build custom behaviors using the public api (along with IsItemActive, IsItemHovered, etc.) */
    extern inline public static function invisibleButton(strId:String, size:ImVec2, flags:Int = 0):Bool {
        return imguicpp.ImGui.invisibleButton(strId, size, flags);
    }
    /** square button with an arrow shape */
    extern inline public static function arrowButton(strId:String, dir:Int):Bool {
        return imguicpp.ImGui.arrowButton(strId, dir);
    }
    /** use with e.g. if (RadioButton("one", my_value==1)) { my_value = 1; } */
    extern inline public static function radioButton(label:String, active:Bool):Bool {
        return imguicpp.ImGui.radioButton(label, active);
    }
    extern inline public static function progressBar(fraction:Float, sizeArg:ImVec2, overlay:String = null):Void {
        imguicpp.ImGui.progressBar(fraction, sizeArg, overlay);
    }
    /** draw a small circle + keep the cursor on the same line. advance cursor x position by GetTreeNodeToLabelSpacing(), same distance that TreeNode() uses */
    extern inline public static function bullet():Void {
        imguicpp.ImGui.bullet();
    }
    /** hyperlink text button, return true when clicked */
    extern inline public static function textLink(label:String):Bool {
        return imguicpp.ImGui.textLink(label);
    }
    /** hyperlink text button, automatically open file/url when clicked */
    extern inline public static function textLinkOpenURLEx(label:String, url:String = null):Bool {
        return imguicpp.ImGui.textLinkOpenURLEx(label, url);
    }
    /** Implied url = NULL */
    extern inline public static function textLinkOpenURL(label:String):Bool {
        return imguicpp.ImGui.textLinkOpenURL(label);
    }
    extern inline public static function imageEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2):Void {
        imguicpp.ImGui.imageEx(texRef, imageSize, uv0, uv1);
    }
    /** Implied uv0 = ImVec2(0, 0), uv1 = ImVec2(1, 1) */
    extern inline public static function image(texRef:ImTextureRef, imageSize:ImVec2):Void {
        imguicpp.ImGui.image(texRef, imageSize);
    }
    extern inline public static function imageWithBgEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Void {
        imguicpp.ImGui.imageWithBgEx(texRef, imageSize, uv0, uv1, bgCol, tintCol);
    }
    /** Implied uv0 = ImVec2(0, 0), uv1 = ImVec2(1, 1), bg_col = ImVec4(0, 0, 0, 0), tint_col = ImVec4(1, 1, 1, 1) */
    extern inline public static function imageWithBg(texRef:ImTextureRef, imageSize:ImVec2):Void {
        imguicpp.ImGui.imageWithBg(texRef, imageSize);
    }
    extern inline public static function imageButtonEx(strId:String, texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Bool {
        return imguicpp.ImGui.imageButtonEx(strId, texRef, imageSize, uv0, uv1, bgCol, tintCol);
    }
    /** Implied uv0 = ImVec2(0, 0), uv1 = ImVec2(1, 1), bg_col = ImVec4(0, 0, 0, 0), tint_col = ImVec4(1, 1, 1, 1) */
    extern inline public static function imageButton(strId:String, texRef:ImTextureRef, imageSize:ImVec2):Bool {
        return imguicpp.ImGui.imageButton(strId, texRef, imageSize);
    }
    extern inline public static function beginCombo(label:String, previewValue:String, flags:Int = 0):Bool {
        return imguicpp.ImGui.beginCombo(label, previewValue, flags);
    }
    /** only call EndCombo() if BeginCombo() returns true! */
    extern inline public static function endCombo():Void {
        imguicpp.ImGui.endCombo();
    }
    extern inline public static function comboCharEx(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, items:cpp.RawPointer<cpp.ConstCharStar>, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        return imguicpp.ImGui.comboCharEx(label, currentItem, items, itemsCount, popupMaxHeightInItems);
    }
    /** Implied popup_max_height_in_items = -1 */
    extern inline public static function comboChar(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, items:cpp.RawPointer<cpp.ConstCharStar>, itemsCount:Int):Bool {
        return imguicpp.ImGui.comboChar(label, currentItem, items, itemsCount);
    }
    extern inline public static function comboCallbackEx(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, getter:ImGuiOpaqueCallback, userData:cpp.RawPointer<cpp.Void>, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        return imguicpp.ImGui.comboCallbackEx(label, currentItem, getter, userData, itemsCount, popupMaxHeightInItems);
    }
    /** Implied popup_max_height_in_items = -1 */
    extern inline public static function comboCallback(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, getter:ImGuiOpaqueCallback, userData:cpp.RawPointer<cpp.Void>, itemsCount:Int):Bool {
        return imguicpp.ImGui.comboCallback(label, currentItem, getter, userData, itemsCount);
    }
    extern inline public static function dragFloat2Ex(label:String, v:Array<Float>, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 2);
        var _imret = imguicpp.ImGui.dragFloat2Ex(label, cast imguicpp.Marshal.floatsA, vSpeed, vMin, vMax, format, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 2);
        return _imret;
    }
    /** Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0 */
    extern inline public static function dragFloat2(label:String, v:Array<Float>):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 2);
        var _imret = imguicpp.ImGui.dragFloat2(label, cast imguicpp.Marshal.floatsA);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 2);
        return _imret;
    }
    extern inline public static function dragFloat3Ex(label:String, v:Array<Float>, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 3);
        var _imret = imguicpp.ImGui.dragFloat3Ex(label, cast imguicpp.Marshal.floatsA, vSpeed, vMin, vMax, format, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 3);
        return _imret;
    }
    /** Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0 */
    extern inline public static function dragFloat3(label:String, v:Array<Float>):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 3);
        var _imret = imguicpp.ImGui.dragFloat3(label, cast imguicpp.Marshal.floatsA);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 3);
        return _imret;
    }
    extern inline public static function dragFloat4Ex(label:String, v:Array<Float>, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 4);
        var _imret = imguicpp.ImGui.dragFloat4Ex(label, cast imguicpp.Marshal.floatsA, vSpeed, vMin, vMax, format, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 4);
        return _imret;
    }
    /** Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0 */
    extern inline public static function dragFloat4(label:String, v:Array<Float>):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 4);
        var _imret = imguicpp.ImGui.dragFloat4(label, cast imguicpp.Marshal.floatsA);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 4);
        return _imret;
    }
    extern inline public static function dragInt2Ex(label:String, v:Array<Int>, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 2);
        var _imret = imguicpp.ImGui.dragInt2Ex(label, cast imguicpp.Marshal.intsA, vSpeed, vMin, vMax, format, flags);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 2);
        return _imret;
    }
    /** Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0 */
    extern inline public static function dragInt2(label:String, v:Array<Int>):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 2);
        var _imret = imguicpp.ImGui.dragInt2(label, cast imguicpp.Marshal.intsA);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 2);
        return _imret;
    }
    extern inline public static function dragInt3Ex(label:String, v:Array<Int>, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 3);
        var _imret = imguicpp.ImGui.dragInt3Ex(label, cast imguicpp.Marshal.intsA, vSpeed, vMin, vMax, format, flags);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 3);
        return _imret;
    }
    /** Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0 */
    extern inline public static function dragInt3(label:String, v:Array<Int>):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 3);
        var _imret = imguicpp.ImGui.dragInt3(label, cast imguicpp.Marshal.intsA);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 3);
        return _imret;
    }
    extern inline public static function dragInt4Ex(label:String, v:Array<Int>, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 4);
        var _imret = imguicpp.ImGui.dragInt4Ex(label, cast imguicpp.Marshal.intsA, vSpeed, vMin, vMax, format, flags);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 4);
        return _imret;
    }
    /** Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0 */
    extern inline public static function dragInt4(label:String, v:Array<Int>):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 4);
        var _imret = imguicpp.ImGui.dragInt4(label, cast imguicpp.Marshal.intsA);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 4);
        return _imret;
    }
    extern inline public static function dragScalarEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, vSpeed:cpp.Float32 = 1.0, pMin:cpp.RawPointer<cpp.Void> = null, pMax:cpp.RawPointer<cpp.Void> = null, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return imguicpp.ImGui.dragScalarEx(label, dataType, pData, vSpeed, pMin, pMax, format, flags);
    }
    /** Implied v_speed = 1.0f, p_min = NULL, p_max = NULL, format = NULL, flags = 0 */
    extern inline public static function dragScalar(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>):Bool {
        return imguicpp.ImGui.dragScalar(label, dataType, pData);
    }
    extern inline public static function dragScalarNEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int, vSpeed:cpp.Float32 = 1.0, pMin:cpp.RawPointer<cpp.Void> = null, pMax:cpp.RawPointer<cpp.Void> = null, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return imguicpp.ImGui.dragScalarNEx(label, dataType, pData, components, vSpeed, pMin, pMax, format, flags);
    }
    /** Implied v_speed = 1.0f, p_min = NULL, p_max = NULL, format = NULL, flags = 0 */
    extern inline public static function dragScalarN(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int):Bool {
        return imguicpp.ImGui.dragScalarN(label, dataType, pData, components);
    }
    extern inline public static function sliderFloat2Ex(label:String, v:Array<Float>, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 2);
        var _imret = imguicpp.ImGui.sliderFloat2Ex(label, cast imguicpp.Marshal.floatsA, vMin, vMax, format, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 2);
        return _imret;
    }
    /** Implied format = "%.3f", flags = 0 */
    extern inline public static function sliderFloat2(label:String, v:Array<Float>, vMin:Float, vMax:Float):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 2);
        var _imret = imguicpp.ImGui.sliderFloat2(label, cast imguicpp.Marshal.floatsA, vMin, vMax);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 2);
        return _imret;
    }
    extern inline public static function sliderFloat3Ex(label:String, v:Array<Float>, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 3);
        var _imret = imguicpp.ImGui.sliderFloat3Ex(label, cast imguicpp.Marshal.floatsA, vMin, vMax, format, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 3);
        return _imret;
    }
    /** Implied format = "%.3f", flags = 0 */
    extern inline public static function sliderFloat3(label:String, v:Array<Float>, vMin:Float, vMax:Float):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 3);
        var _imret = imguicpp.ImGui.sliderFloat3(label, cast imguicpp.Marshal.floatsA, vMin, vMax);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 3);
        return _imret;
    }
    extern inline public static function sliderFloat4Ex(label:String, v:Array<Float>, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 4);
        var _imret = imguicpp.ImGui.sliderFloat4Ex(label, cast imguicpp.Marshal.floatsA, vMin, vMax, format, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 4);
        return _imret;
    }
    /** Implied format = "%.3f", flags = 0 */
    extern inline public static function sliderFloat4(label:String, v:Array<Float>, vMin:Float, vMax:Float):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 4);
        var _imret = imguicpp.ImGui.sliderFloat4(label, cast imguicpp.Marshal.floatsA, vMin, vMax);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 4);
        return _imret;
    }
    extern inline public static function sliderInt2Ex(label:String, v:Array<Int>, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 2);
        var _imret = imguicpp.ImGui.sliderInt2Ex(label, cast imguicpp.Marshal.intsA, vMin, vMax, format, flags);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 2);
        return _imret;
    }
    /** Implied format = "%d", flags = 0 */
    extern inline public static function sliderInt2(label:String, v:Array<Int>, vMin:Int, vMax:Int):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 2);
        var _imret = imguicpp.ImGui.sliderInt2(label, cast imguicpp.Marshal.intsA, vMin, vMax);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 2);
        return _imret;
    }
    extern inline public static function sliderInt3Ex(label:String, v:Array<Int>, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 3);
        var _imret = imguicpp.ImGui.sliderInt3Ex(label, cast imguicpp.Marshal.intsA, vMin, vMax, format, flags);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 3);
        return _imret;
    }
    /** Implied format = "%d", flags = 0 */
    extern inline public static function sliderInt3(label:String, v:Array<Int>, vMin:Int, vMax:Int):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 3);
        var _imret = imguicpp.ImGui.sliderInt3(label, cast imguicpp.Marshal.intsA, vMin, vMax);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 3);
        return _imret;
    }
    extern inline public static function sliderInt4Ex(label:String, v:Array<Int>, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 4);
        var _imret = imguicpp.ImGui.sliderInt4Ex(label, cast imguicpp.Marshal.intsA, vMin, vMax, format, flags);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 4);
        return _imret;
    }
    /** Implied format = "%d", flags = 0 */
    extern inline public static function sliderInt4(label:String, v:Array<Int>, vMin:Int, vMax:Int):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 4);
        var _imret = imguicpp.ImGui.sliderInt4(label, cast imguicpp.Marshal.intsA, vMin, vMax);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 4);
        return _imret;
    }
    extern inline public static function sliderScalarEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return imguicpp.ImGui.sliderScalarEx(label, dataType, pData, pMin, pMax, format, flags);
    }
    /** Implied format = NULL, flags = 0 */
    extern inline public static function sliderScalar(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>):Bool {
        return imguicpp.ImGui.sliderScalar(label, dataType, pData, pMin, pMax);
    }
    extern inline public static function sliderScalarNEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return imguicpp.ImGui.sliderScalarNEx(label, dataType, pData, components, pMin, pMax, format, flags);
    }
    /** Implied format = NULL, flags = 0 */
    extern inline public static function sliderScalarN(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>):Bool {
        return imguicpp.ImGui.sliderScalarN(label, dataType, pData, components, pMin, pMax);
    }
    extern inline public static function vSliderScalarEx(label:cpp.ConstCharStar, size:ImVec2, dataType:Int, pData:cpp.RawPointer<cpp.Void>, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return imguicpp.ImGui.vSliderScalarEx(label, size, dataType, pData, pMin, pMax, format, flags);
    }
    /** Implied format = NULL, flags = 0 */
    extern inline public static function vSliderScalar(label:cpp.ConstCharStar, size:ImVec2, dataType:Int, pData:cpp.RawPointer<cpp.Void>, pMin:cpp.RawPointer<cpp.Void>, pMax:cpp.RawPointer<cpp.Void>):Bool {
        return imguicpp.ImGui.vSliderScalar(label, size, dataType, pData, pMin, pMax);
    }
    extern inline public static function inputFloat2Ex(label:String, v:Array<Float>, format:String = "%.3f", flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 2);
        var _imret = imguicpp.ImGui.inputFloat2Ex(label, cast imguicpp.Marshal.floatsA, format, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 2);
        return _imret;
    }
    /** Implied format = "%.3f", flags = 0 */
    extern inline public static function inputFloat2(label:String, v:Array<Float>):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 2);
        var _imret = imguicpp.ImGui.inputFloat2(label, cast imguicpp.Marshal.floatsA);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 2);
        return _imret;
    }
    extern inline public static function inputFloat3Ex(label:String, v:Array<Float>, format:String = "%.3f", flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 3);
        var _imret = imguicpp.ImGui.inputFloat3Ex(label, cast imguicpp.Marshal.floatsA, format, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 3);
        return _imret;
    }
    /** Implied format = "%.3f", flags = 0 */
    extern inline public static function inputFloat3(label:String, v:Array<Float>):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 3);
        var _imret = imguicpp.ImGui.inputFloat3(label, cast imguicpp.Marshal.floatsA);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 3);
        return _imret;
    }
    extern inline public static function inputFloat4Ex(label:String, v:Array<Float>, format:String = "%.3f", flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 4);
        var _imret = imguicpp.ImGui.inputFloat4Ex(label, cast imguicpp.Marshal.floatsA, format, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 4);
        return _imret;
    }
    /** Implied format = "%.3f", flags = 0 */
    extern inline public static function inputFloat4(label:String, v:Array<Float>):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, v, 4);
        var _imret = imguicpp.ImGui.inputFloat4(label, cast imguicpp.Marshal.floatsA);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, v, 4);
        return _imret;
    }
    extern inline public static function inputInt2(label:String, v:Array<Int>, flags:Int = 0):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 2);
        var _imret = imguicpp.ImGui.inputInt2(label, cast imguicpp.Marshal.intsA, flags);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 2);
        return _imret;
    }
    extern inline public static function inputInt3(label:String, v:Array<Int>, flags:Int = 0):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 3);
        var _imret = imguicpp.ImGui.inputInt3(label, cast imguicpp.Marshal.intsA, flags);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 3);
        return _imret;
    }
    extern inline public static function inputInt4(label:String, v:Array<Int>, flags:Int = 0):Bool {
        imguicpp.Marshal.loadInts(imguicpp.Marshal.intsA, v, 4);
        var _imret = imguicpp.ImGui.inputInt4(label, cast imguicpp.Marshal.intsA, flags);
        imguicpp.Marshal.storeInts(imguicpp.Marshal.intsA, v, 4);
        return _imret;
    }
    extern inline public static function inputScalarEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, pStep:cpp.RawPointer<cpp.Void> = null, pStepFast:cpp.RawPointer<cpp.Void> = null, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return imguicpp.ImGui.inputScalarEx(label, dataType, pData, pStep, pStepFast, format, flags);
    }
    /** Implied p_step = NULL, p_step_fast = NULL, format = NULL, flags = 0 */
    extern inline public static function inputScalar(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>):Bool {
        return imguicpp.ImGui.inputScalar(label, dataType, pData);
    }
    extern inline public static function inputScalarNEx(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int, pStep:cpp.RawPointer<cpp.Void> = null, pStepFast:cpp.RawPointer<cpp.Void> = null, format:cpp.ConstCharStar = null, flags:Int = 0):Bool {
        return imguicpp.ImGui.inputScalarNEx(label, dataType, pData, components, pStep, pStepFast, format, flags);
    }
    /** Implied p_step = NULL, p_step_fast = NULL, format = NULL, flags = 0 */
    extern inline public static function inputScalarN(label:cpp.ConstCharStar, dataType:Int, pData:cpp.RawPointer<cpp.Void>, components:Int):Bool {
        return imguicpp.ImGui.inputScalarN(label, dataType, pData, components);
    }
    extern inline public static function colorEdit3(label:String, col:Array<Float>, flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, col, 3);
        var _imret = imguicpp.ImGui.colorEdit3(label, cast imguicpp.Marshal.floatsA, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, col, 3);
        return _imret;
    }
    extern inline public static function colorEdit4(label:String, col:Array<Float>, flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, col, 4);
        var _imret = imguicpp.ImGui.colorEdit4(label, cast imguicpp.Marshal.floatsA, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, col, 4);
        return _imret;
    }
    extern inline public static function colorPicker3(label:String, col:Array<Float>, flags:Int = 0):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, col, 3);
        var _imret = imguicpp.ImGui.colorPicker3(label, cast imguicpp.Marshal.floatsA, flags);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, col, 3);
        return _imret;
    }
    extern inline public static function colorPicker4(label:String, col:Array<Float>, flags:Int = 0, refCol:cpp.Star<cpp.Float32> = null):Bool {
        imguicpp.Marshal.loadFloats(imguicpp.Marshal.floatsA, col, 4);
        var _imret = imguicpp.ImGui.colorPicker4(label, cast imguicpp.Marshal.floatsA, flags, refCol);
        imguicpp.Marshal.storeFloats(imguicpp.Marshal.floatsA, col, 4);
        return _imret;
    }
    /** display a color square/button, hover for details, return true when pressed. */
    extern inline public static function colorButtonEx(descId:String, col:ImVec4, flags:Int = 0, size:ImVec2):Bool {
        return imguicpp.ImGui.colorButtonEx(descId, col, flags, size);
    }
    /** Implied size = ImVec2(0, 0) */
    extern inline public static function colorButton(descId:String, col:ImVec4, flags:Int = 0):Bool {
        return imguicpp.ImGui.colorButton(descId, col, flags);
    }
    /** initialize current options (generally on application startup) if you want to select a default format, picker type, etc. User will be able to change many settings, unless you pass the _NoOptions flag to your calls. */
    extern inline public static function setColorEditOptions(flags:Int):Void {
        imguicpp.ImGui.setColorEditOptions(flags);
    }
    extern inline public static function treeNode(label:String):Bool {
        return imguicpp.ImGui.treeNode(label);
    }
    /** helper variation to easily decorrelate the id from the displayed string. Read the FAQ about why and how to use ID. to align arbitrary text at the same level as a TreeNode() you can use Bullet(). */
    extern inline public static function treeNodeStr(strId:String, text:String):Bool {
        return imguicpp.ImGui.treeNodeStr(strId, text);
    }
    /** " */
    extern inline public static function treeNodePtr(ptrId:cpp.RawPointer<cpp.Void>, text:cpp.ConstCharStar):Bool {
        return imguicpp.ImGui.treeNodePtr(ptrId, text);
    }
    extern inline public static function treeNodeEx(label:String, flags:Int = 0):Bool {
        return imguicpp.ImGui.treeNodeEx(label, flags);
    }
    extern inline public static function treeNodeExStr(strId:String, flags:Int, text:String):Bool {
        return imguicpp.ImGui.treeNodeExStr(strId, flags, text);
    }
    extern inline public static function treeNodeExPtr(ptrId:cpp.RawPointer<cpp.Void>, flags:Int, text:cpp.ConstCharStar):Bool {
        return imguicpp.ImGui.treeNodeExPtr(ptrId, flags, text);
    }
    /** ~ Indent()+PushID(). Already called by TreeNode() when returning true, but you can call TreePush/TreePop yourself if desired. */
    extern inline public static function treePush(strId:String):Void {
        imguicpp.ImGui.treePush(strId);
    }
    /** " */
    extern inline public static function treePushPtr(ptrId:cpp.RawPointer<cpp.Void>):Void {
        imguicpp.ImGui.treePushPtr(ptrId);
    }
    /** ~ Unindent()+PopID() */
    extern inline public static function treePop():Void {
        imguicpp.ImGui.treePop();
    }
    /** horizontal distance preceding label when using TreeNode*() or Bullet() == (g.FontSize + style.FramePadding.x*2) for a regular unframed TreeNode */
    extern inline public static function getTreeNodeToLabelSpacing():Float {
        return imguicpp.ImGui.getTreeNodeToLabelSpacing();
    }
    /** if returning 'true' the header is open. doesn't indent nor push on ID stack. user doesn't have to call TreePop(). */
    extern inline public static function collapsingHeader(label:String, flags:Int = 0):Bool {
        return imguicpp.ImGui.collapsingHeader(label, flags);
    }
    /** set next TreeNode/CollapsingHeader open state. */
    extern inline public static function setNextItemOpen(isOpen:Bool, cond:Int = 0):Void {
        imguicpp.ImGui.setNextItemOpen(isOpen, cond);
    }
    /** set id to use for open/close storage (default to same as item id). */
    extern inline public static function setNextItemStorageID(storageId:ImGuiID):Void {
        imguicpp.ImGui.setNextItemStorageID(storageId);
    }
    /** retrieve tree node open/close state. */
    extern inline public static function treeNodeGetOpen(storageId:ImGuiID):Bool {
        return imguicpp.ImGui.treeNodeGetOpen(storageId);
    }
    /** "bool selected" carry the selection state (read-only). Selectable() is clicked is returns true so you can modify your selection state. size.x==0.0: use remaining width, size.x>0.0: specify width. size.y==0.0: use label height, size.y>0.0: specify height */
    extern inline public static function selectableEx(label:String, selected:Bool = false, flags:Int = 0, size:ImVec2):Bool {
        return imguicpp.ImGui.selectableEx(label, selected, flags, size);
    }
    /** Implied selected = false, flags = 0, size = ImVec2(0, 0) */
    extern inline public static function selectable(label:String):Bool {
        return imguicpp.ImGui.selectable(label);
    }
    extern inline public static function beginMultiSelectEx(flags:Int, selectionSize:Int = -1, itemsCount:Int = -1):cpp.Star<ImGuiMultiSelectIO> {
        return imguicpp.ImGui.beginMultiSelectEx(flags, selectionSize, itemsCount);
    }
    /** Implied selection_size = -1, items_count = -1 */
    extern inline public static function beginMultiSelect(flags:Int):cpp.Star<ImGuiMultiSelectIO> {
        return imguicpp.ImGui.beginMultiSelect(flags);
    }
    extern inline public static function endMultiSelect():cpp.Star<ImGuiMultiSelectIO> {
        return imguicpp.ImGui.endMultiSelect();
    }
    extern inline public static function setNextItemSelectionUserData(selectionUserData:ImGuiSelectionUserData):Void {
        imguicpp.ImGui.setNextItemSelectionUserData(selectionUserData);
    }
    /** Was the last item selection state toggled? Useful if you need the per-item information _before_ reaching EndMultiSelect(). We only returns toggle _event_ in order to handle clipping correctly. */
    extern inline public static function isItemToggledSelection():Bool {
        return imguicpp.ImGui.isItemToggledSelection();
    }
    /** open a framed scrolling region */
    extern inline public static function beginListBox(label:String, size:ImVec2):Bool {
        return imguicpp.ImGui.beginListBox(label, size);
    }
    /** only call EndListBox() if BeginListBox() returned true! */
    extern inline public static function endListBox():Void {
        imguicpp.ImGui.endListBox();
    }
    extern inline public static function listBox(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, items:cpp.RawPointer<cpp.ConstCharStar>, itemsCount:Int, heightInItems:Int = -1):Bool {
        return imguicpp.ImGui.listBox(label, currentItem, items, itemsCount, heightInItems);
    }
    extern inline public static function listBoxCallbackEx(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, getter:ImGuiOpaqueCallback, userData:cpp.RawPointer<cpp.Void>, itemsCount:Int, heightInItems:Int = -1):Bool {
        return imguicpp.ImGui.listBoxCallbackEx(label, currentItem, getter, userData, itemsCount, heightInItems);
    }
    /** Implied height_in_items = -1 */
    extern inline public static function listBoxCallback(label:cpp.ConstCharStar, currentItem:cpp.Star<Int>, getter:ImGuiOpaqueCallback, userData:cpp.RawPointer<cpp.Void>, itemsCount:Int):Bool {
        return imguicpp.ImGui.listBoxCallback(label, currentItem, getter, userData, itemsCount);
    }
    extern inline public static function plotLinesEx(label:String, values:Array<Float>, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        imguicpp.ImGui.plotLinesEx(label, cast imguicpp.Marshal.floatsDyn(values), values.length, valuesOffset, overlayText, scaleMin, scaleMax, graphSize, stride);
    }
    /** Implied values_offset = 0, overlay_text = NULL, scale_min = FLT_MAX, scale_max = FLT_MAX, graph_size = ImVec2(0, 0), stride = sizeof(float) */
    extern inline public static function plotLines(label:String, values:Array<Float>):Void {
        imguicpp.ImGui.plotLines(label, cast imguicpp.Marshal.floatsDyn(values), values.length);
    }
    extern inline public static function plotLinesCallbackEx(label:cpp.ConstCharStar, valuesGetter:ImGuiOpaqueCallback, data:cpp.RawPointer<cpp.Void>, valuesCount:Int, valuesOffset:Int = 0, overlayText:cpp.ConstCharStar = null, scaleMin:cpp.Float32 = 3.402823466e+38, scaleMax:cpp.Float32 = 3.402823466e+38, graphSize:ImVec2):Void {
        imguicpp.ImGui.plotLinesCallbackEx(label, valuesGetter, data, valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize);
    }
    /** Implied values_offset = 0, overlay_text = NULL, scale_min = FLT_MAX, scale_max = FLT_MAX, graph_size = ImVec2(0, 0) */
    extern inline public static function plotLinesCallback(label:cpp.ConstCharStar, valuesGetter:ImGuiOpaqueCallback, data:cpp.RawPointer<cpp.Void>, valuesCount:Int):Void {
        imguicpp.ImGui.plotLinesCallback(label, valuesGetter, data, valuesCount);
    }
    extern inline public static function plotHistogramEx(label:String, values:Array<Float>, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        imguicpp.ImGui.plotHistogramEx(label, cast imguicpp.Marshal.floatsDyn(values), values.length, valuesOffset, overlayText, scaleMin, scaleMax, graphSize, stride);
    }
    /** Implied values_offset = 0, overlay_text = NULL, scale_min = FLT_MAX, scale_max = FLT_MAX, graph_size = ImVec2(0, 0), stride = sizeof(float) */
    extern inline public static function plotHistogram(label:String, values:Array<Float>):Void {
        imguicpp.ImGui.plotHistogram(label, cast imguicpp.Marshal.floatsDyn(values), values.length);
    }
    extern inline public static function plotHistogramCallbackEx(label:cpp.ConstCharStar, valuesGetter:ImGuiOpaqueCallback, data:cpp.RawPointer<cpp.Void>, valuesCount:Int, valuesOffset:Int = 0, overlayText:cpp.ConstCharStar = null, scaleMin:cpp.Float32 = 3.402823466e+38, scaleMax:cpp.Float32 = 3.402823466e+38, graphSize:ImVec2):Void {
        imguicpp.ImGui.plotHistogramCallbackEx(label, valuesGetter, data, valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize);
    }
    /** Implied values_offset = 0, overlay_text = NULL, scale_min = FLT_MAX, scale_max = FLT_MAX, graph_size = ImVec2(0, 0) */
    extern inline public static function plotHistogramCallback(label:cpp.ConstCharStar, valuesGetter:ImGuiOpaqueCallback, data:cpp.RawPointer<cpp.Void>, valuesCount:Int):Void {
        imguicpp.ImGui.plotHistogramCallback(label, valuesGetter, data, valuesCount);
    }
    /** append to menu-bar of current window (requires ImGuiWindowFlags_MenuBar flag set on parent window). */
    extern inline public static function beginMenuBar():Bool {
        return imguicpp.ImGui.beginMenuBar();
    }
    /** only call EndMenuBar() if BeginMenuBar() returns true! */
    extern inline public static function endMenuBar():Void {
        imguicpp.ImGui.endMenuBar();
    }
    /** create and append to a full screen menu-bar. */
    extern inline public static function beginMainMenuBar():Bool {
        return imguicpp.ImGui.beginMainMenuBar();
    }
    /** only call EndMainMenuBar() if BeginMainMenuBar() returns true! */
    extern inline public static function endMainMenuBar():Void {
        imguicpp.ImGui.endMainMenuBar();
    }
    /** create a sub-menu entry. only call EndMenu() if this returns true! */
    extern inline public static function beginMenuEx(label:String, enabled:Bool = true):Bool {
        return imguicpp.ImGui.beginMenuEx(label, enabled);
    }
    /** Implied enabled = true */
    extern inline public static function beginMenu(label:String):Bool {
        return imguicpp.ImGui.beginMenu(label);
    }
    /** only call EndMenu() if BeginMenu() returns true! */
    extern inline public static function endMenu():Void {
        imguicpp.ImGui.endMenu();
    }
    /** return true when activated. */
    extern inline public static function menuItemEx(label:String, shortcut:String = null, selected:Bool = false, enabled:Bool = true):Bool {
        return imguicpp.ImGui.menuItemEx(label, shortcut, selected, enabled);
    }
    /** Implied shortcut = NULL, selected = false, enabled = true */
    extern inline public static function menuItem(label:String):Bool {
        return imguicpp.ImGui.menuItem(label);
    }
    /** begin/append a tooltip window. */
    extern inline public static function beginTooltip():Bool {
        return imguicpp.ImGui.beginTooltip();
    }
    /** only call EndTooltip() if BeginTooltip()/BeginItemTooltip() returns true! */
    extern inline public static function endTooltip():Void {
        imguicpp.ImGui.endTooltip();
    }
    /** set a text-only tooltip. Often used after a ImGui::IsItemHovered() check. Override any previous call to SetTooltip(). */
    extern inline public static function setTooltip(text:String):Void {
        imguicpp.ImGui.setTooltip(text);
    }
    /** begin/append a tooltip window if preceding item was hovered. */
    extern inline public static function beginItemTooltip():Bool {
        return imguicpp.ImGui.beginItemTooltip();
    }
    /** set a text-only tooltip if preceding item was hovered. override any previous call to SetTooltip(). */
    extern inline public static function setItemTooltip(text:String):Void {
        imguicpp.ImGui.setItemTooltip(text);
    }
    /** return true if the popup is open, and you can start outputting to it. */
    extern inline public static function beginPopup(strId:String, flags:Int = 0):Bool {
        return imguicpp.ImGui.beginPopup(strId, flags);
    }
    /** only call EndPopup() if BeginPopupXXX() returns true! */
    extern inline public static function endPopup():Void {
        imguicpp.ImGui.endPopup();
    }
    /** call to mark popup as open (don't call every frame!). */
    extern inline public static function openPopup(strId:String, popupFlags:Int = 0):Void {
        imguicpp.ImGui.openPopup(strId, popupFlags);
    }
    /** id overload to facilitate calling from nested stacks */
    extern inline public static function openPopupID(id:ImGuiID, popupFlags:Int = 0):Void {
        imguicpp.ImGui.openPopupID(id, popupFlags);
    }
    /** helper to open popup when clicked on last item. Default to ImGuiPopupFlags_MouseButtonRight == 1. (note: actually triggers on the mouse _released_ event to be consistent with popup behaviors) */
    extern inline public static function openPopupOnItemClick(strId:String = null, popupFlags:Int = 0):Void {
        imguicpp.ImGui.openPopupOnItemClick(strId, popupFlags);
    }
    /** manually close the popup we have begin-ed into. */
    extern inline public static function closeCurrentPopup():Void {
        imguicpp.ImGui.closeCurrentPopup();
    }
    /** open+begin popup when clicked on last item. Use str_id==NULL to associate the popup to previous item. If you want to use that on a non-interactive item such as Text() you need to pass in an explicit ID here. read comments in .cpp! */
    extern inline public static function beginPopupContextItemEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguicpp.ImGui.beginPopupContextItemEx(strId, popupFlags);
    }
    /** Implied str_id = NULL, popup_flags = 0 */
    extern inline public static function beginPopupContextItem():Bool {
        return imguicpp.ImGui.beginPopupContextItem();
    }
    /** open+begin popup when clicked on current window. */
    extern inline public static function beginPopupContextWindowEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguicpp.ImGui.beginPopupContextWindowEx(strId, popupFlags);
    }
    /** Implied str_id = NULL, popup_flags = 0 */
    extern inline public static function beginPopupContextWindow():Bool {
        return imguicpp.ImGui.beginPopupContextWindow();
    }
    /** open+begin popup when clicked in void (where there are no windows). */
    extern inline public static function beginPopupContextVoidEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguicpp.ImGui.beginPopupContextVoidEx(strId, popupFlags);
    }
    /** Implied str_id = NULL, popup_flags = 0 */
    extern inline public static function beginPopupContextVoid():Bool {
        return imguicpp.ImGui.beginPopupContextVoid();
    }
    /** return true if the popup is open. */
    extern inline public static function isPopupOpen(strId:String, flags:Int = 0):Bool {
        return imguicpp.ImGui.isPopupOpen(strId, flags);
    }
    extern inline public static function beginTableEx(strId:String, columns:Int, flags:Int = 0, outerSize:ImVec2, innerWidth:Float = 0.0):Bool {
        return imguicpp.ImGui.beginTableEx(strId, columns, flags, outerSize, innerWidth);
    }
    /** Implied outer_size = ImVec2(0.0f, 0.0f), inner_width = 0.0f */
    extern inline public static function beginTable(strId:String, columns:Int, flags:Int = 0):Bool {
        return imguicpp.ImGui.beginTable(strId, columns, flags);
    }
    /** only call EndTable() if BeginTable() returns true! */
    extern inline public static function endTable():Void {
        imguicpp.ImGui.endTable();
    }
    /** append into the first cell of a new row. 'min_row_height' include the minimum top and bottom padding aka CellPadding.y * 2.0f. */
    extern inline public static function tableNextRowEx(rowFlags:Int = 0, minRowHeight:Float = 0.0):Void {
        imguicpp.ImGui.tableNextRowEx(rowFlags, minRowHeight);
    }
    /** Implied row_flags = 0, min_row_height = 0.0f */
    extern inline public static function tableNextRow():Void {
        imguicpp.ImGui.tableNextRow();
    }
    /** append into the next column (or first column of next row if currently in last column). Return true when column is visible. */
    extern inline public static function tableNextColumn():Bool {
        return imguicpp.ImGui.tableNextColumn();
    }
    /** append into the specified column. Return true when column is visible. */
    extern inline public static function tableSetColumnIndex(columnN:Int):Bool {
        return imguicpp.ImGui.tableSetColumnIndex(columnN);
    }
    extern inline public static function tableSetupColumnEx(label:String, flags:Int = 0, initWidthOrWeight:Float = 0.0, userId:ImGuiID = 0):Void {
        imguicpp.ImGui.tableSetupColumnEx(label, flags, initWidthOrWeight, userId);
    }
    /** Implied init_width_or_weight = 0.0f, user_id = 0 */
    extern inline public static function tableSetupColumn(label:String, flags:Int = 0):Void {
        imguicpp.ImGui.tableSetupColumn(label, flags);
    }
    /** lock columns/rows so they stay visible when scrolled. */
    extern inline public static function tableSetupScrollFreeze(cols:Int, rows:Int):Void {
        imguicpp.ImGui.tableSetupScrollFreeze(cols, rows);
    }
    /** submit one header cell manually (rarely used) */
    extern inline public static function tableHeader(label:String):Void {
        imguicpp.ImGui.tableHeader(label);
    }
    /** submit a row with headers cells based on data provided to TableSetupColumn() + submit context menu */
    extern inline public static function tableHeadersRow():Void {
        imguicpp.ImGui.tableHeadersRow();
    }
    /** submit a row with angled headers for every column with the ImGuiTableColumnFlags_AngledHeader flag. MUST BE FIRST ROW. */
    extern inline public static function tableAngledHeadersRow():Void {
        imguicpp.ImGui.tableAngledHeadersRow();
    }
    /** get latest sort specs for the table (NULL if not sorting).  Lifetime: don't hold on this pointer over multiple frames or past any subsequent call to BeginTable(). */
    extern inline public static function tableGetSortSpecs():cpp.Star<ImGuiTableSortSpecs> {
        return imguicpp.ImGui.tableGetSortSpecs();
    }
    /** return number of columns (value passed to BeginTable) */
    extern inline public static function tableGetColumnCount():Int {
        return imguicpp.ImGui.tableGetColumnCount();
    }
    /** return current column index. */
    extern inline public static function tableGetColumnIndex():Int {
        return imguicpp.ImGui.tableGetColumnIndex();
    }
    /** return current row index (header rows are accounted for) */
    extern inline public static function tableGetRowIndex():Int {
        return imguicpp.ImGui.tableGetRowIndex();
    }
    /** return "" if column didn't have a name declared by TableSetupColumn(). Pass -1 to use current column. */
    extern inline public static function tableGetColumnName(columnN:Int = -1):String {
        return imguicpp.ImGui.tableGetColumnName(columnN).toString();
    }
    /** return column flags so you can query their Enabled/Visible/Sorted/Hovered status flags. Pass -1 to use current column. */
    extern inline public static function tableGetColumnFlags(columnN:Int = -1):Int {
        return imguicpp.ImGui.tableGetColumnFlags(columnN);
    }
    /** change user accessible enabled/disabled state of a column. Set to false to hide the column. User can use the context menu to change this themselves (right-click in headers, or right-click in columns body with ImGuiTableFlags_ContextMenuInBody) */
    extern inline public static function tableSetColumnEnabled(columnN:Int, v:Bool):Void {
        imguicpp.ImGui.tableSetColumnEnabled(columnN, v);
    }
    /** return hovered column. return -1 when table is not hovered. return columns_count if the unused space at the right of visible columns is hovered. Can also use (TableGetColumnFlags() & ImGuiTableColumnFlags_IsHovered) instead. */
    extern inline public static function tableGetHoveredColumn():Int {
        return imguicpp.ImGui.tableGetHoveredColumn();
    }
    /** change the color of a cell, row, or column. See ImGuiTableBgTarget_ flags for details. */
    extern inline public static function tableSetBgColor(target:Int, color:ImU32, columnN:Int = -1):Void {
        imguicpp.ImGui.tableSetBgColor(target, color, columnN);
    }
    extern inline public static function columnsEx(count:Int = 1, id:String = null, borders:Bool = true):Void {
        imguicpp.ImGui.columnsEx(count, id, borders);
    }
    /** Implied count = 1, id = NULL, borders = true */
    extern inline public static function columns():Void {
        imguicpp.ImGui.columns();
    }
    /** next column, defaults to current row or next row if the current row is finished */
    extern inline public static function nextColumn():Void {
        imguicpp.ImGui.nextColumn();
    }
    /** get current column index */
    extern inline public static function getColumnIndex():Int {
        return imguicpp.ImGui.getColumnIndex();
    }
    /** get column width (in pixels). pass -1 to use current column */
    extern inline public static function getColumnWidth(columnIndex:Int = -1):Float {
        return imguicpp.ImGui.getColumnWidth(columnIndex);
    }
    /** set column width (in pixels). pass -1 to use current column */
    extern inline public static function setColumnWidth(columnIndex:Int, width:Float):Void {
        imguicpp.ImGui.setColumnWidth(columnIndex, width);
    }
    /** get position of column line (in pixels, from the left side of the contents region). pass -1 to use current column, otherwise 0..GetColumnsCount() inclusive. column 0 is typically 0.0f */
    extern inline public static function getColumnOffset(columnIndex:Int = -1):Float {
        return imguicpp.ImGui.getColumnOffset(columnIndex);
    }
    /** set position of column line (in pixels, from the left side of the contents region). pass -1 to use current column */
    extern inline public static function setColumnOffset(columnIndex:Int, offsetX:Float):Void {
        imguicpp.ImGui.setColumnOffset(columnIndex, offsetX);
    }
    extern inline public static function getColumnsCount():Int {
        return imguicpp.ImGui.getColumnsCount();
    }
    /** create and append into a TabBar */
    extern inline public static function beginTabBar(strId:String, flags:Int = 0):Bool {
        return imguicpp.ImGui.beginTabBar(strId, flags);
    }
    /** only call EndTabBar() if BeginTabBar() returns true! */
    extern inline public static function endTabBar():Void {
        imguicpp.ImGui.endTabBar();
    }
    /** only call EndTabItem() if BeginTabItem() returns true! */
    extern inline public static function endTabItem():Void {
        imguicpp.ImGui.endTabItem();
    }
    /** create a Tab behaving like a button. return true when clicked. cannot be selected in the tab bar. */
    extern inline public static function tabItemButton(label:String, flags:Int = 0):Bool {
        return imguicpp.ImGui.tabItemButton(label, flags);
    }
    /** notify TabBar or Docking system of a closed tab/window ahead (useful to reduce visual flicker on reorderable tab bars). For tab-bar: call after BeginTabBar() and before Tab submissions. Otherwise call with a window name. */
    extern inline public static function setTabItemClosed(tabOrDockedWindowLabel:String):Void {
        imguicpp.ImGui.setTabItemClosed(tabOrDockedWindowLabel);
    }
    extern inline public static function dockSpaceEx(dockspaceId:ImGuiID, size:ImVec2, flags:Int = 0, windowClass:cpp.Star<ImGuiWindowClass> = null):UInt {
        return imguicpp.ImGui.dockSpaceEx(dockspaceId, size, flags, windowClass);
    }
    /** Implied size = ImVec2(0, 0), flags = 0, window_class = NULL */
    extern inline public static function dockSpace(dockspaceId:ImGuiID):UInt {
        return imguicpp.ImGui.dockSpace(dockspaceId);
    }
    extern inline public static function dockSpaceOverViewportEx(dockspaceId:ImGuiID = 0, viewport:cpp.Star<ImGuiViewport> = null, flags:Int = 0, windowClass:cpp.Star<ImGuiWindowClass> = null):UInt {
        return imguicpp.ImGui.dockSpaceOverViewportEx(dockspaceId, viewport, flags, windowClass);
    }
    /** Implied dockspace_id = 0, viewport = NULL, flags = 0, window_class = NULL */
    extern inline public static function dockSpaceOverViewport():UInt {
        return imguicpp.ImGui.dockSpaceOverViewport();
    }
    /** set next window dock id */
    extern inline public static function setNextWindowDockID(dockId:ImGuiID, cond:Int = 0):Void {
        imguicpp.ImGui.setNextWindowDockID(dockId, cond);
    }
    /** set next window class (control docking compatibility + provide hints to platform backend via custom viewport flags and platform parent/child relationship) */
    extern inline public static function setNextWindowClass(windowClass:cpp.Star<ImGuiWindowClass>):Void {
        imguicpp.ImGui.setNextWindowClass(windowClass);
    }
    /** get dock id of current window, or 0 if not associated to any docking node. */
    extern inline public static function getWindowDockID():UInt {
        return imguicpp.ImGui.getWindowDockID();
    }
    /** is current window docked into another window? */
    extern inline public static function isWindowDocked():Bool {
        return imguicpp.ImGui.isWindowDocked();
    }
    /** start logging to tty (stdout) */
    extern inline public static function logToTTY(autoOpenDepth:Int = -1):Void {
        imguicpp.ImGui.logToTTY(autoOpenDepth);
    }
    /** start logging to file */
    extern inline public static function logToFile(autoOpenDepth:Int = -1, filename:String = null):Void {
        imguicpp.ImGui.logToFile(autoOpenDepth, filename);
    }
    /** start logging to OS clipboard */
    extern inline public static function logToClipboard(autoOpenDepth:Int = -1):Void {
        imguicpp.ImGui.logToClipboard(autoOpenDepth);
    }
    /** stop logging (close file, etc.) */
    extern inline public static function logFinish():Void {
        imguicpp.ImGui.logFinish();
    }
    /** helper to display buttons for logging to tty/file/clipboard */
    extern inline public static function logButtons():Void {
        imguicpp.ImGui.logButtons();
    }
    /** pass text data straight to log (without being displayed) */
    extern inline public static function logText(text:String):Void {
        imguicpp.ImGui.logText(text);
    }
    /** call after submitting an item which may be dragged. when this return true, you can call SetDragDropPayload() + EndDragDropSource() */
    extern inline public static function beginDragDropSource(flags:Int = 0):Bool {
        return imguicpp.ImGui.beginDragDropSource(flags);
    }
    /** type is a user defined string of maximum 32 characters. Strings starting with '_' are reserved for dear imgui internal types. Data is copied and held by imgui. Return true when payload has been accepted. */
    extern inline public static function setDragDropPayload(type:cpp.ConstCharStar, data:cpp.RawPointer<cpp.Void>, sz:cpp.SizeT, cond:Int = 0):Bool {
        return imguicpp.ImGui.setDragDropPayload(type, data, sz, cond);
    }
    /** only call EndDragDropSource() if BeginDragDropSource() returns true! */
    extern inline public static function endDragDropSource():Void {
        imguicpp.ImGui.endDragDropSource();
    }
    /** call after submitting an item that may receive a payload. If this returns true, you can call AcceptDragDropPayload() + EndDragDropTarget() */
    extern inline public static function beginDragDropTarget():Bool {
        return imguicpp.ImGui.beginDragDropTarget();
    }
    /** accept contents of a given type. If ImGuiDragDropFlags_AcceptBeforeDelivery is set you can peek into the payload before the mouse button is released. */
    extern inline public static function acceptDragDropPayload(type:String, flags:Int = 0):cpp.Star<ImGuiPayload> {
        return imguicpp.ImGui.acceptDragDropPayload(type, flags);
    }
    /** only call EndDragDropTarget() if BeginDragDropTarget() returns true! */
    extern inline public static function endDragDropTarget():Void {
        imguicpp.ImGui.endDragDropTarget();
    }
    /** peek directly into the current payload from anywhere. returns NULL when drag and drop is finished or inactive. use ImGuiPayload::IsDataType() to test for the payload type. */
    extern inline public static function getDragDropPayload():cpp.Star<ImGuiPayload> {
        return imguicpp.ImGui.getDragDropPayload();
    }
    extern inline public static function beginDisabled(disabled:Bool = true):Void {
        imguicpp.ImGui.beginDisabled(disabled);
    }
    extern inline public static function endDisabled():Void {
        imguicpp.ImGui.endDisabled();
    }
    extern inline public static function pushClipRect(clipRectMin:ImVec2, clipRectMax:ImVec2, intersectWithCurrentClipRect:Bool):Void {
        imguicpp.ImGui.pushClipRect(clipRectMin, clipRectMax, intersectWithCurrentClipRect);
    }
    extern inline public static function popClipRect():Void {
        imguicpp.ImGui.popClipRect();
    }
    /** make last item the default focused item of a newly appearing window. */
    extern inline public static function setItemDefaultFocus():Void {
        imguicpp.ImGui.setItemDefaultFocus();
    }
    /** focus keyboard on the next widget. Use positive 'offset' to access sub components of a multiple component widget. Use -1 to access previous widget. */
    extern inline public static function setKeyboardFocusHereEx(offset:Int = 0):Void {
        imguicpp.ImGui.setKeyboardFocusHereEx(offset);
    }
    /** Implied offset = 0 */
    extern inline public static function setKeyboardFocusHere():Void {
        imguicpp.ImGui.setKeyboardFocusHere();
    }
    /** alter visibility of keyboard/gamepad cursor. by default: show when using an arrow key, hide when clicking with mouse. */
    extern inline public static function setNavCursorVisible(visible:Bool):Void {
        imguicpp.ImGui.setNavCursorVisible(visible);
    }
    /** allow next item to be overlapped by a subsequent item. Typically useful with InvisibleButton(), Selectable(), TreeNode() covering an area where subsequent items may need to be added. Note that both Selectable() and TreeNode() have dedicated flags doing this. */
    extern inline public static function setNextItemAllowOverlap():Void {
        imguicpp.ImGui.setNextItemAllowOverlap();
    }
    /** is the last item hovered? (and usable, aka not blocked by a popup, etc.). See ImGuiHoveredFlags for more options. */
    extern inline public static function isItemHovered(flags:Int = 0):Bool {
        return imguicpp.ImGui.isItemHovered(flags);
    }
    /** is the last item active? (e.g. button being held, text field being edited. This will continuously return true while holding mouse button on an item. Items that don't interact will always return false) */
    extern inline public static function isItemActive():Bool {
        return imguicpp.ImGui.isItemActive();
    }
    /** is the last item focused for keyboard/gamepad navigation? */
    extern inline public static function isItemFocused():Bool {
        return imguicpp.ImGui.isItemFocused();
    }
    /** is the last item hovered and mouse clicked on? (**)  == IsMouseClicked(mouse_button) && IsItemHovered()Important. (**) this is NOT equivalent to the behavior of e.g. Button(). Read comments in function definition. */
    extern inline public static function isItemClickedEx(mouseButton:Int = 0):Bool {
        return imguicpp.ImGui.isItemClickedEx(mouseButton);
    }
    /** Implied mouse_button = 0 */
    extern inline public static function isItemClicked():Bool {
        return imguicpp.ImGui.isItemClicked();
    }
    /** is the last item visible? (items may be out of sight because of clipping/scrolling) */
    extern inline public static function isItemVisible():Bool {
        return imguicpp.ImGui.isItemVisible();
    }
    /** did the last item modify its underlying value this frame? or was pressed? This is generally the same as the "bool" return value of many widgets. */
    extern inline public static function isItemEdited():Bool {
        return imguicpp.ImGui.isItemEdited();
    }
    /** was the last item just made active (item was previously inactive). */
    extern inline public static function isItemActivated():Bool {
        return imguicpp.ImGui.isItemActivated();
    }
    /** was the last item just made inactive (item was previously active). Useful for Undo/Redo patterns with widgets that require continuous editing. */
    extern inline public static function isItemDeactivated():Bool {
        return imguicpp.ImGui.isItemDeactivated();
    }
    /** was the last item just made inactive and made a value change when it was active? (e.g. Slider/Drag moved). Useful for Undo/Redo patterns with widgets that require continuous editing. Note that you may get false positives (some widgets such as Combo()/ListBox()/Selectable() will return true even when clicking an already selected item). */
    extern inline public static function isItemDeactivatedAfterEdit():Bool {
        return imguicpp.ImGui.isItemDeactivatedAfterEdit();
    }
    /** was the last item open state toggled? set by TreeNode(). */
    extern inline public static function isItemToggledOpen():Bool {
        return imguicpp.ImGui.isItemToggledOpen();
    }
    /** is any item hovered? */
    extern inline public static function isAnyItemHovered():Bool {
        return imguicpp.ImGui.isAnyItemHovered();
    }
    /** is any item active? */
    extern inline public static function isAnyItemActive():Bool {
        return imguicpp.ImGui.isAnyItemActive();
    }
    /** is any item focused? */
    extern inline public static function isAnyItemFocused():Bool {
        return imguicpp.ImGui.isAnyItemFocused();
    }
    /** get ID of last item (~~ often same ImGui::GetID(label) beforehand) */
    extern inline public static function getItemID():UInt {
        return imguicpp.ImGui.getItemID();
    }
    /** get upper-left bounding rectangle of the last item (screen space) */
    extern inline public static function getItemRectMin():ImVec2 {
        return imguicpp.ImGui.getItemRectMin();
    }
    /** get lower-right bounding rectangle of the last item (screen space) */
    extern inline public static function getItemRectMax():ImVec2 {
        return imguicpp.ImGui.getItemRectMax();
    }
    /** get size of last item */
    extern inline public static function getItemRectSize():ImVec2 {
        return imguicpp.ImGui.getItemRectSize();
    }
    /** get generic flags of last item */
    extern inline public static function getItemFlags():Int {
        return imguicpp.ImGui.getItemFlags();
    }
    /** return primary/default viewport. This can never be NULL. */
    extern inline public static function getMainViewport():cpp.Star<ImGuiViewport> {
        return imguicpp.ImGui.getMainViewport();
    }
    /** get background draw list for the given viewport or viewport associated to the current window. this draw list will be the first rendering one. Useful to quickly draw shapes/text behind dear imgui contents. */
    extern inline public static function getBackgroundDrawListEx(viewport:cpp.Star<ImGuiViewport> = null):cpp.Star<ImDrawList> {
        return imguicpp.ImGui.getBackgroundDrawListEx(viewport);
    }
    /** Implied viewport = NULL */
    extern inline public static function getBackgroundDrawList():cpp.Star<ImDrawList> {
        return imguicpp.ImGui.getBackgroundDrawList();
    }
    /** get foreground draw list for the given viewport or viewport associated to the current window. this draw list will be the top-most rendered one. Useful to quickly draw shapes/text over dear imgui contents. */
    extern inline public static function getForegroundDrawListEx(viewport:cpp.Star<ImGuiViewport> = null):cpp.Star<ImDrawList> {
        return imguicpp.ImGui.getForegroundDrawListEx(viewport);
    }
    /** Implied viewport = NULL */
    extern inline public static function getForegroundDrawList():cpp.Star<ImDrawList> {
        return imguicpp.ImGui.getForegroundDrawList();
    }
    /** test if rectangle (of given size, starting from cursor position) is visible / not clipped. */
    extern inline public static function isRectVisibleBySize(size:ImVec2):Bool {
        return imguicpp.ImGui.isRectVisibleBySize(size);
    }
    /** test if rectangle (in screen space) is visible / not clipped. to perform coarse clipping on user's side. */
    extern inline public static function isRectVisible(rectMin:ImVec2, rectMax:ImVec2):Bool {
        return imguicpp.ImGui.isRectVisible(rectMin, rectMax);
    }
    /** get global imgui time. incremented by io.DeltaTime every frame. */
    extern inline public static function getTime():Float {
        return imguicpp.ImGui.getTime();
    }
    /** get global imgui frame count. incremented by 1 every frame. */
    extern inline public static function getFrameCount():Int {
        return imguicpp.ImGui.getFrameCount();
    }
    /** you may use this when creating your own ImDrawList instances. */
    extern inline public static function getDrawListSharedData():cpp.Star<ImDrawListSharedData> {
        return imguicpp.ImGui.getDrawListSharedData();
    }
    /** get a string corresponding to the enum value (for display, saving, etc.). */
    extern inline public static function getStyleColorName(idx:Int):String {
        return imguicpp.ImGui.getStyleColorName(idx).toString();
    }
    /** replace current window storage with our own (if you want to manipulate it yourself, typically clear subsection of it) */
    extern inline public static function setStateStorage(storage:cpp.Star<ImGuiStorage>):Void {
        imguicpp.ImGui.setStateStorage(storage);
    }
    extern inline public static function getStateStorage():cpp.Star<ImGuiStorage> {
        return imguicpp.ImGui.getStateStorage();
    }
    extern inline public static function calcTextSizeEx(text:String, textEnd:String = null, hideTextAfterDoubleHash:Bool = false, wrapWidth:Float = -1.0):ImVec2 {
        return imguicpp.ImGui.calcTextSizeEx(text, textEnd, hideTextAfterDoubleHash, wrapWidth);
    }
    /** Implied text_end = NULL, hide_text_after_double_hash = false, wrap_width = -1.0f */
    extern inline public static function calcTextSize(text:String):ImVec2 {
        return imguicpp.ImGui.calcTextSize(text);
    }
    extern inline public static function colorConvertU32ToFloat4(in_:ImU32):ImVec4 {
        return imguicpp.ImGui.colorConvertU32ToFloat4(in_);
    }
    extern inline public static function colorConvertFloat4ToU32(in_:ImVec4):UInt {
        return imguicpp.ImGui.colorConvertFloat4ToU32(in_);
    }
    /** is key being held. */
    extern inline public static function isKeyDown(key:Int):Bool {
        return imguicpp.ImGui.isKeyDown(key);
    }
    /** was key pressed (went from !Down to Down)? Repeat rate uses io.KeyRepeatDelay / KeyRepeatRate. */
    extern inline public static function isKeyPressedEx(key:Int, repeat:Bool = true):Bool {
        return imguicpp.ImGui.isKeyPressedEx(key, repeat);
    }
    /** Implied repeat = true */
    extern inline public static function isKeyPressed(key:Int):Bool {
        return imguicpp.ImGui.isKeyPressed(key);
    }
    /** was key released (went from Down to !Down)? */
    extern inline public static function isKeyReleased(key:Int):Bool {
        return imguicpp.ImGui.isKeyReleased(key);
    }
    /** was key chord (mods + key) pressed, e.g. you can pass 'ImGuiMod_Ctrl | ImGuiKey_S' as a key-chord. This doesn't do any routing or focus check, please consider using Shortcut() function instead. */
    extern inline public static function isKeyChordPressed(keyChord:ImGuiKeyChord):Bool {
        return imguicpp.ImGui.isKeyChordPressed(keyChord);
    }
    /** uses provided repeat rate/delay. return a count, most often 0 or 1 but might be >1 if RepeatRate is small enough that DeltaTime > RepeatRate */
    extern inline public static function getKeyPressedAmount(key:Int, repeatDelay:Float, rate:Float):Int {
        return imguicpp.ImGui.getKeyPressedAmount(key, repeatDelay, rate);
    }
    /** [DEBUG] returns English name of the key. Those names are provided for debugging purpose and are not meant to be saved persistently nor compared. */
    extern inline public static function getKeyName(key:Int):String {
        return imguicpp.ImGui.getKeyName(key).toString();
    }
    /** Override io.WantCaptureKeyboard flag next frame (said flag is left for your application to handle, typically when true it instructs your app to ignore inputs). e.g. force capture keyboard when your widget is being hovered. This is equivalent to setting "io.WantCaptureKeyboard = want_capture_keyboard"; after the next NewFrame() call. */
    extern inline public static function setNextFrameWantCaptureKeyboard(wantCaptureKeyboard:Bool):Void {
        imguicpp.ImGui.setNextFrameWantCaptureKeyboard(wantCaptureKeyboard);
    }
    extern inline public static function shortcut(keyChord:ImGuiKeyChord, flags:Int = 0):Bool {
        return imguicpp.ImGui.shortcut(keyChord, flags);
    }
    extern inline public static function setNextItemShortcut(keyChord:ImGuiKeyChord, flags:Int = 0):Void {
        imguicpp.ImGui.setNextItemShortcut(keyChord, flags);
    }
    /** Set key owner to last item ID if it is hovered or active. Return true when ownership has been set. Roughly equivalent to 'if (TestKeyOwner(key, GetItemID()) && (IsItemHovered() || IsItemActive())) { SetKeyOwner(key, GetItemID());'. */
    extern inline public static function setItemKeyOwner(key:Int):Bool {
        return imguicpp.ImGui.setItemKeyOwner(key);
    }
    /** is mouse button held? */
    extern inline public static function isMouseDown(button:Int):Bool {
        return imguicpp.ImGui.isMouseDown(button);
    }
    /** did mouse button clicked? (went from !Down to Down). Same as GetMouseClickedCount() == 1. */
    extern inline public static function isMouseClickedEx(button:Int, repeat:Bool = false):Bool {
        return imguicpp.ImGui.isMouseClickedEx(button, repeat);
    }
    /** Implied repeat = false */
    extern inline public static function isMouseClicked(button:Int):Bool {
        return imguicpp.ImGui.isMouseClicked(button);
    }
    /** did mouse button released? (went from Down to !Down) */
    extern inline public static function isMouseReleased(button:Int):Bool {
        return imguicpp.ImGui.isMouseReleased(button);
    }
    /** did mouse button double-clicked? Same as GetMouseClickedCount() == 2. (note that a double-click will also report IsMouseClicked() == true) */
    extern inline public static function isMouseDoubleClicked(button:Int):Bool {
        return imguicpp.ImGui.isMouseDoubleClicked(button);
    }
    /** delayed mouse release (use very sparingly!). Generally used with 'delay >= io.MouseDoubleClickTime' + combined with a 'io.MouseClickedLastCount==1' test. This is a very rarely used UI idiom, but some apps use this: e.g. MS Explorer single click on an icon to rename. */
    extern inline public static function isMouseReleasedWithDelay(button:Int, delay:Float):Bool {
        return imguicpp.ImGui.isMouseReleasedWithDelay(button, delay);
    }
    /** return the number of successive mouse-clicks at the time where a click happen (otherwise 0). */
    extern inline public static function getMouseClickedCount(button:Int):Int {
        return imguicpp.ImGui.getMouseClickedCount(button);
    }
    /** is mouse hovering given bounding rect (in screen space). clipped by current clipping settings, but disregarding of other consideration of focus/window ordering/popup-block. */
    extern inline public static function isMouseHoveringRectEx(rMin:ImVec2, rMax:ImVec2, clip:Bool = true):Bool {
        return imguicpp.ImGui.isMouseHoveringRectEx(rMin, rMax, clip);
    }
    /** Implied clip = true */
    extern inline public static function isMouseHoveringRect(rMin:ImVec2, rMax:ImVec2):Bool {
        return imguicpp.ImGui.isMouseHoveringRect(rMin, rMax);
    }
    /** by convention we use (-FLT_MAX,-FLT_MAX) to denote that there is no mouse available */
    extern inline public static function isMousePosValid(mousePos:cpp.Star<ImVec2> = null):Bool {
        return imguicpp.ImGui.isMousePosValid(mousePos);
    }
    /** [WILL OBSOLETE] is any mouse button held? This was designed for backends, but prefer having backend maintain a mask of held mouse buttons, because upcoming input queue system will make this invalid. */
    extern inline public static function isAnyMouseDown():Bool {
        return imguicpp.ImGui.isAnyMouseDown();
    }
    /** shortcut to ImGui::GetIO().MousePos provided by user, to be consistent with other calls */
    extern inline public static function getMousePos():ImVec2 {
        return imguicpp.ImGui.getMousePos();
    }
    /** retrieve mouse position at the time of opening popup we have BeginPopup() into (helper to avoid user backing that value themselves) */
    extern inline public static function getMousePosOnOpeningCurrentPopup():ImVec2 {
        return imguicpp.ImGui.getMousePosOnOpeningCurrentPopup();
    }
    /** is mouse dragging? (uses io.MouseDraggingThreshold if lock_threshold < 0.0f) */
    extern inline public static function isMouseDragging(button:Int, lockThreshold:Float = -1.0):Bool {
        return imguicpp.ImGui.isMouseDragging(button, lockThreshold);
    }
    /** return the delta from the initial clicking position while the mouse button is pressed or was just released. This is locked and return 0.0f until the mouse moves past a distance threshold at least once (uses io.MouseDraggingThreshold if lock_threshold < 0.0f) */
    extern inline public static function getMouseDragDelta(button:Int = 0, lockThreshold:Float = -1.0):ImVec2 {
        return imguicpp.ImGui.getMouseDragDelta(button, lockThreshold);
    }
    extern inline public static function resetMouseDragDeltaEx(button:Int = 0):Void {
        imguicpp.ImGui.resetMouseDragDeltaEx(button);
    }
    /** Implied button = 0 */
    extern inline public static function resetMouseDragDelta():Void {
        imguicpp.ImGui.resetMouseDragDelta();
    }
    /** get desired mouse cursor shape. Important: reset in ImGui::NewFrame(), this is updated during the frame. valid before Render(). If you use software rendering by setting io.MouseDrawCursor ImGui will render those for you */
    extern inline public static function getMouseCursor():Int {
        return imguicpp.ImGui.getMouseCursor();
    }
    /** set desired mouse cursor shape */
    extern inline public static function setMouseCursor(cursorType:Int):Void {
        imguicpp.ImGui.setMouseCursor(cursorType);
    }
    /** Override io.WantCaptureMouse flag next frame (said flag is left for your application to handle, typical when true it instructs your app to ignore inputs). This is equivalent to setting "io.WantCaptureMouse = want_capture_mouse;" after the next NewFrame() call. */
    extern inline public static function setNextFrameWantCaptureMouse(wantCaptureMouse:Bool):Void {
        imguicpp.ImGui.setNextFrameWantCaptureMouse(wantCaptureMouse);
    }
    extern inline public static function getClipboardText():String {
        return imguicpp.ImGui.getClipboardText().toString();
    }
    extern inline public static function setClipboardText(text:String):Void {
        imguicpp.ImGui.setClipboardText(text);
    }
    /** call after CreateContext() and before the first call to NewFrame(). NewFrame() automatically calls LoadIniSettingsFromDisk(io.IniFilename). */
    extern inline public static function loadIniSettingsFromDisk(iniFilename:String):Void {
        imguicpp.ImGui.loadIniSettingsFromDisk(iniFilename);
    }
    /** call after CreateContext() and before the first call to NewFrame() to provide .ini data from your own data source. */
    extern inline public static function loadIniSettingsFromMemory(iniData:String, iniSize:Int = 0):Void {
        imguicpp.ImGui.loadIniSettingsFromMemory(iniData, iniSize);
    }
    /** this is automatically called (if io.IniFilename is not empty) a few seconds after any modification that should be reflected in the .ini file (and also by DestroyContext). */
    extern inline public static function saveIniSettingsToDisk(iniFilename:String):Void {
        imguicpp.ImGui.saveIniSettingsToDisk(iniFilename);
    }
    /** return a zero-terminated string with the .ini data which you can save by your own mean. call when io.WantSaveIniSettings is set, then save data by your own mean and clear io.WantSaveIniSettings. */
    extern inline public static function saveIniSettingsToMemory(outIniSize:cpp.Star<cpp.SizeT> = null):String {
        return imguicpp.ImGui.saveIniSettingsToMemory(outIniSize).toString();
    }
    extern inline public static function debugTextEncoding(text:String):Void {
        imguicpp.ImGui.debugTextEncoding(text);
    }
    extern inline public static function debugFlashStyleColor(idx:Int):Void {
        imguicpp.ImGui.debugFlashStyleColor(idx);
    }
    extern inline public static function debugStartItemPicker():Void {
        imguicpp.ImGui.debugStartItemPicker();
    }
    /** This is called by IMGUI_CHECKVERSION() macro. */
    extern inline public static function debugCheckVersionAndDataLayout(versionStr:String, szIo:Int, szStyle:Int, szVec2:Int, szVec4:Int, szDrawvert:Int, szDrawidx:Int):Bool {
        return imguicpp.ImGui.debugCheckVersionAndDataLayout(versionStr, szIo, szStyle, szVec2, szVec4, szDrawvert, szDrawidx);
    }
    /** Call via IMGUI_DEBUG_LOG() for maximum stripping in caller code! */
    extern inline public static function debugLog(text:String):Void {
        imguicpp.ImGui.debugLog(text);
    }
    extern inline public static function setAllocatorFunctions(allocFunc:ImGuiOpaqueCallback, freeFunc:ImGuiOpaqueCallback, userData:cpp.RawPointer<cpp.Void> = null):Void {
        imguicpp.ImGui.setAllocatorFunctions(allocFunc, freeFunc, userData);
    }
    extern inline public static function getAllocatorFunctions(pAllocFunc:cpp.Star<ImGuiOpaqueCallback>, pFreeFunc:cpp.Star<ImGuiOpaqueCallback>, pUserData:cpp.RawPointer<Void>):Void {
        imguicpp.ImGui.getAllocatorFunctions(pAllocFunc, pFreeFunc, pUserData);
    }
    extern inline public static function memAlloc(size:Int):cpp.RawPointer<cpp.Void> {
        return imguicpp.ImGui.memAlloc(size);
    }
    extern inline public static function memFree(ptr:cpp.RawPointer<cpp.Void>):Void {
        imguicpp.ImGui.memFree(ptr);
    }
    /** call in main loop. will call CreateWindow/ResizeWindow/etc. platform functions for each secondary viewport, and DestroyWindow for each inactive viewport. */
    extern inline public static function updatePlatformWindows():Void {
        imguicpp.ImGui.updatePlatformWindows();
    }
    /** call in main loop. will call RenderWindow/SwapBuffers platform functions for each secondary viewport which doesn't have the ImGuiViewportFlags_Minimized flag set. May be reimplemented by user for custom rendering needs. */
    extern inline public static function renderPlatformWindowsDefaultEx(platformRenderArg:cpp.RawPointer<cpp.Void> = null, rendererRenderArg:cpp.RawPointer<cpp.Void> = null):Void {
        imguicpp.ImGui.renderPlatformWindowsDefaultEx(platformRenderArg, rendererRenderArg);
    }
    /** Implied platform_render_arg = NULL, renderer_render_arg = NULL */
    extern inline public static function renderPlatformWindowsDefault():Void {
        imguicpp.ImGui.renderPlatformWindowsDefault();
    }
    /** call DestroyWindow platform functions for all viewports. call from backend Shutdown() if you need to close platform windows before imgui shutdown. otherwise will be called by DestroyContext(). */
    extern inline public static function destroyPlatformWindows():Void {
        imguicpp.ImGui.destroyPlatformWindows();
    }
    /** this is a helper for backends. */
    extern inline public static function findViewportByID(viewportId:ImGuiID):cpp.Star<ImGuiViewport> {
        return imguicpp.ImGui.findViewportByID(viewportId);
    }
    /** this is a helper for backends. the type platform_handle is decided by the backend (e.g. HWND, MyWindow*, GLFWwindow* etc.) */
    extern inline public static function findViewportByPlatformHandle(platformHandle:cpp.RawPointer<cpp.Void>):cpp.Star<ImGuiViewport> {
        return imguicpp.ImGui.findViewportByPlatformHandle(platformHandle);
    }
    /** Construct a zero-size ImVector<> (of any type). This is primarily useful when calling ImFontGlyphRangesBuilder_BuildRanges() */
    extern inline public static function imVector_Construct(vector:cpp.RawPointer<cpp.Void>):Void {
        imguicpp.ImGui.imVector_Construct(vector);
    }
    /** Destruct an ImVector<> (of any type). Important: Frees the vector memory but does not call destructors on contained objects (if they have them) */
    extern inline public static function imVector_Destruct(vector:cpp.RawPointer<cpp.Void>):Void {
        imguicpp.ImGui.imVector_Destruct(vector);
    }

#elseif (js && !macro)

    extern inline public static function createContext(sharedFontAtlas:ImFontAtlas = cast 0):ImGuiContext {
        return imguijs.ImGui.createContext(sharedFontAtlas);
    }
    extern inline public static function destroyContext(ctx:ImGuiContext = cast 0):Void {
        imguijs.ImGui.destroyContext(ctx);
    }
    extern inline public static function getCurrentContext():ImGuiContext {
        return imguijs.ImGui.getCurrentContext();
    }
    extern inline public static function setCurrentContext(ctx:ImGuiContext):Void {
        imguijs.ImGui.setCurrentContext(ctx);
    }
    extern inline public static function getIO():ImGuiIO {
        return imguijs.ImGui.getIO();
    }
    extern inline public static function getPlatformIO():ImGuiPlatformIO {
        return imguijs.ImGui.getPlatformIO();
    }
    extern inline public static function getStyle():ImGuiStyle {
        return imguijs.ImGui.getStyle();
    }
    extern inline public static function newFrame():Void {
        imguijs.ImGui.newFrame();
    }
    extern inline public static function endFrame():Void {
        imguijs.ImGui.endFrame();
    }
    extern inline public static function render():Void {
        imguijs.ImGui.render();
    }
    extern inline public static function getDrawData():ImDrawData {
        return imguijs.ImGui.getDrawData();
    }
    extern inline public static function showIDStackToolWindow():Void {
        imguijs.ImGui.showIDStackToolWindow();
    }
    extern inline public static function showStyleEditor(ref:ImGuiStyle = cast 0):Void {
        imguijs.ImGui.showStyleEditor(ref);
    }
    extern inline public static function showStyleSelector(label:String):Bool {
        return imguijs.ImGui.showStyleSelector(label);
    }
    extern inline public static function showFontSelector(label:String):Void {
        imguijs.ImGui.showFontSelector(label);
    }
    extern inline public static function showUserGuide():Void {
        imguijs.ImGui.showUserGuide();
    }
    extern inline public static function getVersion():String {
        return imguijs.ImGui.getVersion();
    }
    extern inline public static function styleColorsDark(dst:ImGuiStyle = cast 0):Void {
        imguijs.ImGui.styleColorsDark(dst);
    }
    extern inline public static function styleColorsLight(dst:ImGuiStyle = cast 0):Void {
        imguijs.ImGui.styleColorsLight(dst);
    }
    extern inline public static function styleColorsClassic(dst:ImGuiStyle = cast 0):Void {
        imguijs.ImGui.styleColorsClassic(dst);
    }
    extern inline public static function end():Void {
        imguijs.ImGui.end();
    }
    extern inline public static function beginChild(strId:String, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        return imguijs.ImGui.beginChild(strId, size, childFlags, windowFlags);
    }
    extern inline public static function beginChildID(id:Int, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        return imguijs.ImGui.beginChildID(id, size, childFlags, windowFlags);
    }
    extern inline public static function endChild():Void {
        imguijs.ImGui.endChild();
    }
    extern inline public static function isWindowAppearing():Bool {
        return imguijs.ImGui.isWindowAppearing();
    }
    extern inline public static function isWindowCollapsed():Bool {
        return imguijs.ImGui.isWindowCollapsed();
    }
    extern inline public static function isWindowFocused(flags:Int = 0):Bool {
        return imguijs.ImGui.isWindowFocused(flags);
    }
    extern inline public static function isWindowHovered(flags:Int = 0):Bool {
        return imguijs.ImGui.isWindowHovered(flags);
    }
    extern inline public static function getWindowDrawList():ImDrawList {
        return imguijs.ImGui.getWindowDrawList();
    }
    extern inline public static function getWindowDpiScale():Float {
        return imguijs.ImGui.getWindowDpiScale();
    }
    extern inline public static function getWindowPos():ImVec2 {
        return imguijs.ImGui.getWindowPos();
    }
    extern inline public static function getWindowSize():ImVec2 {
        return imguijs.ImGui.getWindowSize();
    }
    extern inline public static function getWindowWidth():Float {
        return imguijs.ImGui.getWindowWidth();
    }
    extern inline public static function getWindowHeight():Float {
        return imguijs.ImGui.getWindowHeight();
    }
    extern inline public static function getWindowViewport():ImGuiViewport {
        return imguijs.ImGui.getWindowViewport();
    }
    extern inline public static function setNextWindowPosEx(pos:ImVec2, cond:Int = 0, pivot:ImVec2):Void {
        imguijs.ImGui.setNextWindowPosEx(pos, cond, pivot);
    }
    extern inline public static function setNextWindowPos(pos:ImVec2, cond:Int = 0):Void {
        imguijs.ImGui.setNextWindowPos(pos, cond);
    }
    extern inline public static function setNextWindowSize(size:ImVec2, cond:Int = 0):Void {
        imguijs.ImGui.setNextWindowSize(size, cond);
    }
    extern inline public static function setNextWindowSizeConstraints(sizeMin:ImVec2, sizeMax:ImVec2, customCallback:Int = 0, customCallbackData:Int = 0):Void {
        imguijs.ImGui.setNextWindowSizeConstraints(sizeMin, sizeMax, customCallback, customCallbackData);
    }
    extern inline public static function setNextWindowContentSize(size:ImVec2):Void {
        imguijs.ImGui.setNextWindowContentSize(size);
    }
    extern inline public static function setNextWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        imguijs.ImGui.setNextWindowCollapsed(collapsed, cond);
    }
    extern inline public static function setNextWindowFocus():Void {
        imguijs.ImGui.setNextWindowFocus();
    }
    extern inline public static function setNextWindowScroll(scroll:ImVec2):Void {
        imguijs.ImGui.setNextWindowScroll(scroll);
    }
    extern inline public static function setNextWindowBgAlpha(alpha:Float):Void {
        imguijs.ImGui.setNextWindowBgAlpha(alpha);
    }
    extern inline public static function setNextWindowViewport(viewportId:Int):Void {
        imguijs.ImGui.setNextWindowViewport(viewportId);
    }
    extern inline public static function setWindowPos(pos:ImVec2, cond:Int = 0):Void {
        imguijs.ImGui.setWindowPos(pos, cond);
    }
    extern inline public static function setWindowSize(size:ImVec2, cond:Int = 0):Void {
        imguijs.ImGui.setWindowSize(size, cond);
    }
    extern inline public static function setWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        imguijs.ImGui.setWindowCollapsed(collapsed, cond);
    }
    extern inline public static function setWindowFocus():Void {
        imguijs.ImGui.setWindowFocus();
    }
    extern inline public static function setWindowPosStr(name:String, pos:ImVec2, cond:Int = 0):Void {
        imguijs.ImGui.setWindowPosStr(name, pos, cond);
    }
    extern inline public static function setWindowSizeStr(name:String, size:ImVec2, cond:Int = 0):Void {
        imguijs.ImGui.setWindowSizeStr(name, size, cond);
    }
    extern inline public static function setWindowCollapsedStr(name:String, collapsed:Bool, cond:Int = 0):Void {
        imguijs.ImGui.setWindowCollapsedStr(name, collapsed, cond);
    }
    extern inline public static function setWindowFocusStr(name:String):Void {
        imguijs.ImGui.setWindowFocusStr(name);
    }
    extern inline public static function getScrollX():Float {
        return imguijs.ImGui.getScrollX();
    }
    extern inline public static function getScrollY():Float {
        return imguijs.ImGui.getScrollY();
    }
    extern inline public static function setScrollX(scrollX:Float):Void {
        imguijs.ImGui.setScrollX(scrollX);
    }
    extern inline public static function setScrollY(scrollY:Float):Void {
        imguijs.ImGui.setScrollY(scrollY);
    }
    extern inline public static function getScrollMaxX():Float {
        return imguijs.ImGui.getScrollMaxX();
    }
    extern inline public static function getScrollMaxY():Float {
        return imguijs.ImGui.getScrollMaxY();
    }
    extern inline public static function setScrollHereX(centerXRatio:Float = 0.5):Void {
        imguijs.ImGui.setScrollHereX(centerXRatio);
    }
    extern inline public static function setScrollHereY(centerYRatio:Float = 0.5):Void {
        imguijs.ImGui.setScrollHereY(centerYRatio);
    }
    extern inline public static function setScrollFromPosX(localX:Float, centerXRatio:Float = 0.5):Void {
        imguijs.ImGui.setScrollFromPosX(localX, centerXRatio);
    }
    extern inline public static function setScrollFromPosY(localY:Float, centerYRatio:Float = 0.5):Void {
        imguijs.ImGui.setScrollFromPosY(localY, centerYRatio);
    }
    extern inline public static function pushFontFloat(font:ImFont, fontSizeBaseUnscaled:Float):Void {
        imguijs.ImGui.pushFontFloat(font, fontSizeBaseUnscaled);
    }
    extern inline public static function popFont():Void {
        imguijs.ImGui.popFont();
    }
    extern inline public static function getFont():ImFont {
        return imguijs.ImGui.getFont();
    }
    extern inline public static function getFontSize():Float {
        return imguijs.ImGui.getFontSize();
    }
    extern inline public static function getFontBaked():ImFontBaked {
        return imguijs.ImGui.getFontBaked();
    }
    extern inline public static function pushStyleColor(idx:Int, col:Int):Void {
        imguijs.ImGui.pushStyleColor(idx, col);
    }
    extern inline public static function pushStyleColorImVec4(idx:Int, col:ImVec4):Void {
        imguijs.ImGui.pushStyleColorImVec4(idx, col);
    }
    extern inline public static function popStyleColorEx(count:Int = 1):Void {
        imguijs.ImGui.popStyleColorEx(count);
    }
    extern inline public static function popStyleColor():Void {
        imguijs.ImGui.popStyleColor();
    }
    extern inline public static function pushStyleVar(idx:Int, val:Float):Void {
        imguijs.ImGui.pushStyleVar(idx, val);
    }
    extern inline public static function pushStyleVarImVec2(idx:Int, val:ImVec2):Void {
        imguijs.ImGui.pushStyleVarImVec2(idx, val);
    }
    extern inline public static function pushStyleVarX(idx:Int, valX:Float):Void {
        imguijs.ImGui.pushStyleVarX(idx, valX);
    }
    extern inline public static function pushStyleVarY(idx:Int, valY:Float):Void {
        imguijs.ImGui.pushStyleVarY(idx, valY);
    }
    extern inline public static function popStyleVarEx(count:Int = 1):Void {
        imguijs.ImGui.popStyleVarEx(count);
    }
    extern inline public static function popStyleVar():Void {
        imguijs.ImGui.popStyleVar();
    }
    extern inline public static function pushItemFlag(option:Int, enabled:Bool):Void {
        imguijs.ImGui.pushItemFlag(option, enabled);
    }
    extern inline public static function popItemFlag():Void {
        imguijs.ImGui.popItemFlag();
    }
    extern inline public static function pushItemWidth(itemWidth:Float):Void {
        imguijs.ImGui.pushItemWidth(itemWidth);
    }
    extern inline public static function popItemWidth():Void {
        imguijs.ImGui.popItemWidth();
    }
    extern inline public static function setNextItemWidth(itemWidth:Float):Void {
        imguijs.ImGui.setNextItemWidth(itemWidth);
    }
    extern inline public static function calcItemWidth():Float {
        return imguijs.ImGui.calcItemWidth();
    }
    extern inline public static function pushTextWrapPos(wrapLocalPosX:Float = 0.0):Void {
        imguijs.ImGui.pushTextWrapPos(wrapLocalPosX);
    }
    extern inline public static function popTextWrapPos():Void {
        imguijs.ImGui.popTextWrapPos();
    }
    extern inline public static function getFontTexUvWhitePixel():ImVec2 {
        return imguijs.ImGui.getFontTexUvWhitePixel();
    }
    extern inline public static function getColorU32Ex(idx:Int, alphaMul:Float = 1.0):Int {
        return imguijs.ImGui.getColorU32Ex(idx, alphaMul);
    }
    extern inline public static function getColorU32(idx:Int):Int {
        return imguijs.ImGui.getColorU32(idx);
    }
    extern inline public static function getColorU32ImVec4(col:ImVec4):Int {
        return imguijs.ImGui.getColorU32ImVec4(col);
    }
    extern inline public static function getColorU32ImU32Ex(col:Int, alphaMul:Float = 1.0):Int {
        return imguijs.ImGui.getColorU32ImU32Ex(col, alphaMul);
    }
    extern inline public static function getColorU32ImU32(col:Int):Int {
        return imguijs.ImGui.getColorU32ImU32(col);
    }
    extern inline public static function getStyleColorVec4(idx:Int):Int {
        return imguijs.ImGui.getStyleColorVec4(idx);
    }
    extern inline public static function getCursorScreenPos():ImVec2 {
        return imguijs.ImGui.getCursorScreenPos();
    }
    extern inline public static function setCursorScreenPos(pos:ImVec2):Void {
        imguijs.ImGui.setCursorScreenPos(pos);
    }
    extern inline public static function getContentRegionAvail():ImVec2 {
        return imguijs.ImGui.getContentRegionAvail();
    }
    extern inline public static function getCursorPos():ImVec2 {
        return imguijs.ImGui.getCursorPos();
    }
    extern inline public static function getCursorPosX():Float {
        return imguijs.ImGui.getCursorPosX();
    }
    extern inline public static function getCursorPosY():Float {
        return imguijs.ImGui.getCursorPosY();
    }
    extern inline public static function setCursorPos(localPos:ImVec2):Void {
        imguijs.ImGui.setCursorPos(localPos);
    }
    extern inline public static function setCursorPosX(localX:Float):Void {
        imguijs.ImGui.setCursorPosX(localX);
    }
    extern inline public static function setCursorPosY(localY:Float):Void {
        imguijs.ImGui.setCursorPosY(localY);
    }
    extern inline public static function getCursorStartPos():ImVec2 {
        return imguijs.ImGui.getCursorStartPos();
    }
    extern inline public static function separator():Void {
        imguijs.ImGui.separator();
    }
    extern inline public static function sameLineEx(offsetFromStartX:Float = 0.0, spacing:Float = -1.0):Void {
        imguijs.ImGui.sameLineEx(offsetFromStartX, spacing);
    }
    extern inline public static function sameLine():Void {
        imguijs.ImGui.sameLine();
    }
    extern inline public static function newLine():Void {
        imguijs.ImGui.newLine();
    }
    extern inline public static function spacing():Void {
        imguijs.ImGui.spacing();
    }
    extern inline public static function dummy(size:ImVec2):Void {
        imguijs.ImGui.dummy(size);
    }
    extern inline public static function indentEx(indentW:Float = 0.0):Void {
        imguijs.ImGui.indentEx(indentW);
    }
    extern inline public static function indent():Void {
        imguijs.ImGui.indent();
    }
    extern inline public static function unindentEx(indentW:Float = 0.0):Void {
        imguijs.ImGui.unindentEx(indentW);
    }
    extern inline public static function unindent():Void {
        imguijs.ImGui.unindent();
    }
    extern inline public static function beginGroup():Void {
        imguijs.ImGui.beginGroup();
    }
    extern inline public static function endGroup():Void {
        imguijs.ImGui.endGroup();
    }
    extern inline public static function alignTextToFramePadding():Void {
        imguijs.ImGui.alignTextToFramePadding();
    }
    extern inline public static function getTextLineHeight():Float {
        return imguijs.ImGui.getTextLineHeight();
    }
    extern inline public static function getTextLineHeightWithSpacing():Float {
        return imguijs.ImGui.getTextLineHeightWithSpacing();
    }
    extern inline public static function getFrameHeight():Float {
        return imguijs.ImGui.getFrameHeight();
    }
    extern inline public static function getFrameHeightWithSpacing():Float {
        return imguijs.ImGui.getFrameHeightWithSpacing();
    }
    extern inline public static function pushID(strId:String):Void {
        imguijs.ImGui.pushID(strId);
    }
    extern inline public static function pushIDStr(strIdBegin:String, strIdEnd:String):Void {
        imguijs.ImGui.pushIDStr(strIdBegin, strIdEnd);
    }
    extern inline public static function pushIDPtr(ptrId:Int):Void {
        imguijs.ImGui.pushIDPtr(ptrId);
    }
    extern inline public static function pushIDInt(intId:Int):Void {
        imguijs.ImGui.pushIDInt(intId);
    }
    extern inline public static function popID():Void {
        imguijs.ImGui.popID();
    }
    extern inline public static function getID(strId:String):Int {
        return imguijs.ImGui.getID(strId);
    }
    extern inline public static function getIDStr(strIdBegin:String, strIdEnd:String):Int {
        return imguijs.ImGui.getIDStr(strIdBegin, strIdEnd);
    }
    extern inline public static function getIDPtr(ptrId:Int):Int {
        return imguijs.ImGui.getIDPtr(ptrId);
    }
    extern inline public static function getIDInt(intId:Int):Int {
        return imguijs.ImGui.getIDInt(intId);
    }
    extern inline public static function text(text:String, textEnd:String = null):Void {
        imguijs.ImGui.text(text, textEnd);
    }
    extern inline public static function textUnformatted(text:String):Void {
        imguijs.ImGui.textUnformatted(text);
    }
    extern inline public static function textColored(col:ImVec4, text:String):Void {
        imguijs.ImGui.textColored(col, text);
    }
    extern inline public static function textDisabled(text:String):Void {
        imguijs.ImGui.textDisabled(text);
    }
    extern inline public static function textWrapped(text:String):Void {
        imguijs.ImGui.textWrapped(text);
    }
    extern inline public static function labelText(label:String, text:String):Void {
        imguijs.ImGui.labelText(label, text);
    }
    extern inline public static function bulletText(text:String):Void {
        imguijs.ImGui.bulletText(text);
    }
    extern inline public static function separatorText(label:String):Void {
        imguijs.ImGui.separatorText(label);
    }
    extern inline public static function buttonEx(label:String, size:ImVec2):Bool {
        return imguijs.ImGui.buttonEx(label, size);
    }
    extern inline public static function button(label:String):Bool {
        return imguijs.ImGui.button(label);
    }
    extern inline public static function smallButton(label:String):Bool {
        return imguijs.ImGui.smallButton(label);
    }
    extern inline public static function invisibleButton(strId:String, size:ImVec2, flags:Int = 0):Bool {
        return imguijs.ImGui.invisibleButton(strId, size, flags);
    }
    extern inline public static function arrowButton(strId:String, dir:Int):Bool {
        return imguijs.ImGui.arrowButton(strId, dir);
    }
    extern inline public static function radioButton(label:String, active:Bool):Bool {
        return imguijs.ImGui.radioButton(label, active);
    }
    extern inline public static function progressBar(fraction:Float, sizeArg:ImVec2, overlay:String = null):Void {
        imguijs.ImGui.progressBar(fraction, sizeArg, overlay);
    }
    extern inline public static function bullet():Void {
        imguijs.ImGui.bullet();
    }
    extern inline public static function textLink(label:String):Bool {
        return imguijs.ImGui.textLink(label);
    }
    extern inline public static function textLinkOpenURLEx(label:String, url:String = null):Bool {
        return imguijs.ImGui.textLinkOpenURLEx(label, url);
    }
    extern inline public static function textLinkOpenURL(label:String):Bool {
        return imguijs.ImGui.textLinkOpenURL(label);
    }
    extern inline public static function imageEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2):Void {
        imguijs.ImGui.imageEx(texRef, imageSize, uv0, uv1);
    }
    extern inline public static function image(texRef:ImTextureRef, imageSize:ImVec2):Void {
        imguijs.ImGui.image(texRef, imageSize);
    }
    extern inline public static function imageWithBgEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Void {
        imguijs.ImGui.imageWithBgEx(texRef, imageSize, uv0, uv1, bgCol, tintCol);
    }
    extern inline public static function imageWithBg(texRef:ImTextureRef, imageSize:ImVec2):Void {
        imguijs.ImGui.imageWithBg(texRef, imageSize);
    }
    extern inline public static function imageButtonEx(strId:String, texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Bool {
        return imguijs.ImGui.imageButtonEx(strId, texRef, imageSize, uv0, uv1, bgCol, tintCol);
    }
    extern inline public static function imageButton(strId:String, texRef:ImTextureRef, imageSize:ImVec2):Bool {
        return imguijs.ImGui.imageButton(strId, texRef, imageSize);
    }
    extern inline public static function beginCombo(label:String, previewValue:String, flags:Int = 0):Bool {
        return imguijs.ImGui.beginCombo(label, previewValue, flags);
    }
    extern inline public static function endCombo():Void {
        imguijs.ImGui.endCombo();
    }
    extern inline public static function comboCharEx(label:String, currentItem:Int, items:Int, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        return imguijs.ImGui.comboCharEx(label, currentItem, items, itemsCount, popupMaxHeightInItems);
    }
    extern inline public static function comboChar(label:String, currentItem:Int, items:Int, itemsCount:Int):Bool {
        return imguijs.ImGui.comboChar(label, currentItem, items, itemsCount);
    }
    extern inline public static function comboCallbackEx(label:String, currentItem:Int, getter:Int, userData:Int, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        return imguijs.ImGui.comboCallbackEx(label, currentItem, getter, userData, itemsCount, popupMaxHeightInItems);
    }
    extern inline public static function comboCallback(label:String, currentItem:Int, getter:Int, userData:Int, itemsCount:Int):Bool {
        return imguijs.ImGui.comboCallback(label, currentItem, getter, userData, itemsCount);
    }
    public static function dragFloat2Ex(label:String, v:Array<Float>, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...2) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragFloat2Ex(label, imguijs.ImGuiJs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...2) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragFloat2(label:String, v:Array<Float>):Bool {
        for (_i in 0...2) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragFloat2(label, imguijs.ImGuiJs.arrScratchA);
        for (_i in 0...2) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragFloat3Ex(label:String, v:Array<Float>, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragFloat3Ex(label, imguijs.ImGuiJs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...3) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragFloat3(label:String, v:Array<Float>):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragFloat3(label, imguijs.ImGuiJs.arrScratchA);
        for (_i in 0...3) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragFloat4Ex(label:String, v:Array<Float>, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragFloat4Ex(label, imguijs.ImGuiJs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...4) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragFloat4(label:String, v:Array<Float>):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragFloat4(label, imguijs.ImGuiJs.arrScratchA);
        for (_i in 0...4) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt2Ex(label:String, v:Array<Int>, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...2) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragInt2Ex(label, imguijs.ImGuiJs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...2) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt2(label:String, v:Array<Int>):Bool {
        for (_i in 0...2) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragInt2(label, imguijs.ImGuiJs.arrScratchA);
        for (_i in 0...2) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt3Ex(label:String, v:Array<Int>, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragInt3Ex(label, imguijs.ImGuiJs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...3) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt3(label:String, v:Array<Int>):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragInt3(label, imguijs.ImGuiJs.arrScratchA);
        for (_i in 0...3) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt4Ex(label:String, v:Array<Int>, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragInt4Ex(label, imguijs.ImGuiJs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...4) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt4(label:String, v:Array<Int>):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.dragInt4(label, imguijs.ImGuiJs.arrScratchA);
        for (_i in 0...4) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    extern inline public static function dragScalarEx(label:String, dataType:Int, pData:Int, vSpeed:Float = 1.0, pMin:Int = 0, pMax:Int = 0, format:String = null, flags:Int = 0):Bool {
        return imguijs.ImGui.dragScalarEx(label, dataType, pData, vSpeed, pMin, pMax, format, flags);
    }
    extern inline public static function dragScalar(label:String, dataType:Int, pData:Int):Bool {
        return imguijs.ImGui.dragScalar(label, dataType, pData);
    }
    extern inline public static function dragScalarNEx(label:String, dataType:Int, pData:Int, components:Int, vSpeed:Float = 1.0, pMin:Int = 0, pMax:Int = 0, format:String = null, flags:Int = 0):Bool {
        return imguijs.ImGui.dragScalarNEx(label, dataType, pData, components, vSpeed, pMin, pMax, format, flags);
    }
    extern inline public static function dragScalarN(label:String, dataType:Int, pData:Int, components:Int):Bool {
        return imguijs.ImGui.dragScalarN(label, dataType, pData, components);
    }
    public static function sliderFloat2Ex(label:String, v:Array<Float>, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...2) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderFloat2Ex(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...2) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderFloat2(label:String, v:Array<Float>, vMin:Float, vMax:Float):Bool {
        for (_i in 0...2) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderFloat2(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax);
        for (_i in 0...2) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderFloat3Ex(label:String, v:Array<Float>, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderFloat3Ex(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...3) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderFloat3(label:String, v:Array<Float>, vMin:Float, vMax:Float):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderFloat3(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax);
        for (_i in 0...3) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderFloat4Ex(label:String, v:Array<Float>, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderFloat4Ex(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...4) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderFloat4(label:String, v:Array<Float>, vMin:Float, vMax:Float):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderFloat4(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax);
        for (_i in 0...4) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt2Ex(label:String, v:Array<Int>, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...2) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderInt2Ex(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...2) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt2(label:String, v:Array<Int>, vMin:Int, vMax:Int):Bool {
        for (_i in 0...2) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderInt2(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax);
        for (_i in 0...2) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt3Ex(label:String, v:Array<Int>, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderInt3Ex(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...3) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt3(label:String, v:Array<Int>, vMin:Int, vMax:Int):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderInt3(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax);
        for (_i in 0...3) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt4Ex(label:String, v:Array<Int>, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderInt4Ex(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...4) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt4(label:String, v:Array<Int>, vMin:Int, vMax:Int):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.sliderInt4(label, imguijs.ImGuiJs.arrScratchA, vMin, vMax);
        for (_i in 0...4) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    extern inline public static function sliderScalarEx(label:String, dataType:Int, pData:Int, pMin:Int, pMax:Int, format:String = null, flags:Int = 0):Bool {
        return imguijs.ImGui.sliderScalarEx(label, dataType, pData, pMin, pMax, format, flags);
    }
    extern inline public static function sliderScalar(label:String, dataType:Int, pData:Int, pMin:Int, pMax:Int):Bool {
        return imguijs.ImGui.sliderScalar(label, dataType, pData, pMin, pMax);
    }
    extern inline public static function sliderScalarNEx(label:String, dataType:Int, pData:Int, components:Int, pMin:Int, pMax:Int, format:String = null, flags:Int = 0):Bool {
        return imguijs.ImGui.sliderScalarNEx(label, dataType, pData, components, pMin, pMax, format, flags);
    }
    extern inline public static function sliderScalarN(label:String, dataType:Int, pData:Int, components:Int, pMin:Int, pMax:Int):Bool {
        return imguijs.ImGui.sliderScalarN(label, dataType, pData, components, pMin, pMax);
    }
    extern inline public static function vSliderScalarEx(label:String, size:ImVec2, dataType:Int, pData:Int, pMin:Int, pMax:Int, format:String = null, flags:Int = 0):Bool {
        return imguijs.ImGui.vSliderScalarEx(label, size, dataType, pData, pMin, pMax, format, flags);
    }
    extern inline public static function vSliderScalar(label:String, size:ImVec2, dataType:Int, pData:Int, pMin:Int, pMax:Int):Bool {
        return imguijs.ImGui.vSliderScalar(label, size, dataType, pData, pMin, pMax);
    }
    public static function inputFloat2Ex(label:String, v:Array<Float>, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...2) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.inputFloat2Ex(label, imguijs.ImGuiJs.arrScratchA, format, flags);
        for (_i in 0...2) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputFloat2(label:String, v:Array<Float>):Bool {
        for (_i in 0...2) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.inputFloat2(label, imguijs.ImGuiJs.arrScratchA);
        for (_i in 0...2) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputFloat3Ex(label:String, v:Array<Float>, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.inputFloat3Ex(label, imguijs.ImGuiJs.arrScratchA, format, flags);
        for (_i in 0...3) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputFloat3(label:String, v:Array<Float>):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.inputFloat3(label, imguijs.ImGuiJs.arrScratchA);
        for (_i in 0...3) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputFloat4Ex(label:String, v:Array<Float>, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.inputFloat4Ex(label, imguijs.ImGuiJs.arrScratchA, format, flags);
        for (_i in 0...4) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputFloat4(label:String, v:Array<Float>):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.inputFloat4(label, imguijs.ImGuiJs.arrScratchA);
        for (_i in 0...4) v[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputInt2(label:String, v:Array<Int>, flags:Int = 0):Bool {
        for (_i in 0...2) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.inputInt2(label, imguijs.ImGuiJs.arrScratchA, flags);
        for (_i in 0...2) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputInt3(label:String, v:Array<Int>, flags:Int = 0):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.inputInt3(label, imguijs.ImGuiJs.arrScratchA, flags);
        for (_i in 0...3) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputInt4(label:String, v:Array<Int>, flags:Int = 0):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setI32(imguijs.ImGuiJs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguijs.ImGui.inputInt4(label, imguijs.ImGuiJs.arrScratchA, flags);
        for (_i in 0...4) v[_i] = imguijs.ImGuiJs.getI32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    extern inline public static function inputScalarEx(label:String, dataType:Int, pData:Int, pStep:Int = 0, pStepFast:Int = 0, format:String = null, flags:Int = 0):Bool {
        return imguijs.ImGui.inputScalarEx(label, dataType, pData, pStep, pStepFast, format, flags);
    }
    extern inline public static function inputScalar(label:String, dataType:Int, pData:Int):Bool {
        return imguijs.ImGui.inputScalar(label, dataType, pData);
    }
    extern inline public static function inputScalarNEx(label:String, dataType:Int, pData:Int, components:Int, pStep:Int = 0, pStepFast:Int = 0, format:String = null, flags:Int = 0):Bool {
        return imguijs.ImGui.inputScalarNEx(label, dataType, pData, components, pStep, pStepFast, format, flags);
    }
    extern inline public static function inputScalarN(label:String, dataType:Int, pData:Int, components:Int):Bool {
        return imguijs.ImGui.inputScalarN(label, dataType, pData, components);
    }
    public static function colorEdit3(label:String, col:Array<Float>, flags:Int = 0):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), col[_i]);
        var _imret = imguijs.ImGui.colorEdit3(label, imguijs.ImGuiJs.arrScratchA, flags);
        for (_i in 0...3) col[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function colorEdit4(label:String, col:Array<Float>, flags:Int = 0):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), col[_i]);
        var _imret = imguijs.ImGui.colorEdit4(label, imguijs.ImGuiJs.arrScratchA, flags);
        for (_i in 0...4) col[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function colorPicker3(label:String, col:Array<Float>, flags:Int = 0):Bool {
        for (_i in 0...3) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), col[_i]);
        var _imret = imguijs.ImGui.colorPicker3(label, imguijs.ImGuiJs.arrScratchA, flags);
        for (_i in 0...3) col[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function colorPicker4(label:String, col:Array<Float>, flags:Int = 0, refCol:Int = 0):Bool {
        for (_i in 0...4) imguijs.ImGuiJs.setF32(imguijs.ImGuiJs.arrScratchA + (_i << 2), col[_i]);
        var _imret = imguijs.ImGui.colorPicker4(label, imguijs.ImGuiJs.arrScratchA, flags, refCol);
        for (_i in 0...4) col[_i] = imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.arrScratchA + (_i << 2));
        return _imret;
    }
    extern inline public static function colorButtonEx(descId:String, col:ImVec4, flags:Int = 0, size:ImVec2):Bool {
        return imguijs.ImGui.colorButtonEx(descId, col, flags, size);
    }
    extern inline public static function colorButton(descId:String, col:ImVec4, flags:Int = 0):Bool {
        return imguijs.ImGui.colorButton(descId, col, flags);
    }
    extern inline public static function setColorEditOptions(flags:Int):Void {
        imguijs.ImGui.setColorEditOptions(flags);
    }
    extern inline public static function treeNode(label:String):Bool {
        return imguijs.ImGui.treeNode(label);
    }
    extern inline public static function treeNodeStr(strId:String, text:String):Bool {
        return imguijs.ImGui.treeNodeStr(strId, text);
    }
    extern inline public static function treeNodePtr(ptrId:Int, text:String):Bool {
        return imguijs.ImGui.treeNodePtr(ptrId, text);
    }
    extern inline public static function treeNodeEx(label:String, flags:Int = 0):Bool {
        return imguijs.ImGui.treeNodeEx(label, flags);
    }
    extern inline public static function treeNodeExStr(strId:String, flags:Int, text:String):Bool {
        return imguijs.ImGui.treeNodeExStr(strId, flags, text);
    }
    extern inline public static function treeNodeExPtr(ptrId:Int, flags:Int, text:String):Bool {
        return imguijs.ImGui.treeNodeExPtr(ptrId, flags, text);
    }
    extern inline public static function treePush(strId:String):Void {
        imguijs.ImGui.treePush(strId);
    }
    extern inline public static function treePushPtr(ptrId:Int):Void {
        imguijs.ImGui.treePushPtr(ptrId);
    }
    extern inline public static function treePop():Void {
        imguijs.ImGui.treePop();
    }
    extern inline public static function getTreeNodeToLabelSpacing():Float {
        return imguijs.ImGui.getTreeNodeToLabelSpacing();
    }
    extern inline public static function collapsingHeader(label:String, flags:Int = 0):Bool {
        return imguijs.ImGui.collapsingHeader(label, flags);
    }
    extern inline public static function setNextItemOpen(isOpen:Bool, cond:Int = 0):Void {
        imguijs.ImGui.setNextItemOpen(isOpen, cond);
    }
    extern inline public static function setNextItemStorageID(storageId:Int):Void {
        imguijs.ImGui.setNextItemStorageID(storageId);
    }
    extern inline public static function treeNodeGetOpen(storageId:Int):Bool {
        return imguijs.ImGui.treeNodeGetOpen(storageId);
    }
    extern inline public static function selectableEx(label:String, selected:Bool = false, flags:Int = 0, size:ImVec2):Bool {
        return imguijs.ImGui.selectableEx(label, selected, flags, size);
    }
    extern inline public static function selectable(label:String):Bool {
        return imguijs.ImGui.selectable(label);
    }
    extern inline public static function beginMultiSelectEx(flags:Int, selectionSize:Int = -1, itemsCount:Int = -1):ImGuiMultiSelectIO {
        return imguijs.ImGui.beginMultiSelectEx(flags, selectionSize, itemsCount);
    }
    extern inline public static function beginMultiSelect(flags:Int):ImGuiMultiSelectIO {
        return imguijs.ImGui.beginMultiSelect(flags);
    }
    extern inline public static function endMultiSelect():ImGuiMultiSelectIO {
        return imguijs.ImGui.endMultiSelect();
    }
    extern inline public static function setNextItemSelectionUserData(selectionUserData:Float):Void {
        imguijs.ImGui.setNextItemSelectionUserData(selectionUserData);
    }
    extern inline public static function isItemToggledSelection():Bool {
        return imguijs.ImGui.isItemToggledSelection();
    }
    extern inline public static function beginListBox(label:String, size:ImVec2):Bool {
        return imguijs.ImGui.beginListBox(label, size);
    }
    extern inline public static function endListBox():Void {
        imguijs.ImGui.endListBox();
    }
    extern inline public static function listBox(label:String, currentItem:Int, items:Int, itemsCount:Int, heightInItems:Int = -1):Bool {
        return imguijs.ImGui.listBox(label, currentItem, items, itemsCount, heightInItems);
    }
    extern inline public static function listBoxCallbackEx(label:String, currentItem:Int, getter:Int, userData:Int, itemsCount:Int, heightInItems:Int = -1):Bool {
        return imguijs.ImGui.listBoxCallbackEx(label, currentItem, getter, userData, itemsCount, heightInItems);
    }
    extern inline public static function listBoxCallback(label:String, currentItem:Int, getter:Int, userData:Int, itemsCount:Int):Bool {
        return imguijs.ImGui.listBoxCallback(label, currentItem, getter, userData, itemsCount);
    }
    extern inline public static function plotLinesEx(label:String, values:Array<Float>, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        imguijs.ImGui.plotLinesEx(label, imguijs.ImGuiJs.floatsDyn(values), values.length, valuesOffset, overlayText, scaleMin, scaleMax, graphSize, stride);
    }
    extern inline public static function plotLines(label:String, values:Array<Float>):Void {
        imguijs.ImGui.plotLines(label, imguijs.ImGuiJs.floatsDyn(values), values.length);
    }
    extern inline public static function plotLinesCallbackEx(label:String, valuesGetter:Int, data:Int, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2):Void {
        imguijs.ImGui.plotLinesCallbackEx(label, valuesGetter, data, valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize);
    }
    extern inline public static function plotLinesCallback(label:String, valuesGetter:Int, data:Int, valuesCount:Int):Void {
        imguijs.ImGui.plotLinesCallback(label, valuesGetter, data, valuesCount);
    }
    extern inline public static function plotHistogramEx(label:String, values:Array<Float>, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        imguijs.ImGui.plotHistogramEx(label, imguijs.ImGuiJs.floatsDyn(values), values.length, valuesOffset, overlayText, scaleMin, scaleMax, graphSize, stride);
    }
    extern inline public static function plotHistogram(label:String, values:Array<Float>):Void {
        imguijs.ImGui.plotHistogram(label, imguijs.ImGuiJs.floatsDyn(values), values.length);
    }
    extern inline public static function plotHistogramCallbackEx(label:String, valuesGetter:Int, data:Int, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2):Void {
        imguijs.ImGui.plotHistogramCallbackEx(label, valuesGetter, data, valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize);
    }
    extern inline public static function plotHistogramCallback(label:String, valuesGetter:Int, data:Int, valuesCount:Int):Void {
        imguijs.ImGui.plotHistogramCallback(label, valuesGetter, data, valuesCount);
    }
    extern inline public static function beginMenuBar():Bool {
        return imguijs.ImGui.beginMenuBar();
    }
    extern inline public static function endMenuBar():Void {
        imguijs.ImGui.endMenuBar();
    }
    extern inline public static function beginMainMenuBar():Bool {
        return imguijs.ImGui.beginMainMenuBar();
    }
    extern inline public static function endMainMenuBar():Void {
        imguijs.ImGui.endMainMenuBar();
    }
    extern inline public static function beginMenuEx(label:String, enabled:Bool = true):Bool {
        return imguijs.ImGui.beginMenuEx(label, enabled);
    }
    extern inline public static function beginMenu(label:String):Bool {
        return imguijs.ImGui.beginMenu(label);
    }
    extern inline public static function endMenu():Void {
        imguijs.ImGui.endMenu();
    }
    extern inline public static function menuItemEx(label:String, shortcut:String = null, selected:Bool = false, enabled:Bool = true):Bool {
        return imguijs.ImGui.menuItemEx(label, shortcut, selected, enabled);
    }
    extern inline public static function menuItem(label:String):Bool {
        return imguijs.ImGui.menuItem(label);
    }
    extern inline public static function beginTooltip():Bool {
        return imguijs.ImGui.beginTooltip();
    }
    extern inline public static function endTooltip():Void {
        imguijs.ImGui.endTooltip();
    }
    extern inline public static function setTooltip(text:String):Void {
        imguijs.ImGui.setTooltip(text);
    }
    extern inline public static function beginItemTooltip():Bool {
        return imguijs.ImGui.beginItemTooltip();
    }
    extern inline public static function setItemTooltip(text:String):Void {
        imguijs.ImGui.setItemTooltip(text);
    }
    extern inline public static function beginPopup(strId:String, flags:Int = 0):Bool {
        return imguijs.ImGui.beginPopup(strId, flags);
    }
    extern inline public static function endPopup():Void {
        imguijs.ImGui.endPopup();
    }
    extern inline public static function openPopup(strId:String, popupFlags:Int = 0):Void {
        imguijs.ImGui.openPopup(strId, popupFlags);
    }
    extern inline public static function openPopupID(id:Int, popupFlags:Int = 0):Void {
        imguijs.ImGui.openPopupID(id, popupFlags);
    }
    extern inline public static function openPopupOnItemClick(strId:String = null, popupFlags:Int = 0):Void {
        imguijs.ImGui.openPopupOnItemClick(strId, popupFlags);
    }
    extern inline public static function closeCurrentPopup():Void {
        imguijs.ImGui.closeCurrentPopup();
    }
    extern inline public static function beginPopupContextItemEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguijs.ImGui.beginPopupContextItemEx(strId, popupFlags);
    }
    extern inline public static function beginPopupContextItem():Bool {
        return imguijs.ImGui.beginPopupContextItem();
    }
    extern inline public static function beginPopupContextWindowEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguijs.ImGui.beginPopupContextWindowEx(strId, popupFlags);
    }
    extern inline public static function beginPopupContextWindow():Bool {
        return imguijs.ImGui.beginPopupContextWindow();
    }
    extern inline public static function beginPopupContextVoidEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguijs.ImGui.beginPopupContextVoidEx(strId, popupFlags);
    }
    extern inline public static function beginPopupContextVoid():Bool {
        return imguijs.ImGui.beginPopupContextVoid();
    }
    extern inline public static function isPopupOpen(strId:String, flags:Int = 0):Bool {
        return imguijs.ImGui.isPopupOpen(strId, flags);
    }
    extern inline public static function beginTableEx(strId:String, columns:Int, flags:Int = 0, outerSize:ImVec2, innerWidth:Float = 0.0):Bool {
        return imguijs.ImGui.beginTableEx(strId, columns, flags, outerSize, innerWidth);
    }
    extern inline public static function beginTable(strId:String, columns:Int, flags:Int = 0):Bool {
        return imguijs.ImGui.beginTable(strId, columns, flags);
    }
    extern inline public static function endTable():Void {
        imguijs.ImGui.endTable();
    }
    extern inline public static function tableNextRowEx(rowFlags:Int = 0, minRowHeight:Float = 0.0):Void {
        imguijs.ImGui.tableNextRowEx(rowFlags, minRowHeight);
    }
    extern inline public static function tableNextRow():Void {
        imguijs.ImGui.tableNextRow();
    }
    extern inline public static function tableNextColumn():Bool {
        return imguijs.ImGui.tableNextColumn();
    }
    extern inline public static function tableSetColumnIndex(columnN:Int):Bool {
        return imguijs.ImGui.tableSetColumnIndex(columnN);
    }
    extern inline public static function tableSetupColumnEx(label:String, flags:Int = 0, initWidthOrWeight:Float = 0.0, userId:Int = 0):Void {
        imguijs.ImGui.tableSetupColumnEx(label, flags, initWidthOrWeight, userId);
    }
    extern inline public static function tableSetupColumn(label:String, flags:Int = 0):Void {
        imguijs.ImGui.tableSetupColumn(label, flags);
    }
    extern inline public static function tableSetupScrollFreeze(cols:Int, rows:Int):Void {
        imguijs.ImGui.tableSetupScrollFreeze(cols, rows);
    }
    extern inline public static function tableHeader(label:String):Void {
        imguijs.ImGui.tableHeader(label);
    }
    extern inline public static function tableHeadersRow():Void {
        imguijs.ImGui.tableHeadersRow();
    }
    extern inline public static function tableAngledHeadersRow():Void {
        imguijs.ImGui.tableAngledHeadersRow();
    }
    extern inline public static function tableGetSortSpecs():ImGuiTableSortSpecs {
        return imguijs.ImGui.tableGetSortSpecs();
    }
    extern inline public static function tableGetColumnCount():Int {
        return imguijs.ImGui.tableGetColumnCount();
    }
    extern inline public static function tableGetColumnIndex():Int {
        return imguijs.ImGui.tableGetColumnIndex();
    }
    extern inline public static function tableGetRowIndex():Int {
        return imguijs.ImGui.tableGetRowIndex();
    }
    extern inline public static function tableGetColumnName(columnN:Int = -1):String {
        return imguijs.ImGui.tableGetColumnName(columnN);
    }
    extern inline public static function tableGetColumnFlags(columnN:Int = -1):Int {
        return imguijs.ImGui.tableGetColumnFlags(columnN);
    }
    extern inline public static function tableSetColumnEnabled(columnN:Int, v:Bool):Void {
        imguijs.ImGui.tableSetColumnEnabled(columnN, v);
    }
    extern inline public static function tableGetHoveredColumn():Int {
        return imguijs.ImGui.tableGetHoveredColumn();
    }
    extern inline public static function tableSetBgColor(target:Int, color:Int, columnN:Int = -1):Void {
        imguijs.ImGui.tableSetBgColor(target, color, columnN);
    }
    extern inline public static function columnsEx(count:Int = 1, id:String = null, borders:Bool = true):Void {
        imguijs.ImGui.columnsEx(count, id, borders);
    }
    extern inline public static function columns():Void {
        imguijs.ImGui.columns();
    }
    extern inline public static function nextColumn():Void {
        imguijs.ImGui.nextColumn();
    }
    extern inline public static function getColumnIndex():Int {
        return imguijs.ImGui.getColumnIndex();
    }
    extern inline public static function getColumnWidth(columnIndex:Int = -1):Float {
        return imguijs.ImGui.getColumnWidth(columnIndex);
    }
    extern inline public static function setColumnWidth(columnIndex:Int, width:Float):Void {
        imguijs.ImGui.setColumnWidth(columnIndex, width);
    }
    extern inline public static function getColumnOffset(columnIndex:Int = -1):Float {
        return imguijs.ImGui.getColumnOffset(columnIndex);
    }
    extern inline public static function setColumnOffset(columnIndex:Int, offsetX:Float):Void {
        imguijs.ImGui.setColumnOffset(columnIndex, offsetX);
    }
    extern inline public static function getColumnsCount():Int {
        return imguijs.ImGui.getColumnsCount();
    }
    extern inline public static function beginTabBar(strId:String, flags:Int = 0):Bool {
        return imguijs.ImGui.beginTabBar(strId, flags);
    }
    extern inline public static function endTabBar():Void {
        imguijs.ImGui.endTabBar();
    }
    extern inline public static function endTabItem():Void {
        imguijs.ImGui.endTabItem();
    }
    extern inline public static function tabItemButton(label:String, flags:Int = 0):Bool {
        return imguijs.ImGui.tabItemButton(label, flags);
    }
    extern inline public static function setTabItemClosed(tabOrDockedWindowLabel:String):Void {
        imguijs.ImGui.setTabItemClosed(tabOrDockedWindowLabel);
    }
    extern inline public static function dockSpaceEx(dockspaceId:Int, size:ImVec2, flags:Int = 0, windowClass:ImGuiWindowClass = cast 0):Int {
        return imguijs.ImGui.dockSpaceEx(dockspaceId, size, flags, windowClass);
    }
    extern inline public static function dockSpace(dockspaceId:Int):Int {
        return imguijs.ImGui.dockSpace(dockspaceId);
    }
    extern inline public static function dockSpaceOverViewportEx(dockspaceId:Int = 0, viewport:ImGuiViewport = cast 0, flags:Int = 0, windowClass:ImGuiWindowClass = cast 0):Int {
        return imguijs.ImGui.dockSpaceOverViewportEx(dockspaceId, viewport, flags, windowClass);
    }
    extern inline public static function dockSpaceOverViewport():Int {
        return imguijs.ImGui.dockSpaceOverViewport();
    }
    extern inline public static function setNextWindowDockID(dockId:Int, cond:Int = 0):Void {
        imguijs.ImGui.setNextWindowDockID(dockId, cond);
    }
    extern inline public static function setNextWindowClass(windowClass:ImGuiWindowClass):Void {
        imguijs.ImGui.setNextWindowClass(windowClass);
    }
    extern inline public static function getWindowDockID():Int {
        return imguijs.ImGui.getWindowDockID();
    }
    extern inline public static function isWindowDocked():Bool {
        return imguijs.ImGui.isWindowDocked();
    }
    extern inline public static function logToTTY(autoOpenDepth:Int = -1):Void {
        imguijs.ImGui.logToTTY(autoOpenDepth);
    }
    extern inline public static function logToFile(autoOpenDepth:Int = -1, filename:String = null):Void {
        imguijs.ImGui.logToFile(autoOpenDepth, filename);
    }
    extern inline public static function logToClipboard(autoOpenDepth:Int = -1):Void {
        imguijs.ImGui.logToClipboard(autoOpenDepth);
    }
    extern inline public static function logFinish():Void {
        imguijs.ImGui.logFinish();
    }
    extern inline public static function logButtons():Void {
        imguijs.ImGui.logButtons();
    }
    extern inline public static function logText(text:String):Void {
        imguijs.ImGui.logText(text);
    }
    extern inline public static function beginDragDropSource(flags:Int = 0):Bool {
        return imguijs.ImGui.beginDragDropSource(flags);
    }
    extern inline public static function setDragDropPayload(type:String, data:Int, sz:Int, cond:Int = 0):Bool {
        return imguijs.ImGui.setDragDropPayload(type, data, sz, cond);
    }
    extern inline public static function endDragDropSource():Void {
        imguijs.ImGui.endDragDropSource();
    }
    extern inline public static function beginDragDropTarget():Bool {
        return imguijs.ImGui.beginDragDropTarget();
    }
    extern inline public static function acceptDragDropPayload(type:String, flags:Int = 0):ImGuiPayload {
        return imguijs.ImGui.acceptDragDropPayload(type, flags);
    }
    extern inline public static function endDragDropTarget():Void {
        imguijs.ImGui.endDragDropTarget();
    }
    extern inline public static function getDragDropPayload():ImGuiPayload {
        return imguijs.ImGui.getDragDropPayload();
    }
    extern inline public static function beginDisabled(disabled:Bool = true):Void {
        imguijs.ImGui.beginDisabled(disabled);
    }
    extern inline public static function endDisabled():Void {
        imguijs.ImGui.endDisabled();
    }
    extern inline public static function pushClipRect(clipRectMin:ImVec2, clipRectMax:ImVec2, intersectWithCurrentClipRect:Bool):Void {
        imguijs.ImGui.pushClipRect(clipRectMin, clipRectMax, intersectWithCurrentClipRect);
    }
    extern inline public static function popClipRect():Void {
        imguijs.ImGui.popClipRect();
    }
    extern inline public static function setItemDefaultFocus():Void {
        imguijs.ImGui.setItemDefaultFocus();
    }
    extern inline public static function setKeyboardFocusHereEx(offset:Int = 0):Void {
        imguijs.ImGui.setKeyboardFocusHereEx(offset);
    }
    extern inline public static function setKeyboardFocusHere():Void {
        imguijs.ImGui.setKeyboardFocusHere();
    }
    extern inline public static function setNavCursorVisible(visible:Bool):Void {
        imguijs.ImGui.setNavCursorVisible(visible);
    }
    extern inline public static function setNextItemAllowOverlap():Void {
        imguijs.ImGui.setNextItemAllowOverlap();
    }
    extern inline public static function isItemHovered(flags:Int = 0):Bool {
        return imguijs.ImGui.isItemHovered(flags);
    }
    extern inline public static function isItemActive():Bool {
        return imguijs.ImGui.isItemActive();
    }
    extern inline public static function isItemFocused():Bool {
        return imguijs.ImGui.isItemFocused();
    }
    extern inline public static function isItemClickedEx(mouseButton:Int = 0):Bool {
        return imguijs.ImGui.isItemClickedEx(mouseButton);
    }
    extern inline public static function isItemClicked():Bool {
        return imguijs.ImGui.isItemClicked();
    }
    extern inline public static function isItemVisible():Bool {
        return imguijs.ImGui.isItemVisible();
    }
    extern inline public static function isItemEdited():Bool {
        return imguijs.ImGui.isItemEdited();
    }
    extern inline public static function isItemActivated():Bool {
        return imguijs.ImGui.isItemActivated();
    }
    extern inline public static function isItemDeactivated():Bool {
        return imguijs.ImGui.isItemDeactivated();
    }
    extern inline public static function isItemDeactivatedAfterEdit():Bool {
        return imguijs.ImGui.isItemDeactivatedAfterEdit();
    }
    extern inline public static function isItemToggledOpen():Bool {
        return imguijs.ImGui.isItemToggledOpen();
    }
    extern inline public static function isAnyItemHovered():Bool {
        return imguijs.ImGui.isAnyItemHovered();
    }
    extern inline public static function isAnyItemActive():Bool {
        return imguijs.ImGui.isAnyItemActive();
    }
    extern inline public static function isAnyItemFocused():Bool {
        return imguijs.ImGui.isAnyItemFocused();
    }
    extern inline public static function getItemID():Int {
        return imguijs.ImGui.getItemID();
    }
    extern inline public static function getItemRectMin():ImVec2 {
        return imguijs.ImGui.getItemRectMin();
    }
    extern inline public static function getItemRectMax():ImVec2 {
        return imguijs.ImGui.getItemRectMax();
    }
    extern inline public static function getItemRectSize():ImVec2 {
        return imguijs.ImGui.getItemRectSize();
    }
    extern inline public static function getItemFlags():Int {
        return imguijs.ImGui.getItemFlags();
    }
    extern inline public static function getMainViewport():ImGuiViewport {
        return imguijs.ImGui.getMainViewport();
    }
    extern inline public static function getBackgroundDrawListEx(viewport:ImGuiViewport = cast 0):ImDrawList {
        return imguijs.ImGui.getBackgroundDrawListEx(viewport);
    }
    extern inline public static function getBackgroundDrawList():ImDrawList {
        return imguijs.ImGui.getBackgroundDrawList();
    }
    extern inline public static function getForegroundDrawListEx(viewport:ImGuiViewport = cast 0):ImDrawList {
        return imguijs.ImGui.getForegroundDrawListEx(viewport);
    }
    extern inline public static function getForegroundDrawList():ImDrawList {
        return imguijs.ImGui.getForegroundDrawList();
    }
    extern inline public static function isRectVisibleBySize(size:ImVec2):Bool {
        return imguijs.ImGui.isRectVisibleBySize(size);
    }
    extern inline public static function isRectVisible(rectMin:ImVec2, rectMax:ImVec2):Bool {
        return imguijs.ImGui.isRectVisible(rectMin, rectMax);
    }
    extern inline public static function getTime():Float {
        return imguijs.ImGui.getTime();
    }
    extern inline public static function getFrameCount():Int {
        return imguijs.ImGui.getFrameCount();
    }
    extern inline public static function getDrawListSharedData():ImDrawListSharedData {
        return imguijs.ImGui.getDrawListSharedData();
    }
    extern inline public static function getStyleColorName(idx:Int):String {
        return imguijs.ImGui.getStyleColorName(idx);
    }
    extern inline public static function setStateStorage(storage:ImGuiStorage):Void {
        imguijs.ImGui.setStateStorage(storage);
    }
    extern inline public static function getStateStorage():ImGuiStorage {
        return imguijs.ImGui.getStateStorage();
    }
    extern inline public static function calcTextSizeEx(text:String, textEnd:String = null, hideTextAfterDoubleHash:Bool = false, wrapWidth:Float = -1.0):ImVec2 {
        return imguijs.ImGui.calcTextSizeEx(text, textEnd, hideTextAfterDoubleHash, wrapWidth);
    }
    extern inline public static function calcTextSize(text:String):ImVec2 {
        return imguijs.ImGui.calcTextSize(text);
    }
    extern inline public static function colorConvertU32ToFloat4(in_:Int):ImVec4 {
        return imguijs.ImGui.colorConvertU32ToFloat4(in_);
    }
    extern inline public static function colorConvertFloat4ToU32(in_:ImVec4):Int {
        return imguijs.ImGui.colorConvertFloat4ToU32(in_);
    }
    extern inline public static function isKeyDown(key:Int):Bool {
        return imguijs.ImGui.isKeyDown(key);
    }
    extern inline public static function isKeyPressedEx(key:Int, repeat:Bool = true):Bool {
        return imguijs.ImGui.isKeyPressedEx(key, repeat);
    }
    extern inline public static function isKeyPressed(key:Int):Bool {
        return imguijs.ImGui.isKeyPressed(key);
    }
    extern inline public static function isKeyReleased(key:Int):Bool {
        return imguijs.ImGui.isKeyReleased(key);
    }
    extern inline public static function isKeyChordPressed(keyChord:Int):Bool {
        return imguijs.ImGui.isKeyChordPressed(keyChord);
    }
    extern inline public static function getKeyPressedAmount(key:Int, repeatDelay:Float, rate:Float):Int {
        return imguijs.ImGui.getKeyPressedAmount(key, repeatDelay, rate);
    }
    extern inline public static function getKeyName(key:Int):String {
        return imguijs.ImGui.getKeyName(key);
    }
    extern inline public static function setNextFrameWantCaptureKeyboard(wantCaptureKeyboard:Bool):Void {
        imguijs.ImGui.setNextFrameWantCaptureKeyboard(wantCaptureKeyboard);
    }
    extern inline public static function shortcut(keyChord:Int, flags:Int = 0):Bool {
        return imguijs.ImGui.shortcut(keyChord, flags);
    }
    extern inline public static function setNextItemShortcut(keyChord:Int, flags:Int = 0):Void {
        imguijs.ImGui.setNextItemShortcut(keyChord, flags);
    }
    extern inline public static function setItemKeyOwner(key:Int):Bool {
        return imguijs.ImGui.setItemKeyOwner(key);
    }
    extern inline public static function isMouseDown(button:Int):Bool {
        return imguijs.ImGui.isMouseDown(button);
    }
    extern inline public static function isMouseClickedEx(button:Int, repeat:Bool = false):Bool {
        return imguijs.ImGui.isMouseClickedEx(button, repeat);
    }
    extern inline public static function isMouseClicked(button:Int):Bool {
        return imguijs.ImGui.isMouseClicked(button);
    }
    extern inline public static function isMouseReleased(button:Int):Bool {
        return imguijs.ImGui.isMouseReleased(button);
    }
    extern inline public static function isMouseDoubleClicked(button:Int):Bool {
        return imguijs.ImGui.isMouseDoubleClicked(button);
    }
    extern inline public static function isMouseReleasedWithDelay(button:Int, delay:Float):Bool {
        return imguijs.ImGui.isMouseReleasedWithDelay(button, delay);
    }
    extern inline public static function getMouseClickedCount(button:Int):Int {
        return imguijs.ImGui.getMouseClickedCount(button);
    }
    extern inline public static function isMouseHoveringRectEx(rMin:ImVec2, rMax:ImVec2, clip:Bool = true):Bool {
        return imguijs.ImGui.isMouseHoveringRectEx(rMin, rMax, clip);
    }
    extern inline public static function isMouseHoveringRect(rMin:ImVec2, rMax:ImVec2):Bool {
        return imguijs.ImGui.isMouseHoveringRect(rMin, rMax);
    }
    extern inline public static function isMousePosValid(mousePos:Int = 0):Bool {
        return imguijs.ImGui.isMousePosValid(mousePos);
    }
    extern inline public static function isAnyMouseDown():Bool {
        return imguijs.ImGui.isAnyMouseDown();
    }
    extern inline public static function getMousePos():ImVec2 {
        return imguijs.ImGui.getMousePos();
    }
    extern inline public static function getMousePosOnOpeningCurrentPopup():ImVec2 {
        return imguijs.ImGui.getMousePosOnOpeningCurrentPopup();
    }
    extern inline public static function isMouseDragging(button:Int, lockThreshold:Float = -1.0):Bool {
        return imguijs.ImGui.isMouseDragging(button, lockThreshold);
    }
    extern inline public static function getMouseDragDelta(button:Int = 0, lockThreshold:Float = -1.0):ImVec2 {
        return imguijs.ImGui.getMouseDragDelta(button, lockThreshold);
    }
    extern inline public static function resetMouseDragDeltaEx(button:Int = 0):Void {
        imguijs.ImGui.resetMouseDragDeltaEx(button);
    }
    extern inline public static function resetMouseDragDelta():Void {
        imguijs.ImGui.resetMouseDragDelta();
    }
    extern inline public static function getMouseCursor():Int {
        return imguijs.ImGui.getMouseCursor();
    }
    extern inline public static function setMouseCursor(cursorType:Int):Void {
        imguijs.ImGui.setMouseCursor(cursorType);
    }
    extern inline public static function setNextFrameWantCaptureMouse(wantCaptureMouse:Bool):Void {
        imguijs.ImGui.setNextFrameWantCaptureMouse(wantCaptureMouse);
    }
    extern inline public static function getClipboardText():String {
        return imguijs.ImGui.getClipboardText();
    }
    extern inline public static function setClipboardText(text:String):Void {
        imguijs.ImGui.setClipboardText(text);
    }
    extern inline public static function loadIniSettingsFromDisk(iniFilename:String):Void {
        imguijs.ImGui.loadIniSettingsFromDisk(iniFilename);
    }
    extern inline public static function loadIniSettingsFromMemory(iniData:String, iniSize:Int = 0):Void {
        imguijs.ImGui.loadIniSettingsFromMemory(iniData, iniSize);
    }
    extern inline public static function saveIniSettingsToDisk(iniFilename:String):Void {
        imguijs.ImGui.saveIniSettingsToDisk(iniFilename);
    }
    extern inline public static function saveIniSettingsToMemory(outIniSize:Int = 0):String {
        return imguijs.ImGui.saveIniSettingsToMemory(outIniSize);
    }
    extern inline public static function debugTextEncoding(text:String):Void {
        imguijs.ImGui.debugTextEncoding(text);
    }
    extern inline public static function debugFlashStyleColor(idx:Int):Void {
        imguijs.ImGui.debugFlashStyleColor(idx);
    }
    extern inline public static function debugStartItemPicker():Void {
        imguijs.ImGui.debugStartItemPicker();
    }
    extern inline public static function debugCheckVersionAndDataLayout(versionStr:String, szIo:Int, szStyle:Int, szVec2:Int, szVec4:Int, szDrawvert:Int, szDrawidx:Int):Bool {
        return imguijs.ImGui.debugCheckVersionAndDataLayout(versionStr, szIo, szStyle, szVec2, szVec4, szDrawvert, szDrawidx);
    }
    extern inline public static function debugLog(text:String):Void {
        imguijs.ImGui.debugLog(text);
    }
    extern inline public static function setAllocatorFunctions(allocFunc:Int, freeFunc:Int, userData:Int = 0):Void {
        imguijs.ImGui.setAllocatorFunctions(allocFunc, freeFunc, userData);
    }
    extern inline public static function getAllocatorFunctions(pAllocFunc:Int, pFreeFunc:Int, pUserData:Int):Void {
        imguijs.ImGui.getAllocatorFunctions(pAllocFunc, pFreeFunc, pUserData);
    }
    extern inline public static function memAlloc(size:Int):Int {
        return imguijs.ImGui.memAlloc(size);
    }
    extern inline public static function memFree(ptr:Int):Void {
        imguijs.ImGui.memFree(ptr);
    }
    extern inline public static function updatePlatformWindows():Void {
        imguijs.ImGui.updatePlatformWindows();
    }
    extern inline public static function renderPlatformWindowsDefaultEx(platformRenderArg:Int = 0, rendererRenderArg:Int = 0):Void {
        imguijs.ImGui.renderPlatformWindowsDefaultEx(platformRenderArg, rendererRenderArg);
    }
    extern inline public static function renderPlatformWindowsDefault():Void {
        imguijs.ImGui.renderPlatformWindowsDefault();
    }
    extern inline public static function destroyPlatformWindows():Void {
        imguijs.ImGui.destroyPlatformWindows();
    }
    extern inline public static function findViewportByID(viewportId:Int):ImGuiViewport {
        return imguijs.ImGui.findViewportByID(viewportId);
    }
    extern inline public static function findViewportByPlatformHandle(platformHandle:Int):ImGuiViewport {
        return imguijs.ImGui.findViewportByPlatformHandle(platformHandle);
    }
    extern inline public static function imVector_Construct(vector:Int):Void {
        imguijs.ImGui.imVector_Construct(vector);
    }
    extern inline public static function imVector_Destruct(vector:Int):Void {
        imguijs.ImGui.imVector_Destruct(vector);
    }

#elseif (cs && !macro)

    extern inline public static function createContext(sharedFontAtlas:ImFontAtlas = 0):ImGuiContext {
        return imguics.ImGui.createContext(sharedFontAtlas);
    }
    extern inline public static function destroyContext(ctx:ImGuiContext = 0):Void {
        imguics.ImGui.destroyContext(ctx);
    }
    extern inline public static function getCurrentContext():ImGuiContext {
        return imguics.ImGui.getCurrentContext();
    }
    extern inline public static function setCurrentContext(ctx:ImGuiContext):Void {
        imguics.ImGui.setCurrentContext(ctx);
    }
    extern inline public static function getIO():ImGuiIO {
        return imguics.ImGui.getIO();
    }
    extern inline public static function getPlatformIO():ImGuiPlatformIO {
        return imguics.ImGui.getPlatformIO();
    }
    extern inline public static function getStyle():ImGuiStyle {
        return imguics.ImGui.getStyle();
    }
    extern inline public static function newFrame():Void {
        imguics.ImGui.newFrame();
    }
    extern inline public static function endFrame():Void {
        imguics.ImGui.endFrame();
    }
    extern inline public static function render():Void {
        imguics.ImGui.render();
    }
    extern inline public static function getDrawData():ImDrawData {
        return imguics.ImGui.getDrawData();
    }
    extern inline public static function showIDStackToolWindow():Void {
        imguics.ImGui.showIDStackToolWindow();
    }
    extern inline public static function showStyleEditor(ref:ImGuiStyle = 0):Void {
        imguics.ImGui.showStyleEditor(ref);
    }
    extern inline public static function showStyleSelector(label:String):Bool {
        return imguics.ImGui.showStyleSelector(label);
    }
    extern inline public static function showFontSelector(label:String):Void {
        imguics.ImGui.showFontSelector(label);
    }
    extern inline public static function showUserGuide():Void {
        imguics.ImGui.showUserGuide();
    }
    extern inline public static function getVersion():String {
        return imguics.ImGui.getVersion();
    }
    extern inline public static function styleColorsDark(dst:ImGuiStyle = 0):Void {
        imguics.ImGui.styleColorsDark(dst);
    }
    extern inline public static function styleColorsLight(dst:ImGuiStyle = 0):Void {
        imguics.ImGui.styleColorsLight(dst);
    }
    extern inline public static function styleColorsClassic(dst:ImGuiStyle = 0):Void {
        imguics.ImGui.styleColorsClassic(dst);
    }
    extern inline public static function end():Void {
        imguics.ImGui.end();
    }
    extern inline public static function beginChild(strId:String, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        return imguics.ImGui.beginChild(strId, size, childFlags, windowFlags);
    }
    extern inline public static function beginChildID(id:Int, size:ImVec2, childFlags:Int = 0, windowFlags:Int = 0):Bool {
        return imguics.ImGui.beginChildID(id, size, childFlags, windowFlags);
    }
    extern inline public static function endChild():Void {
        imguics.ImGui.endChild();
    }
    extern inline public static function isWindowAppearing():Bool {
        return imguics.ImGui.isWindowAppearing();
    }
    extern inline public static function isWindowCollapsed():Bool {
        return imguics.ImGui.isWindowCollapsed();
    }
    extern inline public static function isWindowFocused(flags:Int = 0):Bool {
        return imguics.ImGui.isWindowFocused(flags);
    }
    extern inline public static function isWindowHovered(flags:Int = 0):Bool {
        return imguics.ImGui.isWindowHovered(flags);
    }
    extern inline public static function getWindowDrawList():ImDrawList {
        return imguics.ImGui.getWindowDrawList();
    }
    extern inline public static function getWindowDpiScale():Float {
        return imguics.ImGui.getWindowDpiScale();
    }
    extern inline public static function getWindowPos():ImVec2 {
        return imguics.ImGui.getWindowPos();
    }
    extern inline public static function getWindowSize():ImVec2 {
        return imguics.ImGui.getWindowSize();
    }
    extern inline public static function getWindowWidth():Float {
        return imguics.ImGui.getWindowWidth();
    }
    extern inline public static function getWindowHeight():Float {
        return imguics.ImGui.getWindowHeight();
    }
    extern inline public static function getWindowViewport():ImGuiViewport {
        return imguics.ImGui.getWindowViewport();
    }
    extern inline public static function setNextWindowPosEx(pos:ImVec2, cond:Int = 0, pivot:ImVec2):Void {
        imguics.ImGui.setNextWindowPosEx(pos, cond, pivot);
    }
    extern inline public static function setNextWindowPos(pos:ImVec2, cond:Int = 0):Void {
        imguics.ImGui.setNextWindowPos(pos, cond);
    }
    extern inline public static function setNextWindowSize(size:ImVec2, cond:Int = 0):Void {
        imguics.ImGui.setNextWindowSize(size, cond);
    }
    extern inline public static function setNextWindowSizeConstraints(sizeMin:ImVec2, sizeMax:ImVec2, customCallback:Float = 0, customCallbackData:Float = 0):Void {
        imguics.ImGui.setNextWindowSizeConstraints(sizeMin, sizeMax, customCallback, customCallbackData);
    }
    extern inline public static function setNextWindowContentSize(size:ImVec2):Void {
        imguics.ImGui.setNextWindowContentSize(size);
    }
    extern inline public static function setNextWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        imguics.ImGui.setNextWindowCollapsed(collapsed, cond);
    }
    extern inline public static function setNextWindowFocus():Void {
        imguics.ImGui.setNextWindowFocus();
    }
    extern inline public static function setNextWindowScroll(scroll:ImVec2):Void {
        imguics.ImGui.setNextWindowScroll(scroll);
    }
    extern inline public static function setNextWindowBgAlpha(alpha:Float):Void {
        imguics.ImGui.setNextWindowBgAlpha(alpha);
    }
    extern inline public static function setNextWindowViewport(viewportId:Int):Void {
        imguics.ImGui.setNextWindowViewport(viewportId);
    }
    extern inline public static function setWindowPos(pos:ImVec2, cond:Int = 0):Void {
        imguics.ImGui.setWindowPos(pos, cond);
    }
    extern inline public static function setWindowSize(size:ImVec2, cond:Int = 0):Void {
        imguics.ImGui.setWindowSize(size, cond);
    }
    extern inline public static function setWindowCollapsed(collapsed:Bool, cond:Int = 0):Void {
        imguics.ImGui.setWindowCollapsed(collapsed, cond);
    }
    extern inline public static function setWindowFocus():Void {
        imguics.ImGui.setWindowFocus();
    }
    extern inline public static function setWindowPosStr(name:String, pos:ImVec2, cond:Int = 0):Void {
        imguics.ImGui.setWindowPosStr(name, pos, cond);
    }
    extern inline public static function setWindowSizeStr(name:String, size:ImVec2, cond:Int = 0):Void {
        imguics.ImGui.setWindowSizeStr(name, size, cond);
    }
    extern inline public static function setWindowCollapsedStr(name:String, collapsed:Bool, cond:Int = 0):Void {
        imguics.ImGui.setWindowCollapsedStr(name, collapsed, cond);
    }
    extern inline public static function setWindowFocusStr(name:String):Void {
        imguics.ImGui.setWindowFocusStr(name);
    }
    extern inline public static function getScrollX():Float {
        return imguics.ImGui.getScrollX();
    }
    extern inline public static function getScrollY():Float {
        return imguics.ImGui.getScrollY();
    }
    extern inline public static function setScrollX(scrollX:Float):Void {
        imguics.ImGui.setScrollX(scrollX);
    }
    extern inline public static function setScrollY(scrollY:Float):Void {
        imguics.ImGui.setScrollY(scrollY);
    }
    extern inline public static function getScrollMaxX():Float {
        return imguics.ImGui.getScrollMaxX();
    }
    extern inline public static function getScrollMaxY():Float {
        return imguics.ImGui.getScrollMaxY();
    }
    extern inline public static function setScrollHereX(centerXRatio:Float = 0.5):Void {
        imguics.ImGui.setScrollHereX(centerXRatio);
    }
    extern inline public static function setScrollHereY(centerYRatio:Float = 0.5):Void {
        imguics.ImGui.setScrollHereY(centerYRatio);
    }
    extern inline public static function setScrollFromPosX(localX:Float, centerXRatio:Float = 0.5):Void {
        imguics.ImGui.setScrollFromPosX(localX, centerXRatio);
    }
    extern inline public static function setScrollFromPosY(localY:Float, centerYRatio:Float = 0.5):Void {
        imguics.ImGui.setScrollFromPosY(localY, centerYRatio);
    }
    extern inline public static function pushFontFloat(font:ImFont, fontSizeBaseUnscaled:Float):Void {
        imguics.ImGui.pushFontFloat(font, fontSizeBaseUnscaled);
    }
    extern inline public static function popFont():Void {
        imguics.ImGui.popFont();
    }
    extern inline public static function getFont():ImFont {
        return imguics.ImGui.getFont();
    }
    extern inline public static function getFontSize():Float {
        return imguics.ImGui.getFontSize();
    }
    extern inline public static function getFontBaked():ImFontBaked {
        return imguics.ImGui.getFontBaked();
    }
    extern inline public static function pushStyleColor(idx:Int, col:Int):Void {
        imguics.ImGui.pushStyleColor(idx, col);
    }
    extern inline public static function pushStyleColorImVec4(idx:Int, col:ImVec4):Void {
        imguics.ImGui.pushStyleColorImVec4(idx, col);
    }
    extern inline public static function popStyleColorEx(count:Int = 1):Void {
        imguics.ImGui.popStyleColorEx(count);
    }
    extern inline public static function popStyleColor():Void {
        imguics.ImGui.popStyleColor();
    }
    extern inline public static function pushStyleVar(idx:Int, val:Float):Void {
        imguics.ImGui.pushStyleVar(idx, val);
    }
    extern inline public static function pushStyleVarImVec2(idx:Int, val:ImVec2):Void {
        imguics.ImGui.pushStyleVarImVec2(idx, val);
    }
    extern inline public static function pushStyleVarX(idx:Int, valX:Float):Void {
        imguics.ImGui.pushStyleVarX(idx, valX);
    }
    extern inline public static function pushStyleVarY(idx:Int, valY:Float):Void {
        imguics.ImGui.pushStyleVarY(idx, valY);
    }
    extern inline public static function popStyleVarEx(count:Int = 1):Void {
        imguics.ImGui.popStyleVarEx(count);
    }
    extern inline public static function popStyleVar():Void {
        imguics.ImGui.popStyleVar();
    }
    extern inline public static function pushItemFlag(option:Int, enabled:Bool):Void {
        imguics.ImGui.pushItemFlag(option, enabled);
    }
    extern inline public static function popItemFlag():Void {
        imguics.ImGui.popItemFlag();
    }
    extern inline public static function pushItemWidth(itemWidth:Float):Void {
        imguics.ImGui.pushItemWidth(itemWidth);
    }
    extern inline public static function popItemWidth():Void {
        imguics.ImGui.popItemWidth();
    }
    extern inline public static function setNextItemWidth(itemWidth:Float):Void {
        imguics.ImGui.setNextItemWidth(itemWidth);
    }
    extern inline public static function calcItemWidth():Float {
        return imguics.ImGui.calcItemWidth();
    }
    extern inline public static function pushTextWrapPos(wrapLocalPosX:Float = 0.0):Void {
        imguics.ImGui.pushTextWrapPos(wrapLocalPosX);
    }
    extern inline public static function popTextWrapPos():Void {
        imguics.ImGui.popTextWrapPos();
    }
    extern inline public static function getFontTexUvWhitePixel():ImVec2 {
        return imguics.ImGui.getFontTexUvWhitePixel();
    }
    extern inline public static function getColorU32Ex(idx:Int, alphaMul:Float = 1.0):Int {
        return imguics.ImGui.getColorU32Ex(idx, alphaMul);
    }
    extern inline public static function getColorU32(idx:Int):Int {
        return imguics.ImGui.getColorU32(idx);
    }
    extern inline public static function getColorU32ImVec4(col:ImVec4):Int {
        return imguics.ImGui.getColorU32ImVec4(col);
    }
    extern inline public static function getColorU32ImU32Ex(col:Int, alphaMul:Float = 1.0):Int {
        return imguics.ImGui.getColorU32ImU32Ex(col, alphaMul);
    }
    extern inline public static function getColorU32ImU32(col:Int):Int {
        return imguics.ImGui.getColorU32ImU32(col);
    }
    extern inline public static function getStyleColorVec4(idx:Int):Float {
        return imguics.ImGui.getStyleColorVec4(idx);
    }
    extern inline public static function getCursorScreenPos():ImVec2 {
        return imguics.ImGui.getCursorScreenPos();
    }
    extern inline public static function setCursorScreenPos(pos:ImVec2):Void {
        imguics.ImGui.setCursorScreenPos(pos);
    }
    extern inline public static function getContentRegionAvail():ImVec2 {
        return imguics.ImGui.getContentRegionAvail();
    }
    extern inline public static function getCursorPos():ImVec2 {
        return imguics.ImGui.getCursorPos();
    }
    extern inline public static function getCursorPosX():Float {
        return imguics.ImGui.getCursorPosX();
    }
    extern inline public static function getCursorPosY():Float {
        return imguics.ImGui.getCursorPosY();
    }
    extern inline public static function setCursorPos(localPos:ImVec2):Void {
        imguics.ImGui.setCursorPos(localPos);
    }
    extern inline public static function setCursorPosX(localX:Float):Void {
        imguics.ImGui.setCursorPosX(localX);
    }
    extern inline public static function setCursorPosY(localY:Float):Void {
        imguics.ImGui.setCursorPosY(localY);
    }
    extern inline public static function getCursorStartPos():ImVec2 {
        return imguics.ImGui.getCursorStartPos();
    }
    extern inline public static function separator():Void {
        imguics.ImGui.separator();
    }
    extern inline public static function sameLineEx(offsetFromStartX:Float = 0.0, spacing:Float = -1.0):Void {
        imguics.ImGui.sameLineEx(offsetFromStartX, spacing);
    }
    extern inline public static function sameLine():Void {
        imguics.ImGui.sameLine();
    }
    extern inline public static function newLine():Void {
        imguics.ImGui.newLine();
    }
    extern inline public static function spacing():Void {
        imguics.ImGui.spacing();
    }
    extern inline public static function dummy(size:ImVec2):Void {
        imguics.ImGui.dummy(size);
    }
    extern inline public static function indentEx(indentW:Float = 0.0):Void {
        imguics.ImGui.indentEx(indentW);
    }
    extern inline public static function indent():Void {
        imguics.ImGui.indent();
    }
    extern inline public static function unindentEx(indentW:Float = 0.0):Void {
        imguics.ImGui.unindentEx(indentW);
    }
    extern inline public static function unindent():Void {
        imguics.ImGui.unindent();
    }
    extern inline public static function beginGroup():Void {
        imguics.ImGui.beginGroup();
    }
    extern inline public static function endGroup():Void {
        imguics.ImGui.endGroup();
    }
    extern inline public static function alignTextToFramePadding():Void {
        imguics.ImGui.alignTextToFramePadding();
    }
    extern inline public static function getTextLineHeight():Float {
        return imguics.ImGui.getTextLineHeight();
    }
    extern inline public static function getTextLineHeightWithSpacing():Float {
        return imguics.ImGui.getTextLineHeightWithSpacing();
    }
    extern inline public static function getFrameHeight():Float {
        return imguics.ImGui.getFrameHeight();
    }
    extern inline public static function getFrameHeightWithSpacing():Float {
        return imguics.ImGui.getFrameHeightWithSpacing();
    }
    extern inline public static function pushID(strId:String):Void {
        imguics.ImGui.pushID(strId);
    }
    extern inline public static function pushIDStr(strIdBegin:String, strIdEnd:String):Void {
        imguics.ImGui.pushIDStr(strIdBegin, strIdEnd);
    }
    extern inline public static function pushIDPtr(ptrId:Float):Void {
        imguics.ImGui.pushIDPtr(ptrId);
    }
    extern inline public static function pushIDInt(intId:Int):Void {
        imguics.ImGui.pushIDInt(intId);
    }
    extern inline public static function popID():Void {
        imguics.ImGui.popID();
    }
    extern inline public static function getID(strId:String):Int {
        return imguics.ImGui.getID(strId);
    }
    extern inline public static function getIDStr(strIdBegin:String, strIdEnd:String):Int {
        return imguics.ImGui.getIDStr(strIdBegin, strIdEnd);
    }
    extern inline public static function getIDPtr(ptrId:Float):Int {
        return imguics.ImGui.getIDPtr(ptrId);
    }
    extern inline public static function getIDInt(intId:Int):Int {
        return imguics.ImGui.getIDInt(intId);
    }
    extern inline public static function text(text:String, textEnd:String = null):Void {
        imguics.ImGui.text(text, textEnd);
    }
    extern inline public static function textUnformatted(text:String):Void {
        imguics.ImGui.textUnformatted(text);
    }
    extern inline public static function textColored(col:ImVec4, text:String):Void {
        imguics.ImGui.textColored(col, text);
    }
    extern inline public static function textDisabled(text:String):Void {
        imguics.ImGui.textDisabled(text);
    }
    extern inline public static function textWrapped(text:String):Void {
        imguics.ImGui.textWrapped(text);
    }
    extern inline public static function labelText(label:String, text:String):Void {
        imguics.ImGui.labelText(label, text);
    }
    extern inline public static function bulletText(text:String):Void {
        imguics.ImGui.bulletText(text);
    }
    extern inline public static function separatorText(label:String):Void {
        imguics.ImGui.separatorText(label);
    }
    extern inline public static function buttonEx(label:String, size:ImVec2):Bool {
        return imguics.ImGui.buttonEx(label, size);
    }
    extern inline public static function button(label:String):Bool {
        return imguics.ImGui.button(label);
    }
    extern inline public static function smallButton(label:String):Bool {
        return imguics.ImGui.smallButton(label);
    }
    extern inline public static function invisibleButton(strId:String, size:ImVec2, flags:Int = 0):Bool {
        return imguics.ImGui.invisibleButton(strId, size, flags);
    }
    extern inline public static function arrowButton(strId:String, dir:Int):Bool {
        return imguics.ImGui.arrowButton(strId, dir);
    }
    extern inline public static function radioButton(label:String, active:Bool):Bool {
        return imguics.ImGui.radioButton(label, active);
    }
    extern inline public static function progressBar(fraction:Float, sizeArg:ImVec2, overlay:String = null):Void {
        imguics.ImGui.progressBar(fraction, sizeArg, overlay);
    }
    extern inline public static function bullet():Void {
        imguics.ImGui.bullet();
    }
    extern inline public static function textLink(label:String):Bool {
        return imguics.ImGui.textLink(label);
    }
    extern inline public static function textLinkOpenURLEx(label:String, url:String = null):Bool {
        return imguics.ImGui.textLinkOpenURLEx(label, url);
    }
    extern inline public static function textLinkOpenURL(label:String):Bool {
        return imguics.ImGui.textLinkOpenURL(label);
    }
    extern inline public static function imageEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2):Void {
        imguics.ImGui.imageEx(texRef, imageSize, uv0, uv1);
    }
    extern inline public static function image(texRef:ImTextureRef, imageSize:ImVec2):Void {
        imguics.ImGui.image(texRef, imageSize);
    }
    extern inline public static function imageWithBgEx(texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Void {
        imguics.ImGui.imageWithBgEx(texRef, imageSize, uv0, uv1, bgCol, tintCol);
    }
    extern inline public static function imageWithBg(texRef:ImTextureRef, imageSize:ImVec2):Void {
        imguics.ImGui.imageWithBg(texRef, imageSize);
    }
    extern inline public static function imageButtonEx(strId:String, texRef:ImTextureRef, imageSize:ImVec2, uv0:ImVec2, uv1:ImVec2, bgCol:ImVec4, tintCol:ImVec4):Bool {
        return imguics.ImGui.imageButtonEx(strId, texRef, imageSize, uv0, uv1, bgCol, tintCol);
    }
    extern inline public static function imageButton(strId:String, texRef:ImTextureRef, imageSize:ImVec2):Bool {
        return imguics.ImGui.imageButton(strId, texRef, imageSize);
    }
    extern inline public static function beginCombo(label:String, previewValue:String, flags:Int = 0):Bool {
        return imguics.ImGui.beginCombo(label, previewValue, flags);
    }
    extern inline public static function endCombo():Void {
        imguics.ImGui.endCombo();
    }
    extern inline public static function comboCharEx(label:String, currentItem:Float, items:Float = 0, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        return imguics.ImGui.comboCharEx(label, currentItem, items, itemsCount, popupMaxHeightInItems);
    }
    extern inline public static function comboChar(label:String, currentItem:Float, items:Float = 0, itemsCount:Int):Bool {
        return imguics.ImGui.comboChar(label, currentItem, items, itemsCount);
    }
    extern inline public static function comboCallbackEx(label:String, currentItem:Float, getter:Float, userData:Float, itemsCount:Int, popupMaxHeightInItems:Int = -1):Bool {
        return imguics.ImGui.comboCallbackEx(label, currentItem, getter, userData, itemsCount, popupMaxHeightInItems);
    }
    extern inline public static function comboCallback(label:String, currentItem:Float, getter:Float, userData:Float, itemsCount:Int):Bool {
        return imguics.ImGui.comboCallback(label, currentItem, getter, userData, itemsCount);
    }
    public static function dragFloat2Ex(label:String, v:Array<Float>, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...2) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragFloat2Ex(label, imguics.ImGuiCs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...2) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragFloat2(label:String, v:Array<Float>):Bool {
        for (_i in 0...2) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragFloat2(label, imguics.ImGuiCs.arrScratchA);
        for (_i in 0...2) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragFloat3Ex(label:String, v:Array<Float>, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragFloat3Ex(label, imguics.ImGuiCs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...3) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragFloat3(label:String, v:Array<Float>):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragFloat3(label, imguics.ImGuiCs.arrScratchA);
        for (_i in 0...3) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragFloat4Ex(label:String, v:Array<Float>, vSpeed:Float = 1.0, vMin:Float = 0.0, vMax:Float = 0.0, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragFloat4Ex(label, imguics.ImGuiCs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...4) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragFloat4(label:String, v:Array<Float>):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragFloat4(label, imguics.ImGuiCs.arrScratchA);
        for (_i in 0...4) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt2Ex(label:String, v:Array<Int>, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...2) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragInt2Ex(label, imguics.ImGuiCs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...2) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt2(label:String, v:Array<Int>):Bool {
        for (_i in 0...2) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragInt2(label, imguics.ImGuiCs.arrScratchA);
        for (_i in 0...2) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt3Ex(label:String, v:Array<Int>, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragInt3Ex(label, imguics.ImGuiCs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...3) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt3(label:String, v:Array<Int>):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragInt3(label, imguics.ImGuiCs.arrScratchA);
        for (_i in 0...3) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt4Ex(label:String, v:Array<Int>, vSpeed:Float = 1.0, vMin:Int = 0, vMax:Int = 0, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragInt4Ex(label, imguics.ImGuiCs.arrScratchA, vSpeed, vMin, vMax, format, flags);
        for (_i in 0...4) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function dragInt4(label:String, v:Array<Int>):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.dragInt4(label, imguics.ImGuiCs.arrScratchA);
        for (_i in 0...4) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    extern inline public static function dragScalarEx(label:String, dataType:Int, pData:Float, vSpeed:Float = 1.0, pMin:Float = 0, pMax:Float = 0, format:String = null, flags:Int = 0):Bool {
        return imguics.ImGui.dragScalarEx(label, dataType, pData, vSpeed, pMin, pMax, format, flags);
    }
    extern inline public static function dragScalar(label:String, dataType:Int, pData:Float):Bool {
        return imguics.ImGui.dragScalar(label, dataType, pData);
    }
    extern inline public static function dragScalarNEx(label:String, dataType:Int, pData:Float, components:Int, vSpeed:Float = 1.0, pMin:Float = 0, pMax:Float = 0, format:String = null, flags:Int = 0):Bool {
        return imguics.ImGui.dragScalarNEx(label, dataType, pData, components, vSpeed, pMin, pMax, format, flags);
    }
    extern inline public static function dragScalarN(label:String, dataType:Int, pData:Float, components:Int):Bool {
        return imguics.ImGui.dragScalarN(label, dataType, pData, components);
    }
    public static function sliderFloat2Ex(label:String, v:Array<Float>, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...2) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderFloat2Ex(label, imguics.ImGuiCs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...2) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderFloat2(label:String, v:Array<Float>, vMin:Float, vMax:Float):Bool {
        for (_i in 0...2) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderFloat2(label, imguics.ImGuiCs.arrScratchA, vMin, vMax);
        for (_i in 0...2) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderFloat3Ex(label:String, v:Array<Float>, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderFloat3Ex(label, imguics.ImGuiCs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...3) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderFloat3(label:String, v:Array<Float>, vMin:Float, vMax:Float):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderFloat3(label, imguics.ImGuiCs.arrScratchA, vMin, vMax);
        for (_i in 0...3) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderFloat4Ex(label:String, v:Array<Float>, vMin:Float, vMax:Float, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderFloat4Ex(label, imguics.ImGuiCs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...4) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderFloat4(label:String, v:Array<Float>, vMin:Float, vMax:Float):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderFloat4(label, imguics.ImGuiCs.arrScratchA, vMin, vMax);
        for (_i in 0...4) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt2Ex(label:String, v:Array<Int>, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...2) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderInt2Ex(label, imguics.ImGuiCs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...2) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt2(label:String, v:Array<Int>, vMin:Int, vMax:Int):Bool {
        for (_i in 0...2) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderInt2(label, imguics.ImGuiCs.arrScratchA, vMin, vMax);
        for (_i in 0...2) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt3Ex(label:String, v:Array<Int>, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderInt3Ex(label, imguics.ImGuiCs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...3) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt3(label:String, v:Array<Int>, vMin:Int, vMax:Int):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderInt3(label, imguics.ImGuiCs.arrScratchA, vMin, vMax);
        for (_i in 0...3) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt4Ex(label:String, v:Array<Int>, vMin:Int, vMax:Int, format:String = "%d", flags:Int = 0):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderInt4Ex(label, imguics.ImGuiCs.arrScratchA, vMin, vMax, format, flags);
        for (_i in 0...4) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function sliderInt4(label:String, v:Array<Int>, vMin:Int, vMax:Int):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.sliderInt4(label, imguics.ImGuiCs.arrScratchA, vMin, vMax);
        for (_i in 0...4) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    extern inline public static function sliderScalarEx(label:String, dataType:Int, pData:Float, pMin:Float, pMax:Float, format:String = null, flags:Int = 0):Bool {
        return imguics.ImGui.sliderScalarEx(label, dataType, pData, pMin, pMax, format, flags);
    }
    extern inline public static function sliderScalar(label:String, dataType:Int, pData:Float, pMin:Float, pMax:Float):Bool {
        return imguics.ImGui.sliderScalar(label, dataType, pData, pMin, pMax);
    }
    extern inline public static function sliderScalarNEx(label:String, dataType:Int, pData:Float, components:Int, pMin:Float, pMax:Float, format:String = null, flags:Int = 0):Bool {
        return imguics.ImGui.sliderScalarNEx(label, dataType, pData, components, pMin, pMax, format, flags);
    }
    extern inline public static function sliderScalarN(label:String, dataType:Int, pData:Float, components:Int, pMin:Float, pMax:Float):Bool {
        return imguics.ImGui.sliderScalarN(label, dataType, pData, components, pMin, pMax);
    }
    extern inline public static function vSliderScalarEx(label:String, size:ImVec2, dataType:Int, pData:Float, pMin:Float, pMax:Float, format:String = null, flags:Int = 0):Bool {
        return imguics.ImGui.vSliderScalarEx(label, size, dataType, pData, pMin, pMax, format, flags);
    }
    extern inline public static function vSliderScalar(label:String, size:ImVec2, dataType:Int, pData:Float, pMin:Float, pMax:Float):Bool {
        return imguics.ImGui.vSliderScalar(label, size, dataType, pData, pMin, pMax);
    }
    public static function inputFloat2Ex(label:String, v:Array<Float>, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...2) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.inputFloat2Ex(label, imguics.ImGuiCs.arrScratchA, format, flags);
        for (_i in 0...2) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputFloat2(label:String, v:Array<Float>):Bool {
        for (_i in 0...2) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.inputFloat2(label, imguics.ImGuiCs.arrScratchA);
        for (_i in 0...2) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputFloat3Ex(label:String, v:Array<Float>, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.inputFloat3Ex(label, imguics.ImGuiCs.arrScratchA, format, flags);
        for (_i in 0...3) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputFloat3(label:String, v:Array<Float>):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.inputFloat3(label, imguics.ImGuiCs.arrScratchA);
        for (_i in 0...3) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputFloat4Ex(label:String, v:Array<Float>, format:String = "%.3f", flags:Int = 0):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.inputFloat4Ex(label, imguics.ImGuiCs.arrScratchA, format, flags);
        for (_i in 0...4) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputFloat4(label:String, v:Array<Float>):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.inputFloat4(label, imguics.ImGuiCs.arrScratchA);
        for (_i in 0...4) v[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputInt2(label:String, v:Array<Int>, flags:Int = 0):Bool {
        for (_i in 0...2) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.inputInt2(label, imguics.ImGuiCs.arrScratchA, flags);
        for (_i in 0...2) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputInt3(label:String, v:Array<Int>, flags:Int = 0):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.inputInt3(label, imguics.ImGuiCs.arrScratchA, flags);
        for (_i in 0...3) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function inputInt4(label:String, v:Array<Int>, flags:Int = 0):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setI32(imguics.ImGuiCs.arrScratchA + (_i << 2), v[_i]);
        var _imret = imguics.ImGui.inputInt4(label, imguics.ImGuiCs.arrScratchA, flags);
        for (_i in 0...4) v[_i] = imguics.ImGuiCs.getI32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    extern inline public static function inputScalarEx(label:String, dataType:Int, pData:Float, pStep:Float = 0, pStepFast:Float = 0, format:String = null, flags:Int = 0):Bool {
        return imguics.ImGui.inputScalarEx(label, dataType, pData, pStep, pStepFast, format, flags);
    }
    extern inline public static function inputScalar(label:String, dataType:Int, pData:Float):Bool {
        return imguics.ImGui.inputScalar(label, dataType, pData);
    }
    extern inline public static function inputScalarNEx(label:String, dataType:Int, pData:Float, components:Int, pStep:Float = 0, pStepFast:Float = 0, format:String = null, flags:Int = 0):Bool {
        return imguics.ImGui.inputScalarNEx(label, dataType, pData, components, pStep, pStepFast, format, flags);
    }
    extern inline public static function inputScalarN(label:String, dataType:Int, pData:Float, components:Int):Bool {
        return imguics.ImGui.inputScalarN(label, dataType, pData, components);
    }
    public static function colorEdit3(label:String, col:Array<Float>, flags:Int = 0):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), col[_i]);
        var _imret = imguics.ImGui.colorEdit3(label, imguics.ImGuiCs.arrScratchA, flags);
        for (_i in 0...3) col[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function colorEdit4(label:String, col:Array<Float>, flags:Int = 0):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), col[_i]);
        var _imret = imguics.ImGui.colorEdit4(label, imguics.ImGuiCs.arrScratchA, flags);
        for (_i in 0...4) col[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function colorPicker3(label:String, col:Array<Float>, flags:Int = 0):Bool {
        for (_i in 0...3) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), col[_i]);
        var _imret = imguics.ImGui.colorPicker3(label, imguics.ImGuiCs.arrScratchA, flags);
        for (_i in 0...3) col[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    public static function colorPicker4(label:String, col:Array<Float>, flags:Int = 0, refCol:Float = 0):Bool {
        for (_i in 0...4) imguics.ImGuiCs.setF32(imguics.ImGuiCs.arrScratchA + (_i << 2), col[_i]);
        var _imret = imguics.ImGui.colorPicker4(label, imguics.ImGuiCs.arrScratchA, flags, refCol);
        for (_i in 0...4) col[_i] = imguics.ImGuiCs.getF32(imguics.ImGuiCs.arrScratchA + (_i << 2));
        return _imret;
    }
    extern inline public static function colorButtonEx(descId:String, col:ImVec4, flags:Int = 0, size:ImVec2):Bool {
        return imguics.ImGui.colorButtonEx(descId, col, flags, size);
    }
    extern inline public static function colorButton(descId:String, col:ImVec4, flags:Int = 0):Bool {
        return imguics.ImGui.colorButton(descId, col, flags);
    }
    extern inline public static function setColorEditOptions(flags:Int):Void {
        imguics.ImGui.setColorEditOptions(flags);
    }
    extern inline public static function treeNode(label:String):Bool {
        return imguics.ImGui.treeNode(label);
    }
    extern inline public static function treeNodeStr(strId:String, text:String):Bool {
        return imguics.ImGui.treeNodeStr(strId, text);
    }
    extern inline public static function treeNodePtr(ptrId:Float, text:String):Bool {
        return imguics.ImGui.treeNodePtr(ptrId, text);
    }
    extern inline public static function treeNodeEx(label:String, flags:Int = 0):Bool {
        return imguics.ImGui.treeNodeEx(label, flags);
    }
    extern inline public static function treeNodeExStr(strId:String, flags:Int, text:String):Bool {
        return imguics.ImGui.treeNodeExStr(strId, flags, text);
    }
    extern inline public static function treeNodeExPtr(ptrId:Float, flags:Int, text:String):Bool {
        return imguics.ImGui.treeNodeExPtr(ptrId, flags, text);
    }
    extern inline public static function treePush(strId:String):Void {
        imguics.ImGui.treePush(strId);
    }
    extern inline public static function treePushPtr(ptrId:Float):Void {
        imguics.ImGui.treePushPtr(ptrId);
    }
    extern inline public static function treePop():Void {
        imguics.ImGui.treePop();
    }
    extern inline public static function getTreeNodeToLabelSpacing():Float {
        return imguics.ImGui.getTreeNodeToLabelSpacing();
    }
    extern inline public static function collapsingHeader(label:String, flags:Int = 0):Bool {
        return imguics.ImGui.collapsingHeader(label, flags);
    }
    extern inline public static function setNextItemOpen(isOpen:Bool, cond:Int = 0):Void {
        imguics.ImGui.setNextItemOpen(isOpen, cond);
    }
    extern inline public static function setNextItemStorageID(storageId:Int):Void {
        imguics.ImGui.setNextItemStorageID(storageId);
    }
    extern inline public static function treeNodeGetOpen(storageId:Int):Bool {
        return imguics.ImGui.treeNodeGetOpen(storageId);
    }
    extern inline public static function selectableEx(label:String, selected:Bool = false, flags:Int = 0, size:ImVec2):Bool {
        return imguics.ImGui.selectableEx(label, selected, flags, size);
    }
    extern inline public static function selectable(label:String):Bool {
        return imguics.ImGui.selectable(label);
    }
    extern inline public static function beginMultiSelectEx(flags:Int, selectionSize:Int = -1, itemsCount:Int = -1):ImGuiMultiSelectIO {
        return imguics.ImGui.beginMultiSelectEx(flags, selectionSize, itemsCount);
    }
    extern inline public static function beginMultiSelect(flags:Int):ImGuiMultiSelectIO {
        return imguics.ImGui.beginMultiSelect(flags);
    }
    extern inline public static function endMultiSelect():ImGuiMultiSelectIO {
        return imguics.ImGui.endMultiSelect();
    }
    extern inline public static function setNextItemSelectionUserData(selectionUserData:Float):Void {
        imguics.ImGui.setNextItemSelectionUserData(selectionUserData);
    }
    extern inline public static function isItemToggledSelection():Bool {
        return imguics.ImGui.isItemToggledSelection();
    }
    extern inline public static function beginListBox(label:String, size:ImVec2):Bool {
        return imguics.ImGui.beginListBox(label, size);
    }
    extern inline public static function endListBox():Void {
        imguics.ImGui.endListBox();
    }
    extern inline public static function listBox(label:String, currentItem:Float, items:Float = 0, itemsCount:Int, heightInItems:Int = -1):Bool {
        return imguics.ImGui.listBox(label, currentItem, items, itemsCount, heightInItems);
    }
    extern inline public static function listBoxCallbackEx(label:String, currentItem:Float, getter:Float, userData:Float, itemsCount:Int, heightInItems:Int = -1):Bool {
        return imguics.ImGui.listBoxCallbackEx(label, currentItem, getter, userData, itemsCount, heightInItems);
    }
    extern inline public static function listBoxCallback(label:String, currentItem:Float, getter:Float, userData:Float, itemsCount:Int):Bool {
        return imguics.ImGui.listBoxCallback(label, currentItem, getter, userData, itemsCount);
    }
    extern inline public static function plotLinesEx(label:String, values:Array<Float>, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        imguics.ImGui.plotLinesEx(label, imguics.ImGuiCs.floatsDyn(values), values.length, valuesOffset, overlayText, scaleMin, scaleMax, graphSize, stride);
    }
    extern inline public static function plotLines(label:String, values:Array<Float>):Void {
        imguics.ImGui.plotLines(label, imguics.ImGuiCs.floatsDyn(values), values.length);
    }
    extern inline public static function plotLinesCallbackEx(label:String, valuesGetter:Float, data:Float, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2):Void {
        imguics.ImGui.plotLinesCallbackEx(label, valuesGetter, data, valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize);
    }
    extern inline public static function plotLinesCallback(label:String, valuesGetter:Float, data:Float, valuesCount:Int):Void {
        imguics.ImGui.plotLinesCallback(label, valuesGetter, data, valuesCount);
    }
    extern inline public static function plotHistogramEx(label:String, values:Array<Float>, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2, stride:Int = 4):Void {
        imguics.ImGui.plotHistogramEx(label, imguics.ImGuiCs.floatsDyn(values), values.length, valuesOffset, overlayText, scaleMin, scaleMax, graphSize, stride);
    }
    extern inline public static function plotHistogram(label:String, values:Array<Float>):Void {
        imguics.ImGui.plotHistogram(label, imguics.ImGuiCs.floatsDyn(values), values.length);
    }
    extern inline public static function plotHistogramCallbackEx(label:String, valuesGetter:Float, data:Float, valuesCount:Int, valuesOffset:Int = 0, overlayText:String = null, scaleMin:Float = 3.402823466e+38, scaleMax:Float = 3.402823466e+38, graphSize:ImVec2):Void {
        imguics.ImGui.plotHistogramCallbackEx(label, valuesGetter, data, valuesCount, valuesOffset, overlayText, scaleMin, scaleMax, graphSize);
    }
    extern inline public static function plotHistogramCallback(label:String, valuesGetter:Float, data:Float, valuesCount:Int):Void {
        imguics.ImGui.plotHistogramCallback(label, valuesGetter, data, valuesCount);
    }
    extern inline public static function beginMenuBar():Bool {
        return imguics.ImGui.beginMenuBar();
    }
    extern inline public static function endMenuBar():Void {
        imguics.ImGui.endMenuBar();
    }
    extern inline public static function beginMainMenuBar():Bool {
        return imguics.ImGui.beginMainMenuBar();
    }
    extern inline public static function endMainMenuBar():Void {
        imguics.ImGui.endMainMenuBar();
    }
    extern inline public static function beginMenuEx(label:String, enabled:Bool = true):Bool {
        return imguics.ImGui.beginMenuEx(label, enabled);
    }
    extern inline public static function beginMenu(label:String):Bool {
        return imguics.ImGui.beginMenu(label);
    }
    extern inline public static function endMenu():Void {
        imguics.ImGui.endMenu();
    }
    extern inline public static function menuItemEx(label:String, shortcut:String = null, selected:Bool = false, enabled:Bool = true):Bool {
        return imguics.ImGui.menuItemEx(label, shortcut, selected, enabled);
    }
    extern inline public static function menuItem(label:String):Bool {
        return imguics.ImGui.menuItem(label);
    }
    extern inline public static function beginTooltip():Bool {
        return imguics.ImGui.beginTooltip();
    }
    extern inline public static function endTooltip():Void {
        imguics.ImGui.endTooltip();
    }
    extern inline public static function setTooltip(text:String):Void {
        imguics.ImGui.setTooltip(text);
    }
    extern inline public static function beginItemTooltip():Bool {
        return imguics.ImGui.beginItemTooltip();
    }
    extern inline public static function setItemTooltip(text:String):Void {
        imguics.ImGui.setItemTooltip(text);
    }
    extern inline public static function beginPopup(strId:String, flags:Int = 0):Bool {
        return imguics.ImGui.beginPopup(strId, flags);
    }
    extern inline public static function endPopup():Void {
        imguics.ImGui.endPopup();
    }
    extern inline public static function openPopup(strId:String, popupFlags:Int = 0):Void {
        imguics.ImGui.openPopup(strId, popupFlags);
    }
    extern inline public static function openPopupID(id:Int, popupFlags:Int = 0):Void {
        imguics.ImGui.openPopupID(id, popupFlags);
    }
    extern inline public static function openPopupOnItemClick(strId:String = null, popupFlags:Int = 0):Void {
        imguics.ImGui.openPopupOnItemClick(strId, popupFlags);
    }
    extern inline public static function closeCurrentPopup():Void {
        imguics.ImGui.closeCurrentPopup();
    }
    extern inline public static function beginPopupContextItemEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguics.ImGui.beginPopupContextItemEx(strId, popupFlags);
    }
    extern inline public static function beginPopupContextItem():Bool {
        return imguics.ImGui.beginPopupContextItem();
    }
    extern inline public static function beginPopupContextWindowEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguics.ImGui.beginPopupContextWindowEx(strId, popupFlags);
    }
    extern inline public static function beginPopupContextWindow():Bool {
        return imguics.ImGui.beginPopupContextWindow();
    }
    extern inline public static function beginPopupContextVoidEx(strId:String = null, popupFlags:Int = 0):Bool {
        return imguics.ImGui.beginPopupContextVoidEx(strId, popupFlags);
    }
    extern inline public static function beginPopupContextVoid():Bool {
        return imguics.ImGui.beginPopupContextVoid();
    }
    extern inline public static function isPopupOpen(strId:String, flags:Int = 0):Bool {
        return imguics.ImGui.isPopupOpen(strId, flags);
    }
    extern inline public static function beginTableEx(strId:String, columns:Int, flags:Int = 0, outerSize:ImVec2, innerWidth:Float = 0.0):Bool {
        return imguics.ImGui.beginTableEx(strId, columns, flags, outerSize, innerWidth);
    }
    extern inline public static function beginTable(strId:String, columns:Int, flags:Int = 0):Bool {
        return imguics.ImGui.beginTable(strId, columns, flags);
    }
    extern inline public static function endTable():Void {
        imguics.ImGui.endTable();
    }
    extern inline public static function tableNextRowEx(rowFlags:Int = 0, minRowHeight:Float = 0.0):Void {
        imguics.ImGui.tableNextRowEx(rowFlags, minRowHeight);
    }
    extern inline public static function tableNextRow():Void {
        imguics.ImGui.tableNextRow();
    }
    extern inline public static function tableNextColumn():Bool {
        return imguics.ImGui.tableNextColumn();
    }
    extern inline public static function tableSetColumnIndex(columnN:Int):Bool {
        return imguics.ImGui.tableSetColumnIndex(columnN);
    }
    extern inline public static function tableSetupColumnEx(label:String, flags:Int = 0, initWidthOrWeight:Float = 0.0, userId:Int = 0):Void {
        imguics.ImGui.tableSetupColumnEx(label, flags, initWidthOrWeight, userId);
    }
    extern inline public static function tableSetupColumn(label:String, flags:Int = 0):Void {
        imguics.ImGui.tableSetupColumn(label, flags);
    }
    extern inline public static function tableSetupScrollFreeze(cols:Int, rows:Int):Void {
        imguics.ImGui.tableSetupScrollFreeze(cols, rows);
    }
    extern inline public static function tableHeader(label:String):Void {
        imguics.ImGui.tableHeader(label);
    }
    extern inline public static function tableHeadersRow():Void {
        imguics.ImGui.tableHeadersRow();
    }
    extern inline public static function tableAngledHeadersRow():Void {
        imguics.ImGui.tableAngledHeadersRow();
    }
    extern inline public static function tableGetSortSpecs():ImGuiTableSortSpecs {
        return imguics.ImGui.tableGetSortSpecs();
    }
    extern inline public static function tableGetColumnCount():Int {
        return imguics.ImGui.tableGetColumnCount();
    }
    extern inline public static function tableGetColumnIndex():Int {
        return imguics.ImGui.tableGetColumnIndex();
    }
    extern inline public static function tableGetRowIndex():Int {
        return imguics.ImGui.tableGetRowIndex();
    }
    extern inline public static function tableGetColumnName(columnN:Int = -1):String {
        return imguics.ImGui.tableGetColumnName(columnN);
    }
    extern inline public static function tableGetColumnFlags(columnN:Int = -1):Int {
        return imguics.ImGui.tableGetColumnFlags(columnN);
    }
    extern inline public static function tableSetColumnEnabled(columnN:Int, v:Bool):Void {
        imguics.ImGui.tableSetColumnEnabled(columnN, v);
    }
    extern inline public static function tableGetHoveredColumn():Int {
        return imguics.ImGui.tableGetHoveredColumn();
    }
    extern inline public static function tableSetBgColor(target:Int, color:Int, columnN:Int = -1):Void {
        imguics.ImGui.tableSetBgColor(target, color, columnN);
    }
    extern inline public static function columnsEx(count:Int = 1, id:String = null, borders:Bool = true):Void {
        imguics.ImGui.columnsEx(count, id, borders);
    }
    extern inline public static function columns():Void {
        imguics.ImGui.columns();
    }
    extern inline public static function nextColumn():Void {
        imguics.ImGui.nextColumn();
    }
    extern inline public static function getColumnIndex():Int {
        return imguics.ImGui.getColumnIndex();
    }
    extern inline public static function getColumnWidth(columnIndex:Int = -1):Float {
        return imguics.ImGui.getColumnWidth(columnIndex);
    }
    extern inline public static function setColumnWidth(columnIndex:Int, width:Float):Void {
        imguics.ImGui.setColumnWidth(columnIndex, width);
    }
    extern inline public static function getColumnOffset(columnIndex:Int = -1):Float {
        return imguics.ImGui.getColumnOffset(columnIndex);
    }
    extern inline public static function setColumnOffset(columnIndex:Int, offsetX:Float):Void {
        imguics.ImGui.setColumnOffset(columnIndex, offsetX);
    }
    extern inline public static function getColumnsCount():Int {
        return imguics.ImGui.getColumnsCount();
    }
    extern inline public static function beginTabBar(strId:String, flags:Int = 0):Bool {
        return imguics.ImGui.beginTabBar(strId, flags);
    }
    extern inline public static function endTabBar():Void {
        imguics.ImGui.endTabBar();
    }
    extern inline public static function endTabItem():Void {
        imguics.ImGui.endTabItem();
    }
    extern inline public static function tabItemButton(label:String, flags:Int = 0):Bool {
        return imguics.ImGui.tabItemButton(label, flags);
    }
    extern inline public static function setTabItemClosed(tabOrDockedWindowLabel:String):Void {
        imguics.ImGui.setTabItemClosed(tabOrDockedWindowLabel);
    }
    extern inline public static function dockSpaceEx(dockspaceId:Int, size:ImVec2, flags:Int = 0, windowClass:ImGuiWindowClass = 0):Int {
        return imguics.ImGui.dockSpaceEx(dockspaceId, size, flags, windowClass);
    }
    extern inline public static function dockSpace(dockspaceId:Int):Int {
        return imguics.ImGui.dockSpace(dockspaceId);
    }
    extern inline public static function dockSpaceOverViewportEx(dockspaceId:Int = 0, viewport:ImGuiViewport = 0, flags:Int = 0, windowClass:ImGuiWindowClass = 0):Int {
        return imguics.ImGui.dockSpaceOverViewportEx(dockspaceId, viewport, flags, windowClass);
    }
    extern inline public static function dockSpaceOverViewport():Int {
        return imguics.ImGui.dockSpaceOverViewport();
    }
    extern inline public static function setNextWindowDockID(dockId:Int, cond:Int = 0):Void {
        imguics.ImGui.setNextWindowDockID(dockId, cond);
    }
    extern inline public static function setNextWindowClass(windowClass:ImGuiWindowClass):Void {
        imguics.ImGui.setNextWindowClass(windowClass);
    }
    extern inline public static function getWindowDockID():Int {
        return imguics.ImGui.getWindowDockID();
    }
    extern inline public static function isWindowDocked():Bool {
        return imguics.ImGui.isWindowDocked();
    }
    extern inline public static function logToTTY(autoOpenDepth:Int = -1):Void {
        imguics.ImGui.logToTTY(autoOpenDepth);
    }
    extern inline public static function logToFile(autoOpenDepth:Int = -1, filename:String = null):Void {
        imguics.ImGui.logToFile(autoOpenDepth, filename);
    }
    extern inline public static function logToClipboard(autoOpenDepth:Int = -1):Void {
        imguics.ImGui.logToClipboard(autoOpenDepth);
    }
    extern inline public static function logFinish():Void {
        imguics.ImGui.logFinish();
    }
    extern inline public static function logButtons():Void {
        imguics.ImGui.logButtons();
    }
    extern inline public static function logText(text:String):Void {
        imguics.ImGui.logText(text);
    }
    extern inline public static function beginDragDropSource(flags:Int = 0):Bool {
        return imguics.ImGui.beginDragDropSource(flags);
    }
    extern inline public static function setDragDropPayload(type:String, data:Float, sz:Int, cond:Int = 0):Bool {
        return imguics.ImGui.setDragDropPayload(type, data, sz, cond);
    }
    extern inline public static function endDragDropSource():Void {
        imguics.ImGui.endDragDropSource();
    }
    extern inline public static function beginDragDropTarget():Bool {
        return imguics.ImGui.beginDragDropTarget();
    }
    extern inline public static function acceptDragDropPayload(type:String, flags:Int = 0):ImGuiPayload {
        return imguics.ImGui.acceptDragDropPayload(type, flags);
    }
    extern inline public static function endDragDropTarget():Void {
        imguics.ImGui.endDragDropTarget();
    }
    extern inline public static function getDragDropPayload():ImGuiPayload {
        return imguics.ImGui.getDragDropPayload();
    }
    extern inline public static function beginDisabled(disabled:Bool = true):Void {
        imguics.ImGui.beginDisabled(disabled);
    }
    extern inline public static function endDisabled():Void {
        imguics.ImGui.endDisabled();
    }
    extern inline public static function pushClipRect(clipRectMin:ImVec2, clipRectMax:ImVec2, intersectWithCurrentClipRect:Bool):Void {
        imguics.ImGui.pushClipRect(clipRectMin, clipRectMax, intersectWithCurrentClipRect);
    }
    extern inline public static function popClipRect():Void {
        imguics.ImGui.popClipRect();
    }
    extern inline public static function setItemDefaultFocus():Void {
        imguics.ImGui.setItemDefaultFocus();
    }
    extern inline public static function setKeyboardFocusHereEx(offset:Int = 0):Void {
        imguics.ImGui.setKeyboardFocusHereEx(offset);
    }
    extern inline public static function setKeyboardFocusHere():Void {
        imguics.ImGui.setKeyboardFocusHere();
    }
    extern inline public static function setNavCursorVisible(visible:Bool):Void {
        imguics.ImGui.setNavCursorVisible(visible);
    }
    extern inline public static function setNextItemAllowOverlap():Void {
        imguics.ImGui.setNextItemAllowOverlap();
    }
    extern inline public static function isItemHovered(flags:Int = 0):Bool {
        return imguics.ImGui.isItemHovered(flags);
    }
    extern inline public static function isItemActive():Bool {
        return imguics.ImGui.isItemActive();
    }
    extern inline public static function isItemFocused():Bool {
        return imguics.ImGui.isItemFocused();
    }
    extern inline public static function isItemClickedEx(mouseButton:Int = 0):Bool {
        return imguics.ImGui.isItemClickedEx(mouseButton);
    }
    extern inline public static function isItemClicked():Bool {
        return imguics.ImGui.isItemClicked();
    }
    extern inline public static function isItemVisible():Bool {
        return imguics.ImGui.isItemVisible();
    }
    extern inline public static function isItemEdited():Bool {
        return imguics.ImGui.isItemEdited();
    }
    extern inline public static function isItemActivated():Bool {
        return imguics.ImGui.isItemActivated();
    }
    extern inline public static function isItemDeactivated():Bool {
        return imguics.ImGui.isItemDeactivated();
    }
    extern inline public static function isItemDeactivatedAfterEdit():Bool {
        return imguics.ImGui.isItemDeactivatedAfterEdit();
    }
    extern inline public static function isItemToggledOpen():Bool {
        return imguics.ImGui.isItemToggledOpen();
    }
    extern inline public static function isAnyItemHovered():Bool {
        return imguics.ImGui.isAnyItemHovered();
    }
    extern inline public static function isAnyItemActive():Bool {
        return imguics.ImGui.isAnyItemActive();
    }
    extern inline public static function isAnyItemFocused():Bool {
        return imguics.ImGui.isAnyItemFocused();
    }
    extern inline public static function getItemID():Int {
        return imguics.ImGui.getItemID();
    }
    extern inline public static function getItemRectMin():ImVec2 {
        return imguics.ImGui.getItemRectMin();
    }
    extern inline public static function getItemRectMax():ImVec2 {
        return imguics.ImGui.getItemRectMax();
    }
    extern inline public static function getItemRectSize():ImVec2 {
        return imguics.ImGui.getItemRectSize();
    }
    extern inline public static function getItemFlags():Int {
        return imguics.ImGui.getItemFlags();
    }
    extern inline public static function getMainViewport():ImGuiViewport {
        return imguics.ImGui.getMainViewport();
    }
    extern inline public static function getBackgroundDrawListEx(viewport:ImGuiViewport = 0):ImDrawList {
        return imguics.ImGui.getBackgroundDrawListEx(viewport);
    }
    extern inline public static function getBackgroundDrawList():ImDrawList {
        return imguics.ImGui.getBackgroundDrawList();
    }
    extern inline public static function getForegroundDrawListEx(viewport:ImGuiViewport = 0):ImDrawList {
        return imguics.ImGui.getForegroundDrawListEx(viewport);
    }
    extern inline public static function getForegroundDrawList():ImDrawList {
        return imguics.ImGui.getForegroundDrawList();
    }
    extern inline public static function isRectVisibleBySize(size:ImVec2):Bool {
        return imguics.ImGui.isRectVisibleBySize(size);
    }
    extern inline public static function isRectVisible(rectMin:ImVec2, rectMax:ImVec2):Bool {
        return imguics.ImGui.isRectVisible(rectMin, rectMax);
    }
    extern inline public static function getTime():Float {
        return imguics.ImGui.getTime();
    }
    extern inline public static function getFrameCount():Int {
        return imguics.ImGui.getFrameCount();
    }
    extern inline public static function getDrawListSharedData():ImDrawListSharedData {
        return imguics.ImGui.getDrawListSharedData();
    }
    extern inline public static function getStyleColorName(idx:Int):String {
        return imguics.ImGui.getStyleColorName(idx);
    }
    extern inline public static function setStateStorage(storage:ImGuiStorage):Void {
        imguics.ImGui.setStateStorage(storage);
    }
    extern inline public static function getStateStorage():ImGuiStorage {
        return imguics.ImGui.getStateStorage();
    }
    extern inline public static function calcTextSizeEx(text:String, textEnd:String = null, hideTextAfterDoubleHash:Bool = false, wrapWidth:Float = -1.0):ImVec2 {
        return imguics.ImGui.calcTextSizeEx(text, textEnd, hideTextAfterDoubleHash, wrapWidth);
    }
    extern inline public static function calcTextSize(text:String):ImVec2 {
        return imguics.ImGui.calcTextSize(text);
    }
    extern inline public static function colorConvertU32ToFloat4(in_:Int):ImVec4 {
        return imguics.ImGui.colorConvertU32ToFloat4(in_);
    }
    extern inline public static function colorConvertFloat4ToU32(in_:ImVec4):Int {
        return imguics.ImGui.colorConvertFloat4ToU32(in_);
    }
    extern inline public static function isKeyDown(key:Int):Bool {
        return imguics.ImGui.isKeyDown(key);
    }
    extern inline public static function isKeyPressedEx(key:Int, repeat:Bool = true):Bool {
        return imguics.ImGui.isKeyPressedEx(key, repeat);
    }
    extern inline public static function isKeyPressed(key:Int):Bool {
        return imguics.ImGui.isKeyPressed(key);
    }
    extern inline public static function isKeyReleased(key:Int):Bool {
        return imguics.ImGui.isKeyReleased(key);
    }
    extern inline public static function isKeyChordPressed(keyChord:Int):Bool {
        return imguics.ImGui.isKeyChordPressed(keyChord);
    }
    extern inline public static function getKeyPressedAmount(key:Int, repeatDelay:Float, rate:Float):Int {
        return imguics.ImGui.getKeyPressedAmount(key, repeatDelay, rate);
    }
    extern inline public static function getKeyName(key:Int):String {
        return imguics.ImGui.getKeyName(key);
    }
    extern inline public static function setNextFrameWantCaptureKeyboard(wantCaptureKeyboard:Bool):Void {
        imguics.ImGui.setNextFrameWantCaptureKeyboard(wantCaptureKeyboard);
    }
    extern inline public static function shortcut(keyChord:Int, flags:Int = 0):Bool {
        return imguics.ImGui.shortcut(keyChord, flags);
    }
    extern inline public static function setNextItemShortcut(keyChord:Int, flags:Int = 0):Void {
        imguics.ImGui.setNextItemShortcut(keyChord, flags);
    }
    extern inline public static function setItemKeyOwner(key:Int):Bool {
        return imguics.ImGui.setItemKeyOwner(key);
    }
    extern inline public static function isMouseDown(button:Int):Bool {
        return imguics.ImGui.isMouseDown(button);
    }
    extern inline public static function isMouseClickedEx(button:Int, repeat:Bool = false):Bool {
        return imguics.ImGui.isMouseClickedEx(button, repeat);
    }
    extern inline public static function isMouseClicked(button:Int):Bool {
        return imguics.ImGui.isMouseClicked(button);
    }
    extern inline public static function isMouseReleased(button:Int):Bool {
        return imguics.ImGui.isMouseReleased(button);
    }
    extern inline public static function isMouseDoubleClicked(button:Int):Bool {
        return imguics.ImGui.isMouseDoubleClicked(button);
    }
    extern inline public static function isMouseReleasedWithDelay(button:Int, delay:Float):Bool {
        return imguics.ImGui.isMouseReleasedWithDelay(button, delay);
    }
    extern inline public static function getMouseClickedCount(button:Int):Int {
        return imguics.ImGui.getMouseClickedCount(button);
    }
    extern inline public static function isMouseHoveringRectEx(rMin:ImVec2, rMax:ImVec2, clip:Bool = true):Bool {
        return imguics.ImGui.isMouseHoveringRectEx(rMin, rMax, clip);
    }
    extern inline public static function isMouseHoveringRect(rMin:ImVec2, rMax:ImVec2):Bool {
        return imguics.ImGui.isMouseHoveringRect(rMin, rMax);
    }
    extern inline public static function isMousePosValid(mousePos:Float = 0):Bool {
        return imguics.ImGui.isMousePosValid(mousePos);
    }
    extern inline public static function isAnyMouseDown():Bool {
        return imguics.ImGui.isAnyMouseDown();
    }
    extern inline public static function getMousePos():ImVec2 {
        return imguics.ImGui.getMousePos();
    }
    extern inline public static function getMousePosOnOpeningCurrentPopup():ImVec2 {
        return imguics.ImGui.getMousePosOnOpeningCurrentPopup();
    }
    extern inline public static function isMouseDragging(button:Int, lockThreshold:Float = -1.0):Bool {
        return imguics.ImGui.isMouseDragging(button, lockThreshold);
    }
    extern inline public static function getMouseDragDelta(button:Int = 0, lockThreshold:Float = -1.0):ImVec2 {
        return imguics.ImGui.getMouseDragDelta(button, lockThreshold);
    }
    extern inline public static function resetMouseDragDeltaEx(button:Int = 0):Void {
        imguics.ImGui.resetMouseDragDeltaEx(button);
    }
    extern inline public static function resetMouseDragDelta():Void {
        imguics.ImGui.resetMouseDragDelta();
    }
    extern inline public static function getMouseCursor():Int {
        return imguics.ImGui.getMouseCursor();
    }
    extern inline public static function setMouseCursor(cursorType:Int):Void {
        imguics.ImGui.setMouseCursor(cursorType);
    }
    extern inline public static function setNextFrameWantCaptureMouse(wantCaptureMouse:Bool):Void {
        imguics.ImGui.setNextFrameWantCaptureMouse(wantCaptureMouse);
    }
    extern inline public static function getClipboardText():String {
        return imguics.ImGui.getClipboardText();
    }
    extern inline public static function setClipboardText(text:String):Void {
        imguics.ImGui.setClipboardText(text);
    }
    extern inline public static function loadIniSettingsFromDisk(iniFilename:String):Void {
        imguics.ImGui.loadIniSettingsFromDisk(iniFilename);
    }
    extern inline public static function loadIniSettingsFromMemory(iniData:String, iniSize:Int):Void {
        imguics.ImGui.loadIniSettingsFromMemory(iniData, iniSize);
    }
    extern inline public static function saveIniSettingsToDisk(iniFilename:String):Void {
        imguics.ImGui.saveIniSettingsToDisk(iniFilename);
    }
    extern inline public static function saveIniSettingsToMemory(outIniSize:Float = 0):String {
        return imguics.ImGui.saveIniSettingsToMemory(outIniSize);
    }
    extern inline public static function debugTextEncoding(text:String):Void {
        imguics.ImGui.debugTextEncoding(text);
    }
    extern inline public static function debugFlashStyleColor(idx:Int):Void {
        imguics.ImGui.debugFlashStyleColor(idx);
    }
    extern inline public static function debugStartItemPicker():Void {
        imguics.ImGui.debugStartItemPicker();
    }
    extern inline public static function debugCheckVersionAndDataLayout(versionStr:String, szIo:Int, szStyle:Int, szVec2:Int, szVec4:Int, szDrawvert:Int, szDrawidx:Int):Bool {
        return imguics.ImGui.debugCheckVersionAndDataLayout(versionStr, szIo, szStyle, szVec2, szVec4, szDrawvert, szDrawidx);
    }
    extern inline public static function debugLog(text:String):Void {
        imguics.ImGui.debugLog(text);
    }
    extern inline public static function setAllocatorFunctions(allocFunc:Float, freeFunc:Float, userData:Float = 0):Void {
        imguics.ImGui.setAllocatorFunctions(allocFunc, freeFunc, userData);
    }
    extern inline public static function getAllocatorFunctions(pAllocFunc:Float, pFreeFunc:Float, pUserData:Float):Void {
        imguics.ImGui.getAllocatorFunctions(pAllocFunc, pFreeFunc, pUserData);
    }
    extern inline public static function memAlloc(size:Int):Float {
        return imguics.ImGui.memAlloc(size);
    }
    extern inline public static function memFree(ptr:Float):Void {
        imguics.ImGui.memFree(ptr);
    }
    extern inline public static function updatePlatformWindows():Void {
        imguics.ImGui.updatePlatformWindows();
    }
    extern inline public static function renderPlatformWindowsDefaultEx(platformRenderArg:Float = 0, rendererRenderArg:Float = 0):Void {
        imguics.ImGui.renderPlatformWindowsDefaultEx(platformRenderArg, rendererRenderArg);
    }
    extern inline public static function renderPlatformWindowsDefault():Void {
        imguics.ImGui.renderPlatformWindowsDefault();
    }
    extern inline public static function destroyPlatformWindows():Void {
        imguics.ImGui.destroyPlatformWindows();
    }
    extern inline public static function findViewportByID(viewportId:Int):ImGuiViewport {
        return imguics.ImGui.findViewportByID(viewportId);
    }
    extern inline public static function findViewportByPlatformHandle(platformHandle:Float):ImGuiViewport {
        return imguics.ImGui.findViewportByPlatformHandle(platformHandle);
    }
    extern inline public static function imVector_Construct(vector:Float):Void {
        imguics.ImGui.imVector_Construct(vector);
    }
    extern inline public static function imVector_Destruct(vector:Float):Void {
        imguics.ImGui.imVector_Destruct(vector);
    }

#end

    /** create Demo window. demonstrate most ImGui features. call this to learn about the library! try to make it always available in your application! */
    public static macro function showDemoWindow(?pOpen:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('showDemoWindow', 'void', [
            { kind: 'ptr:Bool', e: pOpen }
        ]);
    }
    /** create Metrics/Debugger window. display Dear ImGui internals: windows, draw commands, various internal state, etc. */
    public static macro function showMetricsWindow(?pOpen:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('showMetricsWindow', 'void', [
            { kind: 'ptr:Bool', e: pOpen }
        ]);
    }
    /** create Debug Log window. display a simplified log of important dear imgui events. */
    public static macro function showDebugLogWindow(?pOpen:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('showDebugLogWindow', 'void', [
            { kind: 'ptr:Bool', e: pOpen }
        ]);
    }
    /** create Stack Tool window. hover items with mouse to query information about the source of their unique ID. */
    public static macro function showIDStackToolWindowEx(?pOpen:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('showIDStackToolWindowEx', 'void', [
            { kind: 'ptr:Bool', e: pOpen }
        ]);
    }
    /** create About window. display Dear ImGui version, credits and build/system information. */
    public static macro function showAboutWindow(?pOpen:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('showAboutWindow', 'void', [
            { kind: 'ptr:Bool', e: pOpen }
        ]);
    }
    public static macro function begin(name:haxe.macro.Expr, ?pOpen:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('begin', 'value', [
            { kind: 'plain', e: name },
            { kind: 'ptr:Bool', e: pOpen },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    public static macro function checkbox(label:haxe.macro.Expr, v:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('checkbox', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Bool', e: v }
        ]);
    }
    public static macro function checkboxFlagsIntPtr(label:haxe.macro.Expr, flags:haxe.macro.Expr, flagsValue:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('checkboxFlagsIntPtr', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: flags },
            { kind: 'plain', e: flagsValue }
        ]);
    }
    public static macro function checkboxFlagsUintPtr(label:haxe.macro.Expr, flags:haxe.macro.Expr, flagsValue:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('checkboxFlagsUintPtr', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:UInt', e: flags },
            { kind: 'plain', e: flagsValue }
        ]);
    }
    /** shortcut to handle the above pattern when value is an integer */
    public static macro function radioButtonIntPtr(label:haxe.macro.Expr, v:haxe.macro.Expr, vButton:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('radioButtonIntPtr', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: v },
            { kind: 'plain', e: vButton }
        ]);
    }
    /** Separate items with \0 within a string, end item-list with \0\0. e.g. "One\0Two\0Three\0" */
    public static macro function comboEx(label:haxe.macro.Expr, currentItem:haxe.macro.Expr, itemsSeparatedByZeros:haxe.macro.Expr, ?popupMaxHeightInItems:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('comboEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: currentItem },
            { kind: 'plain', e: itemsSeparatedByZeros },
            { kind: 'plain', e: popupMaxHeightInItems, def: '-1' }
        ]);
    }
    /** Implied popup_max_height_in_items = -1 */
    public static macro function combo(label:haxe.macro.Expr, currentItem:haxe.macro.Expr, itemsSeparatedByZeros:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('combo', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: currentItem },
            { kind: 'plain', e: itemsSeparatedByZeros }
        ]);
    }
    /** If v_min >= v_max we have no bound */
    public static macro function dragFloatEx(label:haxe.macro.Expr, v:haxe.macro.Expr, ?vSpeed:haxe.macro.Expr, ?vMin:haxe.macro.Expr, ?vMax:haxe.macro.Expr, ?format:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('dragFloatEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:cpp.Float32', e: v },
            { kind: 'plain', e: vSpeed, def: '1.0' },
            { kind: 'plain', e: vMin, def: '0.0' },
            { kind: 'plain', e: vMax, def: '0.0' },
            { kind: 'plain', e: format, def: '"%.3f"' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", flags = 0 */
    public static macro function dragFloat(label:haxe.macro.Expr, v:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('dragFloat', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:cpp.Float32', e: v }
        ]);
    }
    public static macro function dragFloatRange2Ex(label:haxe.macro.Expr, vCurrentMin:haxe.macro.Expr, vCurrentMax:haxe.macro.Expr, ?vSpeed:haxe.macro.Expr, ?vMin:haxe.macro.Expr, ?vMax:haxe.macro.Expr, ?format:haxe.macro.Expr, ?formatMax:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('dragFloatRange2Ex', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:cpp.Float32', e: vCurrentMin },
            { kind: 'ptr:cpp.Float32', e: vCurrentMax },
            { kind: 'plain', e: vSpeed, def: '1.0' },
            { kind: 'plain', e: vMin, def: '0.0' },
            { kind: 'plain', e: vMax, def: '0.0' },
            { kind: 'plain', e: format, def: '"%.3f"' },
            { kind: 'plain', e: formatMax, def: 'null' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied v_speed = 1.0f, v_min = 0.0f, v_max = 0.0f, format = "%.3f", format_max = NULL, flags = 0 */
    public static macro function dragFloatRange2(label:haxe.macro.Expr, vCurrentMin:haxe.macro.Expr, vCurrentMax:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('dragFloatRange2', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:cpp.Float32', e: vCurrentMin },
            { kind: 'ptr:cpp.Float32', e: vCurrentMax }
        ]);
    }
    /** If v_min >= v_max we have no bound */
    public static macro function dragIntEx(label:haxe.macro.Expr, v:haxe.macro.Expr, ?vSpeed:haxe.macro.Expr, ?vMin:haxe.macro.Expr, ?vMax:haxe.macro.Expr, ?format:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('dragIntEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: v },
            { kind: 'plain', e: vSpeed, def: '1.0' },
            { kind: 'plain', e: vMin, def: '0' },
            { kind: 'plain', e: vMax, def: '0' },
            { kind: 'plain', e: format, def: '"%d"' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", flags = 0 */
    public static macro function dragInt(label:haxe.macro.Expr, v:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('dragInt', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: v }
        ]);
    }
    public static macro function dragIntRange2Ex(label:haxe.macro.Expr, vCurrentMin:haxe.macro.Expr, vCurrentMax:haxe.macro.Expr, ?vSpeed:haxe.macro.Expr, ?vMin:haxe.macro.Expr, ?vMax:haxe.macro.Expr, ?format:haxe.macro.Expr, ?formatMax:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('dragIntRange2Ex', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: vCurrentMin },
            { kind: 'ptr:Int', e: vCurrentMax },
            { kind: 'plain', e: vSpeed, def: '1.0' },
            { kind: 'plain', e: vMin, def: '0' },
            { kind: 'plain', e: vMax, def: '0' },
            { kind: 'plain', e: format, def: '"%d"' },
            { kind: 'plain', e: formatMax, def: 'null' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied v_speed = 1.0f, v_min = 0, v_max = 0, format = "%d", format_max = NULL, flags = 0 */
    public static macro function dragIntRange2(label:haxe.macro.Expr, vCurrentMin:haxe.macro.Expr, vCurrentMax:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('dragIntRange2', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: vCurrentMin },
            { kind: 'ptr:Int', e: vCurrentMax }
        ]);
    }
    /** adjust format to decorate the value with a prefix or a suffix for in-slider labels or unit display. */
    public static macro function sliderFloatEx(label:haxe.macro.Expr, v:haxe.macro.Expr, vMin:haxe.macro.Expr, vMax:haxe.macro.Expr, ?format:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('sliderFloatEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:cpp.Float32', e: v },
            { kind: 'plain', e: vMin },
            { kind: 'plain', e: vMax },
            { kind: 'plain', e: format, def: '"%.3f"' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied format = "%.3f", flags = 0 */
    public static macro function sliderFloat(label:haxe.macro.Expr, v:haxe.macro.Expr, vMin:haxe.macro.Expr, vMax:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('sliderFloat', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:cpp.Float32', e: v },
            { kind: 'plain', e: vMin },
            { kind: 'plain', e: vMax }
        ]);
    }
    public static macro function sliderAngleEx(label:haxe.macro.Expr, vRad:haxe.macro.Expr, ?vDegreesMin:haxe.macro.Expr, vDegreesMax:haxe.macro.Expr, ?format:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('sliderAngleEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:cpp.Float32', e: vRad },
            { kind: 'plain', e: vDegreesMin, def: '-360.0' },
            { kind: 'plain', e: vDegreesMax },
            { kind: 'plain', e: format, def: '"%.0f deg"' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied v_degrees_min = -360.0f, v_degrees_max = +360.0f, format = "%.0f deg", flags = 0 */
    public static macro function sliderAngle(label:haxe.macro.Expr, vRad:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('sliderAngle', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:cpp.Float32', e: vRad }
        ]);
    }
    public static macro function sliderIntEx(label:haxe.macro.Expr, v:haxe.macro.Expr, vMin:haxe.macro.Expr, vMax:haxe.macro.Expr, ?format:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('sliderIntEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: v },
            { kind: 'plain', e: vMin },
            { kind: 'plain', e: vMax },
            { kind: 'plain', e: format, def: '"%d"' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied format = "%d", flags = 0 */
    public static macro function sliderInt(label:haxe.macro.Expr, v:haxe.macro.Expr, vMin:haxe.macro.Expr, vMax:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('sliderInt', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: v },
            { kind: 'plain', e: vMin },
            { kind: 'plain', e: vMax }
        ]);
    }
    public static macro function vSliderFloatEx(label:haxe.macro.Expr, size:haxe.macro.Expr, v:haxe.macro.Expr, vMin:haxe.macro.Expr, vMax:haxe.macro.Expr, ?format:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('vSliderFloatEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'plain', e: size },
            { kind: 'ptr:cpp.Float32', e: v },
            { kind: 'plain', e: vMin },
            { kind: 'plain', e: vMax },
            { kind: 'plain', e: format, def: '"%.3f"' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied format = "%.3f", flags = 0 */
    public static macro function vSliderFloat(label:haxe.macro.Expr, size:haxe.macro.Expr, v:haxe.macro.Expr, vMin:haxe.macro.Expr, vMax:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('vSliderFloat', 'value', [
            { kind: 'plain', e: label },
            { kind: 'plain', e: size },
            { kind: 'ptr:cpp.Float32', e: v },
            { kind: 'plain', e: vMin },
            { kind: 'plain', e: vMax }
        ]);
    }
    public static macro function vSliderIntEx(label:haxe.macro.Expr, size:haxe.macro.Expr, v:haxe.macro.Expr, vMin:haxe.macro.Expr, vMax:haxe.macro.Expr, ?format:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('vSliderIntEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'plain', e: size },
            { kind: 'ptr:Int', e: v },
            { kind: 'plain', e: vMin },
            { kind: 'plain', e: vMax },
            { kind: 'plain', e: format, def: '"%d"' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied format = "%d", flags = 0 */
    public static macro function vSliderInt(label:haxe.macro.Expr, size:haxe.macro.Expr, v:haxe.macro.Expr, vMin:haxe.macro.Expr, vMax:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('vSliderInt', 'value', [
            { kind: 'plain', e: label },
            { kind: 'plain', e: size },
            { kind: 'ptr:Int', e: v },
            { kind: 'plain', e: vMin },
            { kind: 'plain', e: vMax }
        ]);
    }
    public static macro function inputTextEx(label:haxe.macro.Expr, buf:haxe.macro.Expr, ?maxLength:haxe.macro.Expr, ?flags:haxe.macro.Expr, ?callback:haxe.macro.Expr, ?userData:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputTextEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'strbuf', e: buf, e2: maxLength },
            { kind: 'plain', e: flags, def: '0' },
            { kind: 'plain', e: callback, def: 'null' },
            { kind: 'plain', e: userData, def: 'null' }
        ]);
    }
    /** Implied callback = NULL, user_data = NULL */
    public static macro function inputText(label:haxe.macro.Expr, buf:haxe.macro.Expr, ?maxLength:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputText', 'value', [
            { kind: 'plain', e: label },
            { kind: 'strbuf', e: buf, e2: maxLength },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    public static macro function inputTextMultilineEx(label:haxe.macro.Expr, buf:haxe.macro.Expr, ?maxLength:haxe.macro.Expr, size:haxe.macro.Expr, ?flags:haxe.macro.Expr, ?callback:haxe.macro.Expr, ?userData:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputTextMultilineEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'strbuf', e: buf, e2: maxLength },
            { kind: 'plain', e: size },
            { kind: 'plain', e: flags, def: '0' },
            { kind: 'plain', e: callback, def: 'null' },
            { kind: 'plain', e: userData, def: 'null' }
        ]);
    }
    /** Implied size = ImVec2(0, 0), flags = 0, callback = NULL, user_data = NULL */
    public static macro function inputTextMultiline(label:haxe.macro.Expr, buf:haxe.macro.Expr, ?maxLength:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputTextMultiline', 'value', [
            { kind: 'plain', e: label },
            { kind: 'strbuf', e: buf, e2: maxLength }
        ]);
    }
    public static macro function inputTextWithHintEx(label:haxe.macro.Expr, hint:haxe.macro.Expr, buf:haxe.macro.Expr, ?maxLength:haxe.macro.Expr, ?flags:haxe.macro.Expr, ?callback:haxe.macro.Expr, ?userData:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputTextWithHintEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'plain', e: hint },
            { kind: 'strbuf', e: buf, e2: maxLength },
            { kind: 'plain', e: flags, def: '0' },
            { kind: 'plain', e: callback, def: 'null' },
            { kind: 'plain', e: userData, def: 'null' }
        ]);
    }
    /** Implied callback = NULL, user_data = NULL */
    public static macro function inputTextWithHint(label:haxe.macro.Expr, hint:haxe.macro.Expr, buf:haxe.macro.Expr, ?maxLength:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputTextWithHint', 'value', [
            { kind: 'plain', e: label },
            { kind: 'plain', e: hint },
            { kind: 'strbuf', e: buf, e2: maxLength },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    public static macro function inputFloatEx(label:haxe.macro.Expr, v:haxe.macro.Expr, ?step:haxe.macro.Expr, ?stepFast:haxe.macro.Expr, ?format:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputFloatEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:cpp.Float32', e: v },
            { kind: 'plain', e: step, def: '0.0' },
            { kind: 'plain', e: stepFast, def: '0.0' },
            { kind: 'plain', e: format, def: '"%.3f"' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied step = 0.0f, step_fast = 0.0f, format = "%.3f", flags = 0 */
    public static macro function inputFloat(label:haxe.macro.Expr, v:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputFloat', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:cpp.Float32', e: v }
        ]);
    }
    public static macro function inputIntEx(label:haxe.macro.Expr, v:haxe.macro.Expr, ?step:haxe.macro.Expr, ?stepFast:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputIntEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: v },
            { kind: 'plain', e: step, def: '1' },
            { kind: 'plain', e: stepFast, def: '100' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied step = 1, step_fast = 100, flags = 0 */
    public static macro function inputInt(label:haxe.macro.Expr, v:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputInt', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Int', e: v }
        ]);
    }
    public static macro function inputDoubleEx(label:haxe.macro.Expr, v:haxe.macro.Expr, ?step:haxe.macro.Expr, ?stepFast:haxe.macro.Expr, ?format:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputDoubleEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Float', e: v },
            { kind: 'plain', e: step, def: '0.0' },
            { kind: 'plain', e: stepFast, def: '0.0' },
            { kind: 'plain', e: format, def: '"%.6f"' },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** Implied step = 0.0, step_fast = 0.0, format = "%.6f", flags = 0 */
    public static macro function inputDouble(label:haxe.macro.Expr, v:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('inputDouble', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Float', e: v }
        ]);
    }
    /** when 'p_visible != NULL': if '*p_visible==true' display an additional small close button on upper right of the header which will set the bool to false when clicked, if '*p_visible==false' don't display the header. */
    public static macro function collapsingHeaderBoolPtr(label:haxe.macro.Expr, pVisible:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('collapsingHeaderBoolPtr', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Bool', e: pVisible },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** "bool* p_selected" point to the selection state (read-write), as a convenient helper. */
    public static macro function selectableBoolPtrEx(label:haxe.macro.Expr, pSelected:haxe.macro.Expr, ?flags:haxe.macro.Expr, size:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('selectableBoolPtrEx', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Bool', e: pSelected },
            { kind: 'plain', e: flags, def: '0' },
            { kind: 'plain', e: size }
        ]);
    }
    /** Implied size = ImVec2(0, 0) */
    public static macro function selectableBoolPtr(label:haxe.macro.Expr, pSelected:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('selectableBoolPtr', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Bool', e: pSelected },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** return true when activated + toggle (*p_selected) if p_selected != NULL */
    public static macro function menuItemBoolPtr(label:haxe.macro.Expr, shortcut:haxe.macro.Expr, pSelected:haxe.macro.Expr, ?enabled:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('menuItemBoolPtr', 'value', [
            { kind: 'plain', e: label },
            { kind: 'plain', e: shortcut },
            { kind: 'ptr:Bool', e: pSelected },
            { kind: 'plain', e: enabled, def: 'true' }
        ]);
    }
    /** return true if the modal is open, and you can start outputting to it. */
    public static macro function beginPopupModal(name:haxe.macro.Expr, ?pOpen:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('beginPopupModal', 'value', [
            { kind: 'plain', e: name },
            { kind: 'ptr:Bool', e: pOpen },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    /** create a Tab. Returns true if the Tab is selected. */
    public static macro function beginTabItem(label:haxe.macro.Expr, ?pOpen:haxe.macro.Expr, ?flags:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('beginTabItem', 'value', [
            { kind: 'plain', e: label },
            { kind: 'ptr:Bool', e: pOpen },
            { kind: 'plain', e: flags, def: '0' }
        ]);
    }
    public static macro function colorConvertRGBtoHSV(r:haxe.macro.Expr, g:haxe.macro.Expr, b:haxe.macro.Expr, outH:haxe.macro.Expr, outS:haxe.macro.Expr, outV:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('colorConvertRGBtoHSV', 'void', [
            { kind: 'plain', e: r },
            { kind: 'plain', e: g },
            { kind: 'plain', e: b },
            { kind: 'ptr:cpp.Float32', e: outH },
            { kind: 'ptr:cpp.Float32', e: outS },
            { kind: 'ptr:cpp.Float32', e: outV }
        ]);
    }
    public static macro function colorConvertHSVtoRGB(h:haxe.macro.Expr, s:haxe.macro.Expr, v:haxe.macro.Expr, outR:haxe.macro.Expr, outG:haxe.macro.Expr, outB:haxe.macro.Expr):haxe.macro.Expr {
        return imgui.macros.ImGuiMacros.build('colorConvertHSVtoRGB', 'void', [
            { kind: 'plain', e: h },
            { kind: 'plain', e: s },
            { kind: 'plain', e: v },
            { kind: 'ptr:cpp.Float32', e: outR },
            { kind: 'ptr:cpp.Float32', e: outG },
            { kind: 'ptr:cpp.Float32', e: outB }
        ]);
    }

}
