import 'dart:math';

void main() {
  final caso = Random().nextInt(6);

  switch (caso) {
    case 1:
      print('Encontrado 1');
      break;
    case 2:
      print('Encontrado 2');
      break;
    case 3:
      print('Encontrado 3');
      break;
    case 4:
      print('Encontrado 4');
      break;
    case 5:
      print('Encontrado 5');
      break;
    default:
      print('Opcao invalida');
  }
}
