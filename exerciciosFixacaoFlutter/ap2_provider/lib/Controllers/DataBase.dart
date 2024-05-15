import 'package:ap2_provider/Models/TarefaModel.dart';
import "package:path/path.dart";
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  final path = join(
    await getDatabasesPath(),
    "tarefas.db",
  );

  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(TabelaTarefa.createTable);
    },
    version: 1,
  );
}

class TabelaTarefa {
  static const String createTable = """
  CREATE TABLE $tableName(
  $id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  $name TEXT NOT NULL
  );
  """;

  static const String tableName = "tarefa";
  static const String id = "id";
  static const String name = "name";

  static Map<String, dynamic> toMap(TarefaModel tarefa) {
    final map = <String, dynamic>{};

    map[TabelaTarefa.id]= tarefa.id;
    map[TabelaTarefa.tableName] = tarefa.nome;

    return map;
  }
}

class TarefaController{
  Future<void> insert(TarefaModel tarefa) async{
    final dataBase = await getDatabase();
    final map = TabelaTarefa.toMap(tarefa);

    await dataBase.insert(TabelaTarefa.tableName, map);

    return;
  }
}