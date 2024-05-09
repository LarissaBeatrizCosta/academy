import 'package:ap2_provider/Controllers/TarefaController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'TarefaView.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tarefaController = Provider.of<TarefaController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Praticando Provider 2",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Mukta-Bold",
              fontSize: 15,
            ),
          ),
        ),
        backgroundColor: Colors.cyan[900],
      ),
      body: ListView.builder(
          itemCount: tarefaController.todasTarefas,
          itemBuilder: (context, index) {
            final tarefa = tarefaController.tarefas[index];
            return TarefaView(tarefa: tarefa);
          }),
    );
  }
}
