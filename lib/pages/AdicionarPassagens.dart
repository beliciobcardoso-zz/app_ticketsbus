import 'package:app_ticketsbus/models/MyTimeDate.dart';
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
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[400],
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
                      "Adicionar Passagens",
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
                      controller: quantpassagem,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Quantas Passagens uso Hoje?",
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
          ],
        ),
      ),
    );
  }
}
