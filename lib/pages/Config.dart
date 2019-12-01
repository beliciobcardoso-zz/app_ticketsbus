import 'package:app_ticketsbus/models/MyTimeDate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class MyConfig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = new MoneyMaskedTextController(
      decimalSeparator: ',',
      thousandSeparator: '.',
    );
    var quantpassagem = new MaskedTextController(
      mask: '00',
      text: '02',
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text("Tickets Bus"),
      ),
      body: Container(
        color: Colors.grey[400],
        child: ListView(
          children: <Widget>[
            //------ Titulo da Pagina ------//
            Container(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                "Configurar Passagem",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //--- Container do texto ---//
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Text(
                "Configure quantas passagens você pega por dia e qual o valor da passagens na sua cidade.",
                textAlign: TextAlign.center,
              ),
            ),
            //--- Container da data ----//
            Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "Data: $data",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            //------ Container do input quantidade de passagens --------//
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 70,
                    padding: EdgeInsets.only(
                      top: 1,
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
                      controller: quantpassagem,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Quantas passagem por dia?",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            //----- Container do input valor passagem ----------//
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 70,
                    padding: EdgeInsets.only(
                      top: 1,
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
                        labelText: "Qual o valor da Passagem?",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            //------ Container do Botão Confirmar --------//
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 15),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 70,
                    padding: EdgeInsets.only(
                      top: 1,
                      right: 5,
                      bottom: 1,
                      left: 1,
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
