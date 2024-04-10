class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  double desconto(double desconto) {
    double precoAtualizado = preco - (preco * (desconto / 100));
    return precoAtualizado;
  }
}

void main() {
  List<Produto> produtos = [Produto("caneta", 2.50 ), Produto("papel", 3.00),
    Produto("lápis", 1.50 ), Produto("caderno", 22.00 ), Produto("estojo", 25.90 )];

  for(Produto produto in produtos){
    var precoAtual = produto.desconto(10);
    print("O valor do ${produto.nome} com desconto ficou: $precoAtual");

  }
}
