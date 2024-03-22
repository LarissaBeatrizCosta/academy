import 'dart:math';

void main() {
  List<int> list = [];

  for (int i = 0; i < 10; i++) {
    int number = Random().nextInt(100);
    list.add(number);


  }

  for (int i = 0; i < list.length; i++) {
    print("O elemento tem a posição: $i e valor:${list[i]}");
  }



}