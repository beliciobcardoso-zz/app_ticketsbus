import 'package:sqflite/sqflite.dart';

/* CREATE TABLE Recarga_Passagem (
    idRecargaPassagem    INTEGER PRIMARY KEY AUTOINCREMENT
                                   NOT NULL,
    valor_recarga_passagem STRING  NOT NULL,
    recarga_data           DATE    NOT NULL
); */

final String tableRecargaPassagem = "tableRecargaPassagem";
final String idRecargaPassagem = "idRecargaPassagem";
final String valorRecargaPassagem = "valorRecargaPassagem";
final String recargaData = "recargaData";

class RecargaModels {}

class Recarga {
  int id;
  double valor;
  String data;

  Recarga({this.id, this.data, this.valor});

  Recarga.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    data = json['data'];
    valor = json['valor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['data'] = this.data;
    data['valor'] = this.valor;
    return data;
  }
}
