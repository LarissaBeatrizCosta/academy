int contarPalavras(String texto) {
  List<String> quantidadeDePalavras = texto.split(" ");

  int contador = 0;
  for (var palavra in quantidadeDePalavras) {
    if (palavra.isNotEmpty) {
      contador++;
    }
  }

  return contador;
}



int contarTamanho(String texto) {
  var result = texto.split("").length;
  return result;
}

int contarFrases(String texto) {
  var result = texto.split(".").length -1;
  return result;
}

int contarVogais(String texto) {
  var vogal = "AEIOU";
  var result = 0;
  for (var letras = 0; letras < texto.length; letras++) {
    if (vogal.contains(texto[letras].toUpperCase())) {
      result++;

    }
  }
  return result;
}

Set<String> contarConsoantes(String texto) {
  String textoFormatado = texto.toLowerCase();
  Set<String> consoantes = Set<String>();
  var vogais = "aeiou";

  for(var letras = 0; letras < texto.length; letras++) {
    if (textoFormatado[letras].toLowerCase() != textoFormatado[letras].toUpperCase()) {
      if(!vogais.contains(textoFormatado[letras])) {
        consoantes.add(textoFormatado[letras]);
      }
    }
  }

  return consoantes;
}
void main() {
  var texto = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.";

  print("paragrafo: $texto \n "
      "Número de palavras: ${contarPalavras(texto)}\n"
      "Tamanho do texto:${contarTamanho(texto)} \n "
      "Numero de frases: ${contarFrases(texto)} \n"
      "Numero de vogais: ${contarVogais(texto)} \n"
      "Numero de consoantes: ${contarConsoantes(texto).join(",")}");
}

// Tempo Gasto: 1:15,75

