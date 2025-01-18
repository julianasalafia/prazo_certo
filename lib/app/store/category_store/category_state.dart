import 'package:prazo_certo/app/core/entities/category_entity.dart';

sealed class CategoryState {}

final class CategoryLoading extends CategoryState {}

class CategoryLoaded extends CategoryState {
  final List<CategoryEntity> categories;
  CategoryLoaded({required this.categories});
}

class CategoryError extends CategoryState {
  final String message;
  CategoryError({required this.message});
}
