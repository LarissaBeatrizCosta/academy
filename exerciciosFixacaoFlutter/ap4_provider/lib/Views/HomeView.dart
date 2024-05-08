import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ap4_provider/Models/ProdutoModel.dart';
import 'package:flutter/cupertino.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final produtoController = Provider.of<ProdutoModel>(context);
    return Scaffold();
  }
}
