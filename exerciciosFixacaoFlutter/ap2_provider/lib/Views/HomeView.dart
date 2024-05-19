import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'TarefaView.dart';
import 'formTarefa.dart';
import '../Models/TarefaModel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tarefaState = Provider.of<TarefaState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Praticando Provider 2",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Mukta-Bold",
              fontSize: 16,
            ),
          ),
        ),
        backgroundColor: Colors.cyan[900],
      ),
      body: ListView.builder(
        itemCount: tarefaState.tarefas.length,
        itemBuilder: (context, index) {
          final tarefa = tarefaState.tarefas[index];
          return TarefaView(tarefa: tarefa);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormCadastro()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan[900],
      ),
    );
  }
}
