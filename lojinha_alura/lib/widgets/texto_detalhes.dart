/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

class TextoDetalhes extends StatelessWidget {
  /// #region Constructor

  const TextoDetalhes({
    Key key,
    this.texto,
  }) : super(key: key);

  /// #endregion Constructor

  /// #region Public Properties

  final String texto;

  /// #endregion Public Properties

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 10),
      child: Text(texto),
    );
  }
}
