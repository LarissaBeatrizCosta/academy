import 'dart:io';

import '../ap1_formulas/ap3.dart';

void main() {
  imprimirVetorDeValoresEscolhidos();
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

List<double> pegarValores() {
  int contador = 0;
  int quantidadeDeValores = pegarTamanhoDoVetor();
  List<double> listaDeValoresEscolhidos = [];
  if (quantidadeDeValores != null && quantidadeDeValores != 0) {
    try {
       while(contador < quantidadeDeValores){
         print("Qual número você deseja inserir na lista: ");
         String? respostaDoValor = stdin.readLineSync();
         if ( respostaDoValor != null && respostaDoValor.isNotEmpty){
           double respostaDoValorDouble = double.parse(respostaDoValor);
           listaDeValoresEscolhidos.add(respostaDoValorDouble);
         }else{
           print("Você precisa digitar um valor válido");
         }
         contador++;
       }
    } catch (e) {
      print("Inválido, tente outro tamanho");
    }
  } else {
    print("Tamanho inválido");
  }
  return listaDeValoresEscolhidos;
}

void imprimirVetorDeValoresEscolhidos() {
  List<double> vetorEscolhidos = pegarValores();
  print("Seu vetor com tamanho ${vetorEscolhidos.length} ficou assim: ${vetorEscolhidos}");

}
