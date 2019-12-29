import 'package:sqflite/sqflite.dart';

/* CREATE TABLE Configurar_Passagem (
    id_configurar_passagem INTEGER PRIMARY KEY AUTOINCREMENT
                                   NOT NULL,
    quantas_passagem       STRING  NOT NULL,
    valor_passagem         STRING  NOT NULL
);
 */

final String tableConfigurarPassagem = "tableConfigurarPassagem";
final String idConfigurarPassagem = "idConfigurarPassagem";
final String quantasPassagem = "quantasPassagem";
final String valorPassagem = "valorPassagem";

class ConfigModels {}

class Config {
  int id;
  int quantasPassagens;
  double valor;

  Config({this.id, this.quantasPassagens, this.valor});

  Config.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantasPassagens = json['quant_passagens'];
    valor = json['valor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['quant_passagens'] = this.quantasPassagens;
    data['valor'] = this.valor;
    return data;
  }
}
