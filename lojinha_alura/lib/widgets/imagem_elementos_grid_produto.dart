/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

class ImagemElementoGridProdutos extends StatelessWidget {
  /// #region Constructor

  const ImagemElementoGridProdutos({
    this.imagem,
  });

  /// #endregion Constructor

  /// #region Public Properties

  final String imagem;

  /// #endregion Public Properties

  @override
  Widget build(BuildContext context) {
    ///
    /// Esse widget faz ocupar todo o espaço possível
    ///
    return Positioned.fill(
      child: Image(
        image: AssetImage('utilidades/assets/imagens/$imagem'),
        fit: BoxFit.cover,
      ),
    );
  }
}
