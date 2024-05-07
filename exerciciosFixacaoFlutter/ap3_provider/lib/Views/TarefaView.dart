
import 'package:ap3_provider/Models/TarefaModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Controllers/TarefaController.dart';

class TarefaView extends StatelessWidget{
  final TarefaModel tarefa;

  const TarefaView({Key? key, required this.tarefa}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final tarefaController = Provider.of<TarefaController>(context);
    return ListTile(
      title: Text(tarefa.nome),
    );
  }


}