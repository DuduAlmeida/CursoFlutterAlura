class Contact {
  /// #region Public properties

  final String name;
  final int accountNumber;

  /// #endregion Public properties

  /// #region Constructor

  ///
  /// Construtor Padrão
  ///
  Contact(this.name, this.accountNumber);

  /// #endregion Constructor

  @override
  String toString() {
    return 'Contact{name: $name, accountNumber: $accountNumber}';
  }
}
