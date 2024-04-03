import 'dart:math';

void main() {
  final _random = Random();
  final consumidor = Pessoa();

  List<Fornecedor> fornecedores = [
    FornecedorDeBebidas(),
    FornecedorDeBolos(),
    FornecedorDePetiscos(),
    FornecedorDeSaladas(),
    FornecedorDeSanduiches(),
    FornecedorDeUltraCaloricos()
  ];

  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    int fornecedor = _random.nextInt(fornecedores.length);
    consumidor.consumirProduto(fornecedores[fornecedor]);
  }

  consumidor.imprimirInformacoes();
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

abstract class Fornecedor {
  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer();
}

class FornecedorDeBebidas implements Fornecedor {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];

  @override
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class FornecedorDeSanduiches implements Fornecedor {
  final _random = Random();
  final _sanduichesDisponiveis = <Produto>[
    Produto("Sanduíche de Presunto e Queijo", 1000),
    Produto("Sanduíche de Frango", 1200),
    Produto("Sanduíche de Atum", 1400),
    Produto("Sanduíche de Rúcula e Parmesão", 1300),
    Produto("Sanduíche de Filé Mignon ", 1800),
    Produto("Sanduíche Vegetariano", 1100),
  ];

  @override
  Produto fornecer() {
    return _sanduichesDisponiveis[
        _random.nextInt(_sanduichesDisponiveis.length)];
  }
}

class FornecedorDeBolos implements Fornecedor {
  final _random = Random();
  final _bolosDisponiveis = <Produto>[
    Produto("Bolo de Chocolate", 2000),
    Produto("Bolo de Morango", 2200),
    Produto("Bolo de Abacaxi", 2400),
    Produto("Bolo de Manga", 2300),
    Produto("Bolo de Pera", 2200),
    Produto("Bolo de Amora", 2400),
  ];

  @override
  Produto fornecer() {
    return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
  }
}

class FornecedorDeSaladas implements Fornecedor {
  final _random = Random();
  final _saladasDisponiveis = <Produto>[
    Produto("Salada de Frutas", 500),
    Produto("Salada de Alface", 700),
    Produto("Salada de Vegetais", 800),
  ];

  @override
  Produto fornecer() {
    return _saladasDisponiveis[_random.nextInt(_saladasDisponiveis.length)];
  }
}

class FornecedorDePetiscos implements Fornecedor {
  final _random = Random();
  final _petiscosDisponiveis = <Produto>[
    Produto("Pizza", 1500),
    Produto("Batata Frita", 1200),
    Produto("Pão de Queijo", 1000),
  ];

  @override
  Produto fornecer() {
    return _petiscosDisponiveis[_random.nextInt(_petiscosDisponiveis.length)];
  }
}

class FornecedorDeUltraCaloricos implements Fornecedor {
  final _random = Random();
  final _ultraCaloricosDisponiveis = <Produto>[
    Produto("Lasanha", 2500),
    Produto("Macarrão a Bolonhesa", 3000),
    Produto("Costela de Porco", 4000),
  ];

  @override
  Produto fornecer() {
    return _ultraCaloricosDisponiveis[
        _random.nextInt(_ultraCaloricosDisponiveis.length)];
  }
}

class Pessoa {
  // Acumulador de calorias
  int _caloriasConsumidas = 0;
  final _random = Random();

  /// Gera o status de calorias com valor inicial aleatório
  String gerarStatus() {
    final status = <String>[
      "deficit Extremo De Calorias",
      "deficit De Calorias",
      "pessoa EstaS atisfeita",
      "excesso De Calorias"
    ];

    return status[_random.nextInt(status.length)];
  }

  /// Imprime as informacoes desse consumidor
  void imprimirInformacoes() {
    var status = gerarStatus();
    print(
        'Calorias iniciais: $status \nCalorias consumidas: $_caloriasConsumidas');
  }

  /// Consome um produto e aumenta o número de calorias
  void consumirProduto(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;
  }
}
