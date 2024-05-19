import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Routes/Routes.dart';
import 'Views/HomeView.dart';
import 'Views/formTarefa.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TarefaState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Provider e Bd",
      initialRoute: "/",
      onGenerateRoute: Routes.gerarRotas,
      routes: {
        '/': (context) => HomeView(),
      },
    );
  }

}
