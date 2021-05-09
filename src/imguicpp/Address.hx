package imguicpp;

import haxe.io.Bytes;
import haxe.io.BytesData;

import haxe.macro.Context;
import haxe.macro.Expr;

#if !macro
import cpp.Float32;
#end

#if !macro
@:structInit
class BoolHolder {
    public var value:Bool = false;
}

@:structInit
class Float32Holder {
    public var value:Float32 = 0;
}

class Float32ArrayHolder {
    public var original:Array<Float> = null;
    public var value:Array<Float32> = null;
    public function new(original:Array<Float>) {
        this.original = original;
        this.value = @:privateAccess Address._readFloatArray(original);
    }
}

@:structInit
class IntHolder {
    public var value:Int = 0;
}
#end

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

    macro public static function fromBoolArray(value:ExprOf<Array<Bool>>):Expr {

        return macro imguicpp.utils.VarPointer.arrayElem($value, 0);

    }

    macro public static function fromInt(value:ExprOf<Int>):Expr {

        return macro {
            var _val:imguicpp.Address.IntHolder = {
                value: $value
            };
            imguicpp.Address.pushCallback(function() {
                $value = _val.value;
            });
            imguicpp.utils.VarPointer.addressOf(_val.value);
        };

    }

    macro public static function fromIntArray(value:ExprOf<Array<Int>>):Expr {

        return macro imguicpp.utils.VarPointer.arrayElem($value, 0);

    }

    macro public static function fromFloat(value:ExprOf<Float>):Expr {

        return macro {
            var _val:imguicpp.Address.Float32Holder = {
                value: $value
            };
            imguicpp.Address.pushCallback(function() {
                $value = _val.value;
            });
            imguicpp.utils.VarPointer.addressOf(_val.value);
        };

    }

    macro public static function fromFloatArray(value:ExprOf<Array<Float>>):Expr {

        // Convert the original array into Float32 array, then update original array if it has changed.
        return macro {
            var _val = new imguicpp.Address.Float32ArrayHolder($value);
            imguicpp.Address.pushCallback(function() {
                imguicpp.Address._updateFloatArray(_val.original, _val.value);
            });
            imguicpp.utils.VarPointer.arrayElem(_val.value, 0);
        };

    }

    macro public static function fromBytes(value:ExprOf<Bytes>):Expr {

        return macro $value.getData().address(0);

    }

    macro public static function fromBytesData(value:ExprOf<BytesData>):Expr {

        return macro $value.address(0);

    }

/// Internal

#if !macro

    static function _readFloatArray(value:Array<Float>):Array<Float32> {

        var array:Array<Float32> = [];
        for (i in 0...value.length) {
            array[i] = value[i];
        }
        return array;

    }

    static function _updateFloatArray(original:Array<Float>, array:Array<Float32>):Bool {

        var changed = false;
        for (i in 0...array.length) {
            var originalVal:Float = original[i];
            var newVal:Float = array[i];
            if (originalVal != newVal) {
                changed = true;
                original[i] = newVal;
            }
        }
        return changed;

    }

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
