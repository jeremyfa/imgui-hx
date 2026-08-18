@echo off
rem Build dcimgui.dll for Unity Windows (x64). Run from a VS x64 dev prompt.
rem Output: lib\prebuilt\windows\dcimgui.dll

cd /d "%~dp0\.."
if not exist lib\prebuilt\windows mkdir lib\prebuilt\windows

cl /nologo /O2 /MD /EHsc /DNDEBUG /DIMGUI_DISABLE_OBSOLETE_FUNCTIONS ^
    /I lib\imgui /I lib\dcimgui ^
    lib\imgui\imgui.cpp lib\imgui\imgui_demo.cpp lib\imgui\imgui_draw.cpp ^
    lib\imgui\imgui_tables.cpp lib\imgui\imgui_widgets.cpp lib\dcimgui\dcimgui.cpp lib\dcimgui\dcimgui_js_glue.cpp lib\dcimgui\dcimgui_extra_glue.cpp lib\dcimgui\dcimgui_extra_ctors.cpp ^
    /LD /Fe:lib\prebuilt\windows\dcimgui.dll

del *.obj 2>nul
echo Built lib\prebuilt\windows\dcimgui.dll
