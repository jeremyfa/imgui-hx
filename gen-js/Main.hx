
import haxe.macro.Printer;
import sys.io.File;
import ImGuiJsonJS;

using StringBufChainer;

class Main
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
    }
}
