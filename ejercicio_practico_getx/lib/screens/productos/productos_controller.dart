import 'package:ejercicio_practico_getx/screens/registrar/registrar_screen.dart';
import 'package:get/get.dart';

class ProductosController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
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

  goRegistro() {
    Get.to(
      () => const RegistrarScreen(),
      //arguments: user,
      transition: Transition.leftToRightWithFade,
      duration: const Duration(seconds: 1),
    );
  }
}
