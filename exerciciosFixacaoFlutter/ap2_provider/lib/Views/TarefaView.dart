import 'package:ap2_provider/Models/TarefaModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'formTarefa.dart';

class TarefaView extends StatelessWidget {
  final TarefaModel tarefa;

  const TarefaView({Key? key, required this.tarefa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tarefaController = Provider.of<TarefaState>(context);
    return ListTile(
      title: Text(tarefa.nome),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: () {
            tarefaController.delete(tarefa);
          }, icon: Icon(Icons.delete)),
        ],
      ),
    );
  }
}
