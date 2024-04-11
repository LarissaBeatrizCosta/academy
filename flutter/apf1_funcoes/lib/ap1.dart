import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color corDeFundo = Colors.white;

  void sortearCor() {
    setState(() {
      corDeFundo = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: corDeFundo,
        appBar: AppBar(
          title: Text('Exercício 1'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              sortearCor();
            },
            child: Text('Sortear Cor', style: TextStyle(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
