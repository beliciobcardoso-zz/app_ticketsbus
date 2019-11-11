import 'package:app_ticketsbus/models/MyTimeDate.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter/material.dart';

class AdicionarPassagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var maskFormatter = new MaskTextInputFormatter(
      mask: '0#,##',
      filter: {
        "#": RegExp(r'[0-9]'),
      },
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text("Tickets Bus"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Configuração',
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Text(
              "Adicionar uma Recarga",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Data: $data",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            TextFormField(
              inputFormatters: [maskFormatter],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Qual o valor da recargar?",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xff3f51b5),
                    Color(0xff3f51b5),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "Confirmar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
    );
  }
}
