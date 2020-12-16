/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/element_grid_produtos.dart';

/// #endregion Imports

class GridProdutos extends StatelessWidget {
  /// #region Public Properties

  final moveis;

  const GridProdutos({this.moveis});

  /// #endregion Public Properties

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      ///
      /// Esse atributo é requerido para funcionar
      ///
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        ///
        /// A quantidade máxima de itens por linha
        ///
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int indice) {
        final movel = Movel.fromJson(moveis[indice]);

        return ElementoGridProdutos(movel: movel);
      },
      itemCount: moveis.length,
    );
  }
}
