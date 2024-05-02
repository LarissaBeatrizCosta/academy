import 'dart:io';
import 'dart:math';

void main() {
  imprimirMatrizAleatoria();
}

List<int> pegarTamanhoMatriz() {
  List<int> tamanhoMatriz = [];
  late int tamanhoLinha;
  late int tamanhoColuna;

  print("Digite a quantidade de linhas da matriz: ");
  String? respostaTamanhoLinha = stdin.readLineSync();
  print("Digite a quantidade de colunas da matriz: ");
  String? respostaTamanhoColuna = stdin.readLineSync();

  if (respostaTamanhoLinha != null &&
      respostaTamanhoLinha.isNotEmpty &&
      respostaTamanhoColuna != null &&
      respostaTamanhoColuna.isNotEmpty) {
    try {
      tamanhoLinha = int.parse(respostaTamanhoLinha);
      tamanhoColuna = int.parse(respostaTamanhoColuna);

      tamanhoMatriz.add(tamanhoLinha);
      tamanhoMatriz.add(tamanhoColuna);
    } catch (e) {
      print("Insira um tamanho");
    }
  } else {
    print("Inválido");
  }
  return tamanhoMatriz;
}

List<List<int>> gerarMatrizAleatoria() {
  List<int> tamanhos = pegarTamanhoMatriz();
  int tamanhoLinha = tamanhos[0];
  int tamanhoColuna = tamanhos[1];
  List<List<int>> matrizAleatoria = [];

  if (tamanhoLinha != null &&
      tamanhoLinha != 0 &&
      tamanhoColuna != null &&
      tamanhoColuna != 0) {
    try {
      for (int indice = 0; indice < tamanhoLinha; indice++) {
        List<int> novaColuna =
            List.generate(tamanhoLinha, (index) => Random().nextInt(100));
        matrizAleatoria.add(novaColuna);
      }
    } catch (e) {
      print("Inválidos");
    }
  } else {
    print("Tamanhos inválidos");
  }
  return matrizAleatoria;
}

void imprimirMatrizAleatoria() {
  var matriz = gerarMatrizAleatoria();
  print("Sua matriz ficou:");
  for (int i = 0; i < matriz.length; i++) {
    print("\n${matriz[i]}");
  }
}
