import 'package:almobtaker/modules/on%20boadrding/controller/on_boadring_controller.dart';
import 'package:almobtaker/modules/regeister/controller/register_controller.dart';
import 'package:get/get.dart';


class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
          () => RegisterController(),
    );
  }
}