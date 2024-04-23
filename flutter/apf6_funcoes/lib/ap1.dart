import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => EstadoListaDePessoas(),
      child: MyApp(),
    ),
  );
}

enum TipoSanguineo {
  aPositivo,
  aNegativo,
  bPositivo,
  bNegativo,
  oPositivo,
  oNegativo,
  abPositivo,
  abNegativo,
}

class Pessoa {
  const Pessoa({
    required this.nome,
    required this.email,
    required this.telefone,
    required this.github,
    required this.tipoSanguineo,
  });

  final String nome;
  final String email;
  final String telefone;
  final String github;
  final TipoSanguineo tipoSanguineo;

// todo: implementar equals e hashcode

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Pessoa) return false;
    return nome == other.nome &&
        email == other.email &&
        telefone == other.telefone &&
        github == other.github &&
        tipoSanguineo == other.tipoSanguineo;
  }

  @override
  int get hashCode =>
      nome.hashCode ^
      email.hashCode ^
      telefone.hashCode ^
      github.hashCode ^
      tipoSanguineo.hashCode;
}

class EstadoListaDePessoas with ChangeNotifier {
  final _listaDePessoas = <Pessoa>[];

  List<Pessoa> get pessoas => List.unmodifiable(_listaDePessoas);

  void incluir(Pessoa pessoa) {
    _listaDePessoas.add(pessoa);
    notifyListeners();
  }

  void excluir(Pessoa pessoa) {
    _listaDePessoas.remove(pessoa);
    notifyListeners();
  }

// todo: implementar métodos restantes
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print("mudar pagina");
              },
              child: Text("Lista de Pessoas"),
            ),
            ElevatedButton(
              onPressed: () {
                print("ADD ROTA");
              },
              child: Text("Adicionar Pessoa"),
            )
          ],
        ),
      ),
    );
  }
}

class TelaListaDePessoas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Pessoas"),
      ),
      body: Consumer<EstadoListaDePessoas>(
        builder: (context, estadoLista, _) {
          return ListView.builder(
            itemCount: estadoLista.pessoas.length,
            itemBuilder: (context, index) {
              final pessoa = estadoLista.pessoas[index];
              return ListTile(
                title: Text(pessoa.nome),
                subtitle: Text(pessoa.email),
              );
            },
          );
        },
      ),
    );
  }
}
