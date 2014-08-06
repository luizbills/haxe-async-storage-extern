package async;

typedef Callback0 = Void -> Void;

@:native("asyncStorage")
extern class Storage {

  static function getItem(key:String, callback:Dynamic -> Void):Void;

  static function setItem(key:String, value:Dynamic, callback:Callback0):Void;

  static function removeItem(key:String, callback:Callback0):Void;

  static function clear(callback:Callback0):Void;

  static function count(callback:Int -> Void):Void;

  static function key(n:Int, callback:Dynamic -> Void):Void;
}
