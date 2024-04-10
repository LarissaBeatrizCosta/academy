int comandoFor(List<int> numeros) {
  int total = 0;
  for (int numero in numeros) {
    total += numero;
  }
  return total;
}

int comandoWhile(List<int> numeros) {
  int total = 0;
  int tamanho = 0;
  while (tamanho < numeros.length) {
    total += numeros[tamanho];
    tamanho++;
  }
  return total;
}

int comandoRecursivo(List<int> numeros, int posicao) {
  if (posicao == numeros.length) {
    return 0;
  } else {
    return numeros[posicao] + comandoRecursivo(numeros, posicao + 1);
  }
}

int colecao(List<int> numeros) {
  return numeros.reduce((valor, numero) => valor + numero);
}

void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  print("For: ${comandoFor(numeros)}");
  print("While: ${comandoWhile(numeros)}");
  print("Recursão: ${comandoRecursivo(numeros, 0)}");
  print("Lista: ${colecao(numeros)}");
}

// Tempo gasto: 15min
