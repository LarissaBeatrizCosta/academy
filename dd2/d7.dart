import 'dart:collection';
import 'dart:math';

class GeradorNomes {
  static String gerarNomeAleatorio() {
    List<String> nomes = [
      "Ana",
      "Francisco",
      "Joao",
      "Pedro",
      "Gabriel",
      "Rafaela",
      "Marcio",
      "Jose",
      "Carlos",
      "Patricia",
      "Helena",
      "Camila",
      "Mateus",
      "Gabriel",
      "Maria",
      "Samuel",
      "Karina",
      "Antonio",
      "Daniel",
      "Joel",
      "Cristiana",
      "Sebastião",
      "Paula"
    ];

    List<String> sobrenomes = [
      "Silva",
      "Ferreira",
      "Almeida",
      "Azevedo",
      "Braga",
      "Barros",
      "Campos",
      "Cardoso",
      "Teixeira",
      "Costa",
      "Santos",
      "Rodrigues",
      "Souza",
      "Alves",
      "Pereira",
      "Lima",
      "Gomes",
      "Ribeiro",
      "Carvalho",
      "Lopes",
      "Barbosa"
    ];
    String nome = nomes[Random().nextInt(nomes.length)];
    String sobrenome = sobrenomes[Random().nextInt(sobrenomes.length)];

    return "$nome $sobrenome";
  }
}

void main() {
  Queue<String> filaDeAtendimento = Queue();

  for (int i = 0; i < 10; i++) {
    String cliente = GeradorNomes.gerarNomeAleatorio();
    filaDeAtendimento.add(cliente);
    print('$cliente está na fila');
  }

  print("---------------------");
  while (filaDeAtendimento.isNotEmpty) {
    String pessoaAtentida = filaDeAtendimento.removeFirst();
    print('$pessoaAtentida acabou de sair');
  }
}
