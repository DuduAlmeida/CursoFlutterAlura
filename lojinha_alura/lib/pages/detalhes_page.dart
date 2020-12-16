/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/appbar_custom.dart';

/// #endregion Imports

class DetalhesPage extends StatelessWidget {
  const DetalhesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        titulo: 'Detalhes',
      ),
      body: FlatButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/carrinho');
        },
        child: Text('Agora vamos para a página de carrinho'),
      ),
    );
  }
}
