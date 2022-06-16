import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class OTPController extends GetxController {
  //TODO: Implement PasswordResetController
static OTPController get to => Get.find();
   late TextEditingController numberController1, numberController2,numberController3,numberController4;

   late FocusNode node1, node2, node3, node4;
   GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();
  final count = 0.obs;
  RxString message = ''.obs;
  @override
  void onInit() {
    super.onInit();
    message.value = "";
    numberController1 = TextEditingController();
    numberController2 = TextEditingController();
    numberController3 = TextEditingController();
    numberController4 = TextEditingController();

    node1 = FocusNode();
    node2 = FocusNode();
    node3 = FocusNode();
    node4 = FocusNode();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    numberController1.dispose();
    numberController2.dispose();
    numberController3.dispose();
    numberController4.dispose();
    node1.dispose();
    node2.dispose();
    node3.dispose();
    node4.dispose();
  }
  void increment() => count.value++;

  void checkFormForget() {
    final isValid = forgotPasswordFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    forgotPasswordFormKey.currentState!.save();
    // Get.toNamed()
    // sendOtp();
  }
  bool checkFormReset() {
    final isValid = resetPasswordFormKey.currentState!.validate();
    if (!isValid) {
      return isValid;
    }
    resetPasswordFormKey.currentState!.save();
    return isValid;
  }
  //
  // Future<bool> sendEmail() async {
  //
  //   var url = Uri.parse(ApiSettings.SENDEMAIL);
  //   var response = await http.post(url, body: {
  //     "email" : emailController.text,
  //   });
  //   print(response.statusCode);
  //   var error  = jsonDecode(response.body)['Error'];
  //
  //   var jsonResponse  = jsonDecode(response.body)['Message'];
  //
  //   print(error);
  //   if (response.statusCode == 200) {
  //     print(response.statusCode);
  //     message.value = jsonResponse;
  //
  //     Get.snackbar("Success", jsonResponse,backgroundColor: Colors.green);
  //   return true;
  //   }else{
  //     Get.snackbar("Filed", error, backgroundColor: Colors.red);
  //   return false;
  //   }
  //   return false;
  // }

  // void resetPassword() async {
  //
  //   var url = Uri.parse(ApiSettings.RESETPASSWORD);
  //
  //   var response = await http.post(url, body: {
  //     "code" : otpController.text,
  //     "password" : passwordController.text
  //   });
  //   print(response.statusCode);
  //   var jsonResponse  = jsonDecode(response.body)['message'];
  //
  //   if (jsonDecode(response.body)["status"] == "success") {
  //
  //     print(response.statusCode);
  //     Get.snackbar("Success", jsonResponse,backgroundColor: Colors.green);
  //
  //     Get.offNamedUntil(Routes.LOGIN, (route) => false);
  //     // Get.offNamedUntil(Routes.LOGIN);
  //   }else{
  //
  //     Get.snackbar("Filed", jsonResponse, backgroundColor: Colors.red);
  //
  //   }
  //
  //   return null;
  // }

}
