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

  /// #endregion Public Properties

  /// #region Constructor

  const AppBarCustom({
    @required this.titulo,
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
        BotaoCarrinho(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
