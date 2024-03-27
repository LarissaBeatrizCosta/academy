void converter(String palavra) {
  try {
    int convertido = int.parse(palavra);
    print("Numero digitado: $convertido");
  } catch (e) {
    print("Entrada invalida. Insira apenas números inteiros.");
  }
}

void main() {
  converter("1");
}
