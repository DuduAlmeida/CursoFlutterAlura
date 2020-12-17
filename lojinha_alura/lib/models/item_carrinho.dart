/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';

/// #endregion Imports

///
/// O widget que representa o item do carrinho
///
class ItemCarrinho {
  /// #region Constructor

  ItemCarrinho({
    this.movel,
    this.quantidade,
  });

  /// #endregion Constructor

  /// #region Public Properties

  final Movel movel;
  int quantidade;

  /// #endregion Public Properties
}
