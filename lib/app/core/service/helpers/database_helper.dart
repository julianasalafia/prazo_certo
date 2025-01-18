import 'package:sqflite/sqflite.dart';

import '../../entities/category_entity.dart';

class DatabaseHelper {
  static Database? _database;
  static const String DB_NAME = "meu_banco.db";

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = await getDatabasesPath();
    final dbPath = "$path/$DB_NAME";

    return await openDatabase(
      dbPath,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database database, int version) async {
    // Habilitar foreign keys
    await database.execute("PRAGMA foreign_keys = ON;");

    // Criar tabela categoria
    await database.execute('''
      CREATE TABLE categoria (
        id_categoria INTEGER PRIMARY KEY AUTOINCREMENT,
        nome_categoria TEXT NOT NULL,
        status_categoria TEXT DEFAULT 'Ativo'
      );
    ''');

    // Criar tabela carne
    await database.execute('''
      CREATE TABLE carne (
        id_carne INTEGER PRIMARY KEY AUTOINCREMENT,
        nome_carne TEXT NOT NULL,
        id_lote INTEGER,
        id_categoria INTEGER,
        status_carne TEXT DEFAULT 'Ativo',
        FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria)
      );
    ''');

    // Criar tabela lote
    await database.execute('''
      CREATE TABLE lote (
        id_lote INTEGER PRIMARY KEY AUTOINCREMENT,
        id_carne INTEGER,
        data_validade TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        quantidade_estoque REAL NOT NULL,
        status_lote TEXT DEFAULT 'Ativo',
        FOREIGN KEY (id_carne) REFERENCES carne (id_carne)
      );
    ''');
  }

  // Inserir uma categoria usando CategoryEntity
  Future<int> insertCategoria(CategoryEntity category) async {
    final db = await database;
    return await db.insert(
      "categoria",
      category.toJson(),
    );
  }

// Recuperar todas as categorias como uma lista de CategoryEntity
  Future<List<CategoryEntity>> getCategorias() async {
    final db = await database;
    final result = await db.query("categoria");

    return result.map((json) => CategoryEntity.fromJson(json)).toList();
  }
}
