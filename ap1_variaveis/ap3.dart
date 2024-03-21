import 'dart:math';

void main() {
  var n1 = Random().nextInt(100);
  var n2 = Random().nextInt(100);
  
  print("Os números aleatórios escolhidos foram: $n1 e $n2");

  final num = n1;
  n1 = n2;
  n2 = num;
  
  print("Os números trocados ficam $n1 e $n2");

}