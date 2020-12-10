/// #region Imports

import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

/// #endregion Imports

/// #region Constants

const _tituloAppBar = 'Criando Transferência';

/// #endregion Constants

class FormularioTransferenciaCurso1 extends StatefulWidget {
  //const FormularioTransferencia({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaCurso1State();
  }
}

class FormularioTransferenciaCurso1State
    extends State<FormularioTransferenciaCurso1> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controlador: _controladorCampoNumeroConta,
              rotulo: 'Número da conta',
              dica: '0000',
            ),
            Editor(
              controlador: _controladorCampoValor,
              rotulo: 'Valor',
              dica: '0.00',
              icone: Icons.monetization_on,
            ),
            RaisedButton(
              child: Text('Confirmar'),
              onPressed: () => _criaTransferencia(context),
            ),
          ],
        ),
      ),
    );
  }
}
