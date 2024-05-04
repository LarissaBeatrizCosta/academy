import 'dart:io';

void main() {
  imprimirMatrizEscolhida();
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

int pegarValoresEscolhidos(int linha, int coluna) {
  int posicaoLinha = linha;
  int posicaoColuna = coluna;

  print("Qual valor para linha ${posicaoLinha} coluna ${posicaoColuna}");
  String? respostaValorEscolhido = stdin.readLineSync();

  int resposta = int.parse(respostaValorEscolhido!);

  return resposta;
}

List<List<int>> gerarMatrizEscolhida() {
  List<int> tamanhos = pegarTamanhoMatriz();
  int tamanhoLinha = tamanhos[0];
  int tamanhoColuna = tamanhos[1];
  List<List<int>> matrizEscolhida = [];

  if (tamanhoLinha != null &&
      tamanhoLinha != 0 &&
      tamanhoColuna != null &&
      tamanhoColuna != 0) {
    try {
      for (int indice = 0; indice < tamanhoLinha; indice++) {
        List<int> novaColuna = List.generate(tamanhoLinha, (index) => pegarValoresEscolhidos(indice, index));
        matrizEscolhida.add(novaColuna);
      }
    } catch (e) {
      print("Inválidos");
    }
  } else {
    print("Tamanhos inválidos");
  }
  return matrizEscolhida;
}

int pegarValorParaMultiplicar() {
  late int valorParaMultiplicar;
  print("Qual valor inteiro você deseja multiplicar: ");
  String? respostaValorMultiplicacao = stdin.readLineSync();
  valorParaMultiplicar = int.parse(respostaValorMultiplicacao!);
  return valorParaMultiplicar;
}

List<List<int>> gerarMatrizMultiplicada(List<List<int>> matrizEscolhida) {
  List<List<int>> matriz = matrizEscolhida;
  List<List<int>> matrizMultiplicada = [];
  int multiplicador = pegarValorParaMultiplicar();

  for (int linha = 0; linha < matriz.length; linha++) {
    List<int> linhaDaMatriz = matriz[linha];
    List<int> novaLinha = [];
    for (int coluna = 0; coluna < linhaDaMatriz.length; coluna++) {
      var respostaMultiplicacao = multiplicador * linhaDaMatriz[coluna];
      novaLinha.add(respostaMultiplicacao);
    }
    matrizMultiplicada.add(novaLinha);
  }

  return matrizMultiplicada;
}

void imprimirMatrizEscolhida() {
  var matrizEscolhida = gerarMatrizEscolhida();
  var matrizMultiplicada = gerarMatrizMultiplicada(matrizEscolhida);
  print("Sua matriz original:");
  for (int i = 0; i < matrizEscolhida.length; i++) {
    print("\n${matrizEscolhida[i]}");
  }
  print("Sua matriz multiplicada por:");
  for (int i = 0; i < matrizMultiplicada.length; i++) {
    print("\n${matrizMultiplicada[i]}");
  }
}
