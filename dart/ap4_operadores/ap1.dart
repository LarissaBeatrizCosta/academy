bool ehAnoBissexto(int ano) {
  if (ano % 4 == 0 && ano % 100 == 0) {
    return true;
  } else return false;
}

void printAno(List<int> list) {
  for (var ano in list) {
    if (ehAnoBissexto(ano)) {
      print("O ano $ano é bissexto");
    } else {
      print("O ano $ano não é bissexto");
    }
  }
}

void main() {
  var anos = [1988, 1993, 2000, 2016, 2100, 2300];
  printAno(anos);
}
