import 'package:app_ticketsbus/pages/Config.dart';
import 'package:flutter/material.dart';
import 'package:app_ticketsbus/models/MenuPopup.dart';
import 'package:app_ticketsbus/pages/AdicionarPassagens.dart';
import 'package:app_ticketsbus/pages/Recarga.dart';

import 'historico.dart';

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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.settings),
                      tooltip: "Configuração",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyConfig(),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              child: Text(
                "Configuração",
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.refresh),
                      tooltip: "Recarga",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Recarga(),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              child: Text(
                "Recarga",
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.history),
                      tooltip: "Historico",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HistoricoRecarga(),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
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
     print("object")
    } else if (choice == MenuPopup.Config) {
      print('Configuração');
    } else if (choice == MenuPopup.Sobre) {
      print('Sobre');
    }
  }
}
