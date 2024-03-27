import 'dart:math';

int somar(int num) {
  var total = 0;
  var indice = 0;
  while (indice <= num) {
    if (indice.isEven) {
      total += indice;
    }
    indice++;
  }
  return total;
}

void main() {
  var num = Random().nextInt(900) + 100;
  var total = somar(num);
  print("Soma dos números pares entre 0 e $num é $total");
}
