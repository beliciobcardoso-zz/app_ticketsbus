class AdicionarPassagens {
  int id;
  String data;
  int quantidade;
  double valor;

  AdicionarPassagens({this.id, this.data, this.quantidade, this.valor});

  AdicionarPassagens.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    data = json['data'];
    quantidade = json['quantidade'];
    valor = json['valor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['data'] = this.data;
    data['quantidade'] = this.quantidade;
    data['valor'] = this.valor;
    return data;
  }
}
