/// #region Imports

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/models/item_carrinho.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/pages/inicio_page.dart';
import 'package:lojinha_alura/widgets/texto_detalhes.dart';

/// #endregion Imports

class CardDetalhes extends StatelessWidget {
  /// #region Constructor

  CardDetalhes({
    Key key,
    this.atualizaPagina,
    @required this.movel,
  }) : super(key: key);

  /// #endregion Constructor

  /// #region Public Properties

  final Movel movel;
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  final Function atualizaPagina;

  /// #endregion Public Properties

  /// #region Public Methods

  void _adicionarItemCarrinho(ItemCarrinho item) {
    Inicio.itensCarrinho.add(item);
    atualizaPagina();
  }

  void _verificarListaItemCarrinho(
      List<ItemCarrinho> lista, ItemCarrinho item) {
    //-1 -> Não existe na lista
    //<= 0 -> O índice do item, logo ele existe
    int indiceMovel = lista.indexWhere((element) => element.movel == movel);
    if (indiceMovel >= 0) {
      lista[indiceMovel].quantidade += 1;
    } else {
      _adicionarItemCarrinho(item);
    }
  }

  /// #endregion Public Methods

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
                  onPressed: () {
                    _verificarListaItemCarrinho(
                      Inicio.itensCarrinho,
                      ItemCarrinho(quantidade: 1, movel: movel),
                    );
                  },
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
