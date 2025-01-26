import 'package:flutter/material.dart';
import 'app/core/entities/category_entity.dart';
import 'app/core/service/helpers/database_helper.dart';

//ARQUIVO CRIADO PRA PODER TESTAR O BANCO DE DADOS, FAVOR NÃO EXCLUIR!! ass: NÃO SEI <3

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dbHelper = DatabaseHelper();

    // Testar inserção
  final newCategory = CategoryEntity(
    name: 'Carnes Suínas',
    status: 'Ativo',
  );


  // Teste: Insere uma categoria e lista todas
   final id = await dbHelper.insertCategoria(newCategory);
  print("Categoria inserida com ID: $id");

  // Testar recuperação
  final categories = await dbHelper.getCategorias();
  for (var category in categories) {
    print("ID: ${category.id}, Nome: ${category.name}, Status: ${category.status}");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Banco de Dados Testado. Veja os logs.'),
        ),
      ),
    );
  }
}
