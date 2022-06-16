import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  static LoginController get to => Get.find();
  var isPasswordHidden = true;
  var visibilityIcon = Icons.visibility_outlined;
 final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>(debugLabel: '_LoginFormState');
  late TextEditingController emailController, passwordController;
  RxString errorMessage = "".obs;
  String password = "";

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    loginFormKey.currentState!.dispose();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    loginFormKey.currentState!.dispose();

  }


  String? validateAllField(String value) {
    if (value.length == 0) {
      return "This filed should't blank";
    }
    return null;
  }

  void showPassword() {
    if (isPasswordHidden == true) {
      visibilityIcon = Icons.visibility_outlined;
      isPasswordHidden = false;
      update();
    } else {
      visibilityIcon = Icons.visibility_off_outlined;
      isPasswordHidden = true;
      update();
    }
  }

  bool checkLoginForm() {
    final isValid = loginFormKey.currentState!.validate();
   print(isValid);
    if (!isValid) {
      print("not valid");
      return false;
    }else{
      loginFormKey.currentState!.save();
      // doLogin();
      return true;
    }

    // saveToShared();
  }

  // Future<bool>  doLogin() async{
  //   var url = Uri.parse(ApiSettings.LOGIN_USER);
  //   var response = await http.post(url, body: {
  //     "email":  emailController.text,
  //     "password" :  passwordController.text,
  //   },
  //   );
  //   print(response.statusCode);
  //   if(response.statusCode == 200){
  //     var jsonResponse  = response.body;
  //
  //     Get.snackbar("Success", "Login Success", backgroundColor: Colors.green);
  //     Get.offNamedUntil(Routes.HOME, (route) => false);
  //     print(jsonResponse);
  //     UserPreferences().saveToken(jsonResponse);
  //     return true;
  //   }else{
  //     Get.snackbar("Filed", "Login Filed", backgroundColor: Colors.red);
  //     return false;
  //   }
  // }


  // Future logout() async{
  //
  //   print("We are here");
  //   var url  = Uri.parse(ApiSettings.LOGOUT_USER);
  //   var response = await http.get(url , headers: {
  //     HttpHeaders.authorizationHeader : UserPreferences().getToken(),
  //   });
  //   print(response.statusCode);
  //   if(response.statusCode == 200){
  //     UserPreferences().logout();
  //     Get.offNamedUntil(Routes.LOGIN, (route) => false);
  //     return true;
  //   }
  //   return false;
  //
  // }
}
