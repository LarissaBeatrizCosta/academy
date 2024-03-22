import 'dart:math';

void main() {
  List<int> list = [];

  for (int i = 0; i < 50; i++) {
    int n = Random().nextInt(15);
    list.add(n);


  }
  print("Lista: $list");
  for (int i = 0; i < list.length; i++) {
    list.removeWhere((n) => n % 2 == 0);

  }
  print("Lista com ímpares: $list");

}