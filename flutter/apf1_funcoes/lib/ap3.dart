import 'package:flutter/material.dart';
import 'dart:math';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

enum SituacaoDoJogo { rodando, ganhou, perdeu }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final random = Random();

  var botaoCorreto = 0;
  var clicks = 0;
  var vitorias = 0;
  var estadoDoJogo = SituacaoDoJogo.rodando;
  var derrotas = 0;

  // Esse método e chamado somente uma vez, ao iniciar o state
  @override
  void initState() {
    super.initState();

    // Escolher um número de 0 a 2 para identificar escolher o botão correto
    botaoCorreto = random.nextInt(3);
  }

  // Tratar a tentativa do usuário
  void tentativa(int opcao) {
    setState(() {
      // Verificar se a opção escolhida esta correta
      if (opcao == botaoCorreto) {
        estadoDoJogo = SituacaoDoJogo.ganhou;
        vitorias++;
      } else {
        // Se estiver errada, incrementa o contador de clicks
        clicks++;
      }

      // Se a quantidade de clicks for maior ou igual a 2, o usuário perdeu
      if (clicks >= 2) {
        estadoDoJogo = SituacaoDoJogo.perdeu;
        derrotas++;
      }
    });
  }

  void reiniciarJogo() {
    setState(() {
      botaoCorreto = random.nextInt(3);
      clicks = 0;
      estadoDoJogo = SituacaoDoJogo.rodando;
    });
  }

  @override
  Widget jogoRodando() {
    // Nesse momento o jogo ainda nao foi finalizado
    return Column(
      children: [
        ElevatedButton(
          child: const Text('A'),
          onPressed: () {
            tentativa(0);
          },
        ),
        ElevatedButton(
          child: const Text('B'),
          onPressed: () {
            tentativa(1);
          },
        ),
        ElevatedButton(
          child: const Text('C'),
          onPressed: () {
            tentativa(2);
          },
        ),
      ],
    );
  }

  Widget ganhouJogo() {
    return Container(
      child: Column(
        children: [
          Text('Você ganhou!!!'),
          ElevatedButton(
            child: const Text("Reiniciar"),
            onPressed: reiniciarJogo,
          ),
        ],
      ),
    );
  }

  Widget perdeuJogo() {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          Text('Você perdeu'),
          ElevatedButton(
            child: const Text("Reiniciar"),
            onPressed: reiniciarJogo,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (estadoDoJogo) {
      case SituacaoDoJogo.rodando:
        return jogoRodando();

      case SituacaoDoJogo.ganhou:
        return ganhouJogo();

      case SituacaoDoJogo.perdeu:
        return perdeuJogo();
    }
  }
}
