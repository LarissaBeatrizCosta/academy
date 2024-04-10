Future<void> baixarImagens(List<String> links) async {
  print("Baixando imagem");

  for(var link in links){
    print("Imagem $link baixada com sucesso");
  }

  print("Dowload concluido");
}

Future<void> main() async {
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  await baixarImagens(urls);
}
