/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/appbar_custom.dart';
import 'package:lojinha_alura/widgets/lista_carrinho.dart';

/// #endregion Imports

class CarrinhoPage extends StatelessWidget {
  const CarrinhoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBarCustom(
        titulo: 'Carrinho',
        isPageCarrinho: true,
      ),
      body: ListaCarrinho(),
    );
  }
}
