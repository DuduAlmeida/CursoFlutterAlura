/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

class TextoDetalhes extends StatelessWidget {
  /// #region Constructor

  const TextoDetalhes({
    Key key,
    this.texto,
    this.estilo,
  }) : super(key: key);

  /// #endregion Constructor

  /// #region Public Properties

  final String texto;
  final TextStyle estilo;

  /// #endregion Public Properties

  /// #region Public Methods

  ///
  /// O método que retorna o texto estilizado, caso tenha estilo, ou somente o texto
  ///
  _estilizarTexto(text) {
    if (estilo != null) return Text(text, style: estilo);

    return Text(text);
  }

  /// #endregion Public Methods

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 10),
      child: _estilizarTexto(texto),
    );
  }
}
