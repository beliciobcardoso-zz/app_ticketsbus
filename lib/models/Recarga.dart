class Recarga {
  int id;
  String data;
  double valor;

  Recarga({this.id, this.data, this.valor});

  Recarga.fromJson(Map<String, dynamic> json) {
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
