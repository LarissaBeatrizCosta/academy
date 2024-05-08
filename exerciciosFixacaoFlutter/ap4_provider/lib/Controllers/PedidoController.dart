import 'package:ap4_provider/Models/PedidoModel.dart';
import 'package:flutter/cupertino.dart';

class PedidoController extends ChangeNotifier {
  List<PedidoModel> _pedidos = [];

  List<PedidoModel> get pedidos => _pedidos;

  void adicionarPedido(PedidoModel pedido) {
    _pedidos.add(pedido);
    notifyListeners();
  }

  void removerPedidos(PedidoModel pedido){
    _pedidos.remove(pedido);
    notifyListeners();
  }


  int get totalPedidos => _pedidos.length;
}
