import 'package:flutter/cupertino.dart';
import '../Models/ProdutoModel.dart';

class ProdutoController extends ChangeNotifier {
  List<ProdutoModel> _produtos = [];

  List<ProdutoModel> get produtos => _produtos;

  void adicionarProdutos(ProdutoModel produto) {
    _produtos.add(produto);
    notifyListeners();
  }

  void removerProdutos(ProdutoModel produto) {
    _produtos.remove(produto);
    notifyListeners();
  }

  void atualizarProdutos(int id, ProdutoModel produto) {
    for (int i = 0; i < _produtos.length; i++) {
      if (_produtos[i].id == id) {
        _produtos[i] = produto;
        break;
      }
    }
    notifyListeners();
  }

  int get totalProdutos => _produtos.length;
}
