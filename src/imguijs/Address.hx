package imguijs;

import haxe.macro.Context;
import haxe.macro.Expr;

class Address {

    macro public static function fromBool(value:ExprOf<Bool>):Expr {

        return macro function(?_val:Bool):Bool {
            return _val != null ? $value = _val : $value;
        };

    }

}
