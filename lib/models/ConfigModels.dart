import 'package:app_ticketsbus/models/DataBaseModel.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

final String tableConfig = "Config";
final String idConfig = "idConfig";
final String quantasConfig = "quantasConfig";
final String dinheiroConfig = "dinheiroConfig";

class ConfigModels {
  static final ConfigModels _instance = ConfigModels.internal();
  factory ConfigModels() => _instance;
  ConfigModels.internal();

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

  Future<Config> saveConfig(Config passagem) async {
    Database dbConect = await database;
    passagem.id = await dbConect.insert(tableConfig, passagem.toMap());
    return passagem;
  }

  Future<int> updateConfig(Config passagem) async {
    Database dbConect = await database;
    return await dbConect.update(tableConfig, passagem.toMap(),
        where: "$idConfig = ?", whereArgs: [passagem.id]);
  }

  Future<Config> getConfig(int id) async {
    Database dbConect = await database;
    List<Map> maps = await dbConect.query(tableConfig,
        columns: [idConfig, quantasConfig, dinheiroConfig],
        where: "$idConfig = ?",
        whereArgs: [id]);
    if (maps.length > 0) {
      return Config.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<int> deleteConfig(int id) async {
    Database dbConect = await database;
    return await dbConect
        .delete(tableConfig, where: "$idConfig = ?", whereArgs: [id]);
  }

  Future<List> getAllConfig() async {
    Database dbConect = await database;
    List listMaps = await dbConect.rawQuery("SELECT * FROM $tableConfig");
    List<Config> listPassagem = List();
    for (Map m in listMaps) {
      listPassagem.add(Config.fromMap(m));
    }
    return listPassagem;
  }

  Future<int> getNumber() async {
    Database dbConect = await database;
    return Sqflite.firstIntValue(
        await dbConect.rawQuery("SELECT CONT(*) FROM $tableConfig"));
  }

  Future close() async {
    Database dbConect = await database;
    dbConect.close();
  }
  //FIM DA CLASS ConfigModels
}

class Config {
  int id;
  int quantas;
  double dinheiro;

  Config();

  Config.fromMap(Map map) {
    id = map[idConfig];
    quantas = map[quantasConfig];
    dinheiro = map[dinheiroConfig];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      quantasConfig: quantas,
      dinheiroConfig: dinheiro
    };
    if (id != null) {
      map[idConfig] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Configurar Passagem $tableConfig (id: $id, quantas: $quantas, dinheiro: $dinheiro)";
  }
}
