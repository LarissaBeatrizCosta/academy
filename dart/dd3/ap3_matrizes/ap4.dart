import 'dart:io';

void main() {
  imprimirMultiplicacaoMatrizes();
}

List<int> pegarTamanhoMatrizes() {
  List<int> tamanhoMatriz = [];
  late int tamanhoLinha;
  late int tamanhoColuna;
  int contador = 0;

  while (contador < 2) {
    print("Digite a quantidade de linhas da matriz ${contador + 1}: ");
    String? respostaTamanhoLinha = stdin.readLineSync();
    print("Digite a quantidade de colunas da matriz ${contador + 1}: ");
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
        print("Insira um tamanho válido.");
      }
    } else {
      print("Entrada inválida.");
    }
    contador++;
  }
  return tamanhoMatriz;
}

List<List<int>> pegarValoresMatriz(int linhas, int colunas, int matriz) {
  List<List<int>> matrizEscolhida = [];

  for (int linha = 0; linha < linhas; linha++) {
    List<int> novaLinha = [];
    for (int coluna = 0; coluna < colunas; coluna++) {
      novaLinha.add(pegarValoresEscolhidos(linha, coluna, matriz));
    }
    matrizEscolhida.add(novaLinha);
  }
  return matrizEscolhida;
}

int pegarValoresEscolhidos(int linha, int coluna, int matriz) {
  int posicaoLinha = linha;
  int posicaoColuna = coluna;

  print(
      "Qual valor para matriz ${matriz} linha ${posicaoLinha + 1} coluna ${posicaoColuna + 1}: ");
  String? respostaValorEscolhido = stdin.readLineSync();

  int resposta = int.parse(respostaValorEscolhido!);

  return resposta;
}

List<List<int>> multiplicarMatrizes(
    List<List<int>> matriz1, List<List<int>> matriz2) {
  int linhasMatriz1 = matriz1.length;
  int colunasMatriz2 = matriz2[0].length;
  int linhasMatriz2 = matriz2.length;
  List<List<int>> resultado = List.generate(
      linhasMatriz1, (i) => List.generate(colunasMatriz2, (j) => 0));

  if (matriz1[0].length != linhasMatriz2) {
    print("As matrizes não possuem mesma ordem");
    return resultado;
  }

  for (int linha = 0; linha < linhasMatriz1; linha++) {
    for (int coluna = 0; coluna < colunasMatriz2; coluna++) {
      for (int resultante = 0; resultante < linhasMatriz2; resultante++) {
        resultado[linha][coluna] += matriz1[linha][resultante] * matriz2[resultante][coluna];
      }
    }
  }

  return resultado;
}

void imprimirMultiplicacaoMatrizes() {
  List<int> tamanhos = pegarTamanhoMatrizes();
  List<List<int>> matriz1 = pegarValoresMatriz(tamanhos[0], tamanhos[1], 1);
  List<List<int>> matriz2 = pegarValoresMatriz(tamanhos[2], tamanhos[3], 2);

  print("Matriz 1:");
  imprimirMatriz(matriz1);

  print("\nMatriz 2:");
  imprimirMatriz(matriz2);

  List<List<int>> matrizMultiplicada = multiplicarMatrizes(matriz1, matriz2);

  print("\nMatriz Resultante:");
  imprimirMatriz(matrizMultiplicada);
}

void imprimirMatriz(List<List<int>> matriz) {
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
      stdout.write("${matriz[i][j]} ");
    }
    print("");
  }
}
