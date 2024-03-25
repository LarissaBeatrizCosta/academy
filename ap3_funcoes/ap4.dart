import 'dart:math';

final listTemp = List.generate(15, (_) => Random().nextInt(5000) + 1);

String calcularBinario(int n) {
  var result1 = n.toRadixString(2);
  return result1;
}

String calcularOctal(int n) {
  var result3 = n.toRadixString(8);
  return result3;
}

String calcularHexadecimal(int n) {
  var result4 = n.toRadixString(16);
  return result4;
}

void calcular(List<int> list) {
  for (var n in list) {
    var result1 = calcularBinario(n);
    var result2 = calcularOctal(n);
    var result3 = calcularHexadecimal(n);
    print("decimal: ${n}, binário: ${result1}, octal: ${result2}, hexadecimal: ${result3}");
  }
}

void main() {
  calcular(listTemp);
}