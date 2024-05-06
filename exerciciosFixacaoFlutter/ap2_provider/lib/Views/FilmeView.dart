import 'package:ap2_provider/Controllers/FilmeController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/FilmeModel.dart';

class FilmeView extends StatelessWidget {
  final FilmeModel filme;

  const FilmeView({Key? key, required this.filme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filmeController = Provider.of<FilmeController>(context);
    return ListTile(
      title: Text(filme.name),
      subtitle: Text(filme.date),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => filmeController.adicionarFilme(filme),
          ),
          IconButton(
            onPressed: () => filmeController.removerFilmes(filme),
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}