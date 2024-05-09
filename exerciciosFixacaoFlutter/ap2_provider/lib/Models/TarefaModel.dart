import 'package:flutter/cupertino.dart';

class TarefaModel extends ChangeNotifier {
  int id;
  String nome;
  bool conclusao;

  TarefaModel({required this.nome, required this.id, required this.conclusao});
}
