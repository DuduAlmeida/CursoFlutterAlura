/// #region Imports
import 'package:flutter/material.dart';
import 'package:bytebank/screens/contacts/contacts_list.screen.dart';

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
                _FeatureItem(
                  'Transfer',
                  Icons.monetization_on,
                  onClick: () {
                    _showContactsList(context);
                  },
                ),
                _FeatureItem(
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

class _FeatureItem extends StatelessWidget {
  /// #region Public Properties

  ///
  /// Nome do card
  ///
  final String name;

  ///
  /// ícone do card
  ///
  final IconData icon;

  ///
  /// O callback ao clicar no card
  ///
  final Function onClick;

  /// #endregion Public Properties

  /// #region Contructor

  const _FeatureItem(
    this.name,
    this.icon, {
    @required this.onClick,
  });

  /// #endregion Contructor

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () => onClick(),
          child: Container(
            padding: EdgeInsets.all(8.0),
            // color: Theme.of(context).primaryColor,
            height: MediaQuery.of(context).size.width * 0.3375,
            width: MediaQuery.of(context).size.width * 0.45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                  size: 24,
                ),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showContactsList(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ContactsList()));
}

void _showTransactionFeed(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ContactsList()));
}
