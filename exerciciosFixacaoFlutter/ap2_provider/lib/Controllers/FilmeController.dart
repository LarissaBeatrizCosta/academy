import 'package:flutter/material.dart';

import '../Models/FilmeModel.dart';

class FilmeController extends ChangeNotifier {
  List<FilmeModel> _filmes = [
    FilmeModel(name: "Nome", date: "Data"),
    FilmeModel(name: "Nome2", date: "Data2"),
    FilmeModel(name: "Nome3", date: "Data3"),
    FilmeModel(name: "Nome4", date: "Data4"),
    FilmeModel(name: "Nome5", date: "Data5"),
    FilmeModel(name: "Nome6", date: "Data6"),
    FilmeModel(name: "Nome7", date: "Data7"),

  ];

  List<FilmeModel> get filmes => _filmes;

  void adicionarFilme(FilmeModel filme) {
    _filmes.add(filme);
    notifyListeners();
  }

  void removerFilmes(FilmeModel filme) {
    _filmes.remove(filme);
    notifyListeners();
  }

  bool verificarFavorito(FilmeModel filme) {
    return _filmes.contains(filme);
  }

  int get filmesTotais => _filmes.length;
}
