import 'dart:math';

void main() {
  List<int> list = [];

  for (int i = 0; i < 50; i++) {
    int n = Random().nextInt(10) + 11;
    list.add(n);


  }
  print("Lista: $list");
  list = list.toSet().toList();
  print("Lista sem repetições: $list");
}