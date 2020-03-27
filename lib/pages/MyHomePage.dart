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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AdicionarPassagemModels addpassagem = AdicionarPassagemModels();
  RecargaModels recargas = RecargaModels();
  ConfigModels config = ConfigModels();
  DataBaseModel databasemodel = DataBaseModel();
  Recarga recarga = Recarga();

  List<AdicionarPassagens> passagens = List();

  @override
  void initState() {
    super.initState();

    /*  AdicionarPassagens add = AdicionarPassagens();
    add.quantidade = 3;
    add.data = "27/12/2019";
    addpassagem.saveAdicionarPassagens(add); */

    /* addpassagem.getAllAdicionarPassagens().then((list) {
      print(list);
    }); */

    /* Recarga r = Recarga();
    r.dinheiro = 45.85;
    r.data = "01/12/2019";
    recargas.saveRecarga(r); */

    recargas.getAllRecarga().then((list) {
      print(list);
    });

    recarga.calcular();

    addpassagem.getAllAdicionarPassagens().then((list) {
      setState(() {
        passagens = list;
      });
    });
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
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: passagens.length,
        itemBuilder: (context, index) {
          return _passagensCard(context, index);
        },
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

  Widget _passagensCard(BuildContext context, int index) {
    return GestureDetector(
      child: Card(
        color: Colors.grey[400],
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                child: Icon(
                  Icons.check_circle_outline,
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Usado: " +
                              passagens[index].quantidade.toString() +
                              " Passagens" ??
                          "",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      "Resta R\$ X Passagens" ?? "",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      passagens[index].data ?? "",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
