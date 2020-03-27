import 'package:flutter/material.dart';
import 'package:app_ticketsbus/pages/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Este widget é a raiz do seu aplicativo.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicketsBus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple[900],
        scaffoldBackgroundColor: Colors.grey[600],
        accentColor: Colors.purple[900],
      ),
      home: MyHomePage(),
    );
  }
}
