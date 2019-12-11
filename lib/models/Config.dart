class Config {
  int id;
  int quantPassagens;
  double valor;

  Config({this.id, this.quantPassagens, this.valor});

  Config.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantPassagens = json['quant_passagens'];
    valor = json['valor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['quant_passagens'] = this.quantPassagens;
    data['valor'] = this.valor;
    return data;
  }
}
