import 'dart:io';
import 'dart:math';

void main() {
  imprimirVetorDeTamanhoVariavel();
}

int pegarTamanhoDoVetor() {
  late int tamanhoDoVetorInteiro;

  print("Digite o valor do tamanho da lista: ");
  String? respostaTamanhoVetor = stdin.readLineSync();

  if (respostaTamanhoVetor != null && respostaTamanhoVetor.isNotEmpty) {
    try {
      tamanhoDoVetorInteiro = int.parse(respostaTamanhoVetor);
    } catch (e) {
      print("Insira um número");
    }
  } else {
    print("Inválido");
  }
  return tamanhoDoVetorInteiro;
}

List<int> criarVetor() {
  var random = Random();
  int tamanhoDoVetor = pegarTamanhoDoVetor();
  late List<int> lista;
  if (tamanhoDoVetor != null && tamanhoDoVetor != 0) {
    lista = List.generate(tamanhoDoVetor, (index) => random.nextInt(100));
  } else {
    print("Tamanho inválido para criar uma lista");
  }
  return lista;
}

void imprimirVetorDeTamanhoVariavel() {
  List<int> vetor = criarVetor();
  print("Seu vetor com tamanho ${vetor.length} ficou assim: ${vetor}");
}
