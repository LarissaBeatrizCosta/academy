import 'dart:math';

enum Musicas {
  trap,
  rap,
  classica,
  gospel,
}

void main() {
  var num = Musicas.values[Random().nextInt(5)];

  switch (num) {
    case Musicas.trap:
      print("Meu gênero musical preferido é: ${Musicas.trap.name}");
      break;

    case Musicas.rap:
      print("Meu gênero musical preferido é: ${Musicas.rap.name}");
      break;
    case Musicas.classica:
      print("Meu gênero musical preferido é: ${Musicas.classica.name}");
      break;
    case Musicas.gospel:
      print("Meu gênero musical preferido é: ${Musicas.gospel.name}");
      break;
  }
}
