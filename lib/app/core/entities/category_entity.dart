class CategoryEntity {
  final int? id;
  final String name;
  final String status;

  CategoryEntity({
    this.id,
    required this.name,
    required this.status,
  });

  factory CategoryEntity.fromJson(Map<String, dynamic> json) {
    return CategoryEntity(
      id: json['id_categoria'],
      name: json['nome_categoria'],
      status: json['status_categoria'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_categoria': id,
      'nome_categoria': name,
      'status_categoria': status,
    };
  }
}
