/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

class DegradeElementoGridProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        ///
        /// Widget que faz um degradê chavoso
        ///
        gradient: LinearGradient(

            ///
            /// Onde o degradê vai começar, em relação ao container
            ///
            begin: Alignment.center,

            ///
            /// Onde o degradê vai terminar
            ///
            end: Alignment.bottomCenter,

            ///
            /// As cores do degradê, sendo importante a ordem que é colocado
            ///
            colors: [
              ///
              /// A cor inicial
              ///
              Colors.transparent,

              ///
              /// A cor final
              ///
              Theme.of(context).primaryColor,
            ]),
      ),
    );
  }
}
