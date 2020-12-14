///
/// A classe que representa o modelo de transferência
///
class Transferencia {
  ///
  /// O valor da transferência
  ///
  final double valor;

  ///
  /// O número da conta à transferir o valor
  ///
  final int numeroConta;

  ///
  /// Construtor Padrão
  ///
  Transferencia(
    this.valor,
    this.numeroConta,
  );

  ///
  /// ToString
  ///
  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroConta: $numeroConta}';
  }
}
