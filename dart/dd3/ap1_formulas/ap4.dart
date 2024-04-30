import 'dart:io';
import 'dart:math';

void main() {
  chamarMenu();
}

void chamarMenu() {
  print(
      "Seja Bem-Vindo!\n1-Teorema de Pitágoras\n2-Tranformações numéricas\n3-Baskara\nescolha: ");
  String? resposta = stdin.readLineSync();

  switch (resposta) {
    case "1":
      calcularPitagoras(pedirDimensoes());
      return chamarMenu();
    case "2":
      calcularTransformacoes();
      return chamarMenu();
    case "3":
      printarBaskara();
      return chamarMenu();
    default:
      print("Inválido");
      return chamarMenu();
  }
}

List<int> pedirDimensoes() {
  print("Digite a primeira dimensão do cateto: ");
  String? respostaDimensaoCateto1 = stdin.readLineSync();
  print("Digite a segunda dimensão do cateto: ");
  String? respostaDimensaoCateto2 = stdin.readLineSync();
  int respostaDimensao1;
  int respostaDimensao2;

  if (respostaDimensaoCateto1 != null &&
      respostaDimensaoCateto1.isNotEmpty &&
      respostaDimensaoCateto2 != null &&
      respostaDimensaoCateto2.isNotEmpty) {
    try {
      respostaDimensao1 = int.parse(respostaDimensaoCateto1);
      respostaDimensao2 = int.parse(respostaDimensaoCateto2);
    } catch (e) {
      print("Número inválido");
      return [];
    }
  } else {
    print("Número inválido");
    return [];
  }
  return [respostaDimensao1, respostaDimensao2];
}

void calcularPitagoras(List<int> dimensoes) {
  int dimensao1 = dimensoes[0];
  int dimensao2 = dimensoes[1];

  int resultado = (dimensao1 * dimensao1) + (dimensao2 * dimensao2);
  print("A hipotenusa resultou em: ${resultado}");
}

double pegarNumero() {
  print("Escreva um número decimal: ");
  String? resposta = stdin.readLineSync();
  late double respostaDecimal;

  if (resposta != null && resposta.isNotEmpty) {
    try {
      respostaDecimal = double.parse(resposta);
    } catch (e) {
      print("Inválido, escreva um número decimal");
    }
  } else
    print("Inválido, escreva um número decimal");
  return respostaDecimal;
}

String calcularBinario(double num) {
  int numeroInteiro = num.toInt();
  return numeroInteiro.toRadixString(2);
}

String calcularOctal(double num) {
  int numeroInteiro = num.toInt();
  return numeroInteiro.toRadixString(8);
}

String calcularHeximal(double num) {
  int numeroInteiro = num.toInt();
  return numeroInteiro.toRadixString(16);
}

List<String> listaDeResultados(double numero) {
  List<String> resultados = [];

  resultados.add(calcularBinario(numero));
  resultados.add(calcularOctal(numero));
  resultados.add(calcularHeximal(numero));

  return resultados;
}

void calcularTransformacoes() {
  var numeroEscolhido = pegarNumero();
  List<String> resultados = listaDeResultados(numeroEscolhido);
  print(
      "Número: ${numeroEscolhido}\nBinário: ${resultados[0]}\nOctal: ${resultados[1]}\nHeximal: ${resultados[2]}");
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
  resultadosDasRaizes.add(resultadoBaskara1 =
      ((escolhido2 * -1) + sqrt(resultadoDelta)) / (2 * escolhido1));
  resultadosDasRaizes.add(resultadoBaskara2 =
      ((escolhido2 * -1) - sqrt(resultadoDelta)) / (2 * escolhido1));

  return resultadosDasRaizes;
}

void printarBaskara() {
  List<double> resultados = calcularBaskara();
  var resultado1 = resultados[0];
  var resultado2 = resultados[1];
  print("Cálculo da fórmula de Bhaskara!");
  print(
      "Resultado da primeira raiz: ${resultado1} e segunda raiz: ${resultado2}");
}
