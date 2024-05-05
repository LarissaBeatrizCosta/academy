import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ContadorModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Praticando provider",
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ContadorModel>(
              builder: (context, estadoContador, child) =>
                  Text("Larissa possui "
                      "${estadoContador.contador} cães"),
            ),FloatingActionButton(
              onPressed: () {
                Provider.of<ContadorModel>(context, listen: false).somarContador();
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class ContadorModel extends ChangeNotifier {
  int _contador = 0;

  int get contador => _contador;

  void somarContador() {
    _contador++;
    notifyListeners();
  }
}
