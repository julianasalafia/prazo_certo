import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import '../../core/service/helpers/database_helper.dart';


class DatabaseState extends ValueNotifier<Database?> {
  DatabaseState() : super(null);

  Future<void> initializeDatabase() async {
    try {
      // Instancia o DatabaseHelper e inicializa o banco
      DatabaseHelper databaseHelper = DatabaseHelper();
      Database db = await databaseHelper.database;
      value = db; // Atualiza o estado do banco de dados
    } catch (e) {
      print("Erro ao inicializar o banco de dados: $e");
      value = null; // Define como null em caso de erro
    }
  }

  void closeDatabase() async {
    if (value != null) {
      await value!.close();
      value = null;
    }
  }
}
