class BatchEntity {
  final String id;
  final DateTime expirationDate;
  final double quantity;
  bool isActive;

  BatchEntity({
    required this.id,
    required this.expirationDate,
    required this.quantity,
    this.isActive = false,
  });
}
