import 'package:bytebank/database/app_database.dart';
import 'package:bytebank/models/contacts.dart';
import 'package:bytebank/screens/contacts/contacts_form.dart';

/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

/// #region Constants

const _tituloAppBar = 'Contacts';

/// #endregion Constants

class ContactsList extends StatelessWidget {
  /// #region Public Properties

  // final List<Contact> contacts = new List();

  /// #endregion Public Properties

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: FutureBuilder(
        future: findAll(),
        builder: (context, snapshot) {
          final List<Contact> contacts = snapshot.data;

          return ListView.builder(
            padding: EdgeInsets.all(8),
            itemBuilder: (context, index) {
              final Contact contact = contacts[index];
              return _ContactItem(contact);
            },
            itemCount: contacts.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ContactsForm()))
              .then((newContact) {
            debugPrint(newContact.toString());
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  /// #region Properties

  final Contact contact;

  /// #endregion Properties

  /// #region Constructor

  _ContactItem(
    this.contact,
  );

  /// #endregion Constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contact.name,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        subtitle: Text(
          contact.accountNumber.toString(),
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
