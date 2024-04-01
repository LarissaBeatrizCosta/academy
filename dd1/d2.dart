
double TranformarF(double temperatura) {
  var result1 = (temperatura * 1.8) + 32;
  return result1;
}

double TranformarK(double temperatura) {
  var result2 = temperatura + 273.15;
  return result2;
}

void main() {
  var temperaturas = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  for (var temperatura in temperaturas) {
    print(
        "Celcius: $temperatura,fahrenheit: ${TranformarF(temperatura).toStringAsFixed(2)}, kelvin: ${TranformarK(temperatura).toStringAsFixed(2)}");
  }
}
// Tempo Gasto: 03:52,43

