import 'dart:io';

//todo terminar
void main() {
  List<String> posicaoTabuleiro = EscolherPosicao();
  JogarVelha(posicaoTabuleiro);
}

List<String> EscolherPosicao() {
  print(("Escolha a posição de coluna de 1 a 3: "));
  String posicaoColuna = stdin.readLineSync()!;
  print(("Escolha a posição de linha de 1 a 3: "));
  String posicaoLinha = stdin.readLineSync()!;

  return [posicaoColuna, posicaoLinha];
}

void JogarVelha(List<String> posicaoEscolhida) {
  int rodada = 0;
  int posicaoColuna = int.parse(posicaoEscolhida[1]);
  int posicaoLinha = int.parse(posicaoEscolhida[0]);

  for (int i = 1; i < 4; i++) {
    String linha = " |";
    for (int j = 1; j < 4; j++) {
      if (posicaoColuna == i && posicaoLinha == j) {
        if (rodada % 2 == 0) {
          linha += "X|";
        }else{
          linha += "O|";
        }
      } else
        linha += " |";
    }
    print(linha);
  }
  rodada++;
}
