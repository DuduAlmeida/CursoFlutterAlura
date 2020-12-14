class Contact {
  /// #region Public properties

  final int id;
  final String name;
  final int accountNumber;

  /// #endregion Public properties

  /// #region Constructor

  ///
  /// Construtor Padrão
  ///
  Contact(this.id, this.name, this.accountNumber);

  /// #endregion Constructor

  @override
  String toString() {
    return 'Contact{id: $id,name: $name, accountNumber: $accountNumber}';
  }
}
