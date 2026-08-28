@echo off
rem Build dcimgui.dll for Unity Windows (x64). Run from a VS x64 dev prompt.
rem Output: lib\prebuilt\windows\dcimgui.dll
setlocal

cd /d "%~dp0\.."
if not exist lib\prebuilt\windows mkdir lib\prebuilt\windows
if errorlevel 1 exit /b 1

rem cl must be on PATH: without vcvars this script would otherwise "succeed"
rem while producing nothing at all.
where cl >nul 2>&1
if errorlevel 1 (
    echo error: cl.exe not found, run from a VS x64 dev prompt ^(or call vcvars64.bat^) 1>&2
    exit /b 1
)

rem Objects and the import library go to a scratch dir: they used to land in the
rem repo root, which then got a blind "del *.obj" there, and dcimgui.lib/.exp
rem would otherwise sit next to the committed DLL.
set OBJDIR=%TEMP%\dcimgui-build-obj
if exist "%OBJDIR%" rd /s /q "%OBJDIR%"
mkdir "%OBJDIR%"
if errorlevel 1 exit /b 1

rem /std:c++17  every other platform script passes -std=c++17 (MSVC defaults to C++14)
rem /utf-8      imgui_demo.cpp contains UTF-8 literals; without this MSVC decodes
rem             them using the system codepage (C4819 plus mojibake in the demo)
rem /MT         static CRT: /MD would make the DLL require vcruntime140.dll and
rem             msvcp140.dll on the player's machine, which Unity builds do not
rem             reliably ship. Safe here because the exported ABI is pure C and
rem             every allocation is freed on the same side of the boundary.
rem CIMGUI_API  dcimgui.h leaves it EMPTY by default. The unix builds export
rem             everything through -fvisibility=default, but MSVC /LD exports
rem             NOTHING without __declspec(dllexport), so the C# P/Invoke would
rem             fail at runtime on every ImGui_* entry point.
cl /nologo /O2 /MT /EHsc /std:c++17 /utf-8 /DNDEBUG /DIMGUI_DISABLE_OBSOLETE_FUNCTIONS ^
    "/DCIMGUI_API=__declspec(dllexport)" ^
    /I lib\imgui /I lib\dcimgui ^
    /Fo"%OBJDIR%\\" ^
    lib\imgui\imgui.cpp lib\imgui\imgui_demo.cpp lib\imgui\imgui_draw.cpp ^
    lib\imgui\imgui_tables.cpp lib\imgui\imgui_widgets.cpp lib\dcimgui\dcimgui.cpp lib\dcimgui\dcimgui_js_glue.cpp lib\dcimgui\dcimgui_extra_glue.cpp lib\dcimgui\dcimgui_extra_ctors.cpp ^
    /LD /Fe:lib\prebuilt\windows\dcimgui.dll ^
    /link /IMPLIB:"%OBJDIR%\dcimgui.lib"
if errorlevel 1 (
    echo error: compilation failed 1>&2
    exit /b 1
)

if not exist lib\prebuilt\windows\dcimgui.dll (
    echo error: no dcimgui.dll was produced 1>&2
    exit /b 1
)

rd /s /q "%OBJDIR%" 2>nul
echo Built lib\prebuilt\windows\dcimgui.dll
