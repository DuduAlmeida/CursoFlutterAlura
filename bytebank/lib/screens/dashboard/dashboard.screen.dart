/// #region Imports

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        children: <Widget>[
          Image.asset(
            'images/bytebank_logo.png',
          ),
          Container(
            color: Colors.green,
            height: 120,
            width: 100,
            child: Column(
              children: <Widget>[
                Icon(Icons.people),
                Text('Contacts'),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// #endregion Build
}
