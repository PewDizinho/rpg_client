import 'dart:math';

class Util {
  playDice(int dx, int? quantity) {
    var result = [];
    for (var i = 0; i < (((quantity ?? 5) + 5) / 5); i++) {
      result.add(Random().nextInt(dx));
    }
    print(result);
  }
}
