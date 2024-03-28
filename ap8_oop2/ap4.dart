import 'dart:math';

abstract class Calculadora {
  static int dobro(int num) {
    int result = num * 2;
    return result;
  }
}

void main() {
  var numero = Random().nextInt(10);
  var result= Calculadora.dobro(numero);
  print("O dobro de $numero é: $result");
}
