package imguicpp;

import imguicpp.utils.VarPointer;

abstract VoidPointer(cpp.Pointer<cpp.Void>) from cpp.Pointer<cpp.Void> to cpp.Pointer<cpp.Void>
{
    inline function new(_ptr : cpp.Pointer<cpp.Void>)
    {
        this = _ptr;
    }

    @:from public static inline function fromInt(_int : Int)
    {
        return new VoidPointer(VarPointer.addressOf(_int).reinterpret());
    }

    @:from public static inline function fromFloat(_float : Float)
    {
        return new VoidPointer(VarPointer.addressOf(_float).reinterpret());
    }

    @:from public static inline function fromBool(_bool : Bool)
    {
        return new VoidPointer(VarPointer.addressOf(_bool).reinterpret());
    }

    @:from public static inline function fromPointer<T>(_pointer : cpp.Pointer<T>)
    {
        return new VoidPointer(untyped __cpp__('(void*){0}', _pointer));
    }

    @:from public static inline function fromBytes(_bytes : haxe.io.Bytes)
    {
        return new VoidPointer(fromPointer(VarPointer.arrayElem(_bytes.getData(), 0)));
    }

    @:from public static inline function fromArray<T>(_array : Array<T>)
    {
        return new VoidPointer(fromPointer(VarPointer.arrayElem(_array, 0)));
    }

    @:to public inline function toRaw() : cpp.RawPointer<cpp.Void>
    {
        return this.raw;
    }

    @:to public inline function toPtr() : cpp.Star<cpp.Void>
    {
        return this.ptr;
    }
}
