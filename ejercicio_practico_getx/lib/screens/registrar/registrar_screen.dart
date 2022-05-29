import 'package:ejercicio_practico_getx/screens/registrar/registrar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrarScreen extends StatelessWidget {
  const RegistrarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrarController>(
      init: RegistrarController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Registrar nuevo producto"),
          ),
          body: Column(
            children: const [
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: "Producto",
                  hintText: "Ingrese el producto",
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Stock",
                  hintText: "Ingrese el stock",
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 60.0,
            margin: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: const Text(
              "Guardar",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        );
      },
    );
  }
}
