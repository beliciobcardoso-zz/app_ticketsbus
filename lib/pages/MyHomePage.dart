import 'package:app_ticketsbus/models/AdicionarPassagensModels.dart';
import 'package:app_ticketsbus/models/ConfigModels.dart';
import 'package:app_ticketsbus/models/DataBaseModel.dart';
import 'package:app_ticketsbus/models/RecargaModels.dart';
import 'package:flutter/material.dart';
import 'MyMenu.dart';
import 'PageConfig.dart';
import 'package:app_ticketsbus/pages/PageAdicionarPassagens.dart';
import 'PageRecarga.dart';
import 'PageHistorico.dart';
import 'package:app_ticketsbus/models/MyTimeDate.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AdicionarPassagemModels addpassagem = AdicionarPassagemModels();
  RecargaModels recarga = RecargaModels();
  ConfigModels config = ConfigModels();
  DataBaseModel databasemodel = DataBaseModel();

  @override
  void initState() {
    super.initState();

    print(data);

    /* AdicionarPassagens add = AdicionarPassagens();
    add.quantidade = 4;
    add.data = "24/12/2019";
    addpassagem.saveAdicionarPassagens(add); */

    /* addpassagem.getAllAdicionarPassagens().then((listPassagem) {
      print(listPassagem);
    }); */

    /* Recarga r = Recarga();
    r.dinheiro = 11.85;
    r.data = data;
    recarga.saveRecarga(r); */

    /* recarga.getAllRecarga().then((list) {
      print(list);
    }); */

    /* Config c = Config();
    c.quantas = 2;
    c.dinheiro = 4.2;
    config.saveConfig(c); */

    /* config.getAllConfig().then((list) {
      print(list);
    }); */

    print(databasemodel.database);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tickets Bus"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            tooltip: "Menu",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyMenu(),
                ),
              );
            },
          )
        ],
      ),
      body: Container(
          //color: Colors.grey[400],
          ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: IconButton(
                      icon: Icon(Icons.settings),
                      tooltip: "Configuração",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageConfig(),
                          ),
                        );
                      },
                    ),
                  )
                ],
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
                            builder: (context) => PageRecarga(),
                          ),
                        );
                      },
                    ),
                  )
                ],
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
              builder: (context) => PageAdicionarPassagens(),
            ),
          );
        },
      ),
    );
  }
}
