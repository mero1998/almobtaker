import 'package:almobtaker/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../../../utils/widgets/button_app.dart';
import '../../../utils/widgets/scaffold_bg.dart';
import '../../../utils/widgets/text_app.dart';
import '../../../utils/widgets/text_filed_email.dart';
import '../../../utils/widgets/text_filed_name.dart';
import '../../../utils/widgets/text_filed_password.dart';
import '../controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: controller,
      builder: (loginController){
        return BGScaffold(
          child: ListView(
            padding: EdgeInsets.only(bottom: 17.h, top: 50.h),
            children: [
              Padding(
                padding:  EdgeInsetsDirectional.only(end: 68.w),
                child: Align(alignment: Alignment.topLeft ,child: TextApp(text: "انا المبتكر", fontColor: AppColor.textColor, fontSize: 30)),
              ),

              Padding(
                padding:  EdgeInsetsDirectional.only( start: 40.w),
                child: Row(
                  children: [
                    TextApp(text: "تسجيل دخول", fontColor: AppColor.textColor, fontSize: 30),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset("assets/images/item4.png"),
                    ),
                  ],),
              ),

              Form(
                key: loginController.loginFormKey,
                child: Column(
                  children: [
                    TextFiledEmail(controller: loginController.emailController,
                        validator: (String? value) {
                          if (!GetUtils.isEmail(value!)) {
                            return "يرجى ادخال بريد الكتروني صالح";
                          }
                          return null;
                        } ),
                    TextFiledPassword(
                      isObsecurePass: loginController.isPasswordHidden,
                      controller: loginController.passwordController,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "يرجى ادخال كلمة المرور";
                        }
                        // return ''; this is causing you the error you must return null
                        return null; // this is correct
                      },
                    visibilityIcon: loginController.visibilityIcon,
                     showPassword: loginController.showPassword,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 31.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (bool? value){}),
                        TextApp(text: "تذكرني", fontColor: Color(0xFFB7B7B7) , fontSize: 12,)
                      ],
                    ),
                    InkWell( onTap: () => Get.toNamed(Routes.FORGET_PASSWORD),child: TextApp(text: "نسيت كلمة المرور؟", fontColor: AppColor.textColor , fontSize: 12,))

                  ],
                ),
              ),
              ButtonApp(borderColor: Colors.white,
                buttonColor: AppColor.primaryColorApp,
                textColor: Colors.white,
                textApp: "تسجيل دخول",
                presed: loginController.checkLoginForm,
              ),
              SizedBox(height: 63.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextApp(text: "ليس لديك حساب؟", fontColor: Color(0xFFB7B7B7), fontSize: 16),
                  InkWell(onTap: () => Get.toNamed(Routes.REGISTER),child: TextApp(text: "سجل الان", fontColor: Color(0xFF1E88E5), fontSize: 16)),
                ],
              ),
              SizedBox(height: 30.h,),
              Image.asset("assets/images/item8.png"),
            ],
          ),
        );

      },
    );
  }
}
