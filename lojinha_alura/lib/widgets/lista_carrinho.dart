/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/item_carrinho.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/pages/inicio_page.dart';

/// #endregion Imports

///
/// O widget que contém a lista de itens no carrinho de compra
///
class ListaCarrinho extends StatelessWidget {
  /// #region Constructor

  ListaCarrinho({
    Key key,
  }) : super(key: key);

  /// #endregion Constructor

  /// #region Public Properties

  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;

  /// #endregion Public Properties

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: carrinho.length,
      itemBuilder: (context, indice) {
        final ItemCarrinho item = carrinho[indice];
        final Movel movel = item.movel;

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Card(
            ///
            /// "Corta" os elementos dentro dele para ficar da forma desejada,
            /// seria como o  Overflow
            ///
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Image(
                  image: AssetImage('utilidades/assets/imagens/${movel.foto}'),
                  height: 92,
                  width: MediaQuery.of(context).size.width * 0.35,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(movel.titulo),
                      Text('${movel.preco}'),
                      Text('${item.quantidade}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
