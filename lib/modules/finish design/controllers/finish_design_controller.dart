import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../routes/app_pages.dart';

class FinishDesignController extends GetxController {
  //TODO: Implement PasswordResetController
static FinishDesignController get to => Get.find();
ImagePicker imagePicker = ImagePicker();
XFile? imgFile;


List<String> option = [
  "اختر القالب المناسب قبل الطباعة",
  "التعديل على التصميم قبل الطباعة"
];

List<String> templates = [
  "القالب الاول",
  "القالب الثاني",
  "القالب الثالث",
  "القالب الرابع",
  "القالب الخامس",
  "القالب السادس",
  "القالب السابع",
  "القالب الثامن",
  "القالب التاسع",
  "القالب العاشر",
];
List<String> printTypes = [
  "النوع الاول",
  "النوع الثاني",
  "النوع الثالث",
  "النوع الرابع",
  "النوع الخامس",
  "النوع السادس",
  "النوع السابع",
  "النوع الثامن",
  "النوع التاسع",
  "النوع العاشر",
];
RxString selectedOption = ''.obs;
RxString selectedTemplate = ''.obs;
RxString selectedPrintType = ''.obs;
RxBool isDisabled = true.obs;
  @override
  void onInit() {
    super.onInit();

    // selectedOption.value = option.first;
    // selectedTemplate.value = templates.first;
    // selectedPrintType.value = printTypes.first;
    }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
  }

  pickImage() async{
    print("we are here");
     var image = await imagePicker.pickImage(source: ImageSource.gallery);
    imgFile = image;
  }





}
