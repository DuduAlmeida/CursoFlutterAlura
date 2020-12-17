/// #region Imports

import 'package:flutter/material.dart';
import 'package:lojinha_alura/models/movel.dart';
import 'package:lojinha_alura/pages/detalhes_page.dart';
import 'package:lojinha_alura/widgets/degrade_elementos_grid_produto.dart';
import 'package:lojinha_alura/widgets/imagem_elementos_grid_produto.dart';
import 'package:lojinha_alura/widgets/titulo_elementos_grid_produto.dart';

/// #endregion Imports

///
/// O elemento da grid de produtos, da página HOME
///
class ElementoGridProdutos extends StatelessWidget {
  /// #region Public Properties

  final Movel movel;
  final Function atualiza;

  /// #endregion Public Properties

  /// #region Constructor

  const ElementoGridProdutos({
    this.movel,
    this.atualiza,
  });

  /// #endregion Constructor

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(
              MaterialPageRoute(
                builder: (context) => DetalhesPage(movel: movel),
              ),
            )
            .then((value) => atualiza());
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          ///
          /// Recebe uma lista de BoxShadow
          ///
          boxShadow: [
            BoxShadow(
              ///
              /// O raio de até onde essa sombra vai alcançar
              ///
              spreadRadius: 2,

              ///
              /// O quanto a sombra será desfocada
              ///
              blurRadius: 8,

              ///
              /// A cor da sombra
              ///
              color: Colors.black12,

              ///
              /// O movimento da sombra, sendo o primeiro relativo ao eixo x e o segundo ao y
              ///
              offset: Offset(0, 0),
            ),
          ],
        ),

        ///
        /// Vai cortar os elementos filhos para ficarem da forma deseja,
        /// como se tivesse um overflow com estilo
        ///
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            ///
            /// Define o alinhamento das propriedades filhas
            ///
            alignment: Alignment.center,
            children: [
              ImagemElementoGridProdutos(
                imagem: movel.foto,
              ),
              DegradeElementoGridProdutos(),
              TituloElementoGridProdutos(
                titulo: movel.titulo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
