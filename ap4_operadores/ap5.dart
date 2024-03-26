void main() {
  Map<String, int?> mapa = {
    "Nelson": null,
    "Jane": null,
    "Jack": 16,
    "Rupert": 37,
    "Andy": 13,
    "Kim": 27,
    "Robert": 31,
  };
  
  for (var n in mapa.keys){
    var resposta = mapa[n];
    print(" A pessoa:$n - ${resposta ?? "idade nao informada"}");
  }

}


