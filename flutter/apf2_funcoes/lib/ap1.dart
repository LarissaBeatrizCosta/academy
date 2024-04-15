import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage(title: "Exercício 1"));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(children: [
          Center(
            child: Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.all(8),
              color: Colors.red,
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.all(8),
              color: Colors.green,
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.all(8),
              color: Colors.blue,
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.all(8),
              color: Colors.purple,
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.all(8),
              color: Colors.cyan,
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.all(8),
              color: Colors.black,
            ),
          ),
        ]),
        Row(
          children: [
            Center(
              child: Container(
                height: 50,
                width: 100,
                margin: EdgeInsets.all(8),
                color: Colors.purple,
              ),
            ),
            Center(
              child: Container(
                height: 50,
                width: 100,
                margin: EdgeInsets.all(8),
                color: Colors.cyan,
              ),
            )
          ],
        ),
      ],
    ));
  }
}
