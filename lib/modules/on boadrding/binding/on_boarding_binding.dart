import 'package:almobtaker/modules/on%20boadrding/controller/on_boadring_controller.dart';
import 'package:get/get.dart';


class OnBoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(
          () => OnBoardingController(),
    );
  }
}