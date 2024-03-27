import 'dart:math';

String alfabeto(int num) {
  return String.fromCharCode(num);
}

void main() {
  var indice = 1;
  while (indice > 0 && indice < 6) {
    var result =alfabeto(Random().nextInt(27) + 65);
    var position=result.codeUnitAt(0)-64;
    print(" A letra é: $result e seu posição: $position");
    indice++;
  }
}

