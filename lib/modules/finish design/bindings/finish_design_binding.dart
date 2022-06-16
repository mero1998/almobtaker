import 'package:almobtaker/modules/cart/controllers/cart_controller.dart';
import 'package:almobtaker/modules/finish%20design/controllers/finish_design_controller.dart';
import 'package:get/get.dart';

class FinishDesignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FinishDesignController>(
      () => FinishDesignController(),
    );
  }
}
