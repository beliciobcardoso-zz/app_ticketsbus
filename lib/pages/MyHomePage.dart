import 'package:flutter/material.dart';
import 'package:app_ticketsbus/models/MenuPopup.dart';
import 'package:app_ticketsbus/pages/AdicionarPassagens.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tickets Bus"),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return MenuPopup.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: Container(
        color: Colors.grey[400],
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

  void choiceAction(String choice) {
    if (choice == MenuPopup.Recarga) {
      print('Settings');
      print('Settings');
    } else if (choice == MenuPopup.Config) {
      print('Subscribe');
    } else if (choice == MenuPopup.Sobre) {
      print('SignOut');
    }
  }
}
