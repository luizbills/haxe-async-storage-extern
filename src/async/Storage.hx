package async;

private typedef Callback0 = Void -> Void;

@:native("asyncStorage")
extern class Storage {

  static function getItem(key:String, callback:Dynamic -> Void):Void;

  static function setItem(key:String, value:Dynamic, callback:Callback0):Void;

  static function removeItem(key:String, callback:Callback0):Void;

  static function clear(callback:Callback0):Void;

  // static function length(callback:Int -> Void):Void; /* haxe don't compiles correctly this */
  // Thanks "Andy Li" https://groups.google.com/d/msg/haxelang/G54xtEznveQ/DuJHncGSTKMJ
  inline static function length(callback:Int -> Void):Void return untyped __js__("asyncStorage.length")(callback);

  static function key(n:Int, callback:Dynamic -> Void):Void;
}
