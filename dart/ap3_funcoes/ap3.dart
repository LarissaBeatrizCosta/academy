import 'dart:math';

final listR = List.generate(10, (_) => Random().nextDouble() * 100 + 1);

double calcularArea(double n) {
  var result = pi * pow(n, 2);
  return result;
}

double calcularPerimetro(double n) {
  var result2 = 2 * pi * n;
  return result2;
}

void calcular(List<double> list) {
  for (var n in list) {
    var resultArea = calcularArea(n);
    var resultPerimetro = calcularPerimetro(n);
    print(
        "raio: ${n.toStringAsFixed(2)}, area: ${resultArea.toStringAsFixed(2)}, perímetro: ${resultPerimetro.toStringAsFixed(2)}");
  }
}

void main() {
  calcular(listR);
}