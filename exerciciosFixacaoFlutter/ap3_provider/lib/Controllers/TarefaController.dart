import 'package:flutter/cupertino.dart';
import '../Models/TarefaModel.dart';

class TarefaController extends ChangeNotifier {
  List<TarefaModel> _tarefas = [
    TarefaModel(nome: "Tarefa 1", id: 1, conclusao: false),
    TarefaModel(nome: "Tarefa 2", id: 2, conclusao: false),
    TarefaModel(nome: "Tarefa 3", id: 3, conclusao: false),
  ];

  List<TarefaModel> get tarefas => _tarefas;

  void adicionarTarefa(TarefaModel tarefa) {
    _tarefas.add(tarefa);
    notifyListeners();
  }

  void removerTarefas(TarefaModel tarefa) {
    _tarefas.remove(tarefa);
    notifyListeners();
  }

  int get todasTarefas => _tarefas.length;
}
