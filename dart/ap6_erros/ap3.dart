import 'dart:math';

abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  double _base;
  double _altura;

  Retangulo(this._base, this._altura) {
    try {
      if (_base <= 0 || _altura <= 0) {
        throw Exception("Dimensões inválidas, informe apenas valores "
            "positivos maiores que zero");
      }
      print("Area do retângulo: ${calcularArea().toStringAsFixed(2)}");
    } on Exception catch (e) {
      print("Exception: Entrada inválida");
    }
  }

  @override
  double calcularArea() {
    return _base * _altura;
  }
}

void main() {
  Retangulo forma = Retangulo(Random().nextDouble() * 100, Random().nextDouble() * 100);
}
