import 'dart:io';

void main() {
  printarRespostas();
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

void printarRespostas() {
  var numeroEscolhido = pegarNumero();
  List<String> resultados = listaDeResultados(numeroEscolhido);
  print("Número: ${numeroEscolhido}\nBinário: ${resultados[0]}\nOctal: ${resultados[1]}\nHeximal: ${resultados[2]}");
}
