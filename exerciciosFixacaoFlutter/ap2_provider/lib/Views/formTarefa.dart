import 'package:ap2_provider/Controllers/DataBase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ap2_provider/Controllers/TarefaController.dart';

class FormCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tarefaController = Provider.of<TarefaController>(context);
    final _form = GlobalKey<FormState>();
    final _valor = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastro de Tarefas",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Mukta-Bold",
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Form(
              key: _form,
              child: TextFormField(
                controller: _valor,
                style: TextStyle(fontFamily: "Mukta-Bold"),
                decoration: InputDecoration(
                  labelText: "Nome Da Tarefa",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Informe o nome da tarefa !";
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
