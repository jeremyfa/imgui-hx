package imguijs;

import haxe.io.Bytes;
import haxe.io.BytesData;

import haxe.macro.Context;
import haxe.macro.Expr;

class Helpers {

    macro public static function fromBool(value:ExprOf<Bool>):Expr {

        return macro function(?_val:Bool):Bool {
            return _val != null ? $value = _val : $value;
        };

    }

    macro public static function fromBoolArray(value:ExprOf<Array<Bool>>):Expr {

        return macro $value;

    }

    macro public static function fromInt(value:ExprOf<Int>):Expr {

        return macro function(?_val:Int):Int {
            return _val != null ? $value = _val : $value;
        };

    }

    macro public static function fromIntArray(value:ExprOf<Array<Int>>):Expr {

        return macro $value;

    }

    macro public static function fromFloat(value:ExprOf<Float>):Expr {

        return macro function(?_val:Float):Float {
            return _val != null ? $value = _val : $value;
        };

    }

    macro public static function fromFloatArray(value:ExprOf<Array<Float>>):Expr {

        return macro $value;

    }

    macro public static function fromBytes(value:ExprOf<Bytes>):Expr {

        return macro $value.getData();

    }

    macro public static function fromBytesData(value:ExprOf<BytesData>):Expr {

        return macro $value;

    }

}
