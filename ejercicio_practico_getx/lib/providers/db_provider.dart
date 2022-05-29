import 'dart:io';
import 'package:ejercicio_practico_getx/models/producto_model.dart';
import 'package:path/path.dart';
//import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  //Instanciar of sigleton
  static final DBProvider db = DBProvider._();
  DBProvider._();

  //Retorna la instancia de BD
  late Database _database; //late quiere decir que se va a llenar mas adelante

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await createDB();

    return _database;
  }

  Future<Database> createDB() async {
    //1. Determinar la ruta de donde instalado nuestra app
    //Directory documentDitectory = await getApplicationDocumentsDirectory();
    final dbPath = await getDatabasesPath();
    //2. Determinar ruta + nombre DB
    final path = join(dbPath, "DBSQLITE.db");

    //3. Creamos DB y Tabla
    print(path);
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
        CREATE TABLE Producto (
          id INTEGER PRIMARY KEY, 
          nombre TEXT, 
          stock INTEGER
        )

      ''');
      },
    );
  }

  Future<int> insert({
    required ProductoModel producto,
  }) async {
    final db = await database;
    final response = db.insert("Producto", producto.toJson());
    return response;
  }

  Future<List<ProductoModel>> getAllProducto() async {
    final db = await database;
    final response = await db.query("Producto");

    return response.isNotEmpty
        ? response.map((json) => ProductoModel.fromJson(json)).toList()
        : [];
  }

  Future<int> delete(int id) async {
    final db = await database;
    return await db.delete("Producto", where: 'id = ?', whereArgs: [id]);
  }
}
