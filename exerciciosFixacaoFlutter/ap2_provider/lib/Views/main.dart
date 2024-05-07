import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Controllers/FilmeController.dart';
import 'TelaListagem.dart';

// Treinar add e remover utilizando MVC e Provider- há melhorias para fazer
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FilmeController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Praticando Provider",
      home: TelaListagem(),
    );
  }
}