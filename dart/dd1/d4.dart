DateTime calcularDiasUteis(DateTime data) {
  int totalDiasUteis = 0;
  DateTime dia = data;

  for (int contadorDeDias = 0; totalDiasUteis < 19; contadorDeDias++) {
    if (dia.weekday != DateTime.saturday && dia.weekday != DateTime.sunday) {
      totalDiasUteis++;
    }
    dia = dia.add(Duration(days: 1));
  }

  return dia.subtract(Duration(days: 1));
}

String imprimirData(DateTime data) {
  String dia = data.day.toString().padLeft(2, '0');
  String mes = data.month.toString().padLeft(2, '0');
  String ano = data.year.toString();
  return 'Data Calculada: $dia/$mes/$ano';
}

void main() {
  DateTime data = DateTime(2022, 9, 5);
  DateTime diasUteis = calcularDiasUteis(data);

  print("Data atual: ${data.day}/${data.month}/${data.year}");
  print(imprimirData(diasUteis));
}

// Tempo Gasto: 42min
