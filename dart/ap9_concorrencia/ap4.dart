Future<void> buscar(List<String> docs ) async {;

for (var doc in docs){
  print("Buscando arquivo $doc");
}
}

void main () async{
  List<String> documentos= ["ap1.dart.1", "ap1.dart.2", "ap1.dart.3","ap1.dart.4"];
  print("Iniciando busca");
  await buscar(documentos);
  print("Busca Finalizada");

}