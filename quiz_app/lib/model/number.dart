import 'dart:math';

class Number {
  List<int> generateRandom() {
    var x = Random().nextInt(100);
    var y = Random().nextInt(100);

    if (x != y) {
      return [x, y];
    } else {
      generateRandom();
    }

    return [1, 2];
  }
}
