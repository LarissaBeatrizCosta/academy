import 'dart:io';

void main() {
  calcularPitagoras(pedirDimensoes());
}

List<int> pedirDimensoes() {
  print("Digite a primeira dimensão do cateto: ");
  String? respostaDimensaoCateto1 = stdin.readLineSync();
  print("Digite a segunda dimensão do cateto: ");
  String? respostaDimensaoCateto2 = stdin.readLineSync();
  int respostaDimensao1;
  int respostaDimensao2;

  if (respostaDimensaoCateto1 != null &&
      respostaDimensaoCateto1.isNotEmpty &&
      respostaDimensaoCateto2 != null &&
      respostaDimensaoCateto2.isNotEmpty) {
    try {
      respostaDimensao1 = int.parse(respostaDimensaoCateto1);
      respostaDimensao2 = int.parse(respostaDimensaoCateto2);
    } catch (e) {
      print("Número inválido");
      return [];
    }
  } else {
    print("Número inválido");
    return [];
  }
  return [respostaDimensao1, respostaDimensao2];
}

void calcularPitagoras(List<int> dimensoes) {
  int dimensao1 = dimensoes[0];
  int dimensao2 = dimensoes[1];

  int resultado = (dimensao1 * dimensao1) + (dimensao2 * dimensao2);
  print("A hipotenusa resultou em: ${resultado}");
}
