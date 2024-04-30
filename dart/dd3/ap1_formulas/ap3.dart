import 'dart:io';
import 'dart:math';

void main() {
  printarResultado();
}

List<double> pegarNumerosEscolhidos() {
  print("Digite o número para ser o A: ");
  String? numero1 = stdin.readLineSync();
  print("Digite o número para ser o B: ");
  String? numero2 = stdin.readLineSync();
  print("Digite o número para ser o C: ");
  String? numero3 = stdin.readLineSync();

  List<double> numerosEscolhidos = [];
  late double numeroA;
  late double numeroB;
  late double numeroC;

  if (numero1 != null &&
      numero1.isNotEmpty &&
      numero2 != null &&
      numero2.isNotEmpty &&
      numero3 != null &&
      numero3.isNotEmpty) {
    try {
      numerosEscolhidos.add(numeroA = double.parse(numero1));
      numerosEscolhidos.add(numeroB = double.parse(numero2));
      numerosEscolhidos.add(numeroC = double.parse(numero3));
    } catch (e) {
      print("Digite um número");
    }
  } else {
    print("Digite um número válido");
  }
  return numerosEscolhidos;
}

List<double> calcularBaskara() {
  List<double> numerosEscolhidos = pegarNumerosEscolhidos();
  List<double> resultadosDasRaizes = [];
  late double resultadoDelta;
  late double resultadoBaskara1;
  late double resultadoBaskara2;

  double escolhido1 = numerosEscolhidos[0];
  double escolhido2 = numerosEscolhidos[1];
  double escolhido3 = numerosEscolhidos[2];

  resultadoDelta = (escolhido2 * escolhido2) - 4 * (escolhido1 * escolhido3);
  resultadosDasRaizes.add(resultadoBaskara1 = ((escolhido2 * -1) + sqrt(resultadoDelta)) / (2 * escolhido1));
  resultadosDasRaizes.add(resultadoBaskara2 = ((escolhido2 * -1) - sqrt(resultadoDelta)) / (2 * escolhido1));

  return resultadosDasRaizes;
}

void printarResultado() {
  List<double> resultados = calcularBaskara();
  var resultado1 = resultados[0];
  var resultado2 = resultados[1];
  print("Cálculo da fórmula de Bhaskara!");
  print("Resultado da primeira raiz: ${resultado1} e segunda raiz: ${resultado2}");
}
