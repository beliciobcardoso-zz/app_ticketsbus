import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

final String tableAdicionarPassagens = "tableAdicionarPassagens";
final String idAdicionarPassagens = "idAdicionarPassagens";
final String quantidadePassagens = "quantidadePassagens";
final String adicionarData = "adicionarData";

class AdicionarPassagemModels {
  static final AdicionarPassagemModels _instance =
      AdicionarPassagemModels.internal();
  factory AdicionarPassagemModels() => _instance;
  AdicionarPassagemModels.internal();

  Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await initDatabase();
      return _database;
    }
  }

  Future<Database> initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, "BD_ticketsbus.db");
    return await openDatabase(path, version: 1,
        onCreate: (Database database, int newerVersion) async {
      await database.execute("CREATE TABLE $tableAdicionarPassagens(" +
          "$idAdicionarPassagens INTEGER PRIMARY KEY AUTOINCREMENT, " +
          "$quantidadePassagens TEXT NOT NULL," +
          "$adicionarData DATA NOT NULL)");
    });
  }

  Future<AdicionarPassagens> saveAdicionarPassagens(
      AdicionarPassagens passagem) async {
    Database dbConect = await database;
    passagem.id =
        await dbConect.insert(tableAdicionarPassagens, passagem.toMap());
    return passagem;
  }

  Future<int> updateAdicionarPassagens(AdicionarPassagens passagem) async {
    Database dbConect = await database;
    return await dbConect.update(tableAdicionarPassagens, passagem.toMap(),
        where: "$idAdicionarPassagens = ?", whereArgs: [passagem.id]);
  }

  Future<AdicionarPassagens> getAdicionarPassagens(int id) async {
    Database dbConect = await database;
    List<Map> maps = await dbConect.query(tableAdicionarPassagens,
        columns: [idAdicionarPassagens, quantidadePassagens, adicionarData],
        where: "$idAdicionarPassagens = ?",
        whereArgs: [id]);
    if (maps.length > 0) {
      return AdicionarPassagens.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<int> deleteAdicionarPassagens(int id) async {
    Database dbConect = await database;
    return await dbConect.delete(tableAdicionarPassagens,
        where: "$idAdicionarPassagens = ?", whereArgs: [id]);
  }

  Future<List> getAllAdicionarPassagens() async {
    Database dbConect = await database;
    List listMaps =
        await dbConect.rawQuery("SELECT * FROM $tableAdicionarPassagens");
    List<AdicionarPassagens> listPassagem = List();
    for (Map m in listMaps) {
      listPassagem.add(AdicionarPassagens.fromMap(m));
    }
    return listPassagem;
  }

  Future<int> getNumber() async {
    Database dbConect = await database;
    return Sqflite.firstIntValue(await dbConect
        .rawQuery("SELECT CONT(*) FROM $tableAdicionarPassagens"));
  }

  Future close() async {
    Database dbConect = await database;
    dbConect.close();
  }
  //FIM DA CLASS AdicionarPassagemModels
}

class AdicionarPassagens {
  int id;
  String quantidade;
  String data;

  AdicionarPassagens.fromMap(Map map) {
    id = map[idAdicionarPassagens];
    quantidade = map[quantidadePassagens];
    data = map[adicionarData];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      quantidadePassagens: quantidade,
      adicionarData: data
    };
    if (id != null) {
      map[idAdicionarPassagens] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Adicionar Passagens(id: $id, quantidade: $quantidade, data: $data)";
  }
}
