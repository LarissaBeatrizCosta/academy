import 'package:ap2_provider/Controllers/FilmeController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'FilmeView.dart';

class TelaListagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final filmeController = Provider.of<FilmeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Praticando Provider"),
      ),
      body: ListView.builder(
        itemCount: filmeController.filmesTotais,
        itemBuilder: (context, index) {
          final filme = filmeController.filmes[index];
          return FilmeView(filme: filme);
        },
      ),
    );
  }
}