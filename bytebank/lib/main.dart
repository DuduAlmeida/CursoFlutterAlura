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
        ItemTransferancia('100.00', '1000'),
        ItemTransferancia('200.00', '1000'),
        ItemTransferancia('300.00', '1000'),
      ],
    );
  }
}

/*** 
 * O Widget que contém um item de determinada transferência
 */
class ItemTransferancia extends StatelessWidget {
  /* #region Inputs Properties*/

  /*** 
   * O valor da transferência
   */
  final String valor;

  /*** 
   * O número da conta à transferir o valor
   */
  final String numeroConta;

  /* #Endregion Inputs Properties*/

  /* #region Constructor*/

  ItemTransferancia(this.valor, this.numeroConta);

  /* #Endregion Constructor*/

  /* #region Build*/

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(valor),
        subtitle: Text(numeroConta),
      ),
    );
  }

  /* #Endregion Build*/
}
