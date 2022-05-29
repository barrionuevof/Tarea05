import 'dart:ffi';

import 'package:ejercicio_practico_getx/models/producto_model.dart';
import 'package:ejercicio_practico_getx/providers/db_provider.dart';
import 'package:ejercicio_practico_getx/providers/productos_provider.dart';
import 'package:get/get.dart';

class RegistrarController extends GetxController {
  final loading = false.obs;
  final productos = <ProductoModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadInitialData();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  Future<void> loadInitialData() async {
    productos.value = await Get.find<ProductoProvider>().getAllProductos();
  }

  // Future<void> getProducto() async {
  //   if (loading.isTrue) return;
  //   loading.value = true;
  //   final newProducto=await Get.find<ProductoProvider>().insert(producto: producto)
  // }

  // Future<void> deleteProducto(ProductoModel toDelete) async {
  //   productos.remove(toDelete);
  //   Get.find<ProductoProvider>().delete(to);
  // }
}
