/// #region Imports
import 'package:flutter/material.dart';
import 'package:bytebank/screens/contacts/contacts_list.screen.dart';
import 'package:bytebank/screens/transactions/transactions_list.dart';
import 'package:bytebank/screens/dashboard/widgets/feature_item.dart';

/// #endregion Imports

/// #region Constants

const _tituloAppBar = 'Dashboard';

/// #endregion Constants

///
/// A classe que representa a tela de dashboard
///
class Dashboard extends StatelessWidget {
  /// #region Build

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'images/bytebank_logo.png',
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeatureItem(
                  'Transfer',
                  Icons.monetization_on,
                  onClick: () {
                    _showContactsList(context);
                  },
                ),
                FeatureItem(
                  'Transaction feed',
                  Icons.description,
                  onClick: () {
                    _showTransactionFeed(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// #endregion Build
}

void _showContactsList(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ContactsList()));
}

void _showTransactionFeed(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => TransactionsList()));
}
