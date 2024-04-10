import 'dart:collection';

class CartaA {
  String naipe;
  String valor;

  CartaA(this.naipe, this.valor);
}

void empilharCarta(Queue<CartaA> baralho, CartaA carta) {
  baralho.add(carta);
  print("A carta adicionada foi: ${carta.naipe}");
}

void removerCarta(Queue<CartaA> baralho) {
  if (baralho.isNotEmpty) {
    var cartaRemovida = baralho.removeLast();
    if (cartaRemovida != null) {
      print("A carta ${cartaRemovida.naipe} foi removida");
    }
  }
}

void main() {
  var baralho = Queue<CartaA>();
  empilharCarta(baralho, CartaA('\u2663', "A"));
  empilharCarta(baralho, CartaA('\u2665', "A"));
  empilharCarta(baralho, CartaA('\u2660', "A"));
  empilharCarta(baralho, CartaA('\u2666', "A"));

  print("--------------------------");
  while (baralho.isNotEmpty) {
    removerCarta(baralho);
  }
}
