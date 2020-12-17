/// #region Imports

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/pages/inicio_page.dart';
import 'package:lojinha_alura/widgets/appbar_custom.dart';
import 'package:lojinha_alura/widgets/lista_carrinho.dart';

/// #endregion Imports

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({Key key}) : super(key: key);

  @override
  _CarrinhoPageState createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  /// #region Public Methods

  @override
  void initState() {
    super.initState();
  }

  void atualiza() {
    setState(() {});
  }

  int _calcularTotal() {
    if (Inicio.itensCarrinho.isNotEmpty) {
      return Inicio.itensCarrinho
          .map((item) => item.movel.preco * item.quantidade)
          .reduce((precoAtual, precoNovo) => precoAtual + precoNovo);
    }
    return 0;
  }

  Widget _contruirTela() {
    if (Inicio.itensCarrinho.isNotEmpty)
      return ListaCarrinho(
        atualiza: atualiza,
      );

    return Center(
        child: Text(
      'Nenhum item no carrinho',
      style: Theme.of(context).textTheme.headline1,
    ));
  }

  /// #endregion Public Methods

  final formatacaoReais = NumberFormat.currency(
    locale: 'pt_BR',
    symbol: 'R\$',
  );

  @override
  Widget build(BuildContext context) {
    /// #region Public Properties

    int valorTotal = _calcularTotal();

    /// #endregion Public Properties

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBarCustom(
        titulo: 'Carrinho',
        isPageCarrinho: true,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              formatacaoReais.format(valorTotal),
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      body: _contruirTela(),
    );
  }
}
