int contarTamanho(String texto) {
  var result = texto.split("").length;
  return result;
}

int contarFrases(String texto) {
  var result = texto.split(".").length;
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

List<String> contarConsoantes(String texto) {
return [""];
}

void main() {
  var texto = "Lorem ipsum dolor sit amet, "
      "consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. "
      "Mauris lobortis quam id lacinia porttitor.";

  print("paragrafo: $texto \n Número de palavras:"
      "Tamanho do texto:${contarTamanho(texto)} \n "
      "Numero de frases: ${contarFrases(texto)} \n"
      "Numero de vogais: ${contarVogais(texto)} \n"
      "Numero de consoantes: ${contarConsoantes(texto)}");
}

// Tempo Gasto: 48:00,75

