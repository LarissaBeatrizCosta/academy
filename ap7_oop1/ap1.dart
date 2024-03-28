class ContaBancaria {
  double saldo;
  String titular;

  ContaBancaria(this.saldo, this.titular);

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print("Valor depois do saque: $saldo");
    } else {
      print("Você não tem saldo!!!");
    }
  }

  void depositar(double valor) {
    saldo += valor;
    print("Seu saldo: $saldo");
  }
}

void main() {
  var contaBancaria = ContaBancaria(10000.00, "Larissa");
  contaBancaria.sacar(900);
  contaBancaria.depositar(2.0);
}
