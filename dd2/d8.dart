import 'dart:math';

class Figura {
  String nome;
  int codigo;

  Figura(this.nome, this.codigo);
}

class PacoteDeFiguras {
  final List<Figura> pacoteDeFiguras = [];

  /// Gera lista aleatória com 4 figuras
  void gerarLista(List<Figura> listaDeFigurasDisponiveis) {
    while (pacoteDeFiguras.length != 4) {
      final figuraAleatoria = listaDeFigurasDisponiveis[
          Random().nextInt(listaDeFigurasDisponiveis.length)];
      if (!pacoteDeFiguras.contains(figuraAleatoria)) {
        pacoteDeFiguras.add(figuraAleatoria);
      }
    }
  }
}

class Album {
  List<Figura> figurasColadas = [];
  List<Figura> figurasRepetidas = [];

  void adicionarFiguras(List<Figura> pacoteDeFiguras) {
    for (var figura in pacoteDeFiguras) {
      if (!figurasColadas.contains(figura)) {
        figurasColadas.add(figura);
      } else {
        figurasRepetidas.add(figura);
      }
    }
  }

  void imprimirFigurasColadas() {
    List<Figura> listaOrdenada = figurasColadas;
    listaOrdenada.sort();
    for (var figura in listaOrdenada) {
      print("${figura.codigo}: ${figura.nome}");
    }
  }
}

void main() {
  List<Figura> listaDeFiguras = [
    Figura('Figura 1', 1),
    Figura('Figura 2', 2),
    Figura('Figura 3', 3),
    Figura('Figura 4', 4),
    Figura('Figura 5', 5),
    Figura('Figura 6', 6),
    Figura('Figura 7', 7),
    Figura('Figura 8', 8),
    Figura('Figura 9', 9),
    Figura('Figura 10', 10),
    Figura('Figura 11', 11),
    Figura('Figura 12', 12),
    Figura('Figura 13', 13),
    Figura('Figura 14', 14),
    Figura('Figura 15', 15),
    Figura('Figura 16', 16),
    Figura('Figura 17', 17),
    Figura('Figura 18', 18),
    Figura('Figura 19', 19),
    Figura('Figura 20', 20),
  ];

  final pacote = PacoteDeFiguras();
  final album = Album();




  print('Número de figuras repetidas: ${album.figurasRepetidas.length}');
  album.imprimirFigurasColadas();

}
