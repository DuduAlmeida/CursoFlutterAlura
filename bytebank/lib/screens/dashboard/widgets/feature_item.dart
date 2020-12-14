import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
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

  const FeatureItem(
    this.name,
    this.icon, {
    @required this.onClick,
  })  : assert(icon != null),
        assert(onClick != null);

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
