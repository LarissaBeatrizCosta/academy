Future<void> buscar(List<String> docs ) async {;

for (var doc in docs){
  print("Buscando arquivo $doc");
}
}

void main () async{
  List<String> documentos= ["teste.1", "teste.2", "teste.3","teste.4"];
  print("Iniciando busca");
  await buscar(documentos);
  print("Busca Finalizada");

}