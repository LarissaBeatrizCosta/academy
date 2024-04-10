import 'dart:math';

double CalcularArea(raio) {
  var result1= pi * pow(raio, 2);
  return result1;
}

double CalcularPerimetro(raio) {
  var result2= 2 * pi * raio;
  return result2;
}

void main() {
  var raios = [5, 8, 12, 7.3, 18, 2, 25];

  for (var raio in raios) {
        print("Raio $raio, area: ${CalcularArea(raio).toStringAsFixed(2)}, "
            "perimetro: ${CalcularPerimetro(raio).toStringAsFixed(2)}");
  }
}

// Tempo Gasto: 08:25,04
