import 'package:app_ticketsbus/pages/AdicionarPassagens.dart';
import 'package:flutter/material.dart';

import 'Recarga.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tickets Bus"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            tooltip: 'Menu',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Recarga(),
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
