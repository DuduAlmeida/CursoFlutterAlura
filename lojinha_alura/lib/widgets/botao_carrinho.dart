/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/indicador_botao_carrinho.dart';

import '../main.dart';

/// #endregion Imports

///
/// O botão de carrinho, do appBar
///
class BotaoCarrinho extends StatelessWidget {
  /// #region Public Methods

  _visibilidadeIndicadorCarrinho() {
    if (Inicio.itensCarrinho.length > 0)
      return Stack(
        children: [
          Image(
            height: 30,
            image: AssetImage('utilidades/assets/icones/carrinho.png'),
          ),
          IndicadorBotaoCarrinho(),
        ],
      );

    return Image(
      height: 30,
      image: AssetImage('utilidades/assets/icones/carrinho.png'),
    );
  }

  /// #endregion Public Methods

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
        child: _visibilidadeIndicadorCarrinho(),
      ),
    );
  }
}
