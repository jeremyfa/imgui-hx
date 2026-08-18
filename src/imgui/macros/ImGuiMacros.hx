package imgui.macros;

#if macro

import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.TypeTools;

/**
 * Expression builder behind the generated `imgui.ImGui` widget macros
 * (see gen/Gen.hx facade emission).
 *
 * ImGui out-params (`bool*`, `float*`, `char* buf`...) are bridged to plain
 * Haxe lvalues at COMPILE TIME: the widget macro splices the user expression
 * into a small block that reads it into a stack local, passes the local's
 * native address to the C call, and assigns back only when the value actually
 * changed. Zero closures, zero garbage per frame - and custom property
 * getters/setters (@observe etc.) are naturally invoked, because the address
 * taken is always the local's, never the user expression's.
 *
 * The user expression may also be a get/set closure (`FloatRef`-style,
 * `(?val:T)->T`) for runtime indirection - detected by type, marshaled by
 * calling it instead of splicing an assignment.
 */
/**
 * One native-call slot spec (from the generated widget macros):
 * - kind 'plain': passed through (with `def` when omitted)
 * - kind 'ptr:<TempType>': scalar out-param; `e` is an lvalue or Ref closure
 * - kind 'strbuf': char* + size_t pair; `e` = string lvalue/StringRef,
 *   `e2` = max byte length (defaults to 256)
 */
typedef FacadeArgSpec = { kind:String, e:Expr, ?e2:Expr, ?def:String };

class ImGuiMacros {

    public static function build(native:String, retKind:String,
            specs:Array<FacadeArgSpec>):Expr {

        if (Context.defined('cpp')) return buildCpp(native, retKind, specs);
        if (Context.defined('js')) return buildJs(native, retKind, specs);
        if (Context.defined('cs')) return buildScratch(native, retKind, specs, 'imguics.ImGuiCs', 'imguics.ImGui');
        return Context.error('imgui: this target is not supported (cpp, js and cs only)', Context.currentPos());
    }

    static function buildJs(native:String, retKind:String,
            specs:Array<FacadeArgSpec>):Expr {
        return buildScratch(native, retKind, specs, 'imguijs.ImGuiJs', 'imguijs.ImGui');
    }

    /**
     * Shared scratch-memory marshaling for the js and cs targets: out-params go
     * through a persistent 8-bytes-per-slot native scratch block owned by the
     * target's helper class (`imguijs.ImGuiJs` / `imguics.ImGuiCs`, same API).
     */
    static function buildScratch(native:String, retKind:String,
            specs:Array<FacadeArgSpec>, helperPath:String, modulePath:String):Expr {

        var pos = Context.currentPos();
        var prelude:Array<Expr> = [];
        var post:Array<Expr> = [];
        var callArgs:Array<Expr> = [];

        // Trailing omitted plain args are DROPPED from the call so the target
        // module's own defaults apply (passing a parsed 'null' default would
        // break value-typed args on static targets like C#).
        var lastRequired = -1;
        for (idx in 0...specs.length) {
            var sp = specs[idx];
            var om = sp.e == null || isNullConst(sp.e);
            if (!(sp.kind == 'plain' && om))
                lastRequired = idx;
        }

        var i = 0;
        for (s in specs) {
            var omitted = s.e == null || isNullConst(s.e);
            if (s.kind == 'plain') {
                if (omitted) {
                    if (i > lastRequired) {
                        i++;
                        continue;
                    }
                    callArgs.push(s.def != null ? Context.parse(s.def, pos) : (macro null));
                }
                else {
                    callArgs.push(s.e);
                }
            }
            else if (StringTools.startsWith(s.kind, 'ptr:')) {
                if (omitted) {
                    callArgs.push(macro 0);
                }
                else {
                    // one 8-byte slot per arg in the shared numeric scratch
                    var addr = macro $p{helperPath.split('.')}.numScratch + $v{i * 8};
                    var temp = s.kind.substr(4);
                    var tempType = jsTempType(temp, pos);
                    var vName = '_imv$i';
                    var v0Name = '_imv0$i';
                    var nName = '_imn$i';
                    var writeCall = jsScratchWrite(helperPath, temp, addr, macro $i{vName}, pos);
                    var readExpr = jsScratchRead(helperPath, temp, addr, pos);
                    // NOTE: v0 is read back from the scratch AFTER the write, so
                    // it went through the same f32 rounding as the native value -
                    // otherwise a f64 initial value would never compare equal and
                    // the write-back would fire (and call setters) every frame.
                    if (isRefClosure(s.e)) {
                        var fName = '_imf$i';
                        prelude.push(evar(fName, null, s.e, pos));
                        prelude.push(evar(vName, tempType, macro $i{fName}(), pos));
                        prelude.push(writeCall);
                        prelude.push(evar(v0Name, null, readExpr, pos));
                        post.push(evar(nName, tempType, readExpr, pos));
                        post.push(macro if ($i{nName} != $i{v0Name}) $i{fName}($i{nName}));
                    }
                    else {
                        var lv = lvalue(s.e, i, prelude, pos);
                        prelude.push(evar(vName, tempType, lv.read, pos));
                        prelude.push(writeCall);
                        prelude.push(evar(v0Name, null, readExpr, pos));
                        var writeBack = lv.write(macro $i{nName});
                        post.push(evar(nName, tempType, readExpr, pos));
                        post.push(macro if ($i{nName} != $i{v0Name}) $writeBack);
                    }
                    callArgs.push(addr);
                }
            }
            else if (s.kind == 'strbuf') {
                var sName = '_ims$i';
                var lName = '_iml$i';
                var bName = '_imb$i';
                var maxLen = (s.e2 == null || isNullConst(s.e2)) ? (macro 256) : s.e2;
                prelude.push(evar(lName, macro :Int, maxLen, pos));
                if (isRefClosure(s.e)) {
                    var fName = '_imf$i';
                    prelude.push(evar(fName, null, s.e, pos));
                    prelude.push(evar(sName, macro :String, macro $i{fName}(), pos));
                    post.push(macro if ($p{helperPath.split('.')}.strBufChanged($i{sName})) $i{fName}($p{helperPath.split('.')}.strBufRead()));
                }
                else {
                    var lv = lvalue(s.e, i, prelude, pos);
                    prelude.push(evar(sName, macro :String, lv.read, pos));
                    var writeBack = lv.write(macro $p{helperPath.split('.')}.strBufRead());
                    post.push(macro if ($p{helperPath.split('.')}.strBufChanged($i{sName})) $writeBack);
                }
                prelude.push(evar(bName, null, macro $p{helperPath.split('.')}.strBufPut($i{sName}, $i{lName}), pos));
                callArgs.push(macro $i{bName});
                callArgs.push(macro ($i{lName} + 1));
            }
            else {
                Context.error('imgui: unknown facade arg kind "' + s.kind + '"', pos);
            }
            i++;
        }

        var callee = { expr: EField(macro $p{modulePath.split('.')}, native), pos: pos };
        var call:Expr = { expr: ECall(callee, callArgs), pos: pos };
        // (retKind 'string': the imguijs binding already returns a Haxe String)

        var block:Array<Expr> = [];
        for (p in prelude) block.push(p);
        if (retKind == 'void') {
            block.push(call);
            for (p in post) block.push(p);
        }
        else {
            block.push(evar('_imret', null, call, pos));
            for (p in post) block.push(p);
            block.push(macro _imret);
        }
        return { expr: EBlock(block), pos: pos };
    }

    static function jsTempType(temp:String, pos:Position):ComplexType {
        return switch temp {
            case 'cpp.Float32' | 'Float': macro :Float;
            case 'Int' | 'UInt': macro :Int;
            case 'Bool': macro :Bool;
            case _:
                Context.error('imgui: unknown temp type "' + temp + '"', pos);
                null;
        }
    }

    static function jsScratchWrite(helperPath:String, temp:String, addr:Expr, v:Expr, pos:Position):Expr {
        var h = helperPath.split('.');
        return switch temp {
            case 'cpp.Float32': macro $p{h}.setF32($addr, $v);
            case 'Float': macro $p{h}.setF64($addr, $v);
            case 'Int': macro $p{h}.setI32($addr, $v);
            case 'UInt': macro $p{h}.setU32($addr, $v);
            case 'Bool': macro $p{h}.setU8($addr, $v ? 1 : 0);
            case _: Context.error('imgui: unknown temp type "' + temp + '"', pos);
        }
    }

    static function jsScratchRead(helperPath:String, temp:String, addr:Expr, pos:Position):Expr {
        var h = helperPath.split('.');
        return switch temp {
            case 'cpp.Float32': macro $p{h}.getF32($addr);
            case 'Float': macro $p{h}.getF64($addr);
            case 'Int': macro $p{h}.getI32($addr);
            case 'UInt': macro Std.int($p{h}.getU32($addr));
            case 'Bool': macro $p{h}.getU8($addr) != 0;
            case _: Context.error('imgui: unknown temp type "' + temp + '"', pos);
        }
    }

    static function buildCpp(native:String, retKind:String,
            specs:Array<FacadeArgSpec>):Expr {

        var pos = Context.currentPos();
        var prelude:Array<Expr> = [];
        var post:Array<Expr> = [];
        var callArgs:Array<Expr> = [];

        var i = 0;
        for (s in specs) {
            var omitted = s.e == null || isNullConst(s.e);
            if (s.kind == 'plain') {
                if (omitted) {
                    callArgs.push(s.def != null ? Context.parse(s.def, pos) : (macro null));
                }
                else {
                    callArgs.push(s.e);
                }
            }
            else if (StringTools.startsWith(s.kind, 'ptr:')) {
                if (omitted) {
                    // Optional out-param (e.g. begin()'s pOpen): pass NULL.
                    callArgs.push(macro null);
                }
                else {
                    var tempType = complexType(s.kind.substr(4), pos);
                    var vName = '_imv$i';
                    var v0Name = '_imv0$i';
                    if (isRefClosure(s.e)) {
                        var fName = '_imf$i';
                        prelude.push(evar(fName, null, s.e, pos));
                        prelude.push(evar(vName, tempType, macro $i{fName}(), pos));
                        prelude.push(evar(v0Name, null, macro $i{vName}, pos));
                        post.push(macro if ($i{vName} != $i{v0Name}) $i{fName}($i{vName}));
                    }
                    else {
                        var lv = lvalue(s.e, i, prelude, pos);
                        prelude.push(evar(vName, tempType, lv.read, pos));
                        prelude.push(evar(v0Name, null, macro $i{vName}, pos));
                        var writeBack = lv.write(macro $i{vName});
                        post.push(macro if ($i{vName} != $i{v0Name}) $writeBack);
                    }
                    callArgs.push(macro cpp.Pointer.addressOf($i{vName}).ptr);
                }
            }
            else if (s.kind == 'strbuf') {
                var sName = '_ims$i';
                var lName = '_iml$i';
                var maxLen = (s.e2 == null || isNullConst(s.e2)) ? (macro 256) : s.e2;
                prelude.push(evar(lName, macro :Int, maxLen, pos));
                if (isRefClosure(s.e)) {
                    var fName = '_imf$i';
                    prelude.push(evar(fName, null, s.e, pos));
                    prelude.push(evar(sName, macro :String, macro $i{fName}(), pos));
                    post.push(macro if (@:privateAccess imguicpp.Marshal.strChanged($i{sName})) $i{fName}(@:privateAccess imguicpp.Marshal.strRead()));
                }
                else {
                    var lv = lvalue(s.e, i, prelude, pos);
                    prelude.push(evar(sName, macro :String, lv.read, pos));
                    var writeBack = lv.write(macro @:privateAccess imguicpp.Marshal.strRead());
                    post.push(macro if (@:privateAccess imguicpp.Marshal.strChanged($i{sName})) $writeBack);
                }
                callArgs.push(macro @:privateAccess imguicpp.Marshal.strScratch($i{sName}, $i{lName}));
                callArgs.push(macro ($i{lName} + 1));
            }
            else {
                Context.error('imgui: unknown facade arg kind "' + s.kind + '"', pos);
            }
            i++;
        }

        var callee = { expr: EField(macro imguicpp.ImGui, native), pos: pos };
        var call:Expr = { expr: ECall(callee, callArgs), pos: pos };
        if (retKind == 'string') call = macro ($call : cpp.ConstCharStar).toString();

        var block:Array<Expr> = [];
        for (p in prelude) block.push(p);
        if (retKind == 'void') {
            block.push(call);
            for (p in post) block.push(p);
        }
        else {
            block.push(evar('_imret', null, call, pos));
            for (p in post) block.push(p);
            block.push(macro _imret);
        }
        return { expr: EBlock(block), pos: pos };
    }

    // =========================================================================
    // Helpers
    // =========================================================================

    static function isNullConst(e:Expr):Bool {
        return switch e.expr {
            case EConst(CIdent('null')): true;
            case _: false;
        }
    }

    /** Trivial receivers need no extraction: plain idents (incl. `this`). */
    static function isTrivial(e:Expr):Bool {
        return switch e.expr {
            case EConst(CIdent(_)): true;
            case _: false;
        }
    }

    /**
     * Split a user lvalue expression into a read expr and a write builder,
     * extracting non-trivial receivers (and array indices) into locals so the
     * chain is only evaluated once and read/write hit the same object.
     */
    static function lvalue(e:Expr, i:Int, prelude:Array<Expr>, pos:Position):{read:Expr, write:(v:Expr)->Expr} {
        switch e.expr {
            case EField(recv, field):
                var access = e;
                if (!isTrivial(recv)) {
                    var rName = '_imr$i';
                    prelude.push(evar(rName, null, recv, pos));
                    access = { expr: EField({ expr: EConst(CIdent(rName)), pos: pos }, field), pos: e.pos };
                }
                return { read: access, write: v -> { expr: EBinop(OpAssign, access, v), pos: pos } };
            case EArray(arr, idx):
                var arrE = arr;
                var idxE = idx;
                if (!isTrivial(arr)) {
                    var aName = '_ima$i';
                    prelude.push(evar(aName, null, arr, pos));
                    arrE = { expr: EConst(CIdent(aName)), pos: pos };
                }
                if (!isTrivialValue(idx)) {
                    var xName = '_imx$i';
                    prelude.push(evar(xName, null, idx, pos));
                    idxE = { expr: EConst(CIdent(xName)), pos: pos };
                }
                var access = { expr: EArray(arrE, idxE), pos: e.pos };
                return { read: access, write: v -> { expr: EBinop(OpAssign, access, v), pos: pos } };
            case _:
                // Anything else is spliced as-is: locals work directly; a
                // non-lvalue gives a clear "cannot assign" error on write-back.
                return { read: e, write: v -> { expr: EBinop(OpAssign, e, v), pos: pos } };
        }
    }

    /** Idents and constant literals don't need extraction as array index. */
    static function isTrivialValue(e:Expr):Bool {
        return switch e.expr {
            case EConst(_): true;
            case _: false;
        }
    }

    /**
     * Whether the expression types as a get/set Ref closure
     * (`(?val:T)->T` - FloatRef/IntRef/BoolRef/StringRef).
     */
    static function isRefClosure(e:Expr):Bool {
        var t = try Context.typeof(e) catch (_:Dynamic) return false;
        return switch TypeTools.follow(t) {
            case TFun(args, _): args.length == 1 && args[0].opt;
            case _: false;
        }
    }

    static function evar(name:String, t:Null<ComplexType>, init:Expr, pos:Position):Expr {
        return { expr: EVars([{ name: name, type: t, expr: init }]), pos: pos };
    }

    static function complexType(name:String, pos:Position):ComplexType {
        return switch name {
            case 'cpp.Float32': macro :cpp.Float32;
            case 'Float': macro :Float;
            case 'Int': macro :Int;
            case 'UInt': macro :UInt;
            case 'Bool': macro :Bool;
            case _:
                Context.error('imgui: unknown temp type "' + name + '"', pos);
                null;
        }
    }

}

#end
