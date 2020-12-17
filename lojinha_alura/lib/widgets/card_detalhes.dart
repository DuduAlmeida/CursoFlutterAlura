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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextoDetalhes(
                texto: movel.titulo,
                estilo: Theme.of(context).textTheme.headline1,
              ),
              TextoDetalhes(texto: movel.descricao),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 4, top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatacaoReais.format(movel.preco),
                  style: Theme.of(context).textTheme.headline1,
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  child: Text(
                    'Comprar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
