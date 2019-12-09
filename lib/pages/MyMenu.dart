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
              child: Row(
                children: <Widget>[
                  SizedBox.expand(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
