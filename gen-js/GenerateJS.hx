
import haxe.macro.Printer;
import sys.io.File;
import ImGuiJsonJS;

using StringBufChainer;
using StringTools;

class GenerateJS
{
    static function main()
    {
        final printer = new Printer();
        final buffer  = new StringBuf();
        final reader  = new ImGuiJsonJS(
            File.getContent('lib/cimgui/generator/output/typedefs_dict.json'),
            File.getContent('lib/cimgui/generator/output/structs_and_enums.json'),
            File.getContent('lib/cimgui/generator/output/definitions.json'));

        buffer.append('package imguijs;');
        buffer.newline();

        buffer.append('
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
');
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

        File.saveContent('src/imguijs/ImGui.hx', buffer.toString());

        var constructibleTypes = [];
        for (fn in reader.retrieveAllConstructors()) {
            var type = fn.funcname;
            if (type == 'ImVector')
                type = 'ImVector<T>';
            if (!constructibleTypes.contains(type)) {
                constructibleTypes.push(type);
            }
        }
        
        var rootImGuiHx = [];
        var inJsBlock = false;
        var didDumpTypedefs = false;
        for (line in File.getContent('src/imgui/ImGui.hx').replace('\r','').split('\n')) {
            if (!inJsBlock) {
                if (!didDumpTypedefs && line.trim() == '#if js') {
                    rootImGuiHx.push(line);
                    inJsBlock = true;
                    didDumpTypedefs = true;

                    rootImGuiHx.push('typedef ImGui = imguijs.ImGui;');
                    for (type in constructibleTypes) {
                        rootImGuiHx.push('typedef ' + type + ' = imguijs.ImGui.' + type + ';');
                    }
                }
                else {
                    rootImGuiHx.push(line);
                }
            }
            else {
                if (line.trim() == '#end') {
                    inJsBlock = false;
                    rootImGuiHx.push(line);
                }
            }
        }
        var isWindows:Bool = (Sys.systemName() == 'Windows');
        File.saveContent('src/imgui/ImGui.hx', rootImGuiHx.join(isWindows ? '\r\n' : '\n'));

    }
}
