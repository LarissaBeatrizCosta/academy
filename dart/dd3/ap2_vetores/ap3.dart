import 'dart:io';
import 'dart:math';

void main() {
  imprimirVetores();
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

List<int> pegarVetorValoresAleatorios(int tamanho) {
  var random = Random();
  int tamanhoDoVetor = tamanho;
  late List<int> lista;
  if (tamanhoDoVetor != null && tamanhoDoVetor != 0) {
    lista = List.generate(tamanhoDoVetor, (index) => random.nextInt(100));
  } else {
    print("Tamanho inválido para criar uma lista");
  }
  return lista;
}

List<double> pegarVetorValoresEscolhidos(int tamanho) {
  int contador = 0;
  int quantidadeDeValores = tamanho;
  List<double> listaDeValoresEscolhidos = [];
  if (quantidadeDeValores != null && quantidadeDeValores != 0) {
    try {
      while (contador < quantidadeDeValores) {
        print("Qual número você deseja inserir na lista: ");
        String? respostaDoValor = stdin.readLineSync();
        if (respostaDoValor != null && respostaDoValor.isNotEmpty) {
          double respostaDoValorDouble = double.parse(respostaDoValor);
          listaDeValoresEscolhidos.add(respostaDoValorDouble);
        } else {
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

List<double> pegarVetorValoresSomados(
    int tamanho, List<int> lista1, List<double> lista2) {
  int contador = 0;
  int quantidadeDeValores = tamanho;
  List<int> listaAleatorios = lista1;
  List<double> listaEscolhidos = lista2;
  List<double> listaSomados = [];

  if (listaEscolhidos != null &&
      listaAleatorios != null &&
      listaEscolhidos.isNotEmpty &&
      listaAleatorios.isNotEmpty) {
    try {
      while (contador < quantidadeDeValores) {
        double valorSomado =
            listaAleatorios[contador] + listaEscolhidos[contador];
        listaSomados.add(valorSomado);
        contador++;
      }
    } catch (e) {
      print("Valores Inválidos");
    }
  } else {
    print("Tamanho inválido");
  }
  return listaSomados;
}

void imprimirVetores() {
  int tamanhoDaLista = pegarTamanhoDoVetor();
  List<double> vetorValoresEscolhidos =
      pegarVetorValoresEscolhidos(tamanhoDaLista);
  List<int> vetorValoresAleatorios =
      pegarVetorValoresAleatorios(tamanhoDaLista);
  List<double> vetorValoresSomados = pegarVetorValoresSomados(
      tamanhoDaLista, vetorValoresAleatorios, vetorValoresEscolhidos);

  int tamanhoVetor = vetorValoresEscolhidos.length;
  print(
      "Seu vetor com tamanho ${tamanhoVetor}\ncom valores escolhidos: ${vetorValoresEscolhidos}\n"
      "com valores aleatórios: ${vetorValoresAleatorios}\n"
      "com valores somados: ${vetorValoresSomados}");
}
