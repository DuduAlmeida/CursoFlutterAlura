/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/degrade_elementos_grid_produto.dart';
import 'package:lojinha_alura/widgets/imagem_elementos_grid_produto.dart';

/// #endregion Imports

///
/// O elemento da grid de produtos, da página HOME
///
class ElementoGridProdutos extends StatelessWidget {
  /// #region Public Properties

  final Movel movel;

  /// #endregion Public Properties

  /// #region Constructor

  const ElementoGridProdutos({
    this.movel,
  });

  /// #endregion Constructor

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImagemElementoGridProdutos(
          imagem: movel.foto,
        ),
        DegradeElementoGridProdutos(),
      ],
    );
  }
}
