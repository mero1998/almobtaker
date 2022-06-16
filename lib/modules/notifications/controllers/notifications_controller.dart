import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class NotificationsController extends GetxController {
  //TODO: Implement PasswordResetController
static NotificationsController get to => Get.find();
RxList<int> selectedIndexListNotification = <int>[].obs;

  @override
  void onInit() {
    super.onInit();
    print("We are here::");

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
  }


selectItem({required int index}){
  selectedIndexListNotification.clear();


    if(selectedIndexListNotification.contains(index)){
      selectedIndexListNotification.remove(index);
    }else{
      selectedIndexListNotification.clear();
      selectedIndexListNotification.add(index);
      Future.delayed(Duration(milliseconds: 200), (){
        Get.toNamed(Routes.NOTIFICATIONS_DETAILS);
        selectedIndexListNotification.clear();

      });

    }
}

removeItem(){
  selectedIndexListNotification.clear();
}




}
