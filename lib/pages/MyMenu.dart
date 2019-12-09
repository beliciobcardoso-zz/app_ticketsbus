import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              //width: MediaQuery.of(context).size.width / 1.1,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 25, left: 25, right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: AlignmentDirectional.center,
                          width: 120,
                          height: 120,
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
                    margin: EdgeInsets.only(top: 25, left: 25),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: AlignmentDirectional.center,
                          width: 120,
                          height: 120,
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
            )
          ],
        ),
      ),
    );
  }
}
