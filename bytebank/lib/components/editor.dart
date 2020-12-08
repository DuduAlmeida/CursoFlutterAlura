/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

///
/// O componente de input que é um editor
///
class Editor extends StatelessWidget {
  /// #region Private Properties

  ///
  /// O controlador desse campo
  ///
  final TextEditingController controlador;

  ///
  /// O rótulo/título do campo
  ///
  final String rotulo;

  ///
  /// O conteúdo do campo
  ///
  final String dica;

  ///
  /// O ícone do campo
  ///
  final IconData icone;

  /// #endregion Private Properties

  /// #region Constructors

  ///
  /// Construtor padrão
  ///
  Editor({
    this.controlador,
    this.rotulo,
    this.dica,
    this.icone,
  });

  /// #endregion Constructors

  /// #region Build

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

  /// #endregion Build
}
