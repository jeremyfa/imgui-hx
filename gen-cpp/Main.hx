
import haxe.macro.Printer;
import sys.io.File;
import ImGuiJsonCPP;

using StringBufChainer;
using StringTools;

class Main
{
    static function main()
    {
        final printer = new Printer();
        final buffer  = new StringBuf();
        final reader  = new ImGuiJsonCPP(
            File.getContent('lib/cimgui/generator/output/typedefs_dict.json'),
            File.getContent('lib/cimgui/generator/output/structs_and_enums.json'),
            File.getContent('lib/cimgui/generator/output/definitions.json'));

        buffer.append('package imguicpp;');
        buffer.newline();
        buffer.newline();

        for (type in reader.generateTypedefs())
        {
            buffer.append(printer.printTypeDefinition(type, false));
            buffer.newline();
            buffer.newline();
        }

        for (type in reader.generateEnums())
        {
            buffer.append(printer.printTypeDefinition(type, false));
            buffer.newline();
            buffer.newline();
        }

        for (type in reader.generateStructs())
        {
            buffer.append(printer.printTypeDefinition(type, false));
            buffer.newline();
            buffer.newline();
        }

        buffer.append(printer.printTypeDefinition(reader.generateTopLevelFunctions(), false));
        buffer.newline();
        buffer.newline();

        for (type in reader.generateImVectors())
        {
            buffer.append(printer.printTypeDefinition(type, false));
            buffer.newline();
            buffer.newline();
        }

        File.saveContent('src/imguicpp/ImGui.hx', buffer.toString());

        var wrappedMethods = reader.retrieveTopLevelWrappedMethods();
        var headerData = new StringBuf();
        var implData = new StringBuf();

        for (method in wrappedMethods) {

            headerData.tabSpaces();
            headerData.add(method.ret);
            headerData.add(' linc_');
            headerData.add(method.funcname);
            headerData.add(method.argsoriginal.replace('((void*)0)', 'NULL').replace(',', ', '));
            headerData.add(';');
            headerData.newline();
            headerData.newline();

            var argsImpl = [];
            var lastArgName = null;
            var isVaArgs = false;
            for (arg in method.argsT) {
                if (arg.type.endsWith(']')) {
                    var index = arg.type.lastIndexOf('[');
                    argsImpl.push(arg.type.substring(0, index) + ' ' + arg.name + arg.type.substring(index));
                }
                else if (arg.type.contains('(*)')) {
                    argsImpl.push(arg.type.replace('(*)', '(*${arg.name})'));
                }
                else if (arg.type == '...') {
                    argsImpl.push('...');
                    isVaArgs = true;
                    lastArgName = method.argsT[method.argsT.length - 2].name;
                }
                else {
                    argsImpl.push(arg.type + ' ' + arg.name);
                }
            }

            implData.tabSpaces();
            implData.add(method.ret);
            implData.add(' linc_');
            implData.add(method.funcname);
            implData.add('(');
            implData.add(argsImpl.join(', '));
            implData.add(')');
            implData.add(' {');
            if (isVaArgs) {
                implData.newline();
                implData.tabSpaces();
                implData.tabSpaces();
                implData.add('va_list _args;');
                implData.newline();
                implData.tabSpaces();
                implData.tabSpaces();
                implData.add('va_start(_args, $lastArgName);');
            }
            implData.newline();
            implData.tabSpaces();
            implData.tabSpaces();
            if (method.ret != 'void') {
                implData.add(method.ret);
                implData.add(' _res = ');
            }
            implData.add('ImGui::');
            implData.add(method.funcname);
            if (isVaArgs) {
                implData.add('V');
            }
            implData.add(method.call_args.replace('...', '_args'));
            implData.add(';');
            implData.newline();
            implData.tabSpaces();
            implData.tabSpaces();
            implData.add('if (linc_Helpers_flushCallbacks != NULL) (*linc_Helpers_flushCallbacks)();');
            if (method.ret != 'void') {
                implData.newline();
                implData.tabSpaces();
                implData.tabSpaces();
                implData.add('return _res;');
            }
            implData.newline();
            implData.tabSpaces();
            implData.add('}');
            implData.newline();
            implData.newline();

        }
        
        var lincImguiH = '#pragma once

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include "imgui.h"

namespace ImGui {

    extern void (*linc_Helpers_flushCallbacks)(void);

${headerData.toString()}

}
';
        
        var lincImguiCPP = '//hxcpp include should be first
#include <hxcpp.h>
#include "./linc_imgui.h"

namespace ImGui {

    void (*linc_Helpers_flushCallbacks)(void) = NULL;

${implData.toString()}

}
';

        File.saveContent('src/imguicpp/linc/linc_imgui.h', lincImguiH);
        File.saveContent('src/imguicpp/linc/linc_imgui.cpp', lincImguiCPP);

    }

}
