/// #region Imports

import 'package:flutter/material.dart';

/// #endregion Imports

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  }
}
