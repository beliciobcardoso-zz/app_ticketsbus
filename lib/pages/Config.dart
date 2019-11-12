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
        padding: EdgeInsets.only(
          top: 20,
          left: 25,
          right: 25,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Text(
              "Configurar Passagem",
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
              controller: quantpassagem,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Quantas passagem por dia?",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Qual o valor da Passagem?",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
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
