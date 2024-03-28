abstract class AlimentoSolido {
  void comer();
}

abstract class AlimentoLiquido {
  void beber();
}

class Sopa implements AlimentoSolido, AlimentoLiquido {
  @override
  void beber() {
    print("Sopa é de beber");
  }

  @override
  void comer() {
    print("Sopa é de comer");
  }
}

void main() {

  var sopinha = Sopa();
  sopinha.beber();
  sopinha.comer();
}
