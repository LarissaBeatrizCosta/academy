import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  String? _nome;
  int? _idade;
  bool _inativo = false;

  @override
  Widget build(BuildContext context) {
    Color corDoTexto = _inativo ? Colors.green : Colors.grey;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulário da Lince"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Nome"),
                validator: (value) {
                  if (value == null) {
                    return "Insira seu nome";
                  } else if (value.length < 3 ||
                      value[0] != value[0].toUpperCase()) {
                    return "Nome inválido";
                  }
                  return null;
                },
                onSaved: (value) => _nome = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Idade"),
                validator: (value) {
                  if (value == null) {
                    return "Insira sua idade";
                  }
                  final age = int.tryParse(value);
                  if (age == null || age < 19) {
                    return "Idade inválida";
                  }
                  return null;
                },
                onSaved: (value) => _idade = int.parse(value!),
              ),
              Row(
                children: [
                  Checkbox(
                    value: _inativo,
                    onChanged: (value) {
                      setState(() {
                        _inativo = value!;
                      });
                    },
                  ),
                  const Text("Inativo"),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    setState(() {});
                  }
                },
                child: const Text("Salvar"),
              ),
              if (_nome != null && _idade != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dados Salvos:",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("Nome: $_nome ",
                          style: TextStyle(color: corDoTexto)),
                      Text("Idade: $_idade ",
                          style: TextStyle(color: corDoTexto)),
                      Text("Inativo: $_inativo ",
                          style: TextStyle(color: corDoTexto)),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
