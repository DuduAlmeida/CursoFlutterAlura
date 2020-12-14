/// #region Imports

import 'package:flutter/material.dart';
import 'package:bytebank/screens/dashboard/dashboard.screen.dart';

import 'database/app_database.dart';

/// #endregion Imports

void main() {
  runApp(BytebankApp());
  findAll().then((contacts) => debugPrint(contacts.toString()));
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
