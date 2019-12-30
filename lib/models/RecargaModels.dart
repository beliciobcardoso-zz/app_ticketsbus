import 'package:app_ticketsbus/models/DataBaseModel.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

final String tableRecarga = "Recarga";
final String idRecarga = "idRecarga";
final String dinheiroRecarga = "dinheiroRecarga";
final String dataRecarga = "dataRecarga";

class RecargaModels {
  static final RecargaModels _instance = RecargaModels.internal();
  factory RecargaModels() => _instance;
  RecargaModels.internal();
  DataBaseModel _dataBaseModel = DataBaseModel();

  Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _dataBaseModel.initDatabase();
      return _database;
    }
  }

  Future<Recarga> saveRecarga(Recarga passagem) async {
    Database dbConect = await database;
    passagem.id = await dbConect.insert(tableRecarga, passagem.toMap());
    return passagem;
  }

  Future<int> updateRecarga(Recarga passagem) async {
    Database dbConect = await database;
    return await dbConect.update(tableRecarga, passagem.toMap(),
        where: "$idRecarga = ?", whereArgs: [passagem.id]);
  }

  Future<Recarga> getRecarga(int id) async {
    Database dbConect = await database;
    List<Map> maps = await dbConect.query(tableRecarga,
        columns: [idRecarga, dinheiroRecarga, dataRecarga],
        where: "$idRecarga = ?",
        whereArgs: [id]);
    if (maps.length > 0) {
      return Recarga.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<int> deleteRecarga(int id) async {
    Database dbConect = await database;
    return await dbConect
        .delete(tableRecarga, where: "$idRecarga = ?", whereArgs: [id]);
  }

  Future<List> getAllRecarga() async {
    Database dbConect = await database;
    List listMaps = await dbConect.rawQuery("SELECT * FROM $tableRecarga");
    List<Recarga> listPassagem = List();
    for (Map m in listMaps) {
      listPassagem.add(Recarga.fromMap(m));
    }
    return listPassagem;
  }

  Future<int> getNumber() async {
    Database dbConect = await database;
    return Sqflite.firstIntValue(
        await dbConect.rawQuery("SELECT CONT(*) FROM $tableRecarga"));
  }

  Future close() async {
    Database dbConect = await database;
    dbConect.close();
  }
  //FIM DA CLASS RecargaModels
}

class Recarga {
  int id;
  double dinheiro;
  String data;

  Recarga();

  Recarga.fromMap(Map map) {
    id = map[idRecarga];
    dinheiro = map[dinheiroRecarga];
    data = map[dataRecarga];
  }

  Map toMap() {
    Map<String, dynamic> map = {dinheiroRecarga: dinheiro, dataRecarga: data};
    if (id != null) {
      map[idRecarga] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Recarga Realizadas $tableRecarga (id: $id, dinheiro: $dinheiro, data: $data)";
  }
}
