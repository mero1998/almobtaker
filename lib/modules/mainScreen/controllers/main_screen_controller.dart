import 'dart:convert';
import 'dart:io';

import 'package:almobtaker/modules/mainScreen/views/category_view.dart';
import 'package:almobtaker/modules/mainScreen/views/draw_view.dart';
import 'package:almobtaker/modules/mainScreen/views/home_view.dart';
import 'package:almobtaker/modules/mainScreen/views/mobtakren_view.dart';
import 'package:almobtaker/modules/mainScreen/views/my_account_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../routes/app_pages.dart';

class MainScreenController extends GetxController {
  //TODO: Implement PasswordResetController
static MainScreenController get to => Get.find();

RxInt index = 0.obs;
RxInt pageViewIndex = 0.obs;
PageController pageController = PageController();

List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(icon: Image.asset("assets/images/home_icon.png",fit: BoxFit.cover), label: "رئيسية"),
  BottomNavigationBarItem(icon: Image.asset("assets/images/category_icon.png", fit: BoxFit.cover,), label: "فئات"),
  BottomNavigationBarItem(icon: Image.asset("assets/images/draw_icon.png",fit: BoxFit.cover), label: "صمم هنا"),
  BottomNavigationBarItem(icon: Image.asset("assets/images/mobtakren_icon.png",fit: BoxFit.cover), label: "المبتكرين"),
  BottomNavigationBarItem(icon: Image.asset("assets/images/my_account_icon.png",fit: BoxFit.cover), label: "حسابي"),
];
List<Widget> screens = [
  HomeView(),
  CategoryView(),
  DrawView(),
  MobtakrenView(),
  MyAccountView(),
];
RxList<int> selectedIndexGridHome = <int>[].obs;
RxList<int> selectedIndexListHome = <int>[].obs;
RxList<int> selectedIndexGridCategory = <int>[].obs;
  @override
  void onInit() {
    super.onInit();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();

    // pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
  }

  selectItem({required int index,required String type}){
    selectedIndexGridCategory.clear();
    selectedIndexListHome.clear();
    selectedIndexGridHome.clear();
    if(type == "listHome"){
      selectedIndexListHome.clear();
      if(selectedIndexListHome.contains(index)){
        selectedIndexListHome.remove(index);
      }else{
        selectedIndexListHome.clear();
        selectedIndexListHome.add(index);
      }
    }else if(type == "gridHome"){
      if(selectedIndexGridHome.contains(index)){
        selectedIndexGridHome.remove(index);
      }else{
        selectedIndexGridHome.clear();
        selectedIndexGridHome.add(index);
      }

    }else{
      if(selectedIndexGridCategory.contains(index)){
        selectedIndexGridCategory.remove(index);
      }else{
        selectedIndexGridCategory.clear();
        selectedIndexGridCategory.add(index);
      }
    }
  }

  removeItem(){
    selectedIndexGridCategory.clear();
    selectedIndexListHome.clear();
    selectedIndexGridHome.clear();
  }
}
