/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/widgets/appbar_custom.dart';
import 'package:lojinha_alura/widgets/card_detalhes.dart';

/// #endregion Imports

class DetalhesPage extends StatelessWidget {
  /// #region Constructor

  DetalhesPage({Key key, @required this.movel}) : super(key: key);

  /// #endregion Constructor

  /// #region Public Propeties

  final Movel movel;

  /// #endregion Public Propeties

  @override
  Widget build(BuildContext context) {
    return Container(
      ///
      /// Plano de fundo é definido aqui
      ///
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('utilidades/assets/imagens/${movel.foto}'),
          fit: BoxFit.cover,
        ),
      ),

      ///
      /// Conteúdo da página
      ///
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustom(
          titulo: '',
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(16),

            ///
            /// Coloca um tamanho máximo no item
            ///
            height: 205,
            child: CardDetalhes(
              movel: movel,
            ),
          ),
        ),
      ),
    );
  }
}
