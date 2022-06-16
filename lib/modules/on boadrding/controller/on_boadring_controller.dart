import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{

  static OnBoardingController get to => Get.find();
  List<String> bgImages = [
    "assets/images/bg_on_boarding1.png",
    "assets/images/bg_on_boarding2.png",
    "assets/images/bg_on_boarding3.png",
  ];
  List<String> images  = [
    "assets/images/item1.png",
    "assets/images/item2.png",
    "assets/images/item3.png",

  ];
  List<String> title = [
    "كن مبتكر",
    "كن مميزاً",
    "كن منتجاً ومصمماً",
  ];
  List<String> desc = [
    "ابتكر  منتجك الخاص واطلق العنان لمخيلتك",
    "احصل على منتجات مميزة صنعت بأيدٍ أردنية",
    "شاركنا ابداعك وتصاميمك واحصل على دخل خاص بك",
  ];

 late PageController pageController;

  RxInt index = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  pageController = PageController();
  index.value = 0;
  }

}