package;

import haxe.Json;
import sys.io.File;

/**
 * imgui-hx bindings generator.
 *
 * Single source of truth: `lib/dcimgui/dcimgui.json`, the metadata emitted by
 * dear_bindings for the vendored Dear ImGui (docking). From that one file this
 * generator emits the Haxe bindings for every target - the C API (dcimgui) is
 * the ABI everywhere:
 *
 *  - cpp target: `src/imguicpp/ImGui.hx` - hxcpp externs over the C functions
 *    (compiled from source via src/imguicpp/linc/linc_imgui.xml).
 *  - js target (later phase): externs calling the emscripten-built dcimgui wasm.
 *  - cs target (later phase): externs over a generated C# P/Invoke shim.
 *
 * Emission rules (see README-gen.md):
 *  - dear_bindings emits `XxxEx` (full args, defaults as metadata) + `Xxx`
 *    (short helper) pairs: both are emitted, scalar defaults become real Haxe
 *    default arguments, struct-value defaults stay required (use the short form).
 *  - printf-style variadic functions are skipped in favor of their
 *    `*Unformatted` twins, bound under the clean name (`text`, `textColored`...).
 *  - functions named `<Struct>_xxx` with an instance pointer become static
 *    functions on that struct's extern class.
 *  - all internal (`is_internal`) items are skipped.
 *
 * Run with: haxe gen.hxml   (from the gen/ directory)
 */
class Gen {

    static var root:String;
    static var meta:Dynamic;

    /** Struct name → list of member function declarations (generated). */
    static var structFns:Map<String, Array<String>> = new Map();
    /** All non-internal struct names (for member-function attachment + type mapping). */
    static var structNames:Map<String, Bool> = new Map();
    /** Struct name → struct JSON (for by_value lookup). */
    static var structByName:Map<String, Dynamic> = new Map();
    /** Typedef name → underlying declaration string. */
    static var typedefs:Map<String, String> = new Map();
    /** Enum type names (without trailing underscore) for type mapping. */
    static var enumNames:Map<String, Bool> = new Map();

    static var warnings:Array<String> = [];

    public static function main() {

        root = '../';
        meta = Json.parse(File.getContent(root + 'lib/dcimgui/dcimgui.json'));

        // --- Index pass ---
        var tds:Array<Dynamic> = meta.typedefs;
        for (t in tds) {
            typedefs.set(t.name, t.type.declaration);
        }
        var structs:Array<Dynamic> = meta.structs;
        for (s in structs) {
            if (s.is_internal == true) continue;
            if (s.is_anonymous == true) continue; // anonymous unions/structs: not bindable
            structNames.set(s.name, true);
            structByName.set(s.name, s);
            structFns.set(s.name, []);
        }
        var enums:Array<Dynamic> = meta.enums;
        for (e in enums) {
            if (e.is_internal == true) continue;
            enumNames.set(haxeEnumName(e.name), true);
        }

        computeFlattenable();

        var out = new StringBuf();
        emitHeader(out);
        emitTypedefs(out);
        emitEnums(out);
        emitFunctions(); // fills structFns + mainFns
        emitStructs(out);
        emitMainClass(out);

        File.saveContent(root + 'src/imguicpp/ImGui.hx', out.toString());
        emitFacade();
        emitJsGlue();
        emitJsModule();
        emitCsModule();

        Sys.println('Generated src/imguicpp/ImGui.hx');
        Sys.println(' - enums: $countEnums');
        Sys.println(' - structs: $countStructs');
        Sys.println(' - main functions: $countMainFns');
        Sys.println(' - struct member functions: $countStructFns');
        Sys.println(' - skipped (internal/varargs/valist/dah): $countSkipped');
        Sys.println(' - facade: $countFacadeMacro widget macros, $countFacadePlain forwards, $countFacadeArray array fns, $countFacadeRaw cpp-typed forwards');
        Sys.println(' - js glue: $countJsGlue wrappers, $countJsAccessors field accessors');
        Sys.println(' - cs: $countCsFns fns bound');
        for (w in warnings) Sys.println(' WARN: $w');

    }

    static var countEnums = 0;
    static var countStructs = 0;
    static var countMainFns = 0;
    static var countStructFns = 0;
    static var countSkipped = 0;

    // =========================================================================
    // Naming
    // =========================================================================

    static final RESERVED = [
        'break','case','cast','catch','class','continue','default','do','dynamic','else','enum',
        'extends','extern','false','final','for','function','if','implements','import','in','inline',
        'interface','macro','new','null','operator','overload','override','package','private','public',
        'return','static','switch','this','throw','true','try','typedef','untyped','using','var','while',
        'abstract'
    ];

    static function safeIdent(name:String):String {
        if (RESERVED.indexOf(name) != -1) return name + '_';
        if (~/^[0-9]/.match(name)) return '_' + name;
        return name;
    }

    static function lowerFirst(name:String):String {
        if (name.length == 0) return name;
        // Keep leading acronym runs readable: "IsItemHovered" -> isItemHovered,
        // "IO..." -> io..., "ID" -> id.
        var i = 0;
        while (i < name.length && name.charAt(i) >= 'A' && name.charAt(i) <= 'Z') i++;
        if (i == 0) return name;
        if (i == 1) return name.charAt(0).toLowerCase() + name.substr(1);
        if (i >= name.length) return name.toLowerCase();
        // Lowercase the acronym except its last letter (start of the next word).
        return name.substr(0, i - 1).toLowerCase() + name.substr(i - 1);
    }

    /** Enum JSON name (often with trailing '_') → Haxe type name. */
    static function haxeEnumName(name:String):String {
        return StringTools.endsWith(name, '_') ? name.substr(0, name.length - 1) : name;
    }

    // =========================================================================
    // Type mapping (cpp target)
    // =========================================================================

    /** Resolve typedef chains down to a base declaration. */
    static function resolveDecl(decl:String):String {
        var seen = 0;
        while (typedefs.exists(decl) && seen++ < 8) {
            decl = typedefs.get(decl);
        }
        return decl;
    }

    /** Map a dcimgui type description to a Haxe (hxcpp) type. Returns null if unsupported. */
    static function haxeType(type:Dynamic):Null<String> {
        var decl:String = type.declaration;
        return haxeTypeFromDecl(decl);
    }

    static function haxeTypeFromDecl(declIn:String):Null<String> {
        var decl = StringTools.trim(declIn);

        // Unsupported outright
        if (decl.indexOf('va_list') != -1) return null;
        // Function pointers: opaque for now (pass null); hand-written helpers may
        // wrap specific callbacks later.
        if (decl.indexOf('(*') != -1 || decl.indexOf('(ImGui') != -1 && decl.indexOf('*)') != -1) return 'ImGuiOpaqueCallback';

        // Strings: distinguish const char* (read-only, implicit from Haxe String)
        // from char* (mutable buffer, e.g. InputText) BEFORE stripping const.
        if (decl == 'const char*') return 'cpp.ConstCharStar';
        if (decl == 'char*') return 'cpp.Star<cpp.Char>';
        // Array of strings (Combo/ListBox items).
        if (decl == 'const char* const[]' || decl == 'const char*const[]' || decl == 'const char* const []') {
            return 'cpp.RawPointer<cpp.ConstCharStar>';
        }

        // C array parameters decay to pointers: float[3] → cpp.Star<cpp.Float32>.
        var arrayRe = ~/^(.*?)\s*\[[0-9]*\]$/;
        if (arrayRe.match(decl)) {
            var elem = StringTools.trim(arrayRe.matched(1));
            elem = StringTools.replace(elem, 'const ', '');
            var mappedElem = scalarOrUser(elem);
            if (mappedElem == null) return null;
            return 'cpp.Star<' + mappedElem + '>';
        }

        // Strip const (semantics kept by the C side)
        decl = StringTools.replace(decl, 'const ', '');
        decl = StringTools.trim(decl);

        // Pointers
        if (StringTools.endsWith(decl, '*')) {
            var inner = StringTools.trim(decl.substr(0, decl.length - 1));
            if (inner == 'char') return 'cpp.ConstCharStar';
            if (inner == 'void') return 'cpp.RawPointer<cpp.Void>';
            if (StringTools.endsWith(inner, '*')) {
                // pointer-to-pointer
                var inner2 = StringTools.trim(inner.substr(0, inner.length - 1));
                if (inner2 == 'char') return 'cpp.RawPointer<cpp.ConstCharStar>';
                var mapped2 = haxeTypeFromDecl(inner2);
                if (mapped2 == null) return null;
                return 'cpp.RawPointer<' + unwrapStar(mapped2) + '>';
            }
            var mappedInner = scalarOrUser(inner);
            if (mappedInner == null) return null;
            return 'cpp.Star<' + mappedInner + '>';
        }

        return scalarOrUser(decl);
    }

    static function unwrapStar(t:String):String {
        if (StringTools.startsWith(t, 'cpp.Star<')) return t.substr('cpp.Star<'.length, t.length - 'cpp.Star<'.length - 1);
        return t;
    }

    static function scalarOrUser(declIn:String):Null<String> {
        var decl = resolveDecl(StringTools.trim(declIn));
        // Typedefs resolving to function pointers (ImGuiInputTextCallback,
        // ImGuiSizeCallback, ImGuiMemAllocFunc...): opaque for now.
        if (decl.indexOf('(*') != -1) return 'ImGuiOpaqueCallback';
        switch decl {
            case 'bool': return 'Bool';
            case 'char': return 'cpp.Char';
            case 'signed char': return 'cpp.Int8';
            case 'unsigned char': return 'cpp.UInt8';
            case 'short' | 'signed short': return 'cpp.Int16';
            case 'unsigned short': return 'cpp.UInt16';
            case 'int' | 'signed int': return 'Int';
            case 'unsigned int': return 'UInt';
            case 'long long' | 'signed long long': return 'cpp.Int64';
            case 'unsigned long long': return 'cpp.UInt64';
            case 'float': return 'cpp.Float32';
            case 'double': return 'Float';
            case 'size_t': return 'cpp.SizeT';
            case 'void': return 'Void';
            default:
        }
        // Enums (declared with or without trailing underscore)
        if (enumNames.exists(decl)) return decl;
        if (enumNames.exists(haxeEnumName(decl))) return haxeEnumName(decl);
        // Structs (by value or as type name)
        if (structNames.exists(decl)) return decl;
        // Unresolved typedef that references a struct/enum pointer chain etc.
        return null;
    }

    // =========================================================================
    // Header + typedefs
    // =========================================================================

    static function emitHeader(out:StringBuf) {
        out.add('package imguicpp;\n\n');
        out.add('// =============================================================================\n');
        out.add('// GENERATED FILE - do not edit by hand.\n');
        out.add('// Produced by gen/Gen.hx from lib/dcimgui/dcimgui.json (dear_bindings metadata\n');
        out.add('// for the vendored Dear ImGui docking branch). Regenerate with:\n');
        out.add('//   cd gen && haxe gen.hxml\n');
        out.add('// =============================================================================\n\n');
        // Opaque callback placeholder (function pointers are not bound yet).
        out.add('typedef ImGuiOpaqueCallback = cpp.RawPointer<cpp.Void>;\n\n');
    }

    /** Names of the scalar value typedefs that get emitted (shared with the facade). */
    static var valueTypedefNames:Array<String> = [];

    static function emitTypedefs(out:StringBuf) {
        // Value typedefs that improve signatures readability (ImTextureID, ImGuiID, ImWchar...)
        var tds:Array<Dynamic> = meta.typedefs;
        var emitted = new Map<String, Bool>();
        for (t in tds) {
            var name:String = t.name;
            if (emitted.exists(name)) continue;
            emitted.set(name, true);
            // Skip struct/enum aliases and function pointers; only scalar aliases.
            var mapped = switch resolveDecl(name) {
                case 'bool' | 'char' | 'signed char' | 'unsigned char' | 'short' | 'unsigned short'
                    | 'int' | 'signed int' | 'unsigned int' | 'long long' | 'signed long long' | 'unsigned long long'
                    | 'float' | 'double' | 'size_t': scalarOrUser(name);
                case _: null;
            }
            if (mapped == null) continue;
            if (structNames.exists(name) || enumNames.exists(name)) continue;
            out.add('typedef $name = $mapped;\n');
            valueTypedefNames.push(name);
        }
        out.add('\n');
    }

    // =========================================================================
    // Enums
    // =========================================================================

    static function emitEnums(out:StringBuf, count:Bool = true) {
        var enums:Array<Dynamic> = meta.enums;
        for (e in enums) {
            if (e.is_internal == true) continue;
            var typeName = haxeEnumName(e.name);
            var comment = attachedComment(e);
            if (comment != null) out.add('/** $comment */\n');
            out.add('enum abstract $typeName(Int) from Int to Int {\n');
            var members:Array<Dynamic> = e.elements;
            var seen = new Map<String, Bool>();
            for (m in members) {
                if (m.is_internal == true) continue;
                var mName:String = m.name;
                // Strip the enum prefix (with underscore) when present.
                var prefix = e.name;
                if (!StringTools.endsWith(prefix, '_')) prefix += '_';
                if (StringTools.startsWith(mName, prefix)) mName = mName.substr(prefix.length);
                mName = safeIdent(mName);
                if (seen.exists(mName)) continue;
                seen.set(mName, true);
                var value:Null<Int> = m.value;
                if (value == null) { warnings.push('enum $typeName.$mName has no computed value'); continue; }
                var mc = attachedComment(m);
                if (mc != null) out.add('    /** $mc */\n');
                out.add('    var $mName = $value;\n');
            }
            out.add('}\n\n');
            if (count) countEnums++;
        }
    }

    // =========================================================================
    // Functions
    // =========================================================================

    static var mainFns:Array<String> = [];

    static function emitFunctions() {
        var fns:Array<Dynamic> = meta.functions;
        var byName = new Map<String, Dynamic>();
        for (f in fns) byName.set(f.name, f);

        for (f in fns) {
            var name:String = f.name;
            if (f.is_internal == true) { countSkipped++; continue; }
            if (f.is_imstr_helper == true) { countSkipped++; continue; }
            // Obsolete API gated by #ifndef IMGUI_DISABLE_OBSOLETE_FUNCTIONS:
            // we always compile with that define, so the symbols don't exist.
            if (isDisabledByDefines(f)) { countSkipped++; continue; }
            // Skip the default-argument helpers: they are emitted as the short
            // form when their Ex twin is processed.
            if (f.is_default_argument_helper == true) { countSkipped++; continue; }
            // Skip printf-style variadics: the *Unformatted twin covers them.
            var hasVarargs = false;
            var hasValist = false;
            var args:Array<Dynamic> = f.arguments;
            for (a in args) {
                if (a.is_varargs == true) { hasVarargs = true; continue; }
                if (a.type == null) continue;
                var d:String = a.type.declaration;
                if (d.indexOf('va_list') != -1) hasValist = true;
            }
            if (hasValist) { countSkipped++; continue; }
            if (hasVarargs) {
                if (name == 'ImGui_Text') {
                    // Bound through the real ImGui_TextUnformatted below.
                }
                countSkipped++;
                continue;
            }

            emitFunction(f, byName);
        }
    }

    /** True when the node is compiled out by the defines we always set. */
    static function isDisabledByDefines(node:Dynamic):Bool {
        var conds:Array<Dynamic> = node.conditionals;
        if (conds == null) return false;
        for (c in conds) {
            if (c.condition == 'ifndef' && c.expression == 'IMGUI_DISABLE_OBSOLETE_FUNCTIONS') return true;
        }
        return false;
    }

    /** Clean Haxe name for a C function name, attaching to a struct when relevant. */
    static function splitOwner(cname:String):{owner:Null<String>, base:String} {
        // Longest struct-name prefix match, e.g. ImFontAtlas_AddFont → (ImFontAtlas, AddFont)
        var idx = cname.indexOf('_');
        var best:Null<String> = null;
        while (idx != -1) {
            var candidate = cname.substr(0, idx);
            if (structNames.exists(candidate)) best = candidate;
            idx = cname.indexOf('_', idx + 1);
        }
        if (best != null) {
            return { owner: best, base: cname.substr(best.length + 1) };
        }
        if (StringTools.startsWith(cname, 'ImGui_')) {
            return { owner: null, base: cname.substr('ImGui_'.length) };
        }
        return { owner: null, base: cname };
    }

    static function emitFunction(f:Dynamic, byName:Map<String, Dynamic>) {
        var cname:String = f.name;
        var split = splitOwner(cname);
        var baseName = split.base;

        // Unformatted twins take the clean name of their formatted sibling.
        if (f.is_unformatted_helper == true && StringTools.endsWith(baseName, 'Unformatted')) {
            baseName = baseName.substr(0, baseName.length - 'Unformatted'.length);
        }
        // The real TextUnformatted (dear_bindings emits it as the Ex pair) is
        // bound as `text` - its formatted sibling ImGui_Text is skipped as
        // variadic, and both its defaults are foldable so one function suffices.
        if (cname == 'ImGui_TextUnformattedEx') baseName = 'Text';

        var haxeName = safeIdent(lowerFirst(baseName));

        var decl = renderFunction(f, cname, haxeName);
        if (decl == null) return;

        var glue = renderJsGlue(f, cname);
        if (glue != null) jsGlueFns.push(glue);
        if (glue != null) renderJsFn(f, cname, haxeName, split.owner);
        renderCsFn(f, cname, haxeName, split.owner);

        if (split.owner != null) {
            structFns.get(split.owner).push(decl);
            countStructFns++;
        }
        else {
            mainFns.push(decl);
            countMainFns++;
            emitFacadeFunction(f, haxeName);
        }

        // If this is an Ex variant, also emit its short helper under the clean name.
        if (StringTools.endsWith(cname, 'Ex')) {
            var shortC = cname.substr(0, cname.length - 2);
            var shortF = byName.get(shortC);
            if (shortF != null && shortF.is_default_argument_helper == true) {
                var shortSplit = splitOwner(shortC);
                var shortBase = shortSplit.base;
                var shortName = safeIdent(lowerFirst(shortBase));
                var shortDecl = renderFunction(shortF, shortC, shortName);
                if (shortDecl != null) {
                    var shortGlue = renderJsGlue(shortF, shortC);
                    if (shortGlue != null) jsGlueFns.push(shortGlue);
                    if (shortGlue != null) renderJsFn(shortF, shortC, shortName, shortSplit.owner);
                    renderCsFn(shortF, shortC, shortName, shortSplit.owner);
                    if (shortSplit.owner != null) { structFns.get(shortSplit.owner).push(shortDecl); countStructFns++; }
                    else { mainFns.push(shortDecl); countMainFns++; emitFacadeFunction(shortF, shortName); }
                }
            }
        }
    }

    /** True when `decl` names a STRONG C enum (bare name in dcimgui.h, e.g.
        ImGuiKey/ImTextureStatus) - C++ requires an explicit cast for those,
        unlike the flags enums which are plain int typedefs. */
    static function isStrongEnum(declIn:String):Bool {
        var decl = StringTools.trim(declIn);
        if (!enumNames.exists(decl)) return false;
        // Present in the enums metadata WITHOUT a trailing underscore variant:
        // the JSON keeps the original name; flags enums are declared `Name_`.
        var enums:Array<Dynamic> = meta.enums;
        for (e in enums) {
            if (e.name == decl) return true; // exact bare name → typedef enum
        }
        return false;
    }

    /**
     * Render one function binding. Emitted as an inline wrapper around a raw
     * `__cpp__` call rather than a plain extern: this gives explicit C casts
     * where C++ demands them (strong enums) and keeps Haxe-side default
     * arguments working uniformly. Null if a type is unsupported.
     */
    static function renderFunction(f:Dynamic, cname:String, haxeName:String):Null<String> {
        var retDecl:String = f.return_type.declaration;
        var ret = haxeType(f.return_type);
        if (ret == null) { warnings.push('skip $cname (return type $retDecl)'); countSkipped++; return null; }

        var parts:Array<String> = [];
        var callArgs:Array<String> = [];
        var passNames:Array<String> = [];
        var args:Array<Dynamic> = f.arguments;
        var i = 0;
        for (a in args) {
            var argDecl:String = a.type.declaration;
            var t = haxeType(a.type);
            if (t == null) { warnings.push('skip $cname (arg ${a.name}: $argDecl)'); countSkipped++; return null; }
            var aName = safeIdent(lowerFirst(camelizeSnake(a.name)));
            var dv:Null<String> = haxeDefault(a, t);
            parts.push(dv != null ? '$aName:$t = $dv' : '$aName:$t');
            var placeholder = '{$i}';
            if (isStrongEnum(argDecl)) placeholder = '($argDecl)$placeholder';
            // Function-pointer args are void* on the Haxe side: explicit C cast
            // (strip the parameter name out of inline declarators first).
            if (t == 'ImGuiOpaqueCallback') {
                var castDecl = ~/\(\s*\*\s*[A-Za-z_][A-Za-z0-9_]*\s*\)/.replace(argDecl, '(*)');
                placeholder = '($castDecl)$placeholder';
            }
            callArgs.push(placeholder);
            passNames.push(aName);
            i++;
        }

        var call = '$cname(${callArgs.join(', ')})';
        if (isStrongEnum(retDecl)) call = '(int)$call';
        // const T* returns: the Haxe side has no const view, cast it away
        // (read-only semantics documented by ImGui itself).
        var retDeclTrim = StringTools.trim(retDecl);
        if (StringTools.startsWith(retDeclTrim, 'const ') && StringTools.endsWith(retDeclTrim, '*') && retDeclTrim != 'const char*') {
            call = '(' + retDeclTrim.substr('const '.length) + ')$call';
        }

        var buf = new StringBuf();
        var comment = attachedComment(f);
        if (comment != null) buf.add('    /** $comment */\n');
        buf.add('    inline static function $haxeName(${parts.join(', ')}):$ret {\n');
        var cppExpr = passNames.length > 0
            ? "untyped __cpp__('" + call + "', " + passNames.join(', ') + ")"
            : "untyped __cpp__('" + call + "')";
        if (ret == 'Void') {
            buf.add('        $cppExpr;\n');
        }
        else {
            buf.add('        return $cppExpr;\n');
        }
        buf.add('    }\n');
        return buf.toString();
    }

    /** snake_case arg names → camelCase (p_open → pOpen, str_id → strId). */
    static function camelizeSnake(name:String):String {
        if (name.indexOf('_') == -1) return name;
        var out = new StringBuf();
        var up = false;
        for (i in 0...name.length) {
            var c = name.charAt(i);
            if (c == '_') { up = true; continue; }
            out.add(up ? c.toUpperCase() : c);
            up = false;
        }
        return out.toString();
    }

    /** Haxe-expressible default value for an argument, or null (required). */
    static function haxeDefault(a:Dynamic, haxeT:String):Null<String> {
        var dv:Null<String> = a.default_value;
        if (dv == null) return null;
        if (dv == 'NULL') {
            // Pointers accept null on hxcpp.
            if (StringTools.startsWith(haxeT, 'cpp.Star<') || StringTools.startsWith(haxeT, 'cpp.RawPointer<')
                || haxeT == 'cpp.ConstCharStar' || haxeT == 'ImGuiOpaqueCallback') return 'null';
            return null;
        }
        if (dv == 'true' || dv == 'false') return dv;
        // Numeric literals: 0, -1, 1.0f, 0.5f, FLT_MAX...
        if (~/^-?[0-9]+$/.match(dv)) return dv;
        if (~/^-?[0-9]*\.[0-9]+f?$/.match(dv)) return StringTools.replace(dv, 'f', '');
        if (dv == 'FLT_MAX') return '3.402823466e+38';
        if (dv == 'sizeof(float)') return '4';
        if (dv == 'FLT_MIN') return '1.175494351e-38';
        // Enum member defaults like ImGuiPopupFlags_MouseButtonRight
        if (~/^Im[A-Za-z0-9_]+$/.match(dv) && dv.indexOf('_') != -1) {
            var us = dv.lastIndexOf('_');
            var etype = dv.substr(0, us + 1);
            var typeName = haxeEnumName(etype);
            if (enumNames.exists(typeName)) {
                var member = safeIdent(dv.substr(us + 1));
                return '$typeName.$member';
            }
        }
        // Struct-value defaults (ImVec2(0, 0)...) are not expressible: required arg.
        return null;
    }

    // =========================================================================
    // Structs
    // =========================================================================

    static function emitStructs(out:StringBuf) {
        var structs:Array<Dynamic> = meta.structs;
        for (s in structs) {
            if (s.is_internal == true) continue;
            if (s.is_anonymous == true) continue;
            var name:String = s.name;
            var comment = attachedComment(s);
            if (comment != null) out.add('/** $comment */\n');

            var fields:Array<Dynamic> = s.fields != null ? s.fields : [];
            var isOpaque = (s.forward_declaration == true) || fields.length == 0;

            out.add('@:keep @:structAccess @:native("$name") @:include("linc_imgui.h")\n');
            out.add('extern class $name {\n');

            if (!isOpaque) {
                for (fl in fields) {
                    if (fl.is_internal == true) continue;
                    if (fl.is_anonymous == true) continue;
                    if (isDisabledByDefines(fl)) continue;
                    var ft = haxeType(fl.type);
                    var fName:String = fl.name;
                    if (fl.is_array == true) {
                        // C array fields are exposed as raw pointers would be misleading; skip
                        // with a note (accessed through functions when needed).
                        out.add('    // (array field not bound: $fName)\n');
                        continue;
                    }
                    if (ft == null) {
                        out.add('    // (field not bound: $fName: ${fl.type.declaration})\n');
                        continue;
                    }
                    var hName = safeIdent(lowerFirst(fName));
                    var fc = attachedComment(fl);
                    if (fc != null) out.add('    /** $fc */\n');
                    out.add('    @:native("$fName") var $hName:$ft;\n');
                }
            }

            // Value constructor for simple by-value structs (aggregate init on the C side).
            if (s.by_value == true && !isOpaque) {
                var simple = true;
                var makeArgs:Array<String> = [];
                var makeVals:Array<String> = [];
                var idx = 0;
                for (fl in fields) {
                    if (fl.is_internal == true || fl.is_anonymous == true || fl.is_array == true) { simple = false; break; }
                    var ft = haxeType(fl.type);
                    if (ft == null || StringTools.startsWith(ft, 'cpp.Star') || StringTools.startsWith(ft, 'cpp.RawPointer')) { simple = false; break; }
                    var declStr:String = fl.type.declaration;
                    if (structNames.exists(resolveDecl(declStr))) { simple = false; break; } // nested struct: keep it manual
                    makeArgs.push(safeIdent(lowerFirst('${fl.name}')) + ':$ft');
                    makeVals.push('($declStr)({$idx})');
                    idx++;
                }
                if (simple && makeArgs.length > 0) {
                    var fieldNames = [for (fl in fields) safeIdent(lowerFirst('${fl.name}'))];
                    out.add('\n    /** Construct a $name value. */\n');
                    out.add('    inline static function make(${makeArgs.join(', ')}):$name {\n');
                    out.add('        return untyped __cpp__(\'$name{ ${makeVals.join(', ')} }\', ${fieldNames.join(', ')});\n');
                    out.add('    }\n');
                }
            }

            // ImTextureRef is by-value but holds a pointer field, so it misses the
            // generic make() rule; a texture-id constructor is essential though
            // (it's the arg of every image/imageButton call).
            if (name == 'ImTextureRef') {
                out.add('\n    /** Construct an ImTextureRef from a raw ImTextureID. */\n');
                out.add('    inline static function fromID(texID:cpp.UInt64):ImTextureRef {\n');
                out.add('        return untyped __cpp__(\'ImTextureRef{ NULL, (ImTextureID){0} }\', texID);\n');
                out.add('    }\n');
            }

            // Member functions attached to this struct
            var fns = structFns.get(name);
            if (fns != null && fns.length > 0) {
                out.add('\n');
                for (fn in fns) out.add(fn);
            }

            out.add('}\n\n');
            countStructs++;
        }
    }

    // =========================================================================
    // Main class
    // =========================================================================

    static function emitMainClass(out:StringBuf) {
        out.add('@:keep\n');
        out.add('@:include("linc_imgui.h")\n');
        out.add('@:build(imguicpp.linc.Linc.xml(\'imgui\'))\n');
        out.add('@:build(imguicpp.linc.Linc.touch())\n');
        out.add('extern class ImGui {\n\n');
        for (fn in mainFns) out.add(fn);
        out.add('\n}\n');
    }

    // =========================================================================
    // Facade (imgui.ImGui - the portable API users import)
    // =========================================================================

    /** Rendered facade members compiled per-target (#if (cpp && !macro)). */
    static var facadeFns:Array<String> = [];
    /** Rendered facade widget MACROS (compiled unconditionally). */
    static var facadeMacroFns:Array<String> = [];
    static var countFacadeMacro = 0;
    static var countFacadePlain = 0;
    static var countFacadeArray = 0;
    static var countFacadeRaw = 0;

    /** Facade type for a plain (non out-param) argument. */
    static function facadePlainType(declIn:String, cppT:String):String {
        var d = StringTools.trim(declIn);
        if (d == 'const char*') return 'String';
        d = StringTools.trim(StringTools.replace(d, 'const ', ''));
        // Keep readable value typedef names (ImTextureID, ImGuiID...)
        if (valueTypedefNames.indexOf(d) != -1) return d;
        return switch cppT {
            case 'cpp.ConstCharStar': 'String';
            case 'cpp.Float32': 'Float';
            case 'cpp.SizeT': 'Int';
            case t: t;
        }
    }

    /** Facade default: haxeDefault + C string literals + null Strings. */
    static function facadeDefault(a:Dynamic, cppT:String):Null<String> {
        var dv:Null<String> = a.default_value;
        if (dv == null) return null;
        if (~/^"[^"\\]*"$/.match(dv)) return dv; // C string literal → same Haxe literal
        if (dv == 'NULL' && cppT == 'cpp.ConstCharStar') return 'null';
        return haxeDefault(a, cppT);
    }

    /**
     * Emit the portable facade counterpart of a top-level function:
     *  - scalar out-params (pointers to bool, int, float, double) and
     *    char*+size buffers → widget MACRO splicing lvalues (zero allocation,
     *    getters/setters invoked, write-back compare-gated);
     *  - fixed float[N]/int[N] arrays → plain function copying in/out through
     *    imguicpp.Marshal scratch (no GC allocation);
     *  - everything else → inline forward (String↔const char*, Float↔float);
     *  - unsupported shapes → cpp-typed inline forward (still reachable).
     */
    static function emitFacadeFunction(f:Dynamic, haxeName:String):Void {
        var retCpp = haxeType(f.return_type);
        if (retCpp == null) return; // raw extern was skipped too

        var items:Array<{mode:String, name:String, type:String, temp:String, def:Null<String>, bounds:Int, constArr:Bool, slot:String}> = [];
        var args:Array<Dynamic> = f.arguments;
        var hasPtr = false;
        var hasArr = false;
        var raw = false;
        var floatSlots = 0;
        var intSlots = 0;

        var i = 0;
        while (i < args.length) {
            var a = args[i];
            var d = StringTools.trim((a.type.declaration:String));
            var cppT = haxeType(a.type);
            if (cppT == null) { raw = true; break; }
            var aName = safeIdent(lowerFirst(camelizeSnake(a.name)));

            // char* + size_t pair → portable string buffer
            if (d == 'char*' && i + 1 < args.length
                && resolveDecl(StringTools.trim((args[i + 1].type.declaration:String))) == 'size_t') {
                items.push({ mode: 'strbuf', name: aName, type: null, temp: null, def: null, bounds: 0, constArr: false, slot: '' });
                hasPtr = true;
                i += 2;
                continue;
            }

            // Dynamic float arrays: const float* immediately followed by a count
            // → portable Array<Float> (count derived from length)
            if (d == 'const float*' && i + 1 < args.length) {
                var na = args[i + 1];
                var nd = resolveDecl(StringTools.trim(StringTools.replace((na.type.declaration:String), 'const ', '')));
                var nn:String = na.name;
                if (nd == 'int' && nn.indexOf('count') != -1) {
                    items.push({ mode: 'cfarr', name: aName, type: 'Array<Float>', temp: null, def: null, bounds: 0, constArr: true, slot: '' });
                    hasArr = true;
                    i += 2;
                    continue;
                }
            }

            // Fixed-size arrays float[N]/int[N] → Array<Float>/Array<Int>
            if (a.is_array == true) {
                // array_bounds is a string in the JSON (can even be an enum
                // constant like "ImGuiCol_COUNT" - parseInt yields null then).
                var bounds:Null<Int> = a.array_bounds != null ? Std.parseInt(Std.string(a.array_bounds)) : null;
                var arrayRe = ~/^(.*?)\s*\[[0-9]*\]$/;
                var elem = '';
                if (arrayRe.match(d)) elem = resolveDecl(StringTools.trim(StringTools.replace(arrayRe.matched(1), 'const ', '')));
                var isConstArr = StringTools.startsWith(d, 'const ');
                if (bounds != null && bounds >= 1 && bounds <= 4 && (elem == 'float' || elem == 'int')) {
                    var slot = elem == 'float'
                        ? (floatSlots++ == 0 ? 'floatsA' : 'floatsB')
                        : (intSlots++ == 0 ? 'intsA' : 'intsB');
                    if (floatSlots > 2 || intSlots > 2) { raw = true; break; }
                    items.push({ mode: elem == 'float' ? 'farr' : 'iarr', name: aName,
                        type: elem == 'float' ? 'Array<Float>' : 'Array<Int>', temp: null, def: null,
                        bounds: bounds, constArr: isConstArr, slot: slot });
                    hasArr = true;
                    i++;
                    continue;
                }
                raw = true;
                break;
            }

            // Scalar out-params → macro lvalue/Ref marshaling
            if (StringTools.endsWith(d, '*') && d != 'const char*') {
                var isConstPtr = StringTools.startsWith(d, 'const ');
                var inner = StringTools.trim(d.substr(0, d.length - 1));
                inner = resolveDecl(StringTools.trim(StringTools.replace(inner, 'const ', '')));
                var temp = isConstPtr ? null : switch inner {
                    case 'bool': 'Bool';
                    case 'int' | 'signed int': 'Int';
                    case 'unsigned int': 'UInt';
                    case 'float': 'cpp.Float32';
                    case 'double': 'Float';
                    case _: null;
                }
                if (temp != null) {
                    items.push({ mode: 'ptr', name: aName, type: null, temp: temp,
                        def: a.default_value == 'NULL' ? 'null' : null, bounds: 0, constArr: false, slot: '' });
                    hasPtr = true;
                    i++;
                    continue;
                }
                // Other pointers (callbacks, void* user data...) are only kept
                // when they default to NULL - the facade exposes them cpp-typed
                // with a null default, omittable on every target.
                if (a.default_value == 'NULL') {
                    items.push({ mode: 'plain', name: aName, type: cppT, temp: null, def: 'null', bounds: 0, constArr: false, slot: '' });
                    i++;
                    continue;
                }
                raw = true;
                break;
            }

            // Plain: scalars, enums, const char*, by-value structs
            items.push({ mode: 'plain', name: aName, type: facadePlainType(d, cppT),
                temp: null, def: facadeDefault(a, cppT), bounds: 0, constArr: false, slot: '' });
            i++;
        }

        var comment = attachedComment(f);

        if (raw) {
            // cpp-typed forward: same shape as the raw extern, kept reachable
            // through the facade on cpp.
            var decl = renderFacadeRawForward(f, haxeName, comment);
            if (decl != null) { facadeFns.push(decl); countFacadeRaw++; }
            return;
        }

        if (hasPtr) {
            facadeMacroFns.push(renderFacadeMacro(haxeName, comment, items, retCpp));
            facadeMacroNames.set(haxeName, true);
            countFacadeMacro++;
            return;
        }

        if (hasArr) {
            facadeFns.push(renderFacadeArrayFn(haxeName, comment, items, retCpp));
            countFacadeArray++;
            return;
        }

        facadeFns.push(renderFacadePlainFn(haxeName, comment, items, retCpp));
        countFacadePlain++;
    }

    static function renderFacadePlainFn(haxeName:String, comment:Null<String>,
            items:Array<{mode:String, name:String, type:String, temp:String, def:Null<String>, bounds:Int, constArr:Bool, slot:String}>,
            retCpp:String):String {

        var parts = [for (it in items) it.def != null ? '${it.name}:${it.type} = ${it.def}' : '${it.name}:${it.type}'];
        var names = [for (it in items) it.name];
        var retFacade = retCpp == 'cpp.ConstCharStar' ? 'String' : (retCpp == 'cpp.Float32' ? 'Float' : retCpp);

        var buf = new StringBuf();
        if (comment != null) buf.add('    /** $comment */\n');
        // extern inline: no non-inlined fallback is ever materialized (hxcpp
        // would otherwise codegen every forward, used or not).
        buf.add('    extern inline public static function $haxeName(${parts.join(', ')}):$retFacade {\n');
        var call = 'imguicpp.ImGui.$haxeName(${names.join(', ')})';
        if (retCpp == 'cpp.ConstCharStar') call = '$call.toString()';
        buf.add(retCpp == 'Void' ? '        $call;\n' : '        return $call;\n');
        buf.add('    }\n');
        return buf.toString();
    }

    static function renderFacadeArrayFn(haxeName:String, comment:Null<String>,
            items:Array<{mode:String, name:String, type:String, temp:String, def:Null<String>, bounds:Int, constArr:Bool, slot:String}>,
            retCpp:String):String {

        var parts = [for (it in items) it.def != null ? '${it.name}:${it.type} = ${it.def}' : '${it.name}:${it.type}'];
        var callNames:Array<String> = [];
        var loads:Array<String> = [];
        var stores:Array<String> = [];
        for (it in items) {
            switch it.mode {
                case 'farr':
                    loads.push('        imguicpp.Marshal.loadFloats(imguicpp.Marshal.${it.slot}, ${it.name}, ${it.bounds});');
                    if (!it.constArr) stores.push('        imguicpp.Marshal.storeFloats(imguicpp.Marshal.${it.slot}, ${it.name}, ${it.bounds});');
                    callNames.push('cast imguicpp.Marshal.${it.slot}');
                case 'iarr':
                    loads.push('        imguicpp.Marshal.loadInts(imguicpp.Marshal.${it.slot}, ${it.name}, ${it.bounds});');
                    if (!it.constArr) stores.push('        imguicpp.Marshal.storeInts(imguicpp.Marshal.${it.slot}, ${it.name}, ${it.bounds});');
                    callNames.push('cast imguicpp.Marshal.${it.slot}');
                case 'cfarr':
                    callNames.push('cast imguicpp.Marshal.floatsDyn(${it.name})');
                    callNames.push('${it.name}.length');
                case _:
                    callNames.push(it.name);
            }
        }

        var buf = new StringBuf();
        if (comment != null) buf.add('    /** $comment */\n');
        var retFacade = retCpp == 'cpp.Float32' ? 'Float' : retCpp;
        // extern inline: avoids hxcpp materialization (no CreateStaticFunctionN
        // beyond 5 args) - the body only calls Marshal + the extern wrappers.
        buf.add('    extern inline public static function $haxeName(${parts.join(', ')}):$retFacade {\n');
        for (l in loads) buf.add('$l\n');
        var call = 'imguicpp.ImGui.$haxeName(${callNames.join(', ')})';
        if (retCpp == 'Void') {
            buf.add('        $call;\n');
            for (st in stores) buf.add('$st\n');
        }
        else {
            buf.add('        var _imret = $call;\n');
            for (st in stores) buf.add('$st\n');
            buf.add('        return _imret;\n');
        }
        buf.add('    }\n');
        return buf.toString();
    }

    static function renderFacadeMacro(haxeName:String, comment:Null<String>,
            items:Array<{mode:String, name:String, type:String, temp:String, def:Null<String>, bounds:Int, constArr:Bool, slot:String}>,
            retCpp:String):String {

        var parts:Array<String> = [];
        var specs:Array<String> = [];
        for (it in items) {
            switch it.mode {
                case 'ptr':
                    var opt = it.def != null ? '?' : '';
                    parts.push('$opt${it.name}:haxe.macro.Expr');
                    specs.push('{ kind: \'ptr:${it.temp}\', e: ${it.name} }');
                case 'strbuf':
                    parts.push('${it.name}:haxe.macro.Expr');
                    parts.push('?maxLength:haxe.macro.Expr');
                    specs.push('{ kind: \'strbuf\', e: ${it.name}, e2: maxLength }');
                case _:
                    var opt = it.def != null ? '?' : '';
                    parts.push('$opt${it.name}:haxe.macro.Expr');
                    specs.push(it.def != null
                        ? '{ kind: \'plain\', e: ${it.name}, def: ${haxeStringLiteral(it.def)} }'
                        : '{ kind: \'plain\', e: ${it.name} }');
            }
        }

        var retKind = retCpp == 'Void' ? 'void' : (retCpp == 'cpp.ConstCharStar' ? 'string' : 'value');

        var buf = new StringBuf();
        if (comment != null) buf.add('    /** $comment */\n');
        buf.add('    public static macro function $haxeName(${parts.join(', ')}):haxe.macro.Expr {\n');
        buf.add('        return imgui.macros.ImGuiMacros.build(\'$haxeName\', \'$retKind\', [\n');
        buf.add('            ' + specs.join(',\n            ') + '\n');
        buf.add('        ]);\n');
        buf.add('    }\n');
        return buf.toString();
    }

    /** cpp-typed inline forward for shapes the portable facade can't express. */
    static function renderFacadeRawForward(f:Dynamic, haxeName:String, comment:Null<String>):Null<String> {
        var ret = haxeType(f.return_type);
        if (ret == null) return null;
        var parts:Array<String> = [];
        var names:Array<String> = [];
        var args:Array<Dynamic> = f.arguments;
        for (a in args) {
            var t = haxeType(a.type);
            if (t == null) return null;
            var aName = safeIdent(lowerFirst(camelizeSnake(a.name)));
            var dv = haxeDefault(a, t);
            parts.push(dv != null ? '$aName:$t = $dv' : '$aName:$t');
            names.push(aName);
        }
        var buf = new StringBuf();
        if (comment != null) buf.add('    /** $comment */\n');
        buf.add('    extern inline public static function $haxeName(${parts.join(', ')}):$ret {\n');
        var call = 'imguicpp.ImGui.$haxeName(${names.join(', ')})';
        buf.add(ret == 'Void' ? '        $call;\n' : '        return $call;\n');
        buf.add('    }\n');
        return buf.toString();
    }

    /** Haxe single-quoted string literal for embedding `s` in generated code. */
    static function haxeStringLiteral(s:String):String {
        var escaped = StringTools.replace(s, '\\\\', '\\\\\\\\');
        escaped = StringTools.replace(escaped, '\'', '\\\'');
        return '\'$escaped\'';
    }

    /**
     * The module user code imports: `import imgui.ImGui;`. A real class with
     * portable signatures (Strings, lvalue out-params via widget macros, Haxe
     * arrays) forwarding to the per-target bindings, plus re-exports of every
     * generated type. Only the cpp target exists for now; the js and cs
     * branches will be added with their emitters.
     */
    static function emitFacade() {

        var names:Array<String> = [];
        // Scalar value typedefs (ImTextureID, ImGuiID, ImWchar...)
        for (n in valueTypedefNames) names.push(n);
        // Enums
        var enums:Array<Dynamic> = meta.enums;
        for (e in enums) {
            if (e.is_internal == true) continue;
            names.push(haxeEnumName(e.name));
        }
        // Structs
        var structs:Array<Dynamic> = meta.structs;
        for (s in structs) {
            if (s.is_internal == true || s.is_anonymous == true) continue;
            names.push(s.name);
        }

        var out = new StringBuf();
        out.add('package imgui;\n\n');
        out.add('// =============================================================================\n');
        out.add('// GENERATED FILE - do not edit by hand (see gen/Gen.hx).\n');
        out.add('// Unified Dear ImGui module: user code imports `imgui.ImGui` and stays\n');
        out.add('// target-agnostic. Out-params are widget MACROS taking plain lvalues\n');
        out.add('// (zero allocation; custom getters/setters are invoked, write-back only\n');
        out.add('// when the value changed) or Ref closures for runtime indirection.\n');
        out.add('// =============================================================================\n\n');
        out.add('#if (cpp && !macro)\n\n');
        out.add('typedef ImGuiOpaqueCallback = imguicpp.ImGui.ImGuiOpaqueCallback;\n');
        for (n in names) out.add('typedef $n = imguicpp.ImGui.$n;\n');
        out.add('\n#elseif (js && !macro)\n\n');
        out.add('typedef ImGuiOpaqueCallback = imguijs.ImGui.ImGuiOpaqueCallback;\n');
        for (n in names) out.add('typedef $n = imguijs.ImGui.$n;\n');
        out.add('\n#elseif (cs && !macro)\n\n');
        out.add('typedef ImGuiOpaqueCallback = imguics.ImGui.ImGuiOpaqueCallback;\n');
        for (n in names) out.add('typedef $n = imguics.ImGui.$n;\n');
        out.add('\n#elseif !macro\n\n');
        out.add('#error "imgui: this target is not supported (cpp, js and cs only)"\n\n');
        out.add('#end\n\n');
        // No @:keep here: it would force hxcpp to generate every forward (incl.
        // Dynamic wrappers that don't exist above 5 args); calls are direct.
        // @:cppInclude: the non-inline members (array marshaling) expand
        // imguicpp __cpp__ calls inside THIS class's generated .cpp.
        out.add('#if (cpp && !macro)\n');
        out.add('@:cppInclude(\'linc_imgui.h\')\n');
        out.add('#end\n');
        out.add('class ImGui {\n\n');
        out.add('#if (cpp && !macro)\n\n');
        for (fn in facadeFns) out.add(fn);
        out.add('\n#elseif (js && !macro)\n\n');
        for (fn in jsFacadeFns) if (!facadeMacroNames.exists(fn.name)) out.add(fn.decl);
        out.add('\n#elseif (cs && !macro)\n\n');
        for (fn in csFacadeFns) if (!facadeMacroNames.exists(fn.name)) out.add(fn.decl);
        out.add('\n#end\n\n');
        for (fn in facadeMacroFns) out.add(fn);
        out.add('\n}\n');

        File.saveContent(root + 'src/imgui/ImGui.hx', out.toString());

    }

    // =========================================================================
    // JS glue (wasm) - C++ wrappers flattening by-value structs + field access
    // =========================================================================

    /** By-value structs whose fields are all scalars/pointers (flattenable). */
    static var flattenable:Map<String, Bool> = new Map();
    /** Rendered dcjs_* wrapper functions. */
    static var jsGlueFns:Array<String> = [];
    static var countJsGlue = 0;
    static var countJsAccessors = 0;

    static function computeFlattenable() {
        var structs:Array<Dynamic> = meta.structs;
        for (s in structs) {
            if (s.is_internal == true || s.is_anonymous == true) continue;
            if (s.by_value != true) continue;
            var fields:Array<Dynamic> = s.fields != null ? s.fields : [];
            if (fields.length == 0) continue;
            var ok = true;
            for (fl in fields) {
                if (fl.is_internal == true || fl.is_anonymous == true || fl.is_array == true) { ok = false; break; }
                var d = StringTools.trim((fl.type.declaration:String));
                var resolved = resolveDecl(StringTools.replace(d, 'const ', ''));
                if (structNames.exists(resolved)) { ok = false; break; } // nested struct
                if (resolved.indexOf('(*') != -1) { ok = false; break; }
            }
            if (ok) flattenable.set(s.name, true);
        }
    }

    /** C parameter declaration for an argument (name embedded when needed). */
    static function cParamDecl(a:Dynamic, aName:String):String {
        var d = StringTools.trim((a.type.declaration:String));
        if (d.indexOf('(*') != -1) {
            // Inline function-pointer declarator already contains the name.
            return d;
        }
        var arrayRe = ~/^(.*?)\s*\[([0-9]*)\]$/;
        if (arrayRe.match(d)) {
            return arrayRe.matched(1) + ' ' + aName + '[' + arrayRe.matched(2) + ']';
        }
        return '$d $aName';
    }

    /** Render one dcjs_* wrapper (null when the shape can't cross to JS). */
    static function renderJsGlue(f:Dynamic, cname:String):Null<String> {
        var retDecl = StringTools.trim((f.return_type.declaration:String));
        var retResolved = resolveDecl(StringTools.replace(retDecl, 'const ', ''));
        var retByValueStruct = structNames.exists(retResolved) && !StringTools.endsWith(retDecl, '*');

        var params:Array<String> = [];
        var prelude:Array<String> = [];
        var callArgs:Array<String> = [];

        var args:Array<Dynamic> = f.arguments;
        var i = 0;
        for (a in args) {
            var d = StringTools.trim((a.type.declaration:String));
            var aName:String = a.name;
            var resolved = resolveDecl(StringTools.replace(d, 'const ', ''));
            var byValueStruct = structNames.exists(resolved) && !StringTools.endsWith(d, '*') && a.is_array != true;
            if (byValueStruct) {
                if (flattenable.get(resolved) != true) return null;
                var s = structByName.get(resolved);
                var fields:Array<Dynamic> = s.fields;
                prelude.push('    $resolved _s$i;');
                for (fl in fields) {
                    var fd = StringTools.trim((fl.type.declaration:String));
                    params.push('$fd ${aName}_${fl.name}');
                    prelude.push('    _s$i.${fl.name} = ${aName}_${fl.name};');
                }
                callArgs.push('_s$i');
            }
            else {
                params.push(cParamDecl(a, aName));
                callArgs.push(aName);
            }
            i++;
        }

        var call = '$cname(${callArgs.join(', ')})';
        var buf = new StringBuf();
        if (retByValueStruct) {
            if (flattenable.get(retResolved) != true) return null;
            var allParams = ['$retResolved* _out'].concat(params);
            buf.add('DCGLUE_EXPORT void dcjs_$cname(${allParams.join(', ')}) {\n');
            for (p in prelude) buf.add('$p\n');
            buf.add('    *_out = $call;\n');
            buf.add('}\n');
        }
        else {
            buf.add('DCGLUE_EXPORT $retDecl dcjs_$cname(${params.join(', ')}) {\n');
            for (p in prelude) buf.add('$p\n');
            buf.add(retDecl == 'void' ? '    $call;\n' : '    return $call;\n');
            buf.add('}\n');
        }
        countJsGlue++;
        return buf.toString();
    }

    /** Field accessors for one struct (get/set per bindable field). */
    static function renderJsFieldAccessors(s:Dynamic, out:StringBuf):Void {
        var name:String = s.name;
        var fields:Array<Dynamic> = s.fields != null ? s.fields : [];
        if (s.forward_declaration == true || fields.length == 0) return;
        for (fl in fields) {
            if (fl.is_internal == true || fl.is_anonymous == true || fl.is_array == true) continue;
            if (isDisabledByDefines(fl)) continue;
            var d = StringTools.trim((fl.type.declaration:String));
            if (d.indexOf('(*') != -1) {
                // function-pointer fields: exposed as raw addresses (read-only)
                out.add('DCGLUE_EXPORT void* dcjs_' + name + '_getp_' + fl.name + '(' + name + '* self) { return (void*)self->' + fl.name + '; }\n');
                countJsAccessors++;
                continue;
            }
            var fName:String = fl.name;
            var resolved = resolveDecl(StringTools.replace(d, 'const ', ''));
            var byValueStruct = structNames.exists(resolved) && !StringTools.endsWith(d, '*');
            if (byValueStruct) {
                if (flattenable.get(resolved) != true) {
                    // nested aggregate (ImVector...): expose its ADDRESS
                    out.add('DCGLUE_EXPORT $resolved* dcjs_${name}_ptr_$fName($name* self) { return &self->$fName; }\n');
                    countJsAccessors++;
                    continue;
                }
                var fs = structByName.get(resolved);
                var ffields:Array<Dynamic> = fs.fields;
                out.add('DCGLUE_EXPORT void dcjs_${name}_get_$fName($name* self, $resolved* _out) { *_out = self->$fName; }\n');
                var setParams = ['$name* self'];
                var setBody = new StringBuf();
                for (ffl in ffields) {
                    var ffd = StringTools.trim((ffl.type.declaration:String));
                    setParams.push('$ffd v_${ffl.name}');
                    setBody.add(' self->$fName.${ffl.name} = v_${ffl.name};');
                }
                out.add('DCGLUE_EXPORT void dcjs_${name}_set_$fName(${setParams.join(', ')}) {${setBody.toString()} }\n');
                countJsAccessors += 2;
            }
            else {
                // Resolved typedef chains keep the ORIGINAL name in the C decl
                // (valid in the header); pointers cross as uint32 addresses.
                out.add('DCGLUE_EXPORT $d dcjs_${name}_get_$fName($name* self) { return self->$fName; }\n');
                out.add('DCGLUE_EXPORT void dcjs_${name}_set_$fName($name* self, $d v) { self->$fName = v; }\n');
                countJsAccessors += 2;
            }
        }
    }

    static function emitJsGlue() {
        var out = new StringBuf();
        out.add('// =============================================================================\n');
        out.add('// GENERATED FILE - do not edit by hand (see gen/Gen.hx).\n');
        out.add('// JS/wasm glue over the dcimgui C API: by-value structs flattened to scalars\n');
        out.add('// (wasm C ABI passes structs indirectly - not callable from JS otherwise),\n');
        out.add('// by-value returns written through an out pointer, plus field accessors for\n');
        out.add('// every bindable struct field. Compiled by build/build-web.sh.\n');
        out.add('// =============================================================================\n\n');
        out.add('#ifdef __EMSCRIPTEN__\n');
        out.add('#include <emscripten.h>\n');
        out.add('#define DCGLUE_EXPORT EMSCRIPTEN_KEEPALIVE\n');
        out.add('#elif defined(_WIN32)\n');
        out.add('#define DCGLUE_EXPORT __declspec(dllexport)\n');
        out.add('#else\n');
        out.add('#define DCGLUE_EXPORT __attribute__((visibility("default")))\n');
        out.add('#endif\n');
        out.add('#include "dcimgui.h"\n\n');
        out.add('extern "C" {\n\n');
        for (g in jsGlueFns) out.add(g);
        out.add('\n// ---- struct field accessors ----\n\n');
        var structs:Array<Dynamic> = meta.structs;
        for (s in structs) {
            if (s.is_internal == true || s.is_anonymous == true) continue;
            renderJsFieldAccessors(s, out);
        }
        out.add('\n// ---- struct sizes ----\n\n');
        for (s in structs) {
            if (s.is_internal == true || s.is_anonymous == true) continue;
            var sFields:Array<Dynamic> = s.fields != null ? s.fields : [];
            if (s.forward_declaration == true || sFields.length == 0) continue; // opaque
            out.add('DCGLUE_EXPORT int dcjs_sizeof_' + s.name + '(void) { return (int)sizeof(' + s.name + '); }\n');
        }
        out.add('\n} // extern "C"\n');
        File.saveContent(root + 'lib/dcimgui/dcimgui_js_glue.cpp', out.toString());
        File.saveContent(root + 'lib/dcimgui/dcimgui_js_exports.txt', '_malloc\n_free\n');
    }

    // =========================================================================
    // JS Haxe module (imguijs.ImGui) - statics over the dcjs_* wasm exports
    // =========================================================================

    static var jsMainFns:Array<String> = [];
    static var jsStructFns:Map<String, Array<String>> = new Map();
    static var jsFacadeFns:Array<{name:String, decl:String}> = [];
    static var facadeMacroNames:Map<String, Bool> = new Map();
    static var countJsFns = 0;

    /** js Haxe type for a resolved C scalar (null when not scalar). */
    static function jsScalar(resolved:String):Null<String> {
        return switch resolved {
            case 'bool': 'Bool';
            case 'float' | 'double': 'Float';
            case 'long long' | 'signed long long' | 'unsigned long long': 'F64X'; // u64 marker
            case 'char' | 'signed char' | 'unsigned char' | 'short' | 'signed short' | 'unsigned short'
                | 'int' | 'signed int' | 'unsigned int' | 'size_t': 'Int';
            case 'void': 'Void';
            case _: null;
        }
    }

    /** Render the imguijs static (and the js facade forward for top-level fns). */
    static function renderJsFn(f:Dynamic, cname:String, haxeName:String, owner:Null<String>):Void {
        var retDecl = StringTools.trim((f.return_type.declaration:String));
        var retResolved = resolveDecl(StringTools.trim(StringTools.replace(retDecl, 'const ', '')));

        var parts:Array<String> = [];
        var callArgs:Array<String> = [];
        var hasStr = false;
        // facade variant (Array<Float>/Array<Int> for bounded arrays)
        var fParts:Array<String> = [];
        var fPre:Array<String> = [];
        var fPost:Array<String> = [];
        var fNames:Array<String> = [];
        var arrSlots = 0;

        var args:Array<Dynamic> = f.arguments;
        var cfarrPending:String = null;
        var argIndex = -1;
        for (a in args) {
            argIndex++;
            var d = StringTools.trim((a.type.declaration:String));
            var aName = safeIdent(lowerFirst(camelizeSnake(a.name)));
            var dv:Null<String> = a.default_value;

            if (cfarrPending != null) {
                // count arg of a const float* pair: facade derives it from length
                parts.push('$aName:Int');
                callArgs.push(aName);
                fNames.push(cfarrPending + '.length');
                cfarrPending = null;
                continue;
            }
            if (d == 'const float*' && argIndex + 1 < args.length) {
                var na = args[argIndex + 1];
                var nd = resolveDecl(StringTools.trim(StringTools.replace((na.type.declaration:String), 'const ', '')));
                var nn:String = na.name;
                if (nd == 'int' && nn.indexOf('count') != -1) {
                    parts.push('$aName:Int');
                    callArgs.push(aName);
                    fParts.push('$aName:Array<Float>');
                    fNames.push('imguijs.ImGuiJs.floatsDyn($aName)');
                    cfarrPending = aName;
                    continue;
                }
            }

            if (d == 'const char*') {
                var def = dv == 'NULL' ? ' = null' : (dv != null && ~/^"[^"\\]*"$/.match(dv) ? ' = $dv' : '');
                parts.push('$aName:String$def');
                callArgs.push('imguijs.ImGuiJs.str($aName)');
                hasStr = true;
                fParts.push('$aName:String$def');
                fNames.push(aName);
                continue;
            }

            var resolved = resolveDecl(StringTools.trim(StringTools.replace(d, 'const ', '')));
            var isPtr = StringTools.endsWith(d, '*');
            var isArr = a.is_array == true;

            if (!isPtr && !isArr && structNames.exists(resolved)) {
                // by-value struct: flattened (or the whole fn was skipped in glue)
                if (flattenable.get(resolved) != true) return;
                switch resolved {
                    case 'ImVec2':
                        parts.push('$aName:ImVec2');
                        callArgs.push('$aName.x, $aName.y');
                    case 'ImVec4':
                        parts.push('$aName:ImVec4');
                        callArgs.push('$aName.x, $aName.y, $aName.z, $aName.w');
                    case 'ImTextureRef':
                        parts.push('$aName:ImTextureRef');
                        callArgs.push('$aName._TexData, imguijs.ImGuiJs.u64($aName._TexID)');
                    case _:
                        return; // unexpected flattenable: skip
                }
                fParts.push(parts[parts.length - 1]);
                fNames.push(aName);
                continue;
            }

            if (isArr) {
                var arrayRe = ~/^(.*?)\s*\[[0-9]*\]$/;
                var elem = arrayRe.match(d) ? resolveDecl(StringTools.trim(StringTools.replace(arrayRe.matched(1), 'const ', ''))) : '';
                var bounds:Null<Int> = a.array_bounds != null ? Std.parseInt(Std.string(a.array_bounds)) : null;
                parts.push('$aName:Int');
                callArgs.push(aName);
                if (bounds != null && bounds >= 1 && bounds <= 4 && (elem == 'float' || elem == 'int')) {
                    var slot = arrSlots++ == 0 ? 'imguijs.ImGuiJs.arrScratchA' : 'imguijs.ImGuiJs.arrScratchB';
                    var isConstArr = StringTools.startsWith(d, 'const ');
                    if (elem == 'float') {
                        fParts.push('$aName:Array<Float>');
                        fPre.push('        for (_i in 0...$bounds) imguijs.ImGuiJs.setF32($slot + (_i << 2), $aName[_i]);');
                        if (!isConstArr) fPost.push('        for (_i in 0...$bounds) $aName[_i] = imguijs.ImGuiJs.getF32($slot + (_i << 2));');
                    }
                    else {
                        fParts.push('$aName:Array<Int>');
                        fPre.push('        for (_i in 0...$bounds) imguijs.ImGuiJs.setI32($slot + (_i << 2), $aName[_i]);');
                        if (!isConstArr) fPost.push('        for (_i in 0...$bounds) $aName[_i] = imguijs.ImGuiJs.getI32($slot + (_i << 2));');
                    }
                    fNames.push(slot);
                }
                else {
                    fParts.push('$aName:Int');
                    fNames.push(aName);
                }
                continue;
            }

            if (isPtr || resolved.indexOf('(*') != -1) {
                // pointers cross as addresses; struct pointers keep their abstract type
                var inner = StringTools.trim(d.substr(0, d.length - 1));
                inner = resolveDecl(StringTools.trim(StringTools.replace(inner, 'const ', '')));
                var t = (isPtr && structNames.exists(inner) && flattenable.get(inner) != true && !StringTools.endsWith(inner, '*')) ? inner : 'Int';
                var def = dv == 'NULL' ? (t == 'Int' ? ' = 0' : ' = cast 0') : '';
                parts.push('$aName:$t$def');
                callArgs.push(aName);
                fParts.push('$aName:$t$def');
                fNames.push(aName);
                continue;
            }

            // scalars & enums
            var js = jsScalar(resolved);
            if (js == 'F64X') {
                parts.push('$aName:Float');
                callArgs.push('imguijs.ImGuiJs.u64($aName)');
                fParts.push('$aName:Float');
                fNames.push(aName);
                continue;
            }
            var t = js != null ? js : (enumNames.exists(haxeEnumName(resolved)) ? haxeEnumName(resolved) : null);
            if (t == null && enumNames.exists(resolved)) t = resolved;
            if (t == null) return;
            var def = haxeDefault(a, t);
            parts.push(def != null ? '$aName:$t = $def' : '$aName:$t');
            callArgs.push(aName);
            fParts.push(parts[parts.length - 1]);
            fNames.push(aName);
        }

        // Return mapping
        var retByValueStruct = structNames.exists(retResolved) && !StringTools.endsWith(retDecl, '*');
        var retType:String;
        var body:Array<String> = [];
        if (hasStr) body.push('        imguijs.ImGuiJs.strReset();');
        var callExpr = 'imguijs.ImGuiJs.M._dcjs_$cname(${callArgs.join(', ')})';

        if (retByValueStruct) {
            if (flattenable.get(retResolved) != true) return;
            retType = retResolved;
            var outCall = callArgs.length > 0
                ? 'imguijs.ImGuiJs.M._dcjs_$cname(imguijs.ImGuiJs.vecScratch, ${callArgs.join(', ')})'
                : 'imguijs.ImGuiJs.M._dcjs_$cname(imguijs.ImGuiJs.vecScratch)';
            body.push('        $outCall;');
            switch retResolved {
                case 'ImVec2':
                    body.push('        return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4));');
                case 'ImVec4':
                    body.push('        return ImVec4.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 8), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 12));');
                case 'ImTextureRef':
                    body.push('        return ImTextureRef.fromParts(imguijs.ImGuiJs.getU32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getU64(imguijs.ImGuiJs.vecScratch + 8));');
                case _:
                    return;
            }
        }
        else if (retDecl == 'const char*') {
            retType = 'String';
            body.push('        return imguijs.ImGuiJs.M.UTF8ToString($callExpr);');
        }
        else if (retDecl == 'void') {
            retType = 'Void';
            body.push('        $callExpr;');
        }
        else if (retResolved == 'bool') {
            retType = 'Bool';
            body.push('        return ($callExpr) != 0;');
        }
        else {
            var js = jsScalar(retResolved);
            if (js == 'F64X') {
                retType = 'Float';
                body.push('        return imguijs.ImGuiJs.num64($callExpr);');
            }
            else if (StringTools.endsWith(retDecl, '*')) {
                var inner = resolveDecl(StringTools.trim(StringTools.replace(retDecl.substr(0, retDecl.length - 1), 'const ', '')));
                retType = (structNames.exists(inner) && flattenable.get(inner) != true) ? inner : 'Int';
                body.push('        return $callExpr;');
            }
            else if (js != null) {
                retType = js;
                body.push('        return $callExpr;');
            }
            else if (enumNames.exists(haxeEnumName(retResolved))) {
                retType = haxeEnumName(retResolved);
                body.push('        return $callExpr;');
            }
            else return;
        }

        var buf = new StringBuf();
        buf.add('    inline public static function $haxeName(${parts.join(', ')}):$retType {\n');
        for (b in body) buf.add('$b\n');
        buf.add('    }\n');

        if (owner != null) {
            if (!jsStructFns.exists(owner)) jsStructFns.set(owner, []);
            jsStructFns.get(owner).push(buf.toString());
        }
        else {
            jsMainFns.push(buf.toString());
            // facade forward
            var fbuf = new StringBuf();
            if (fPre.length == 0 && fPost.length == 0) {
                fbuf.add('    extern inline public static function $haxeName(${fParts.join(', ')}):$retType {\n');
                fbuf.add(retType == 'Void'
                    ? '        imguijs.ImGui.$haxeName(${fNames.join(', ')});\n'
                    : '        return imguijs.ImGui.$haxeName(${fNames.join(', ')});\n');
                fbuf.add('    }\n');
            }
            else {
                fbuf.add('    public static function $haxeName(${fParts.join(', ')}):$retType {\n');
                for (p in fPre) fbuf.add('$p\n');
                if (retType == 'Void') {
                    fbuf.add('        imguijs.ImGui.$haxeName(${fNames.join(', ')});\n');
                    for (p in fPost) fbuf.add('$p\n');
                }
                else {
                    fbuf.add('        var _imret = imguijs.ImGui.$haxeName(${fNames.join(', ')});\n');
                    for (p in fPost) fbuf.add('$p\n');
                    fbuf.add('        return _imret;\n');
                }
                fbuf.add('    }\n');
            }
            jsFacadeFns.push({ name: haxeName, decl: fbuf.toString() });
        }
        countJsFns++;
    }

    /** js field type + get/set expressions for struct abstract props. */
    static function emitJsStructs(out:StringBuf) {
        var structs:Array<Dynamic> = meta.structs;
        for (s in structs) {
            if (s.is_internal == true || s.is_anonymous == true) continue;
            var name:String = s.name;
            if (name == 'ImVec2' || name == 'ImVec4' || name == 'ImTextureRef') continue; // value classes
            var fields:Array<Dynamic> = s.fields != null ? s.fields : [];
            var isOpaque = (s.forward_declaration == true) || fields.length == 0;

            out.add('abstract $name(Int) from Int to Int {\n');
            if (!isOpaque) {
                for (fl in fields) {
                    if (fl.is_internal == true || fl.is_anonymous == true || fl.is_array == true) continue;
                    if (isDisabledByDefines(fl)) continue;
                    var d = StringTools.trim((fl.type.declaration:String));
                    if (d.indexOf('(*') != -1) {
                        var hNameP = safeIdent(lowerFirst(fl.name));
                        out.add('    public var ' + hNameP + '(get, never):Int;\n');
                        out.add('    inline function get_' + hNameP + '():Int { return imguijs.ImGuiJs.M._dcjs_' + name + '_getp_' + fl.name + '(this); }\n');
                        continue;
                    }
                    var fName:String = fl.name;
                    var hName = safeIdent(lowerFirst(fName));
                    var resolved = resolveDecl(StringTools.trim(StringTools.replace(d, 'const ', '')));
                    var isPtr = StringTools.endsWith(d, '*');

                    if (resolved.indexOf('(*') != -1) {
                        // typedef'd function pointer (ImDrawCallback...): raw address
                        out.add('    public var ' + hName + '(get, set):Int;\n');
                        out.add('    inline function get_' + hName + '():Int { return imguijs.ImGuiJs.M._dcjs_' + name + '_get_' + fName + '(this); }\n');
                        out.add('    inline function set_' + hName + '(v:Int):Int { imguijs.ImGuiJs.M._dcjs_' + name + '_set_' + fName + '(this, v); return v; }\n');
                        continue;
                    }

                    if (!isPtr && structNames.exists(resolved)) {
                        if (flattenable.get(resolved) == true) {
                            switch resolved {
                                case 'ImVec2':
                                    out.add('    public var $hName(get, set):ImVec2;\n');
                                    out.add('    inline function get_$hName():ImVec2 { imguijs.ImGuiJs.M._dcjs_${name}_get_$fName(this, imguijs.ImGuiJs.vecScratch); return ImVec2.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4)); }\n');
                                    out.add('    inline function set_$hName(v:ImVec2):ImVec2 { imguijs.ImGuiJs.M._dcjs_${name}_set_$fName(this, v.x, v.y); return v; }\n');
                                case 'ImVec4':
                                    out.add('    public var $hName(get, set):ImVec4;\n');
                                    out.add('    inline function get_$hName():ImVec4 { imguijs.ImGuiJs.M._dcjs_${name}_get_$fName(this, imguijs.ImGuiJs.vecScratch); return ImVec4.make(imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 4), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 8), imguijs.ImGuiJs.getF32(imguijs.ImGuiJs.vecScratch + 12)); }\n');
                                    out.add('    inline function set_$hName(v:ImVec4):ImVec4 { imguijs.ImGuiJs.M._dcjs_${name}_set_$fName(this, v.x, v.y, v.z, v.w); return v; }\n');
                                case 'ImTextureRef':
                                    out.add('    public var $hName(get, set):ImTextureRef;\n');
                                    out.add('    inline function get_$hName():ImTextureRef { imguijs.ImGuiJs.M._dcjs_${name}_get_$fName(this, imguijs.ImGuiJs.vecScratch); return ImTextureRef.fromParts(imguijs.ImGuiJs.getU32(imguijs.ImGuiJs.vecScratch), imguijs.ImGuiJs.getU64(imguijs.ImGuiJs.vecScratch + 8)); }\n');
                                    out.add('    inline function set_$hName(v:ImTextureRef):ImTextureRef { imguijs.ImGuiJs.M._dcjs_${name}_set_$fName(this, v._TexData, imguijs.ImGuiJs.u64(v._TexID)); return v; }\n');
                                case _:
                            }
                        }
                        else {
                            // pointer accessor to the nested struct
                            out.add('    public var $hName(get, never):$resolved;\n');
                            out.add('    inline function get_$hName():$resolved { return imguijs.ImGuiJs.M._dcjs_${name}_ptr_$fName(this); }\n');
                        }
                        continue;
                    }

                    var t:String;
                    var getExpr:String;
                    var setStmt:String;
                    if (isPtr || d == 'const char*' || d == 'char*') {
                        var inner = StringTools.trim(d.substr(0, d.length - 1));
                        inner = resolveDecl(StringTools.trim(StringTools.replace(inner, 'const ', '')));
                        t = (structNames.exists(inner) && flattenable.get(inner) != true && !StringTools.endsWith(inner, '*')) ? inner : 'Int';
                        getExpr = 'imguijs.ImGuiJs.M._dcjs_${name}_get_$fName(this)';
                        setStmt = 'imguijs.ImGuiJs.M._dcjs_${name}_set_$fName(this, v)';
                    }
                    else {
                        var js = jsScalar(resolved);
                        if (js == 'F64X') {
                            t = 'Float';
                            getExpr = 'imguijs.ImGuiJs.num64(imguijs.ImGuiJs.M._dcjs_${name}_get_$fName(this))';
                            setStmt = 'imguijs.ImGuiJs.M._dcjs_${name}_set_$fName(this, imguijs.ImGuiJs.u64(v))';
                        }
                        else if (js == 'Bool') {
                            t = 'Bool';
                            getExpr = '(imguijs.ImGuiJs.M._dcjs_${name}_get_$fName(this)) != 0';
                            setStmt = 'imguijs.ImGuiJs.M._dcjs_${name}_set_$fName(this, v)';
                        }
                        else if (js != null && js != 'Void') {
                            t = js;
                            getExpr = 'imguijs.ImGuiJs.M._dcjs_${name}_get_$fName(this)';
                            setStmt = 'imguijs.ImGuiJs.M._dcjs_${name}_set_$fName(this, v)';
                        }
                        else if (enumNames.exists(haxeEnumName(resolved))) {
                            t = haxeEnumName(resolved);
                            getExpr = 'imguijs.ImGuiJs.M._dcjs_${name}_get_$fName(this)';
                            setStmt = 'imguijs.ImGuiJs.M._dcjs_${name}_set_$fName(this, (v:Int))';
                        }
                        else continue;
                    }
                    out.add('    public var $hName(get, set):$t;\n');
                    out.add('    inline function get_$hName():$t { return $getExpr; }\n');
                    out.add('    inline function set_$hName(v:$t):$t { $setStmt; return v; }\n');
                }
            }
            if (!isOpaque) {
                out.add('    /** sizeof(' + name + ') on the wasm side (element stride). */\n');
                out.add('    inline public static function sizeOf():Int { return imguijs.ImGuiJs.M._dcjs_sizeof_' + name + '(); }\n');
            }
            var fns = jsStructFns.get(name);
            if (fns != null) {
                out.add('\n');
                for (fn in fns) out.add(fn);
            }
            out.add('}\n\n');
        }
    }

    static function emitJsModule() {
        var out = new StringBuf();
        out.add('package imguijs;\n\n');
        out.add('// =============================================================================\n');
        out.add('// GENERATED FILE - do not edit by hand (see gen/Gen.hx).\n');
        out.add('// js-target bindings over the emscripten-built dcimgui module (dcjs_* glue):\n');
        out.add('// structs are wasm heap addresses wrapped in Int abstracts with field props;\n');
        out.add('// ImVec2/ImVec4/ImTextureRef are value classes; strings marshal through a\n');
        out.add('// bump scratch (see ImGuiJs). Load the module and call ImGuiJs.init() first.\n');
        out.add('// =============================================================================\n\n');
        out.add('typedef ImGuiOpaqueCallback = Int;\n\n');
        // scalar value typedefs
        var emitted = new Map<String, Bool>();
        for (n in valueTypedefNames) {
            if (emitted.exists(n)) continue;
            emitted.set(n, true);
            var js = jsScalar(resolveDecl(n));
            if (js == null || js == 'Void') continue;
            out.add('typedef $n = ' + (js == 'F64X' ? 'Float' : js) + ';\n');
        }
        out.add('\n');
        emitEnums(out, false);
        // value classes
        out.add('class ImVec2 {\n');
        out.add('    public var x:Float;\n    public var y:Float;\n');
        out.add('    public inline function new(x:Float, y:Float) { this.x = x; this.y = y; }\n');
        out.add('    inline public static function make(x:Float, y:Float):ImVec2 return new ImVec2(x, y);\n');
        out.add('}\n\n');
        out.add('class ImVec4 {\n');
        out.add('    public var x:Float;\n    public var y:Float;\n    public var z:Float;\n    public var w:Float;\n');
        out.add('    public inline function new(x:Float, y:Float, z:Float, w:Float) { this.x = x; this.y = y; this.z = z; this.w = w; }\n');
        out.add('    inline public static function make(x:Float, y:Float, z:Float, w:Float):ImVec4 return new ImVec4(x, y, z, w);\n');
        out.add('}\n\n');
        out.add('class ImTextureRef {\n');
        out.add('    public var _TexData:Int;\n    public var _TexID:Float;\n');
        out.add('    public inline function new(texData:Int, texID:Float) { this._TexData = texData; this._TexID = texID; }\n');
        out.add('    inline public static function fromID(texID:Float):ImTextureRef return new ImTextureRef(0, texID);\n');
        out.add('    inline public static function fromParts(texData:Int, texID:Float):ImTextureRef return new ImTextureRef(texData, texID);\n');
        out.add('}\n\n');
        emitJsStructs(out);
        out.add('class ImGui {\n\n');
        for (fn in jsMainFns) out.add(fn);
        out.add('\n}\n');
        File.saveContent(root + 'src/imguijs/ImGui.hx', out.toString());
    }

    // =========================================================================
    // CS (Unity) - generated C# P/Invoke shim + Haxe externs over it
    //
    // Calls P/Invoke the ORIGINAL dcimgui C functions (C# marshals by-value
    // [StructLayout] structs, LPUTF8Str strings, I1 bools natively - no
    // flattening needed). The dcjs_* glue (compiled into the native libs too)
    // is used ONLY for struct field accessors, sizeof and fnptr getters.
    // Addresses cross as Haxe Float (53-bit mantissa ≫ 48-bit user-space VA):
    // constants in defaults, plain arithmetic; ImGuiCs converts to IntPtr at
    // the P/Invoke boundary.
    // =========================================================================

    static var csMainFns:Array<String> = [];
    static var csStructFns:Map<String, Array<String>> = new Map();
    static var csFacadeFns:Array<{name:String, decl:String}> = [];
    static var csShimFns:Array<String> = [];
    static var countCsFns = 0;

    /** C# reserved words that show up as dcimgui parameter names. */
    static final CS_RESERVED = [
        'ref', 'in', 'out', 'string', 'object', 'params', 'event', 'base', 'this',
        'lock', 'fixed', 'checked', 'default', 'delegate', 'class', 'struct', 'enum',
        'new', 'value', 'internal', 'override', 'readonly'
    ];

    /** ImGuiCs cast helper name for small C int types (Haxe Int call sites). */
    static function csSmallIntCast(resolved:String):Null<String> {
        return switch resolved {
            case 'char' | 'signed char': 'toI8';
            case 'unsigned char': 'toU8';
            case 'short' | 'signed short': 'toI16';
            case 'unsigned short': 'toU16';
            case _: null;
        }
    }

    /** C# identifier for a C parameter name (verbatim @name when reserved). */
    static function csSafeName(name:String):String {
        return CS_RESERVED.indexOf(name) != -1 ? '@' + name : name;
    }

    /** C# P/Invoke parameter type (null = fn not bindable on cs). */
    static function csShimType(d:String):Null<String> {
        d = StringTools.trim(d);
        if (d == 'const char*') return '[MarshalAs(UnmanagedType.LPUTF8Str)] string';
        var resolved = resolveDecl(StringTools.trim(StringTools.replace(d, 'const ', '')));
        var isPtr = StringTools.endsWith(d, '*');
        if (!isPtr && d.indexOf('[') == -1 && structNames.exists(resolved)) {
            return flattenable.get(resolved) == true ? resolved : null;
        }
        if (isPtr || d.indexOf('[') != -1 || resolved.indexOf('(*') != -1) return 'System.IntPtr';
        return switch resolved {
            case 'bool': '[MarshalAs(UnmanagedType.I1)] bool';
            case 'float': 'float';
            case 'double': 'double';
            case 'char' | 'signed char': 'sbyte';
            case 'unsigned char': 'byte';
            case 'short' | 'signed short': 'short';
            case 'unsigned short': 'ushort';
            case 'int' | 'signed int': 'int';
            case 'unsigned int': 'uint';
            case 'long long' | 'signed long long': 'long';
            case 'unsigned long long': 'ulong';
            case 'size_t': 'System.IntPtr'; // same width, sign irrelevant at ABI level
            case _: (enumNames.exists(haxeEnumName(resolved)) || enumNames.exists(resolved)) ? 'int' : null;
        }
    }

    static function csShimRetType(d:String):Null<String> {
        d = StringTools.trim(d);
        if (d == 'void') return 'void';
        if (d == 'const char*') return 'System.IntPtr'; // read via ImGuiCs.readString
        var resolved = resolveDecl(StringTools.trim(StringTools.replace(d, 'const ', '')));
        if (!StringTools.endsWith(d, '*') && structNames.exists(resolved)) {
            return flattenable.get(resolved) == true ? resolved : null;
        }
        var t = csShimType(d);
        if (t == null) return null;
        if (t == '[MarshalAs(UnmanagedType.I1)] bool') return 'bool';
        if (StringTools.startsWith(t, '[MarshalAs')) return 'System.IntPtr';
        return t;
    }

    /** Emit the C# [DllImport] + the imguics Haxe binding (+ facade forward). */
    static function renderCsFn(f:Dynamic, cname:String, haxeName:String, owner:Null<String>):Void {
        var retDecl = StringTools.trim((f.return_type.declaration:String));
        var retResolved = resolveDecl(StringTools.trim(StringTools.replace(retDecl, 'const ', '')));
        var retShim = csShimRetType(retDecl);
        if (retShim == null) return;

        var shimParams:Array<String> = [];
        var parts:Array<String> = [];
        var callArgs:Array<String> = [];
        var fParts:Array<String> = [];
        var fPre:Array<String> = [];
        var fPost:Array<String> = [];
        var fNames:Array<String> = [];
        var arrSlots = 0;

        var args:Array<Dynamic> = f.arguments;
        var cfarrPending:String = null;
        var argIndex = -1;
        for (a in args) {
            argIndex++;
            var d = StringTools.trim((a.type.declaration:String));
            var aName = safeIdent(lowerFirst(camelizeSnake(a.name)));
            var dv:Null<String> = a.default_value;
            var shim = csShimType(d);
            if (shim == null) return;
            shimParams.push('$shim ${csSafeName((a.name:String))}');

            if (cfarrPending != null) {
                // count arg of a const float* pair: facade derives it from length
                parts.push('$aName:Int');
                callArgs.push(aName);
                fNames.push(cfarrPending + '.length');
                cfarrPending = null;
                continue;
            }
            if (d == 'const float*' && argIndex + 1 < args.length) {
                var na = args[argIndex + 1];
                var nd = resolveDecl(StringTools.trim(StringTools.replace((na.type.declaration:String), 'const ', '')));
                var nn:String = na.name;
                if (nd == 'int' && nn.indexOf('count') != -1) {
                    parts.push('$aName:Float = 0');
                    callArgs.push('imguics.ImGuiCs.ptr($aName)');
                    fParts.push('$aName:Array<Float>');
                    fNames.push('imguics.ImGuiCs.floatsDyn($aName)');
                    cfarrPending = aName;
                    continue;
                }
            }

            var resolved = resolveDecl(StringTools.trim(StringTools.replace(d, 'const ', '')));
            var isPtr = StringTools.endsWith(d, '*');
            var isArr = a.is_array == true;

            if (d == 'const char*') {
                var def = dv == 'NULL' ? ' = null' : (dv != null && ~/^"[^"\\]*"$/.match(dv) ? ' = $dv' : '');
                parts.push('$aName:String$def');
                callArgs.push(aName);
                fParts.push('$aName:String$def');
                fNames.push(aName);
                continue;
            }
            if (!isPtr && !isArr && structNames.exists(resolved)) {
                if (flattenable.get(resolved) != true) return;
                parts.push('$aName:$resolved');
                callArgs.push(aName);
                fParts.push('$aName:$resolved');
                fNames.push(aName);
                continue;
            }
            if (isArr) {
                var arrayRe = ~/^(.*?)\s*\[[0-9]*\]$/;
                var elem = arrayRe.match(d) ? resolveDecl(StringTools.trim(StringTools.replace(arrayRe.matched(1), 'const ', ''))) : '';
                var bounds:Null<Int> = a.array_bounds != null ? Std.parseInt(Std.string(a.array_bounds)) : null;
                parts.push('$aName:Float = 0');
                callArgs.push('imguics.ImGuiCs.ptr($aName)');
                if (bounds != null && bounds >= 1 && bounds <= 4 && (elem == 'float' || elem == 'int')) {
                    var slot = arrSlots++ == 0 ? 'imguics.ImGuiCs.arrScratchA' : 'imguics.ImGuiCs.arrScratchB';
                    var isConstArr = StringTools.startsWith(d, 'const ');
                    if (elem == 'float') {
                        fParts.push('$aName:Array<Float>');
                        fPre.push('        for (_i in 0...$bounds) imguics.ImGuiCs.setF32($slot + (_i << 2), $aName[_i]);');
                        if (!isConstArr) fPost.push('        for (_i in 0...$bounds) $aName[_i] = imguics.ImGuiCs.getF32($slot + (_i << 2));');
                    }
                    else {
                        fParts.push('$aName:Array<Int>');
                        fPre.push('        for (_i in 0...$bounds) imguics.ImGuiCs.setI32($slot + (_i << 2), $aName[_i]);');
                        if (!isConstArr) fPost.push('        for (_i in 0...$bounds) $aName[_i] = imguics.ImGuiCs.getI32($slot + (_i << 2));');
                    }
                    fNames.push(slot);
                }
                else {
                    fParts.push('$aName:Float = 0');
                    fNames.push(aName);
                }
                continue;
            }
            if (isPtr || resolved.indexOf('(*') != -1) {
                var inner = isPtr ? resolveDecl(StringTools.trim(StringTools.replace(StringTools.trim(d.substr(0, d.length - 1)), 'const ', ''))) : '';
                var t = (isPtr && structNames.exists(inner) && flattenable.get(inner) != true && !StringTools.endsWith(inner, '*')) ? inner : 'Float';
                var def = dv == 'NULL' ? ' = 0' : '';
                parts.push('$aName:$t$def');
                callArgs.push('imguics.ImGuiCs.ptr($aName)');
                fParts.push('$aName:$t$def');
                fNames.push(aName);
                continue;
            }
            var js = jsScalar(resolved);
            if (js == 'F64X') {
                parts.push('$aName:Float');
                callArgs.push(resolved == 'unsigned long long' ? 'imguics.ImGuiCs.toU64($aName)' : 'imguics.ImGuiCs.toI64($aName)');
                fParts.push('$aName:Float');
                fNames.push(aName);
                continue;
            }
            if (resolved == 'size_t') {
                parts.push('$aName:Int');
                callArgs.push('imguics.ImGuiCs.ptr($aName)');
                fParts.push('$aName:Int');
                fNames.push(aName);
                continue;
            }
            var t = js != null ? js : (enumNames.exists(haxeEnumName(resolved)) ? haxeEnumName(resolved) : (enumNames.exists(resolved) ? resolved : null));
            if (t == null) return;
            var isEnum = js == null;
            var def = haxeDefault(a, t);
            parts.push(def != null ? '$aName:$t = $def' : '$aName:$t');
            var small = csSmallIntCast(resolved);
            callArgs.push(small != null ? 'imguics.ImGuiCs.$small($aName)' : (isEnum ? '($aName:Int)' : aName));
            fParts.push(parts[parts.length - 1]);
            fNames.push(aName);
        }

        // C# shim decl
        var shimAttrs = retShim == 'bool' ? '    [return: MarshalAs(UnmanagedType.I1)]\n' : '';
        csShimFns.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n$shimAttrs    public static extern $retShim $cname(${shimParams.join(', ')});\n');
        pushCsExtern(cname, retShim, shimParams);

        // Haxe binding body
        var retByValueStruct = structNames.exists(retResolved) && !StringTools.endsWith(retDecl, '*');
        var retType:String;
        var body:Array<String> = [];
        var callExpr = 'imguics.DCImGui.$cname(${callArgs.join(', ')})';

        if (retByValueStruct) {
            retType = retResolved;
            body.push('        return $callExpr;');
        }
        else if (retDecl == 'const char*') {
            retType = 'String';
            body.push('        return imguics.ImGuiCs.readString($callExpr);');
        }
        else if (retDecl == 'void') {
            retType = 'Void';
            body.push('        $callExpr;');
        }
        else if (retResolved == 'bool') {
            retType = 'Bool';
            body.push('        return $callExpr;');
        }
        else {
            var js = jsScalar(retResolved);
            if (js == 'F64X') {
                retType = 'Float';
                body.push('        return imguics.ImGuiCs.from64($callExpr);');
            }
            else if (StringTools.endsWith(retDecl, '*')) {
                var inner = resolveDecl(StringTools.trim(StringTools.replace(StringTools.trim(retDecl.substr(0, retDecl.length - 1)), 'const ', '')));
                retType = (structNames.exists(inner) && flattenable.get(inner) != true) ? inner : 'Float';
                body.push('        return imguics.ImGuiCs.addr($callExpr);');
            }
            else if (retResolved == 'size_t') {
                retType = 'Int';
                body.push('        return Std.int(imguics.ImGuiCs.addr($callExpr));');
            }
            else if (js != null) {
                retType = js;
                body.push('        return $callExpr;');
            }
            else if (enumNames.exists(haxeEnumName(retResolved))) {
                retType = haxeEnumName(retResolved);
                body.push('        return $callExpr;');
            }
            else return;
        }

        var buf = new StringBuf();
        // NOT inline: hxcs would leave the trailing value expression as a bare
        // statement (CS0201) whenever the caller discards the result.
        buf.add('    public static function $haxeName(${parts.join(', ')}):$retType {\n');
        for (b in body) buf.add('$b\n');
        buf.add('    }\n');

        if (owner != null) {
            if (!csStructFns.exists(owner)) csStructFns.set(owner, []);
            csStructFns.get(owner).push(buf.toString());
        }
        else {
            csMainFns.push(buf.toString());
            var fbuf = new StringBuf();
            if (fPre.length == 0 && fPost.length == 0) {
                fbuf.add('    extern inline public static function $haxeName(${fParts.join(', ')}):$retType {\n');
                fbuf.add(retType == 'Void'
                    ? '        imguics.ImGui.$haxeName(${fNames.join(', ')});\n'
                    : '        return imguics.ImGui.$haxeName(${fNames.join(', ')});\n');
                fbuf.add('    }\n');
            }
            else {
                fbuf.add('    public static function $haxeName(${fParts.join(', ')}):$retType {\n');
                for (p in fPre) fbuf.add('$p\n');
                if (retType == 'Void') {
                    fbuf.add('        imguics.ImGui.$haxeName(${fNames.join(', ')});\n');
                    for (p in fPost) fbuf.add('$p\n');
                }
                else {
                    fbuf.add('        var _imret = imguics.ImGui.$haxeName(${fNames.join(', ')});\n');
                    for (p in fPost) fbuf.add('$p\n');
                    fbuf.add('        return _imret;\n');
                }
                fbuf.add('    }\n');
            }
            csFacadeFns.push({ name: haxeName, decl: fbuf.toString() });
        }
        countCsFns++;
    }

    /** Haxe extern type for a C# shim type. */
    static function csHaxeType(shim:String):String {
        if (StringTools.startsWith(shim, '[MarshalAs(UnmanagedType.LPUTF8Str)]')) return 'String';
        if (StringTools.startsWith(shim, '[MarshalAs(UnmanagedType.I1)]')) return 'Bool';
        return switch shim {
            case 'System.IntPtr': 'cs.system.IntPtr';
            case 'bool': 'Bool';
            case 'float': 'Single';
            case 'double': 'Float';
            case 'sbyte': 'cs.StdTypes.Int8';
            case 'byte': 'cs.StdTypes.UInt8';
            case 'short': 'cs.StdTypes.Int16';
            case 'ushort': 'cs.StdTypes.UInt16';
            case 'int': 'Int';
            case 'uint': 'UInt';
            case 'long': 'haxe.Int64';
            case 'ulong': 'cs.StdTypes.UInt64';
            case 'void': 'Void';
            case 'string': 'String';
            case s: s; // struct names (ImVec2...)
        }
    }

    /** Emit the Haxe extern decl for one shim function. */
    static var csExternFns:Array<String> = [];
    static function pushCsExtern(cname:String, retShim:String, shimParams:Array<String>):Void {
        var hargs = [];
        var i = 0;
        for (p in shimParams) {
            // strip the arg name (last token)
            var sp = p.substr(0, p.lastIndexOf(' '));
            hargs.push('arg$i:' + csHaxeType(StringTools.trim(sp)));
            i++;
        }
        csExternFns.push('    static function $cname(${hargs.join(', ')}):' + csHaxeType(retShim) + ';\n');
    }

    /** cs struct abstracts (over Float addresses) + accessor imports. */
    static var csShimAccessors:Array<String> = [];
    static function emitCsStructs(out:StringBuf) {
        var structs:Array<Dynamic> = meta.structs;
        for (s in structs) {
            if (s.is_internal == true || s.is_anonymous == true) continue;
            var name:String = s.name;
            if (name == 'ImVec2' || name == 'ImVec4' || name == 'ImTextureRef') continue; // C# structs
            var fields:Array<Dynamic> = s.fields != null ? s.fields : [];
            var isOpaque = (s.forward_declaration == true) || fields.length == 0;

            out.add('abstract $name(Float) from Float to Float {\n');
            if (!isOpaque) {
                for (fl in fields) {
                    if (fl.is_internal == true || fl.is_anonymous == true || fl.is_array == true) continue;
                    if (isDisabledByDefines(fl)) continue;
                    var d = StringTools.trim((fl.type.declaration:String));
                    var fName:String = fl.name;
                    var hName = safeIdent(lowerFirst(fName));
                    var resolved = resolveDecl(StringTools.trim(StringTools.replace(d, 'const ', '')));
                    var isPtr = StringTools.endsWith(d, '*');

                    if (d.indexOf('(*') != -1) {
                        csShimAccessors.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n    public static extern System.IntPtr dcjs_${name}_getp_$fName(System.IntPtr self);\n');
                        csExternFns.push('    static function dcjs_${name}_getp_$fName(self:cs.system.IntPtr):cs.system.IntPtr;\n');
                        out.add('    public var $hName(get, never):Float;\n');
                        out.add('    inline function get_$hName():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_${name}_getp_$fName(imguics.ImGuiCs.ptr(this))); }\n');
                        continue;
                    }
                    if (resolved.indexOf('(*') != -1) {
                        // typedef'd fn pointer: raw address get/set
                        csShimAccessors.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n    public static extern System.IntPtr dcjs_${name}_get_$fName(System.IntPtr self);\n');
                        csShimAccessors.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n    public static extern void dcjs_${name}_set_$fName(System.IntPtr self, System.IntPtr v);\n');
                        csExternFns.push('    static function dcjs_${name}_get_$fName(self:cs.system.IntPtr):cs.system.IntPtr;\n');
                        csExternFns.push('    static function dcjs_${name}_set_$fName(self:cs.system.IntPtr, v:cs.system.IntPtr):Void;\n');
                        out.add('    public var $hName(get, set):Float;\n');
                        out.add('    inline function get_$hName():Float { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_${name}_get_$fName(imguics.ImGuiCs.ptr(this))); }\n');
                        out.add('    function set_$hName(v:Float):Float { imguics.DCImGui.dcjs_${name}_set_$fName(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v)); return v; }\n');
                        continue;
                    }

                    if (!isPtr && structNames.exists(resolved)) {
                        if (flattenable.get(resolved) == true) {
                            csShimAccessors.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n    public static extern void dcjs_${name}_get_$fName(System.IntPtr self, out $resolved v);\n');
                            csExternFns.push('    static function dcjs_${name}_get_$fName(self:cs.system.IntPtr, v:cs.Out<$resolved>):Void;\n');
                            out.add('    public var $hName(get, set):$resolved;\n');
                            switch resolved {
                                case 'ImVec2':
                                    csShimAccessors.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n    public static extern void dcjs_${name}_set_$fName(System.IntPtr self, float v_x, float v_y);\n');
                                    csExternFns.push('    static function dcjs_${name}_set_$fName(self:cs.system.IntPtr, x:Single, y:Single):Void;\n');
                                    out.add('    inline function get_$hName():ImVec2 { var v = new ImVec2(0, 0); imguics.DCImGui.dcjs_${name}_get_$fName(imguics.ImGuiCs.ptr(this), v); return v; }\n');
                                    out.add('    function set_$hName(v:ImVec2):ImVec2 { imguics.DCImGui.dcjs_${name}_set_$fName(imguics.ImGuiCs.ptr(this), v.x, v.y); return v; }\n');
                                case 'ImVec4':
                                    csShimAccessors.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n    public static extern void dcjs_${name}_set_$fName(System.IntPtr self, float v_x, float v_y, float v_z, float v_w);\n');
                                    csExternFns.push('    static function dcjs_${name}_set_$fName(self:cs.system.IntPtr, x:Single, y:Single, z:Single, w:Single):Void;\n');
                                    out.add('    inline function get_$hName():ImVec4 { var v = new ImVec4(0, 0, 0, 0); imguics.DCImGui.dcjs_${name}_get_$fName(imguics.ImGuiCs.ptr(this), v); return v; }\n');
                                    out.add('    function set_$hName(v:ImVec4):ImVec4 { imguics.DCImGui.dcjs_${name}_set_$fName(imguics.ImGuiCs.ptr(this), v.x, v.y, v.z, v.w); return v; }\n');
                                case 'ImTextureRef':
                                    csShimAccessors.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n    public static extern void dcjs_${name}_set_$fName(System.IntPtr self, System.IntPtr v__TexData, ulong v__TexID);\n');
                                    csExternFns.push('    static function dcjs_${name}_set_$fName(self:cs.system.IntPtr, texData:cs.system.IntPtr, texID:cs.StdTypes.UInt64):Void;\n');
                                    out.add('    inline function get_$hName():ImTextureRef { var v = new ImTextureRef(imguics.ImGuiCs.nullPtr(), imguics.ImGuiCs.toU64(0)); imguics.DCImGui.dcjs_${name}_get_$fName(imguics.ImGuiCs.ptr(this), v); return v; }\n');
                                    out.add('    function set_$hName(v:ImTextureRef):ImTextureRef { imguics.DCImGui.dcjs_${name}_set_$fName(imguics.ImGuiCs.ptr(this), v._TexData, v._TexID); return v; }\n');
                                case _:
                            }
                        }
                        else {
                            csShimAccessors.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n    public static extern System.IntPtr dcjs_${name}_ptr_$fName(System.IntPtr self);\n');
                            csExternFns.push('    static function dcjs_${name}_ptr_$fName(self:cs.system.IntPtr):cs.system.IntPtr;\n');
                            out.add('    public var $hName(get, never):$resolved;\n');
                            out.add('    inline function get_$hName():$resolved { return imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_${name}_ptr_$fName(imguics.ImGuiCs.ptr(this))); }\n');
                        }
                        continue;
                    }

                    // scalars, enums, pointers
                    var shimT = csShimType(d);
                    if (shimT == null) continue;
                    if (d == 'const char*' || d == 'char*') shimT = 'System.IntPtr';
                    var retT = csShimRetType(d);
                    var getAttrs = retT == 'bool' ? '    [return: MarshalAs(UnmanagedType.I1)]\n' : '';
                    csShimAccessors.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n$getAttrs    public static extern $retT dcjs_${name}_get_$fName(System.IntPtr self);\n');
                    csShimAccessors.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n    public static extern void dcjs_${name}_set_$fName(System.IntPtr self, $shimT v);\n');
                    var hxShim = csHaxeType(retT);
                    csExternFns.push('    static function dcjs_${name}_get_$fName(self:cs.system.IntPtr):$hxShim;\n');
                    csExternFns.push('    static function dcjs_${name}_set_$fName(self:cs.system.IntPtr, v:' + csHaxeType(StringTools.trim(shimT.indexOf(']') != -1 ? shimT.substr(shimT.indexOf(']') + 1) : shimT)) + '):Void;\n');

                    var t:String;
                    var getExpr:String;
                    var setStmt:String;
                    if (isPtr) {
                        var inner = resolveDecl(StringTools.trim(StringTools.replace(StringTools.trim(d.substr(0, d.length - 1)), 'const ', '')));
                        t = (structNames.exists(inner) && flattenable.get(inner) != true && !StringTools.endsWith(inner, '*')) ? inner : 'Float';
                        getExpr = 'imguics.ImGuiCs.addr(imguics.DCImGui.dcjs_${name}_get_$fName(imguics.ImGuiCs.ptr(this)))';
                        setStmt = 'imguics.DCImGui.dcjs_${name}_set_$fName(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.ptr(v))';
                    }
                    else {
                        var js = jsScalar(resolved);
                        if (js == 'F64X') {
                            t = 'Float';
                            getExpr = 'imguics.ImGuiCs.from64(imguics.DCImGui.dcjs_${name}_get_$fName(imguics.ImGuiCs.ptr(this)))';
                            setStmt = resolved == 'unsigned long long'
                                ? 'imguics.DCImGui.dcjs_${name}_set_$fName(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toU64(v))'
                                : 'imguics.DCImGui.dcjs_${name}_set_$fName(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.toI64(v))';
                        }
                        else if (js == 'Bool') {
                            t = 'Bool';
                            getExpr = 'imguics.DCImGui.dcjs_${name}_get_$fName(imguics.ImGuiCs.ptr(this))';
                            setStmt = 'imguics.DCImGui.dcjs_${name}_set_$fName(imguics.ImGuiCs.ptr(this), v)';
                        }
                        else if (js != null && js != 'Void') {
                            t = js;
                            getExpr = 'imguics.DCImGui.dcjs_${name}_get_$fName(imguics.ImGuiCs.ptr(this))';
                            var small = csSmallIntCast(resolved);
                            setStmt = small != null
                                ? 'imguics.DCImGui.dcjs_${name}_set_$fName(imguics.ImGuiCs.ptr(this), imguics.ImGuiCs.$small(v))'
                                : 'imguics.DCImGui.dcjs_${name}_set_$fName(imguics.ImGuiCs.ptr(this), v)';
                        }
                        else if (enumNames.exists(haxeEnumName(resolved))) {
                            t = haxeEnumName(resolved);
                            getExpr = 'imguics.DCImGui.dcjs_${name}_get_$fName(imguics.ImGuiCs.ptr(this))';
                            setStmt = 'imguics.DCImGui.dcjs_${name}_set_$fName(imguics.ImGuiCs.ptr(this), (v:Int))';
                        }
                        else continue;
                    }
                    out.add('    public var $hName(get, set):$t;\n');
                    out.add('    inline function get_$hName():$t { return $getExpr; }\n');
                    out.add('    function set_$hName(v:$t):$t { $setStmt; return v; }\n');
                }
                csShimAccessors.push('    [DllImport(LIB, CallingConvention = CallingConvention.Cdecl)]\n    public static extern int dcjs_sizeof_$name();\n');
                csExternFns.push('    static function dcjs_sizeof_$name():Int;\n');
                out.add('    /** sizeof($name) on the native side (element stride). */\n');
                out.add('    inline public static function sizeOf():Int { return imguics.DCImGui.dcjs_sizeof_$name(); }\n');
            }
            var fns = csStructFns.get(name);
            if (fns != null) {
                out.add('\n');
                for (fn in fns) out.add(fn);
            }
            out.add('}\n\n');
        }
    }

    static function emitCsModule() {
        // --- DCImGui.cs (shipped into Unity's Assets/Plugins by the tools task) ---
        var cs = new StringBuf();
        cs.add('// =============================================================================\n');
        cs.add('// GENERATED FILE - do not edit by hand (see gen/Gen.hx in imgui-hx).\n');
        cs.add('// C# P/Invoke shim over the dcimgui native library (built by build/build-*.sh).\n');
        cs.add('// =============================================================================\n\n');
        cs.add('using System.Runtime.InteropServices;\n\n');
        cs.add('[StructLayout(LayoutKind.Sequential)]\npublic struct ImVec2 {\n    public float x;\n    public float y;\n    public ImVec2(float x, float y) { this.x = x; this.y = y; }\n}\n\n');
        cs.add('[StructLayout(LayoutKind.Sequential)]\npublic struct ImVec4 {\n    public float x;\n    public float y;\n    public float z;\n    public float w;\n    public ImVec4(float x, float y, float z, float w) { this.x = x; this.y = y; this.z = z; this.w = w; }\n}\n\n');
        cs.add('[StructLayout(LayoutKind.Sequential)]\npublic struct ImTextureRef {\n    public System.IntPtr _TexData;\n    public ulong _TexID;\n    public ImTextureRef(System.IntPtr texData, ulong texID) { this._TexData = texData; this._TexID = texID; }\n}\n\n');
        cs.add('public static class DCImGui {\n\n');
        // On iOS, the native code is a static library linked into the app
        // binary (Unity/IL2CPP), so P/Invoke must target "__Internal", not a
        // dynamic library name. Every other target (mac .dylib, android .so,
        // windows .dll, and the mac editor) loads dcimgui dynamically.
        cs.add('#if UNITY_IOS && !UNITY_EDITOR\n    const string LIB = "__Internal";\n#else\n    const string LIB = "dcimgui";\n#endif\n\n');
        for (fn in csShimFns) cs.add(fn);
        cs.add('\n    // ---- native memory helpers (no unsafe required) ----\n\n');
        cs.add('    public static float GetF32(System.IntPtr a) { return System.BitConverter.Int32BitsToSingle(Marshal.ReadInt32(a)); }\n');
        cs.add('    public static void SetF32(System.IntPtr a, float v) { Marshal.WriteInt32(a, System.BitConverter.SingleToInt32Bits(v)); }\n');
        cs.add('    public static double GetF64(System.IntPtr a) { return System.BitConverter.Int64BitsToDouble(Marshal.ReadInt64(a)); }\n');
        cs.add('    public static void SetF64(System.IntPtr a, double v) { Marshal.WriteInt64(a, System.BitConverter.DoubleToInt64Bits(v)); }\n');
        cs.add('    public static int GetI32(System.IntPtr a) { return Marshal.ReadInt32(a); }\n');
        cs.add('    public static void SetI32(System.IntPtr a, int v) { Marshal.WriteInt32(a, v); }\n');
        cs.add('    public static int GetU16(System.IntPtr a) { return Marshal.ReadInt16(a) & 0xFFFF; }\n');
        cs.add('    public static int GetU8(System.IntPtr a) { return Marshal.ReadByte(a); }\n');
        cs.add('    public static void SetU8(System.IntPtr a, int v) { Marshal.WriteByte(a, (byte)v); }\n');
        cs.add('    public static System.IntPtr Alloc(int size) { return Marshal.AllocHGlobal(size); }\n');
        cs.add('    public static string ReadUTF8(System.IntPtr p) { return p == System.IntPtr.Zero ? null : Marshal.PtrToStringUTF8(p); }\n');
        cs.add('    public static int WriteUTF8(string s, System.IntPtr buf, int maxBytes) {\n');
        cs.add('        if (s == null) s = "";\n');
        cs.add('        var bytes = System.Text.Encoding.UTF8.GetBytes(s);\n');
        cs.add('        int n = bytes.Length;\n');
        cs.add('        if (n > maxBytes - 1) { n = maxBytes - 1; while (n > 0 && (bytes[n] & 0xC0) == 0x80) n--; }\n');
        cs.add('        Marshal.Copy(bytes, 0, buf, n);\n');
        cs.add('        Marshal.WriteByte(buf, n, 0);\n');
        cs.add('        return n;\n');
        cs.add('    }\n');
        // (DCImGui.cs saved at the end of this function, once accessors exist)

        // --- imguics Haxe module ---
        // (structs first: they collect accessor imports/externs used below)
        var structsBuf = new StringBuf();
        emitCsStructs(structsBuf);
        var out = new StringBuf();
        out.add('package imguics;\n\n');
        out.add('// =============================================================================\n');
        out.add('// GENERATED FILE - do not edit by hand (see gen/Gen.hx).\n');
        out.add('// cs-target bindings: P/Invoke through the generated DCImGui C# class\n');
        out.add('// (shipped with the ceramic imgui plugin alongside the native libs).\n');
        out.add('// Struct pointers cross as Haxe Float addresses (see ImGuiCs).\n');
        out.add('// =============================================================================\n\n');
        out.add('typedef ImGuiOpaqueCallback = Float;\n\n');
        var emitted = new Map<String, Bool>();
        for (n in valueTypedefNames) {
            if (emitted.exists(n)) continue;
            emitted.set(n, true);
            var js = jsScalar(resolveDecl(n));
            if (js == null || js == 'Void') continue;
            out.add('typedef $n = ' + (js == 'F64X' ? 'Float' : js) + ';\n');
        }
        out.add('\n');
        emitEnums(out, false);
        // C# struct externs (value types)
        out.add('@:native(\'ImVec2\') @:struct extern class ImVec2 {\n');
        out.add('    public var x:Single;\n    public var y:Single;\n');
        out.add('    function new(x:Single, y:Single):Void;\n');
        out.add('    inline public static function make(x:Float, y:Float):ImVec2 return new ImVec2(x, y);\n');
        out.add('}\n\n');
        out.add('@:native(\'ImVec4\') @:struct extern class ImVec4 {\n');
        out.add('    public var x:Single;\n    public var y:Single;\n    public var z:Single;\n    public var w:Single;\n');
        out.add('    function new(x:Single, y:Single, z:Single, w:Single):Void;\n');
        out.add('    inline public static function make(x:Float, y:Float, z:Float, w:Float):ImVec4 return new ImVec4(x, y, z, w);\n');
        out.add('}\n\n');
        out.add('@:native(\'ImTextureRef\') @:struct extern class ImTextureRef {\n');
        out.add('    public var _TexData:cs.system.IntPtr;\n    public var _TexID:cs.StdTypes.UInt64;\n');
        out.add('    function new(texData:cs.system.IntPtr, texID:cs.StdTypes.UInt64):Void;\n');
        out.add('    inline public static function fromID(texID:Float):ImTextureRef return new ImTextureRef(imguics.ImGuiCs.nullPtr(), imguics.ImGuiCs.toU64(texID));\n');
        out.add('}\n\n');
        var dcx = new StringBuf();
        dcx.add('package imguics;\n\n');
        dcx.add('// GENERATED FILE - do not edit by hand (see gen/Gen.hx).\n');
        dcx.add('// Haxe externs over the generated DCImGui C# P/Invoke shim (DCImGui.cs).\n\n');
        dcx.add('import imguics.ImGui;\n\n');
        dcx.add('@:native(\'DCImGui\') extern class DCImGui {\n');
        for (fn in csExternFns) dcx.add(fn);
        dcx.add('    static function Alloc(size:Int):cs.system.IntPtr;\n');
        dcx.add('    static function GetF32(a:cs.system.IntPtr):Single;\n');
        dcx.add('    static function SetF32(a:cs.system.IntPtr, v:Single):Void;\n');
        dcx.add('    static function GetF64(a:cs.system.IntPtr):Float;\n');
        dcx.add('    static function SetF64(a:cs.system.IntPtr, v:Float):Void;\n');
        dcx.add('    static function GetI32(a:cs.system.IntPtr):Int;\n');
        dcx.add('    static function SetI32(a:cs.system.IntPtr, v:Int):Void;\n');
        dcx.add('    static function GetU16(a:cs.system.IntPtr):Int;\n');
        dcx.add('    static function GetU8(a:cs.system.IntPtr):Int;\n');
        dcx.add('    static function SetU8(a:cs.system.IntPtr, v:Int):Void;\n');
        dcx.add('    static function ReadUTF8(p:cs.system.IntPtr):String;\n');
        dcx.add('    static function WriteUTF8(s:String, buf:cs.system.IntPtr, maxBytes:Int):Int;\n');
        dcx.add('}\n');
        File.saveContent(root + 'src/imguics/DCImGui.hx', dcx.toString());
        out.add(structsBuf.toString());
        out.add('class ImGui {\n\n');
        for (fn in csMainFns) out.add(fn);
        out.add('\n}\n');
        File.saveContent(root + 'src/imguics/ImGui.hx', out.toString());

        cs.add('\n    // ---- struct field accessors, sizes ----\n\n');
        for (fn in csShimAccessors) cs.add(fn);
        cs.add('\n}\n');
        File.saveContent(root + 'src/imguics/DCImGui.cs', cs.toString());
    }

    // =========================================================================
    // Comments
    // =========================================================================

    static function attachedComment(node:Dynamic):Null<String> {
        var c = node.comments;
        if (c == null) return null;
        var attached:Null<String> = c.attached;
        if (attached == null) return null;
        var text = attached;
        if (StringTools.startsWith(text, '//')) text = text.substr(2);
        text = StringTools.trim(text);
        text = StringTools.replace(text, '*/', '* /');
        return text.length > 0 ? text : null;
    }

}
