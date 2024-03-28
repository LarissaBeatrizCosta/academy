abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  String _nome;

  ArquivoTexto(this._nome);

  @override
  void abrir() {
    try {
      throw Exception("Erro para abrir $_nome");
    } catch (e) {
      print("Exception novamente");
      rethrow;
    }
  }
}

void main() {
  try {
    var arq = 'testeArquivo.txt';
    ArquivoTexto arquivo = ArquivoTexto(arq);
    arquivo.abrir();
  } catch (e) {
    print(e);
  } finally {
    print("Fim do programa");
  }
}
