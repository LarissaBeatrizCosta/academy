
List<int> convertida (List<String> original){
  List <int> listConvertida = [];
  for (var n in original){
    try {
      int tentativa = int.parse(n);
      listConvertida.add(tentativa);
    } catch(i){listConvertida.add(0);}
  }
  return listConvertida;
}



void main() {
  List<String> anos = [ '10', '2XXL7', 'JOJ0', '99', '381',
    'AD44', '47', '2B', '123', '78'];
  var result = convertida(anos);
  print("Lista convertida: ${result.join(",")}");
}