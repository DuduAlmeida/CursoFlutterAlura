/// #region Imports

import 'package:flutter/material.dart';
import 'package:bytebank/screens/dashboard/dashboard.screen.dart';

/// #endregion Imports

void main() {
  runApp(BytebankApp());
  // save(Transaction(400, Contact(0, 'Julian', 1234))).then((value) => debugPrint('Tranação criada: $value'));
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
