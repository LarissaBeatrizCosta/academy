import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  late String _nome;
  late String _email;
  late String _texto;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Formulário De Contato",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Nome",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Insira um nome válido";
                          }
                          return null;
                        },
                        onSaved: (value) => _nome = value!,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Preencha com um email";
                          } else if (!value.contains("@")) {
                            return "O email precisa conter o @";
                          }
                          return null;
                        },
                        onSaved: (value) => _email = value!,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Texto",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Preencha o campo";
                          }
                          return null;
                        },
                        onSaved: (value) => _texto = value!,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        setState(() {});
                      }
                    },
                    child: Text("Salvar Cadastro"),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
