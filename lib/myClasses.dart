import 'dart:math';

class Generator {
  int rand;
  Generator() {
    rand = 0;
  }
  int random() {
    rand = Random().nextInt(3);
    return rand;
  }
}

class Products {
  List<int> kids = [1, 2, 3, 4, 5, 6];
  List<int> electronics = [7, 8, 9];
  List<int> beauty = [10, 11, 12];
  List<int> home = [13, 14, 15];
}
