import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RegisterController extends GetxController{

  static RegisterController get to => Get.find();
  var visibilityIcon = Icons.visibility_outlined;
  var visibilityIconConf = Icons.visibility_outlined;

 var selectedDate = DateTime.now();
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
 String selectDateFromFormat = "تاريخ الميلاد";
bool isObsecurePass = true;
bool isObsecurePassConf = true;

final GlobalKey<FormState> regGlobalKey = GlobalKey<FormState>(debugLabel: '_RegisterFormState');

  late TextEditingController nameTextEditingController;
  late TextEditingController emailTextEditingController;
  late TextEditingController passwordTextEditingController;
  late TextEditingController confPasswordTextEditingController;
  late TextEditingController mobileTextEditingController;
List<String> cities = [
  "محافظة العاصمة",
  "محافظة اربد",
 " محافظة البلقاء",
  "محافظة الكرك",
  "محافظة معان",
  "محافظة الزرقاء",
  "محافظة المفرق",
  "محافظة الطفيلة",
  "محافظة مادبا",
 " محافظة جرش",
  "محافظة عجلون",
  "محافظة العقبة",
];

  String selectedCity = "";



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    selectedCity = cities[0];
    nameTextEditingController  = TextEditingController();
    emailTextEditingController  = TextEditingController();
    passwordTextEditingController  = TextEditingController();
    confPasswordTextEditingController  = TextEditingController();
    mobileTextEditingController  = TextEditingController();
  }



  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    nameTextEditingController.dispose();
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    confPasswordTextEditingController.dispose();
    mobileTextEditingController.dispose();
    regGlobalKey.currentState!.dispose();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameTextEditingController.dispose();
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    confPasswordTextEditingController.dispose();
    mobileTextEditingController.dispose();
    regGlobalKey.currentState!.dispose();

  }

  void showPassword(){
    if (isObsecurePass == true) {
      visibilityIcon = Icons.visibility_outlined;
      isObsecurePass = false;
      update();
    } else {
      visibilityIcon = Icons.visibility_off_outlined;
      isObsecurePass = true;
      update();
    }
  }

  showPasswordConf(){
    if (isObsecurePassConf == true) {
      visibilityIconConf = Icons.visibility_outlined;
      isObsecurePassConf = false;
      update();
    } else {
      visibilityIconConf = Icons.visibility_off_outlined;
      isObsecurePassConf = true;
      update();
    }  }


  selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (selected != null)
        selectedDate = selected;
        selectDateFromFormat = dateFormat.format(selectedDate);
        update();
  }

  selectCity(String city){
    selectedCity = city;
    update();
  }


  bool checkLoginForm() {
    final isValid = regGlobalKey.currentState!.validate();
    print(isValid);
    if (!isValid) {
      print("not valid");
      return false;
    }else{
      regGlobalKey.currentState!.save();
      print("Ready");
      return true;
    }

    // saveToShared();
  }
}