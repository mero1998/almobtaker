import 'package:almobtaker/modules/cart/controllers/cart_controller.dart';
import 'package:almobtaker/modules/finish%20design/controllers/finish_design_controller.dart';
import 'package:almobtaker/modules/printing%20techniques/controllers/printing_techniques_controller.dart';
import 'package:get/get.dart';

class PrintingTechniquesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrintingTechniquesController>(
      () => PrintingTechniquesController(),
    );
  }
}
