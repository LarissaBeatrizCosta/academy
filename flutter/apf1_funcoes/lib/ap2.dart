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
  int botaoCorreto = 0;
  int numeroDeTentativas = 2;
  bool perdeu = false;

  @override
  Widget build(BuildContext context) {
    if (perdeu) {
      return Container(
        color: Colors.red,
        child: const Text('Você perdeu', style: TextStyle(color: Colors.white),),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          key: const Key("1"),
          onPressed: () {
            verificarBotaoCorreto(1);
          },
          child: const Text("1", style: TextStyle(color: Colors.black)),
        ),
      ),
      backgroundColor: corDoFundo,
    );
  }

  int escolherBotao() {
    return Random().nextInt(3) + 1;
  }

  void verificarBotaoCorreto(int botaoEscolhido) {
    if (numeroDeTentativas > 0) {
      botaoCorreto = escolherBotao();
      print(botaoCorreto);

      setState(() {
        if (botaoCorreto == botaoEscolhido) {
          corDoFundo = Colors.green;
        } else {
          print("Tente Novamente");
          numeroDeTentativas--;
          if (numeroDeTentativas == 0){
            perdeu = true;
          }
        }
      });
    }
  }
}
