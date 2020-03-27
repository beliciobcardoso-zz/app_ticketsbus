import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

final String tableAdicionarPassagens = "AdicionarPassagens";
final String idAdicionarPassagens = "idAdicionarPassagens";
final String quantidadePassagens = "quantidadePassagens";
final String dataPassagens = "dataPassagens";

final String tableConfig = "Config";
final String idConfig = "idConfig";
final String quantasConfig = "quantasConfig";
final String dinheiroConfig = "dinheiroConfig";

final String tableRecarga = "Recarga";
final String idRecarga = "idRecarga";
final String dinheiroRecarga = "dinheiroRecarga";
final String dataRecarga = "dataRecarga";

class DataBaseModel {
  static final DataBaseModel _instance = DataBaseModel.internal();
  factory DataBaseModel() => _instance;
  DataBaseModel.internal();

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
          "$quantidadePassagens INT NOT NULL," +
          "$dataPassagens TEXT NOT NULL)");
      await database.execute("CREATE TABLE $tableConfig(" +
          "$idConfig INTEGER PRIMARY KEY AUTOINCREMENT, " +
          "$quantasConfig INT NOT NULL," +
          "$dinheiroConfig REAL NOT NULL)");
      await database.execute("CREATE TABLE $tableRecarga(" +
          "$idRecarga INTEGER PRIMARY KEY AUTOINCREMENT, " +
          "$dinheiroRecarga REAL NOT NULL," +
          "$dataRecarga TEXT NOT NULL)");
    });
  }
}
