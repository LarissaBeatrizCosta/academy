import 'package:ap2_provider/Controllers/DataBase.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/TarefaModel.dart';

class TarefaState extends ChangeNotifier {
  List<TarefaModel> _tarefas = [
    TarefaModel(
      nome: "Tarefa 1",
      id: 1,
    ),
    TarefaModel(
      nome: "Tarefa 2",
      id: 2,
    ),
    TarefaModel(
      nome: "Tarefa 3",
      id: 3,
    ),
  ];

  final controller = TarefaController();
  final _controllerNome = TextEditingController();

  TextEditingController get controllerNome => _controllerNome;

  List<TarefaModel> get tarefas => _tarefas;

  Future<void> insert() async {
    final tarefa = TarefaModel(
      nome: controllerNome.text,
    );

    await controller.insert(tarefa);
    controllerNome.clear();
    notifyListeners();
  }

  void removerTarefas(TarefaModel tarefa) {
    _tarefas.remove(tarefa);
    notifyListeners();
  }

  int get todasTarefas => _tarefas.length;
}

class FormCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tarefaController = Provider.of<TarefaState>(context);
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
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () async {
                  await tarefaController.insert();
                },
                child: Text("Cadastrar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
