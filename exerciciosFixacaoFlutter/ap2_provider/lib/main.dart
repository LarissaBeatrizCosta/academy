import 'package:ap2_provider/Controllers/TarefaController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter/cupertino.dart';

import 'Routes/Routes.dart';
import 'Views/HomeView.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TarefaController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Provider 2",
      initialRoute: "/",
      onGenerateRoute: Routes.gerarRotas,
      routes: {
        '/': (context) => HomeView(),
      },
    );
  }

}
