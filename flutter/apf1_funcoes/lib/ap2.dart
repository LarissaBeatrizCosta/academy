import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage(title: "Exercício 2"));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color corDoFundo = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          key: const Key("1"),
          onPressed: () {
            verificarBotaoCorreto(const Key("1"));
          },
          child: Text("1", style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      backgroundColor: corDoFundo,
    );
  }

  int escolherBotao() {
    int botaoCorreto = Random().nextInt(3)+1;
    return botaoCorreto;
  }

  void verificarBotaoCorreto(Key botaoEscolhido) {
    int numeroDeTentaivas = 2;
    int botaoCorreto = escolherBotao();
    print(botaoCorreto);

    while (numeroDeTentaivas > 0) {
      setState(() {
        if (botaoCorreto == int.parse(botaoEscolhido.toString())) {
          corDoFundo = Colors.green;
        } else {
          print("Tente Novamente");
          numeroDeTentaivas--;
        }
      });
    }
  }
}
