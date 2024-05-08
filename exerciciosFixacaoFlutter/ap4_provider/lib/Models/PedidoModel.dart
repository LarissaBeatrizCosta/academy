import 'package:flutter/cupertino.dart';

import 'ProdutoModel.dart';

class PedidoModel extends ChangeNotifier {
  int id;
  List<ProdutoModel> produtos = [];
  double total;

  PedidoModel({ required this.id, required this.produtos, required this.total});

}