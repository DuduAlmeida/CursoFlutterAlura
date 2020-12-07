import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        body: ListaTransferencia(),
        appBar: AppBar(
          title: Text('Transferências'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    ));

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferancia(Transferencia(100.00, 1000)),
        ItemTransferancia(Transferencia(200.00, 1500)),
        ItemTransferancia(Transferencia(300.00, 1000)),
      ],
    );
  }
}

/*** 
 * O Widget que contém um item de determinada transferência
 */
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

class Transferencia {
  /*** 
   * O valor da transferência
   */
  final double valor;

  /*** 
   * O número da conta à transferir o valor
   */
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
