/// #region Imports

import 'package:flutter/material.dart';
import 'package:bytebank/http/webclient.dart';
import 'package:bytebank/screens/dashboard/dashboard.screen.dart';

/// #endregion Imports

void main() {
  runApp(BytebankApp());
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
