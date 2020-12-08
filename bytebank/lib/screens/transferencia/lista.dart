/// #region Imports

import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/screens/transferencia/formulario.dart';
import 'package:flutter/material.dart';

/// #endregion Imports

/// #region Constants

const _tituloAppBar = 'Transferências';

/// #endregion Constants

///
/// A classe que representa o estado da lista de transferências
///
class ListaTransferenciasState extends State<ListaTransferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8),
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return ItemTransferancia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          })).then((tranferenciaRecebida) {
            setState(() {
              if (tranferenciaRecebida != null) {
                widget._transferencias.add(tranferenciaRecebida);
              }
            });
          });
        },
      ),
    );
  }
}

///
/// A classe que representa o Widget da lista de transferência
///
class ListaTransferencia extends StatefulWidget {
  final List<Transferencia> _transferencias = new List();

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciasState();
  }
}

///
/// O Widget que contém um item de determinada transferência
///
class ItemTransferancia extends StatelessWidget {
  /* #region Inputs Properties*/

  final Transferencia _transferencia;

  /* #Endregion Inputs Properties*/

  /* #region Constructor*/

  ItemTransferancia(this._transferencia);

  /* #Endregion Constructor*/

  /* #region Build*/

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }

/* #Endregion Build*/
}
