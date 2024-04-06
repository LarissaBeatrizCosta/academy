import 'dart:collection';

class CartaA {
  String naipe;
  String valor;

  CartaA(this.naipe, this.valor);
}

void empilharCarta(Map<int, CartaA> baralho, CartaA carta) {
  baralho[baralho.length] = carta;
  print(" A carta adicionada foi: ${carta.naipe}");
}

void removerCarta(Map<int, CartaA> baralho) {
  if (baralho.isNotEmpty) {
    var cartaRemovida = baralho.remove(baralho.length - 1);
    if (cartaRemovida != null) {
      print("A carta ${cartaRemovida.naipe} foi removida");
    }
  }
}

void main() {
  var baralho = <int, CartaA>{};
  empilharCarta(baralho, CartaA('\u2663', "A"));
  empilharCarta(baralho, CartaA('\u2665', "A"));
  empilharCarta(baralho, CartaA('\u2660', "A"));
  empilharCarta(baralho, CartaA('\u2666', "A"));

  print("--------------------------");
  while (baralho.isNotEmpty) {
    removerCarta(baralho);
  }
}
