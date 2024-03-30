Future<void> contagemRegressiva() async {
  for (int num = 10; num > -1; num--) {
    print(num);
    await Future.delayed(Duration(seconds: 1));

  }
}

void main() async{
  print('Iniciando lançamento');
  await contagemRegressiva();
  print('Foguete lançado!');
}
