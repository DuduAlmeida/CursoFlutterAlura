/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/botao_carrinho.dart';

/// #endregion Imports

///
/// A AppBar Customizada
///
class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  /// #region Public Properties

  ///
  /// O título do appBar
  ///
  final String titulo;

  final bool isPageCarrinho;

  /// #endregion Public Properties

  /// #region Constructor

  const AppBarCustom({
    @required this.titulo,
    this.isPageCarrinho = false,
  });

  /// #endregion Constructor

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titulo,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),

      ///
      /// Remove a elevação, o tamanho das sombras abaixo do appBar
      ///
      elevation: 0.0,

      ///
      /// Centraliza o título em todas as plataformas
      ///
      centerTitle: true,

      ///
      /// Aqui é possível adicionar botões no appBar
      ///
      actions: [
        _mudarPaginaCarrinho(isPageCarrinho),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  /// #region Private Methods

  StatelessWidget _mudarPaginaCarrinho(bool isPageCar) {
    if (isPageCar) return Container();
    return BotaoCarrinho();
  }

  /// #endregion Private Methods
}
