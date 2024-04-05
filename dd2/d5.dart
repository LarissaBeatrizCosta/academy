import 'dart:math';

class Item {
  String nome;
  int quantidade;

  Item(this.nome, this.quantidade);
}

class Itens {
  final listaDeItens = <Item>[
    Item("papel", 1),
    Item("cola", 3),
    Item("tesoura", 5),
    Item("lápis", 0),
    Item("cartão", 0)
  ];

  void adicionarNovosItens(Item novoItem) {
    final listaNova = listaDeItens.add(novoItem);
    print("O item adicionado foi: ${novoItem.nome}");
  }

  void imprimirItens(List<Item> lista) {
    for (var item in lista) {
      print("${item.nome} com ${item.quantidade} unidades");
    }
  }

  void excluirItens(Item itemComprado, List<Item> listaDeComprados) {
    listaDeItens.removeWhere((item) =>
        item.nome == itemComprado.nome &&
        item.quantidade == itemComprado.quantidade);
    listaDeComprados.add(itemComprado);
  }

  void imprimirItensComprados(List<Item> listaDeComprados) {
    for (var item in listaDeComprados) {
      print("${item.nome} com ${item.quantidade} unidades");
    }
  }

  void imprimirItemAleatorio() {
    final itemAleatorio = listaDeItens[Random().nextInt(listaDeItens.length)];
    print("${itemAleatorio.nome} com ${itemAleatorio.quantidade} unidades");
  }

  void imprimirItensSemEstoque() {
    final itemSemEstoque = listaDeItens.where((item) => item.quantidade == 0);
    for (var item in itemSemEstoque) {
      print("${item.nome}");
    }
  }
}

void main() {
  final itens = Itens();
  final novoItem = Item("apontador", 5);
  final itemComprado1 = Item("cola", 3);
  final itemComprado2 = Item("papel", 1);

  List<Item> listaDeComprados = [];

  print("Itens Listados:");
  itens.imprimirItens(itens.listaDeItens);
  print("-------------------------");
  itens.adicionarNovosItens(novoItem);
  itens.excluirItens(itemComprado1, listaDeComprados);
  itens.excluirItens(itemComprado2, listaDeComprados);

  print("-------Itens Comprados-----------");
  itens.imprimirItensComprados(listaDeComprados);
  print("-------Item Aleatório---------");
  itens.imprimirItemAleatorio();
  print("----------Progresso-----------");
  print("${listaDeComprados.length} / ${itens.listaDeItens.length}");
  print("------Itens Sem Estoque-------");
  itens.imprimirItensSemEstoque();
}
