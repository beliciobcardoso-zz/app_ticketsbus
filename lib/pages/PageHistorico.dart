import 'package:app_ticketsbus/models/MyTimeDate.dart';
import 'package:flutter/material.dart';
import 'package:app_ticketsbus/models/Recarga.dart';

var recargas = new List<Recarga>();

class HistoricoRecarga extends StatefulWidget {
  HistoricoRecarga() {
    recargas = [];
    recargas.add(Recarga(id: 1, data: "02/11/2019", valor: 15.50));
    recargas.add(Recarga(id: 2, data: "16/11/2019", valor: 45.70));
    recargas.add(Recarga(id: 3, data: "$data", valor: 30.30));
  }
  @override
  _HistoricoRecargaState createState() => _HistoricoRecargaState();
}

class _HistoricoRecargaState extends State<HistoricoRecarga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Histórico de Recarga"),
      ),
      body: ListView.builder(
        itemCount: recargas.length,
        padding: const EdgeInsets.all(0),
        itemBuilder: (BuildContext ctx, int index) {
          final lista = recargas[index];
          return Text(lista.data);
        },
      ),
    );
  }
}
