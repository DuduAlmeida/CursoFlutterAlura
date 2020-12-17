/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/item_carrinho.dart';
import 'package:lojinha_alura/widgets/appbar_custom.dart';
import 'package:lojinha_alura/widgets/grid_produtos.dart';

/// #endregion Imports

///
/// A página de início da aplicação
///
class Inicio extends StatefulWidget {
  /// #region Pubilc Properties

  static List<ItemCarrinho> itensCarrinho = new List();

  /// #endregion Pubilc Properties

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  /// #region Public Properties

  final List moveis = [
    {
      "titulo": "Mesa",
      "preco": 300,
      "foto": "movel1.jpeg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Cadeira",
      "preco": 120,
      "foto": "movel2.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Manta",
      "preco": 200,
      "foto": "movel3.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Cinza",
      "preco": 800,
      "foto": "movel4.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Mesa de cabeceira",
      "preco": 400,
      "foto": "movel5.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Jogo de Cama",
      "preco": 250,
      "foto": "movel6.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Branco",
      "preco": 900,
      "foto": "movel7.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];

  /// #endregion Public Properties

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBarCustom(titulo: 'Lojinha Alura'),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 30,
                      bottom: 10,
                      top: 10,
                    ),
                    child: Divider(),
                  ),
                ),
                Text('Produtos'),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 30,
                      right: 20,
                      bottom: 10,
                      top: 10,
                    ),
                    child: Divider(),
                  ),
                ),
              ],
            ),

            ///
            /// Faz o filho se expandir o máximo que puder
            ///
            Flexible(
              child: GridProdutos(
                moveis: moveis,
              ),
            ),
          ],
        ));
  }
}
