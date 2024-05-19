import 'package:ap2_provider/Controllers/DataBase.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/TarefaModel.dart';

class TarefaState extends ChangeNotifier {
  final controller = TarefaController();
  final _controllerNome = TextEditingController();
  final List<TarefaModel> _tarefas = [];

  TextEditingController get controllerName => _controllerNome;
  List<TarefaModel> get tarefas => _tarefas;

  Future<void> insert() async {
    final tarefa = TarefaModel(
      nome: controllerName.text,
    );
    await controller.insert(tarefa);
    _tarefas.add(tarefa);

    controllerName.clear();
    notifyListeners();
  }

  Future<void> delete(TarefaModel tarefa) async{
    await controller.delete(tarefa);
    _tarefas.removeWhere((tarefaExcluida) => tarefaExcluida.id == tarefa.id);
    notifyListeners();
  }
}

class FormCadastro extends StatelessWidget {
  const FormCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              child: TextFormField(
                controller: Provider.of<TarefaState>(context, listen: false).controllerName,
                decoration: const InputDecoration(
                  hintText: "Nova tarefa",
                ),
                validator: (value) {
                  if ((value ?? "").isEmpty) {
                    return "Preencha o nome da tarefa";
                  }
                  return null;
                },
              ),
            ),
            const _ActionButton(),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<TarefaState>(context);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () async {
              await state.insert();
            },
            child: Text("Cadastrar"),
          )
        ],
      ),
    );
  }
}

