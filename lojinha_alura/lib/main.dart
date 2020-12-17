/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/pages/carrinhos_page.dart';
import 'package:lojinha_alura/pages/inicio_page.dart';
import 'package:lojinha_alura/paleta_cores.dart';

/// #endregion Imports

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lojinha Alura',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: PaletaCores().lilas,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20,
            fontFamily: 'Alata',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontSize: 18,
            fontFamily: 'Alata',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline3: TextStyle(
            fontSize: 16,
            fontFamily: 'Alata',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      routes: {
        '/carrinho': (context) => CarrinhoPage(),
      },
      home: Inicio(),
    );
  }
}
