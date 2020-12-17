/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/appbar_custom.dart';
import 'package:lojinha_alura/widgets/lista_carrinho.dart';

/// #endregion Imports

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({Key key}) : super(key: key);

  @override
  _CarrinhoPageState createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  @override
  void initState() {
    super.initState();
  }

  atualiza() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBarCustom(
        titulo: 'Carrinho',
        isPageCarrinho: true,
      ),
      body: ListaCarrinho(atualiza: atualiza),
    );
  }
}
