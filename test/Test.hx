package ;

import async.*;

class Test {

  static function main() {

    Storage.length(function(value:Int) {
      trace('length = $value');
    });
  }
}
