import 'dart:io';
import 'dart:math';
void main (){
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

int pegarValoresEscolhidos(int linha, int coluna){
int posicaoLinha = linha;
int posicaoColuna = coluna;

print("Qual valor para linha ${posicaoLinha} coluna ${posicaoColuna}");
String? respostaValorEscolhido = stdin.readLineSync();

int resposta = int.parse(respostaValorEscolhido!);

return resposta;
}


List<List<int>> gerarMatrizEscolhida() {
  List<int> tamanhos = pegarTamanhoMatriz();
  int contadorLinha = 0;
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
        contadorLinha++;
      }
    } catch (e) {
      print("Inválidos");
    }
  } else {
    print("Tamanhos inválidos");
  }
  return matrizEscolhida;
}


void imprimirMatrizEscolhida(){
  var matrizEscolhida = gerarMatrizEscolhida();
  print("Sua matriz ficou:");
  for (int i = 0; i < matrizEscolhida.length; i++) {
    print("\n${matrizEscolhida[i]}");
  }
}