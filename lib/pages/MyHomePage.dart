import 'package:app_ticketsbus/pages/AdicionarPassagens.dart';
import 'package:app_ticketsbus/pages/Config.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tickets Bus"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Configuração',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyConfig(),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Adicionar passagens',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AdicionarPassagens(),
            ),
          );
        },
      ),
    );
  }
}
