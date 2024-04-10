void main() {
  final controleDePessoas = ControleDePessoas();

  // Cadastrando pessoas no sistema
  controleDePessoas
    ..cadastrarPessoa(Pessoa('Jose', Mes.abril))
    ..cadastrarPessoa(Pessoa('Arthur', Mes.agosto))
    ..cadastrarPessoa(Pessoa('Joao', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jesse', Mes.dezembro))
    ..cadastrarPessoa(Pessoa('Roberta', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Carla', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Thania', Mes.agosto))
    ..cadastrarPessoa(Pessoa('Rafaela', Mes.marco))
    ..cadastrarPessoa(Pessoa('Yuri', Mes.junho))
    ..cadastrarPessoa(Pessoa('Jonas', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Elias', Mes.outubro))
    ..cadastrarPessoa(Pessoa('Abel', Mes.maio))
    ..cadastrarPessoa(Pessoa('Danilo', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jonathan', Mes.abril))
    ..cadastrarPessoa(Pessoa('Joseph', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Abdul', Mes.janeiro))
    ..cadastrarPessoa(Pessoa('Jean', Mes.abril));

  // Passar por todos os meses com pessoas, e imprimir os nomes das pessoas
  for (final mes in Mes.values) {
    final pessoas = controleDePessoas.pessoasPorMes(mes);
    if (pessoas.isNotEmpty) {
      print('\n${mes.name}');
      for (final pessoa in pessoas) {
        print(' > ${pessoa.nome}');
      }
    }
  }
}

enum Mes {
  janeiro,
  fevereiro,
  marco,
  abril,
  maio,
  junho,
  julho,
  agosto,
  setembro,
  outubro,
  novembro,
  dezembro,
}

class Pessoa {
  Pessoa(this.nome, this.mesDeNascimento);

  final String nome;
  final Mes mesDeNascimento;
}

class ControleDePessoas {
  final List<Pessoa> pessoas = [];

  /// Cadastra uma pessoa no sistema
  void cadastrarPessoa(Pessoa pessoa) {
    pessoas.add(pessoa);
  }

  /// Retorna a lista de meses com pessoas cadastradas no mes especifico
  List<Pessoa> pessoasPorMes(Mes mes) {
    final pessoasDoMes = <Pessoa>[];
    for (final pessoa in pessoas) {
      if (pessoa.mesDeNascimento == mes) {
        pessoasDoMes.add(pessoa);
      }
    }
    return pessoasDoMes;
  }
}
