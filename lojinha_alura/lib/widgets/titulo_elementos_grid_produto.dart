/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

class TituloElementoGridProdutos extends StatelessWidget {
  /// #region Constructor

  const TituloElementoGridProdutos({
    this.titulo,
  });

  /// #endregion Constructor

  /// #region Public Properties

  final String titulo;

  /// #endregion Public Properties

  @override
  Widget build(BuildContext context) {
    return Positioned(
      ///
      /// Faz com que fique a 10 px da parte inferior do elemento pai
      ///
      bottom: 10,
      child: Text(titulo),
    );
  }
}
