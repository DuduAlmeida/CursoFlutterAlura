/// #region Imports

import 'package:flutter/material.dart';
// import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:bytebank/screens/dashboard/dashboard.screen.dart';

import 'database/app_database.dart';
import 'models/contacts.dart';

/// #endregion Imports

void main() {
  runApp(BytebankApp());
  save(Contact(1, 'dudu', 1000)).then((id) {
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.blueAccent[700],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
    );
  }
}
