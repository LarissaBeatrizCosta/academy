import 'dart:math';

String calcularBinario(int numero) {
  var resultadoBinario = numero.toRadixString(2);
  return resultadoBinario;
}

String calcularOctal(int numero) {
  var resultadoOctal = numero.toRadixString(8);
  return resultadoOctal;
}

String calcularHexadecimal(int numero) {
  var resultadoHexadecimal = numero.toRadixString(16);
  return resultadoHexadecimal;
}

void main() {
  List<int> numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];

  numeros.sort();
  for (var numero in numeros) {
    var result1 = calcularBinario(numero);
    var result2 = calcularOctal(numero);
    var result3 = calcularHexadecimal(numero);
    print(
        "decimal: ${numero}, binário: ${result1}, octal: ${result2}, hexadecimal: ${result3}");
  }
}

//Tempo Gasto: 8min
