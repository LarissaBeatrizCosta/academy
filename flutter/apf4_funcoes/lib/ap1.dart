import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(title: "tela inicial"),
        "/telaColorida": (context) => TelaColorida(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Color definirCor(int posicao) {
  Color corDefinida;
  switch (posicao) {
    case 0:
      corDefinida = Colors.blue;
      break;

    case 1:
      corDefinida = Colors.green;
      break;

    case 2:
      corDefinida = Colors.orange;
      break;

    default:
      corDefinida = Colors.black;
  }
  return corDefinida;
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> listaDeCores = ["Azul", "Verde", "Laranja"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: listaDeCores.length,
        itemBuilder: (context, index) {
          Color cor = definirCor(index);
          return ListTile(
            tileColor: definirCor(index),
            title: Text(
              listaDeCores[index],
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/telaColorida", arguments: cor);
            },
          );
        },
      ),
    );
  }
}

class TelaColorida extends StatelessWidget {
  const TelaColorida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color corDoFundo = ModalRoute.of(context)!.settings.arguments as Color;
    return Scaffold(
      backgroundColor: corDoFundo,
      body: Center(
        child: Text(
          "Tela Colorida",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
