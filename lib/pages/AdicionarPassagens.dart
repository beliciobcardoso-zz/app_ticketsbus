import 'package:app_ticketsbus/models/MyTimeDate.dart';
import 'package:app_ticketsbus/pages/Config.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter/material.dart';

class AdicionarPassagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "Adicionar Passagens",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              //alignment: ,
              child: Column(
                children: <Widget>[
                  Text("Data: $data"),
                ],
              ),
            ),
            //Inicio do inpunt "Quantas passagens uso hoje?"
            Container(
              //width: MediaQuery.of(context).size.width / 1.1,
              padding: EdgeInsets.only(top: 25),
              child: Column(
                children: <Widget>[
                  Container(
                    //width: MediaQuery.of(context).size.width / 1.1,
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
                      color: Colors.white,
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
                        labelText: "Quantas Passagens uso Hoje?",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
