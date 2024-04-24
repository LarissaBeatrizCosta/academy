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
  final _listaDePessoas = <Pessoa>[
    Pessoa(
      nome: "João",
      email: "joao@example.com",
      telefone: "123456789",
      github: "joao",
      tipoSanguineo: TipoSanguineo.aPositivo,
    ),
    Pessoa(
      nome: "Brenda",
      email: "brenda@example.com",
      telefone: "123456789",
      github: "branda",
      tipoSanguineo: TipoSanguineo.abPositivo,
    ),
  ];

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
      initialRoute: "/",
      routes: {
        "/": (context) => TelaInicial(),
        "/listaDePessoas": (context) => TelaListaDePessoas(),
        // "/TelaDeDetalhes": (context) => TelaDetalhes(),
      },
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
              onPressed: () => Navigator.pushNamed(context, "/listaDePessoas"),
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
                trailing: CircleAvatar(
                  backgroundColor: escolherCor(pessoa.tipoSanguineo),
                ),
                onTap: () => Navigator.pushNamed(context, "/TelaDeDetalhes",
                    arguments: pessoa),
              );
            },
          );
        },
      ),
    );
  }
}

Color escolherCor(TipoSanguineo tipo) {
  switch (tipo) {
    case TipoSanguineo.aPositivo:
      return Colors.blue;
    case TipoSanguineo.aNegativo:
      return Colors.red;
    case TipoSanguineo.bPositivo:
      return Colors.purple;
    case TipoSanguineo.bNegativo:
      return Colors.orange;
    case TipoSanguineo.oPositivo:
      return Colors.green;
    case TipoSanguineo.oNegativo:
      return Colors.yellow;
    case TipoSanguineo.abPositivo:
      return Colors.cyan;
    case TipoSanguineo.abNegativo:
      return Colors.white;
  }
}

// class TelaDetalhes extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {}
// }

class TelaAdicionarPessoas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar Pessoas"),
      ),
    );
  }
}
