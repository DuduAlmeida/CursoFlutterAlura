/// #region Imports

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/texto_detalhes.dart';

/// #endregion Imports

class CardDetalhes extends StatelessWidget {
  /// #region Constructor

  CardDetalhes({
    Key key,
    @required this.movel,
  }) : super(key: key);

  /// #endregion Constructor

  /// #region Public Properties

  final Movel movel;
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  /// #endregion Public Properties

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextoDetalhes(texto: movel.titulo),
          TextoDetalhes(texto: movel.descricao),
          Row(
            children: [
              Text(formatacaoReais.format(movel.preco)),
              FlatButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                child: Text('Comprar'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
