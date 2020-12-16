/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/texto_detalhes.dart';

/// #endregion Imports

class CardDetalhes extends StatelessWidget {
  /// #region Constructor

  const CardDetalhes({
    Key key,
    @required this.movel,
  }) : super(key: key);

  /// #endregion Constructor

  /// #region Public Properties

  final Movel movel;

  /// #endregion Public Properties

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextoDetalhes(texto: movel.titulo),
          TextoDetalhes(texto: movel.descricao),
        ],
      ),
    );
  }
}
