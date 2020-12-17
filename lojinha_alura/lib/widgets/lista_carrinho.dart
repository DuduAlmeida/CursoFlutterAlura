/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/item_carrinho.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/pages/inicio_page.dart';

/// #endregion Imports

///
/// O widget que contém a lista de itens no carrinho de compra
///
class ListaCarrinho extends StatefulWidget {
  /// #region Constructor

  ListaCarrinho({
    Key key,
    this.atualiza,
  }) : super(key: key);

  /// #endregion Constructor

  /// #region Public Properties

  final Function atualiza;

  /// #endregion Public Properties

  @override
  _ListaCarrinhoState createState() => _ListaCarrinhoState();
}

class _ListaCarrinhoState extends State<ListaCarrinho> {
  /// #region Public Properties

  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;

  /// #endregion Public Properties

  /// #region Private Methods

  _aumentarQuantidade(ItemCarrinho item) {
    setState(() {
      item.quantidade++;
      widget.atualiza();
    });
  }

  _diminuirQuantidade(ItemCarrinho item) {
    if (item.quantidade > 1)
      setState(() {
        item.quantidade--;
        widget.atualiza();
      });
    else
      _removerMovel(item);
  }

  _removerMovel(ItemCarrinho item) {
    setState(() {
      Inicio.itensCarrinho.remove(item);
      widget.atualiza();
    });
  }

  /// #endregion Private Methods

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
                Expanded(
                  child: Container(
                    height: 92,
                    margin: EdgeInsets.only(left: 10, right: 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movel.titulo),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${movel.preco}'),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => _aumentarQuantidade(item),
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(Icons.add, size: 14),
                                  ),
                                ),
                                Text('${item.quantidade}'),
                                GestureDetector(
                                  onTap: () => _diminuirQuantidade(item),
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(Icons.remove, size: 14),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
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
