import 'dart:math';

void main() {
  var n1 = Random().nextInt(100);
  var n2 = Random().nextInt(100);

  var result = n1/ n2;

  // sem usar novas variáveis
  print("Os números aleatórios escolhidos foram: $n1 e $n2, "
      "a divisão em número inteiros foi ${result.toStringAsFixed(0)} "
      "e em decimal foi ${result.toStringAsFixed(2)} ");

  var resultInt = result.toInt();
  var resultDec = result.toDouble();

  // usando novas variáveis
  print("Inteiro: $resultInt e decimal $resultDec");
}