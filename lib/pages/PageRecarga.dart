import 'package:app_ticketsbus/models/DataBaseModel.dart';
import 'package:app_ticketsbus/models/MyTimeDate.dart';
import 'package:app_ticketsbus/models/RecargaModels.dart';
import 'package:app_ticketsbus/pages/PageConfig.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter/material.dart';

class PageRecarga extends StatefulWidget {
  @override
  _PageRecargaState createState() => _PageRecargaState();
}

class _PageRecargaState extends State<PageRecarga> {
  RecargaModels recargas = RecargaModels();

  DataBaseModel databasemodel = DataBaseModel();

  List<Recarga> recarga = List();
  double valorRecaraga = 51.85;
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

    /* addpassagem.getAllAdicionarPassagens().then((list) {
      setState(() {
        passagens = list;
      });
    }); */
  }

  @override
  Widget build(BuildContext context) {
    var controller = new MoneyMaskedTextController(
      decimalSeparator: ',',
      thousandSeparator: '.',
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text("Recarga"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Configuração',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageConfig(),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 30,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: AlignmentDirectional.center,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Text(
                      "Adicionar uma Recarga",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 30,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Text(
                      "Data: $data ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              //Inicio do inpunt "Quantas passagens uso hoje?"
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 70,
                    padding: EdgeInsets.only(
                      top: 1,
                      right: 5,
                      bottom: 1,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Qual o valor da recargar?",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
            //fim do inpunt "Quantas passagens uso hoje?"
            Container(
              //Container botão confirmar?"
              margin: EdgeInsets.only(top: 25),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: AlignmentDirectional.center,
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 70,
                    padding: EdgeInsets.only(
                      top: 1,
                      bottom: 1,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      color: Colors.indigo,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Text(
                          "Confirmar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Total de Recarga R\$ " + valorRecaraga.toString(),
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

/* ListView.builder(
                    padding: EdgeInsets.all(0.0),
                    itemCount: recarga.length,
                    itemBuilder: (context, index) {
                      return _recargaCard(context, index);
                    },
                  ), */
  /*  Widget _recargaCard(BuildContext context, int index) {
    return GestureDetector(
      child: Card(
        color: Colors.grey[400],
        child: Padding(
          padding: EdgeInsets.all(0.0),
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
                      "Usado: " ?? "",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  } */
}
