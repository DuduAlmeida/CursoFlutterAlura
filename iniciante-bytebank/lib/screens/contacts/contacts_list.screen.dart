/// #region Imports

import 'package:flutter/material.dart';

import 'package:bytebank/screens/contacts/contacts_form.dart';
import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:bytebank/models/contacts.dart';

/// #endregion Imports

/// #region Constants

const _tituloAppBar = 'Contacts';

/// #endregion Constants

class ContactsList extends StatefulWidget {
  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  /// #region Public Properties

  // final List<Contact> contacts = new List();
  final ContactDAO _contactDAO = ContactDAO();

  /// #endregion Public Properties

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: FutureBuilder<List<Contact>>(
        initialData: new List(),
        future: _contactDAO.findAll(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Text('Loading'),
                  ],
                ),
              );
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              final List<Contact> contacts = snapshot.data;

              return ListView.builder(
                padding: EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  final Contact contact = contacts[index];
                  return _ContactItem(contact);
                },
                itemCount: contacts.length,
              );
              break;
          }

          return Text('Unknown error');
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
            MaterialPageRoute(
              builder: (context) => ContactsForm(),
            ),
          )
              .then((value) {
            setState(() {
              widget.createState();
            });
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
