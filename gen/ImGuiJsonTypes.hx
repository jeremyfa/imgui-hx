
typedef JsonEnum = {
    calc_value : Int,
    name       : String,
    value      : String
}

typedef JsonStruct = {
    var name : String;
    var type : String;
    @:default(0)
    var size : Int;
    @:default('')
    var template_type : String;
}

typedef JsonEnumStruct = {
    var enums : Map<String, Array<JsonEnum>>;
    var structs : Map<String, Array<JsonStruct>>;
}

typedef JsonFunctionArg = {
    var name : String;
    var type : String;
    @:default('')
    var signature : String;
}

typedef JsonFunction = {
    var args : String;
    var argsT : Array<JsonFunctionArg>;
    var argsoriginal : String;
    var call_args : String;
    var cimguiname : String;
    var ov_cimguiname : String;
    var funcname : String;
    var stname : String;
    var signature : String;

    @:default([])
    var defaults : Map<String, String>;

    @:default(false)
    var constructor : Bool;

    @:default(false)
    var destructor : Bool;

    @:default(false)
    var templatedgen : Bool;
    @:default(false)
    var templated : Bool;
    var ?isvararg : String;
    var ?retref : String;
    var ?namespace : String;
    var ?ret : String;
    var ?retorig : String;
    var ?location : String;
}

typedef JsonDefinitions = Map<String, Array<JsonFunction>>;

typedef JsonTypedef = Map<String, String>;
