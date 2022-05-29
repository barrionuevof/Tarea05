import 'package:ejercicio_practico_getx/screens/productos/productos_controller.dart';
import 'package:ejercicio_practico_getx/screens/registrar/registrar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductosScreen extends StatelessWidget {
  const ProductosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> getCuentas = ["001ah7297", "001ah7246", "001ah7277"];
    List<String> getCodigos = ["*37265", "*36264", "*62396"];
    List<String> getSaldos = ["20,000", "158,000", "77,000"];
    return GetBuilder<ProductosController>(
      init: ProductosController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Productos"),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: getCuentas.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        getCuentas[index],
                        style: TextStyle(color: Colors.blue[600]),
                      ),
                      subtitle: Text(getCodigos[index]),
                      trailing: SizedBox(
                        width: 180.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              getSaldos[index],
                              style: const TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            //const Icon(Icons.navigate_next),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (() {
              controller.goRegistro();
            }),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
