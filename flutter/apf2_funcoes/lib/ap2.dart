import 'dart:math';

import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Center(
              child: Stack(children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey,
                  margin: EdgeInsets.all(8),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                  margin: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                ),
              ]),
            ),
          ],
        ),
        Row(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.cyan,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.purple,
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                    margin: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.black.withOpacity(0),
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                    margin: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.white,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.purpleAccent,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.orangeAccent,
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.lightGreen,
                    margin: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ));
  }
}
