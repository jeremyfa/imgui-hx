package imguicpp;

import haxe.macro.Context;
import haxe.macro.Expr;

@:structInit
class BoolHolder {
    public var value:Bool = false;
}

@:headerInclude("linc_imgui.h")
class Address {

    macro public static function fromBool(value:ExprOf<Bool>):Expr {

        return macro {
            var _val:imguicpp.Address.BoolHolder = {
                value: $value
            };
            imguicpp.Address.pushCallback(function() {
                $value = _val.value;
            });
            imguicpp.utils.VarPointer.addressOf(_val.value);
        };

    }

#if (!macro && cpp)

    static var _pendingCallbacks:Array<Void->Void> = null;

    @:noCompletion public static function pushCallback(cb:Void->Void):Void {

        if (untyped __cpp__('ImGui::linc_Address_sync == NULL')) {
            var func = cpp.Callable.fromStaticFunction(Address.sync);
            untyped __cpp__('ImGui::linc_Address_sync = {0}', func);
        }

        if (_pendingCallbacks == null)
            _pendingCallbacks = [];
        _pendingCallbacks.push(cb);

    }

    @:noCompletion public static function sync():Void {

        if (_pendingCallbacks != null) {
            while (_pendingCallbacks.length > 0) {
                var cb = _pendingCallbacks.shift();
                cb();
            }
        }
        
    }
#end

}
