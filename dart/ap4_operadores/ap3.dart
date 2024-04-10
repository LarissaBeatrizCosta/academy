
List<int> removendo (List<int>? lista2, int? num){
  lista2?.remove(num);
  return lista2 ?? [];
}

void main(){

  List<int> lista = [1,2,3,5,6];
  var result = removendo(lista, 3);
  for (var n in result){
    print('Lista removida: $n ');
  }
}


