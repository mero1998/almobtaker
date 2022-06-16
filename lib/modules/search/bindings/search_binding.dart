import 'package:almobtaker/modules/notifications/controllers/notifications_controller.dart';
import 'package:almobtaker/modules/search/controllers/search_controller.dart';
import 'package:get/get.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(
      () => SearchController(),
    );
  }
}
