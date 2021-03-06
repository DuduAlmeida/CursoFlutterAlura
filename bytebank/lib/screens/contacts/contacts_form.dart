/// #region Imports

import 'package:bytebank/models/contacts.dart';
import 'package:flutter/material.dart';

import 'package:bytebank/database/dao/contact_dao.dart';

/// #endregion Imports

/// #region Constants

const _appBarTitle = 'New Contact';

/// #endregion Constants

///
/// O widget do formulário do contato
///
class ContactsForm extends StatefulWidget {
  @override
  _ContactsFormState createState() => _ContactsFormState();
}

class _ContactsFormState extends State<ContactsForm> {
  /// #region Private Properties

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _accountNumberController =
      TextEditingController();

  final ContactDAO _contactDAO = ContactDAO();

  /// #endregion Private Properties

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appBarTitle)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
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
                controller: _accountNumberController,
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
                  onPressed: () {
                    final String name = _nameController.text;
                    final int accountNumber =
                        int.tryParse(_accountNumberController.text);
                    final newContact = Contact(0, name, accountNumber);
                    _contactDAO
                        .save(newContact)
                        .then((contactId) => Navigator.of(context).pop());
                  },
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
