import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage(title: "Exercício 3"));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String textoDoBotao = "1";
  late Widget forma;
  late Color cor;

  @override
  void initState() {
    super.initState();
    forma = Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(30),
      ),
    );
    cor = Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Center(
                child: Container(
                  child: ElevatedButton(
                    key: Key(textoDoBotao),
                    onPressed: () {
                      setState(() {
                        textoDoBotao = textoDoBotao == "1" ? "2" : "1";
                        TrocarForma(textoDoBotao);
                      });
                    },
                    child: Text(PegarTexto(textoDoBotao)),
                  ),
                ),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    cor = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0);
                    TrocarCor(cor);
                  });
                },
                child: Text('Cor Aleatória'),
              ),
            ],
          ),
          Row(
            children: [
              Center(
                child: forma,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void TrocarForma(String textoDoBotao) {
    setState(() {
      if (textoDoBotao == "1") {
        forma = Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.circular(30),
          ),
        );
      } else {
        forma = Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: cor,
          ),
        );
      }
    });
  }

  void TrocarCor(Color cor) {
    setState(() {
      if (textoDoBotao == "1") {
        forma = Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.circular(22),
          ),
        );
      } else {
        forma = Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: cor,
          ),
        );
      }
    });
  }
}

String PegarTexto(String key) {
  String texto = "";
  if (key == "1") {
    texto = "Transformar para quadrado";
  } else {
    texto = "Transformar para círculo";
  }
  return texto;
}
