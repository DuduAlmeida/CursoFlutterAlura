/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

///
/// O indicador de itens adicionados no carrinho de itens
///
class IndicadorBotaoCarrinho extends StatelessWidget {
  /// #region Constructor

  IndicadorBotaoCarrinho({
    Key key,
  }) : super(key: key);

  /// #endregion Constructor

  /// #region Public Properties

  /// #endregion Public Properties

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
      child: null,
    );
  }
}
