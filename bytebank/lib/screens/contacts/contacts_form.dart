import 'package:bytebank/components/editor.dart';

/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

/// #region Constants

const _appBarTitle = 'New Contact';

/// #endregion Constants

///
/// O widget do formulário do contato
///
class ContactsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appBarTitle)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Full name',
              ),
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Account number',
                ),
                style: TextStyle(
                  fontSize: 24,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                //Ele vai colocar o máximo que conseguir respeitando o padding:
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Create'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
