package imgui;

#if js
typedef ImGui = imguijs.ImGui;
typedef ImVector<T> = imguijs.ImGui.ImVector<T>;
typedef ImVec4 = imguijs.ImGui.ImVec4;
typedef ImVec2 = imguijs.ImGui.ImVec2;
typedef ImGuiTextRange = imguijs.ImGui.ImGuiTextRange;
typedef ImGuiTextFilter = imguijs.ImGui.ImGuiTextFilter;
typedef ImGuiTextBuffer = imguijs.ImGui.ImGuiTextBuffer;
typedef ImGuiTableSortSpecs = imguijs.ImGui.ImGuiTableSortSpecs;
typedef ImGuiTableColumnSortSpecs = imguijs.ImGui.ImGuiTableColumnSortSpecs;
typedef ImGuiStyle = imguijs.ImGui.ImGuiStyle;
typedef ImGuiStoragePair = imguijs.ImGui.ImGuiStoragePair;
typedef ImGuiPayload = imguijs.ImGui.ImGuiPayload;
typedef ImGuiOnceUponAFrame = imguijs.ImGui.ImGuiOnceUponAFrame;
typedef ImGuiListClipper = imguijs.ImGui.ImGuiListClipper;
typedef ImGuiInputTextCallbackData = imguijs.ImGui.ImGuiInputTextCallbackData;
typedef ImGuiIO = imguijs.ImGui.ImGuiIO;
typedef ImFont = imguijs.ImGui.ImFont;
typedef ImFontGlyphRangesBuilder = imguijs.ImGui.ImFontGlyphRangesBuilder;
typedef ImFontConfig = imguijs.ImGui.ImFontConfig;
typedef ImFontAtlas = imguijs.ImGui.ImFontAtlas;
typedef ImFontAtlasCustomRect = imguijs.ImGui.ImFontAtlasCustomRect;
typedef ImDrawList = imguijs.ImGui.ImDrawList;
typedef ImDrawListSplitter = imguijs.ImGui.ImDrawListSplitter;
typedef ImDrawData = imguijs.ImGui.ImDrawData;
typedef ImDrawCmd = imguijs.ImGui.ImDrawCmd;
typedef ImColor = imguijs.ImGui.ImColor;
#end

#if cpp
typedef ImGui = imguicpp.ImGui;
typedef ImVector<T> = imguicpp.ImGui.ImVector<T>;
typedef ImVec4 = imguicpp.ImGui.ImVec4;
typedef ImVec2 = imguicpp.ImGui.ImVec2;
typedef ImGuiTextRange = imguicpp.ImGui.ImGuiTextRange;
typedef ImGuiTextFilter = imguicpp.ImGui.ImGuiTextFilter;
typedef ImGuiTextBuffer = imguicpp.ImGui.ImGuiTextBuffer;
typedef ImGuiTableSortSpecs = imguicpp.ImGui.ImGuiTableSortSpecs;
typedef ImGuiTableColumnSortSpecs = imguicpp.ImGui.ImGuiTableColumnSortSpecs;
typedef ImGuiStyle = imguicpp.ImGui.ImGuiStyle;
typedef ImGuiStoragePair = imguicpp.ImGui.ImGuiStoragePair;
typedef ImGuiPayload = imguicpp.ImGui.ImGuiPayload;
typedef ImGuiOnceUponAFrame = imguicpp.ImGui.ImGuiOnceUponAFrame;
typedef ImGuiListClipper = imguicpp.ImGui.ImGuiListClipper;
typedef ImGuiInputTextCallbackData = imguicpp.ImGui.ImGuiInputTextCallbackData;
typedef ImGuiIO = imguicpp.ImGui.ImGuiIO;
typedef ImFont = imguicpp.ImGui.ImFont;
typedef ImFontGlyphRangesBuilder = imguicpp.ImGui.ImFontGlyphRangesBuilder;
typedef ImFontConfig = imguicpp.ImGui.ImFontConfig;
typedef ImFontAtlas = imguicpp.ImGui.ImFontAtlas;
typedef ImFontAtlasCustomRect = imguicpp.ImGui.ImFontAtlasCustomRect;
typedef ImDrawList = imguicpp.ImGui.ImDrawList;
typedef ImDrawListSplitter = imguicpp.ImGui.ImDrawListSplitter;
typedef ImDrawData = imguicpp.ImGui.ImDrawData;
typedef ImDrawCmd = imguicpp.ImGui.ImDrawCmd;
typedef ImColor = imguicpp.ImGui.ImColor;
#end
