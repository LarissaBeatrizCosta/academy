import 'package:ap2_provider/Views/formTarefa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Views/HomeView.dart';

class Routes {
  static Route<dynamic> gerarRotas(RouteSettings rotas) {
    switch (rotas.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomeView());

      case "/CadastroTarefas":
        return MaterialPageRoute(builder: (_) => FormCadastro());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Text("Pagina não encontrada!"),
          ),
        );
    }
  }
}
