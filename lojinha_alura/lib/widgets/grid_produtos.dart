/// #region Imports

import 'package:flutter/material.dart';

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
        final movel = moveis[indice];

        return Container(
          child: Text('$movel'),
        );
      },
      itemCount: moveis.length,
    );
  }
}
