/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

///
/// O botão de carrinho, do appBar
///
class BotaoCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/carrinho');
      },
      child: Container(
        alignment: Alignment.centerRight,
        height: 40,
        padding: EdgeInsets.only(
          right: 30,
          left: 20,
        ),

        ///
        /// Contém a decoração/estilização
        ///
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          ),
        ),
        child: Image(
          height: 30,

          ///
          /// Não esquecer de cadastrar essa rota no pubspec.yaml
          ///
          image: AssetImage('utilidades/assets/icones/carrinho.png'),
        ),
      ),
    );
  }
}
