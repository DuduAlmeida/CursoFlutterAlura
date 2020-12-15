/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

class Progress extends StatelessWidget {
  /// #region Public Properties

  final String message;

  /// #endregion Public Properties

  /// #region Constructor

  const Progress({this.message = 'Loading'});

  /// #endregion Constructor

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          Text(message),
        ],
      ),
    );
  }
}
