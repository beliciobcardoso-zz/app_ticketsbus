import 'package:flutter/material.dart';
import 'PageRecarga.dart';
import 'PageConfig.dart';
import 'PageSobre.dart';
import 'PageHistorico.dart';

class MyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Container(
        //color: Colors.grey[400],
        child: Column(
          children: <Widget>[
            Container(
              //width: MediaQuery.of(context).size.width / 1.1,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 25, left: 20, right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: AlignmentDirectional.center,
                          width: 125,
                          height: 125,
                          padding: EdgeInsets.only(
                            top: 1,
                            bottom: 1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
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
                                "Recarga",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageRecarga(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25, left: 15),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: AlignmentDirectional.center,
                          width: 125,
                          height: 125,
                          padding: EdgeInsets.only(
                            top: 1,
                            bottom: 1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
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
                                "Configuração",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageConfig(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 25, left: 20, right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: AlignmentDirectional.center,
                          width: 125,
                          height: 125,
                          padding: EdgeInsets.only(
                            top: 1,
                            bottom: 1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
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
                                "Histórico",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HistoricoRecarga(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25, left: 15),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: AlignmentDirectional.center,
                          width: 125,
                          height: 125,
                          padding: EdgeInsets.only(
                            top: 1,
                            bottom: 1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
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
                                "Sobre",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageSobre(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
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
