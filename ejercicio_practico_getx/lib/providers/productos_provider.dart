import 'package:ejercicio_practico_getx/models/producto_model.dart';
import 'package:ejercicio_practico_getx/providers/db_provider.dart';

class ProductoProvider {
  List<ProductoModel> productos = [];
  insert({
    required ProductoModel producto,
  }) async {
    final response = await DBProvider.db.insert(producto: producto);
    producto.id = response;
    productos.add(producto);
  }

  getAllProductos() async {
    productos = await DBProvider.db.getAllProducto();
  }

  delete(int id) async {
    final response = await DBProvider.db.delete(id);
    getAllProductos();
  }
}
