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

  double calcularTotalPedido(PedidoModel pedido){
    double contador = 0;
    for(var produto in pedido.produtos){
      contador += produto.preco * produto.quantidade;
    }
    return contador;
  }


  int get totalPedidos => _pedidos.length;
}
