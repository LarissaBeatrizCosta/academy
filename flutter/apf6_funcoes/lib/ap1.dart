import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => EstadoListaDePessoas(),
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => TelaInicial(),
          "/listaDePessoas": (context) => TelaListaDePessoas(),
          "/adicionarPessoas": (context) => TelaAdicionarPessoas(),
          "/editarPessoa": (context) => TelaAdicionarPessoas(),
        },
      ),
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

// equals e hashcode

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
      nome: "Brenda",
      email: "brenda@example.com",
      telefone: "47 988941788",
      tipoSanguineo: TipoSanguineo.aPositivo,
      github: "meuGit",
    ),
    Pessoa(
      nome: "Brenda",
      email: "brenda@example.com",
      telefone: "47 988941788",
      tipoSanguineo: TipoSanguineo.aNegativo,
      github: "meuGit",
    ),
    Pessoa(
      nome: "Brenda",
      email: "brenda@example.com",
      telefone: "47 988941788",
      tipoSanguineo: TipoSanguineo.bPositivo,
      github: "meuGit",
    ),
    Pessoa(
      nome: "Brenda",
      email: "brenda@example.com",
      telefone: "47 988941788",
      tipoSanguineo: TipoSanguineo.bNegativo,
      github: "meuGit",
    ),
    Pessoa(
      nome: "Brenda",
      email: "brenda@example.com",
      telefone: "47 988941788",
      tipoSanguineo: TipoSanguineo.abPositivo,
      github: "meuGit",
    ),
    Pessoa(
      nome: "Brenda",
      email: "brenda@example.com",
      telefone: "47 988941788",
      tipoSanguineo: TipoSanguineo.abNegativo,
      github: "meuGit",
    ),
    Pessoa(
      nome: "Brenda",
      email: "brenda@example.com",
      telefone: "47 988941788",
      tipoSanguineo: TipoSanguineo.oPositivo,
      github: "meuGit",
    ),
    Pessoa(
      nome: "Brenda",
      email: "brenda@example.com",
      telefone: "47 988941788",
      tipoSanguineo: TipoSanguineo.oNegativo,
      github: "meuGit",
    ),
  ];

  List<Pessoa> get pessoas => List.unmodifiable(_listaDePessoas);
  TipoSanguineo? _selecionarTipo;

  TipoSanguineo? get selecionarTipo => _selecionarTipo;

  void selecionarTipoSanguineo(TipoSanguineo? tipo) {
    _selecionarTipo = tipo;
    notifyListeners();
  }

  void incluir(Pessoa pessoa) {
    _listaDePessoas.add(pessoa);
    notifyListeners();
  }

  void excluir(Pessoa pessoa) {
    _listaDePessoas.remove(pessoa);
    notifyListeners();
  }

  void editar(int index, Pessoa pessoa) {
    _listaDePessoas[index] = pessoa;
    notifyListeners();
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
              onPressed: () =>
                  Navigator.pushNamed(context, "/adicionarPessoas"),
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
      body: Column(
        children: [
          filtroDrop(context),
          SizedBox(height: 10),
          Expanded(
            child: Consumer<EstadoListaDePessoas>(
              builder: (context, estadoLista, _) {
                final pessoas = filtrarPorTipoSanguineo(
                    estadoLista.pessoas, estadoLista.selecionarTipo);
                return ListView.builder(
                  itemCount: pessoas.length,
                  itemBuilder: (context, index) {
                    final pessoa = pessoas[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(pessoa.nome),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(pessoa.email),
                              Text(pessoa.telefone),
                              Text(pessoa.github),
                            ],
                          ),
                          trailing: CircleAvatar(
                            backgroundColor: escolherCor(pessoa.tipoSanguineo),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      TelaAdicionarPessoas(pessoa: pessoa),
                                ),
                              ),
                              child: Text("Editar"),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                estadoLista.excluir(pessoa);
                              },
                            ),
                          ],
                        ),
                        Divider(),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget filtroDrop(BuildContext context) {
    final estadoLista = Provider.of<EstadoListaDePessoas>(context);
    return DropdownButtonFormField<TipoSanguineo>(
      value: estadoLista.selecionarTipo,
      onChanged: (value) {
        estadoLista.selecionarTipoSanguineo(value!);
      },
      items: TipoSanguineo.values.map((tipo) {
        return DropdownMenuItem<TipoSanguineo>(
          value: tipo,
          child:
              Text(tipo.toString().substring(tipo.toString().indexOf('.') + 1)),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: "Selecione o tipo do sangue:",
        border: OutlineInputBorder(),
      ),
    );
  }

  List<Pessoa> filtrarPorTipoSanguineo(
      List<Pessoa> pessoas, TipoSanguineo? tipo) {
    if (tipo == null) {
      return pessoas;
    } else {
      return pessoas.where((pessoa) => pessoa.tipoSanguineo == tipo).toList();
    }
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

class TelaAdicionarPessoas extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController githubController = TextEditingController();
  final TextEditingController tipoSanguineoController = TextEditingController();
  final Pessoa? pessoa;

  TelaAdicionarPessoas({this.pessoa});

  @override
  Widget build(BuildContext context) {
    String titulo = pessoa == null ? "Adicionar Pessoa" : "Editar Pessoa";
    return Scaffold(
        appBar: AppBar(
          title: Text(titulo),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: nomeController,
                  decoration: InputDecoration(hintText: "Nome Completo"),
                  maxLength: 40,
                  validator: _validarNome,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(hintText: "Email"),
                  maxLength: 40,
                  validator: _validarEmail,
                ),
                TextFormField(
                  controller: telefoneController,
                  decoration: InputDecoration(hintText: "Telefone"),
                  maxLength: 40,
                  validator: _validarTelefone,
                ),
                TextFormField(
                  controller: githubController,
                  decoration: InputDecoration(hintText: "GitHub"),
                  maxLength: 40,
                  validator: _validarGitHub,
                ),
                TextFormField(
                  controller: tipoSanguineoController,
                  decoration: InputDecoration(
                      hintText: "Tipo Sanguíneo (aPositivo...)"),
                  maxLength: 40,
                  validator: _validarTipoSanguineo,
                ),
                ElevatedButton(
                  onPressed: () => _sendForm(context),
                  child: Text('Enviar'),
                ),
              ],
            ),
          ),
        ));
  }

  String? _validarNome(String? nome) {
    if (nome == null || nome.isEmpty) {
      return "Por favor informe seu nome";
    } else
      return null;
  }

  String? _validarEmail(String? email) {
    if (email == null || email.isEmpty) {
      return "Por favor preencha seu email";
    } else if (!email.contains("@")) {
      return "Email inválido";
    } else
      return null;
  }

  String? _validarTelefone(String? telefone) {
    if (telefone == null || telefone.isEmpty) {
      return "Por favor preencha seu telefone";
    } else if (telefone.length < 10) {
      return "Número inválido (9 dígitos)";
    } else
      return null;
  }

  String? _validarGitHub(String? gitHub) {
    if (gitHub == null || gitHub.isEmpty) {
      return "Por favor preencha seu GitHub";
    } else
      return null;
  }

  String? _validarTipoSanguineo(String? tipoSanguineo) {
    if (tipoSanguineo == null || tipoSanguineo.isEmpty) {
      return "Por favor preencha seu tipo sanguíneo";
    } else
      return null;
  }

  TipoSanguineo parseTipoSanguineo(String sangue) {
    switch (sangue.toLowerCase()) {
      case "apositivo":
        return TipoSanguineo.aPositivo;
      case "anegativo":
        return TipoSanguineo.aNegativo;
      case "bpositivo":
        return TipoSanguineo.bPositivo;
      case "bnegativo":
        return TipoSanguineo.bNegativo;
      case "opositivo":
        return TipoSanguineo.oPositivo;
      case "onegativo":
        return TipoSanguineo.oNegativo;
      case "abpositivo":
        return TipoSanguineo.abPositivo;
      case "abnegativo":
        return TipoSanguineo.abNegativo;
      default:
        return throw ArgumentError("Inválido");
    }
  }

  _sendForm(BuildContext context) {
    TipoSanguineo tipoDeSangue =
        parseTipoSanguineo(tipoSanguineoController.text);
    if (_formKey.currentState!.validate()) {
      final novaPessoa = Pessoa(
        nome: nomeController.text,
        email: emailController.text,
        telefone: telefoneController.text,
        github: githubController.text,
        tipoSanguineo: tipoDeSangue,
      );

      final estadoLista =
          Provider.of<EstadoListaDePessoas>(context, listen: false);

      if (pessoa != null) {
        final index = estadoLista.pessoas.indexOf(pessoa!);
        estadoLista.editar(index, novaPessoa);
      } else {
        estadoLista.incluir(novaPessoa);
      }

      _limparCampos();
    }
  }

  void _limparCampos() {
    nomeController.clear();
    emailController.clear();
    telefoneController.clear();
    githubController.clear();
    tipoSanguineoController.clear();
  }
}
