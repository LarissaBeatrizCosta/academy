void main(){
  Map<String, List<String>> city = Map<String, List<String>>();
  city ['SC'] = ['Gaspar', 'Blumenau', 'Florianopolis'];
  city ['PR'] = ['Curitiba', 'Cascavel', 'Foz do Iguacu'];
  city ['SP'] = ['Sao Paulo', 'Guarulhos', 'Campinas'];
  city ['MG'] = ['Belo Horizonte', 'Juiz de Fora', 'Berlinda'];

  print("Estados ${city.keys}");

  final citySC = city['SC']!;

  citySC.sort();
  print("Cidades que compões sc: $citySC");

  city.forEach((key, value) {
    value.sort();
    print("$key: ${value.join(" ; ")}");
  });
    
}