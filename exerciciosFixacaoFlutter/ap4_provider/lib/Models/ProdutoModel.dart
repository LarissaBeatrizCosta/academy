import 'package:flutter/cupertino.dart';

class ProdutoModel extends ChangeNotifier {
  int id;
  String nome;
  double preco;
  int quantidade;

  ProdutoModel(
      {required this.id,
      required this.nome,
      required this.quantidade,
      required this.preco});
}
