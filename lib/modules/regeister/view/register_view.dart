
import 'dart:async';

import 'package:almobtaker/modules/login/views/login_view.dart';
import 'package:almobtaker/modules/mainScreen/views/main_screen_view.dart';
import 'package:almobtaker/modules/on%20boadrding/controller/on_boadring_controller.dart';
import 'package:almobtaker/modules/on%20boadrding/widget/on_boadrding_widget.dart';
import 'package:almobtaker/modules/regeister/controller/register_controller.dart';
import 'package:almobtaker/routes/app_pages.dart';
import 'package:almobtaker/utils/colors.dart';
import 'package:almobtaker/utils/widgets/birth_day_picker.dart';
import 'package:almobtaker/utils/widgets/button_app.dart';
import 'package:almobtaker/utils/widgets/drop_down_menu.dart';
import 'package:almobtaker/utils/widgets/scaffold_bg.dart';
import 'package:almobtaker/utils/widgets/text_app.dart';
import 'package:almobtaker/utils/widgets/text_filed_app.dart';
import 'package:almobtaker/utils/widgets/text_filed_email.dart';
import 'package:almobtaker/utils/widgets/text_filed_mobile.dart';
import 'package:almobtaker/utils/widgets/text_filed_name.dart';
import 'package:almobtaker/utils/widgets/text_filed_password.dart';
import 'package:almobtaker/utils/widgets/text_filed_password_conf.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterView extends GetView<RegisterController>{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return GetBuilder<RegisterController>(
      builder: (regController){
        return BGScaffold(
          child: ListView(
            padding: EdgeInsets.only(bottom: 17.h, top: 50.h),
            children: [
              Padding(
                padding:  EdgeInsetsDirectional.only( start: 40.w),
                child: Row(
                  children: [
                    SizedBox(
                        width: 146.w,
                        // height: 78.h,
                        child: TextApp(text: "قم بالتسجيل الان", fontColor: AppColor.textColor, fontSize: 30)),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset("assets/images/item6.png"),
                    ),
                  ],),
              ),

              Form(
                key: regController.regGlobalKey,
                  child: Column(
                    children: [
                      TextFiledName(controller: regController.nameTextEditingController,
                          validator: (String? value) {
              if (value!.isEmpty) {
              return "يرجى ادخال الاسم";
              }
              // return ''; this is causing you the error you must return null
              return null; // this is correct
              }, ),
                      TextFiledEmail(controller: regController.emailTextEditingController,
                        validator: (String? value) {
                          if (!GetUtils.isEmail(value!)) {
                            return "يرجى ادخال بريد الكتروني صالح";
                          }
                          return null;
                        } ),
                      TextFiledPassword(
                        isObsecurePass: regController.isObsecurePass,
                        controller: regController.passwordTextEditingController,
                        validator: (String? value) {
                        if (value!.isEmpty) {
                          return "يرجى ادخال كلمة المرور";
                        }
                        // return ''; this is causing you the error you must return null
                        return null; // this is correct
                      },
                      visibilityIcon: regController.visibilityIcon,
                        showPassword: regController.showPassword,
                      ),
                      TextFiledPasswordConf(controller: regController.confPasswordTextEditingController,       validator: (String? value) {
                        if (value!.isEmpty) {
                          return "يرجى تآكيد كلمة المرور";
                        }else if(value != regController.passwordTextEditingController.text){
                          return "كلمة المرور غير متطابقة";
                        }
                        // return ''; this is causing you the error you must return null
                        return null; // this is correct
                      },),
                      TextFiledMobile(controller: regController.mobileTextEditingController,       validator: (String? value) {
                        if (value!.isEmpty) {
                          return "يرجى ادخال رقم  الجوال";
                        }
                        // return ''; this is causing you the error you must return null
                        return null; // this is correct
                      },),
                      BirthDatePicker(),
                      DropDownMenuApp(),
                    ],
                  ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 31.w),
                child: Row(
                  children: [
                    Checkbox(value: true, onChanged: (bool? value){}),
                    TextApp(text: "أوافق على شروط الاستخدام وسياسة الخصوصية", fontColor: Color(0xFFB7B7B7) , fontSize: 12,)

                  ],
                ),
              ),
              ButtonApp(borderColor: Colors.white,
                buttonColor: AppColor.primaryColorApp,
                textColor: Colors.white,
                textApp: "تسجيل",
                // presed: regController.checkLoginForm,
                presed: () => Get.toNamed(Routes.MAIN_SCREEN),
              ),
              SizedBox(height: 10.h,),
              ButtonApp(buttonColor: Colors.white,
                borderColor: AppColor.primaryColorApp,
                textColor: AppColor.primaryColorApp,
                textApp: "هل لديك حساب؟ سجل دخول الان",
                
                presed: () {
                  Get.offNamedUntil(Routes.LOGIN, (route) => true);

                  // Timer(Duration(microseconds: 300), ()=>Get.delete<RegisterController>());
                }
              ),
            ],
          ),
        );
      },
    );
  }

}