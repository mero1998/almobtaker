import 'package:get/get.dart';

import '../controllers/favourate_controller.dart';

class FavourateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavourateController>(
      () => FavourateController(),
    );
  }
}
