void pares(int num) {
  try {
    if (num % 2 != 0) {
      throw Exception("O número  é ímpar.");
    }
    print("O número é par: $num");
  } on Exception catch (e) {
    print("Exception: Entrada inválida. Insira apenas números pares.");
  }
}

void main() {
  pares(6);
}
