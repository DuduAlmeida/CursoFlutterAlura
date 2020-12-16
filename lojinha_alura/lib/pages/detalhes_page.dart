/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

class DetalhesPage extends StatelessWidget {
  const DetalhesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
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
