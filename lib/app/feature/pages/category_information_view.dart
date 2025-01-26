import 'package:flutter/material.dart';

class CategoryInformationView extends StatelessWidget {
  final String category;

  const CategoryInformationView({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(category),
      ),
      body: const Center(
        child: Text(
          'Informações da Categoria',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // cadastrar novo lote
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
