import 'package:almobtaker/modules/forgetPassword/controllers/forget_password_controller.dart';
import 'package:almobtaker/modules/otp/controllers/otp_controller.dart';
import 'package:almobtaker/routes/app_pages.dart';
import 'package:almobtaker/utils/widgets/text_filed_pin_code.dart';
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
import 'package:get/get.dart';

class OTPView extends GetView<OTPController> {

  @override
  Widget build(BuildContext context) {
        return BGScaffold(
          child: Padding(
            padding: EdgeInsets.only(bottom: 17.h, top: 50.h),
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsetsDirectional.only( start: 40.w),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 128.w,
                          height: 78.h,
                          child: TextApp(text: "ادخل الرمز", fontColor: AppColor.textColor, fontSize: 30)),

                      Image.asset("assets/images/item7.png"),

                    ],),
                ),

                SizedBox(height: 16.h,),
                Form(
                  key: controller.forgotPasswordFormKey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFiledPin(controller: controller.numberController1,
                          validator: (String? value) {
                            if (!GetUtils.isEmail(value!)) {
                              return "يرجى ادخال بريد الكتروني صالح";
                            }
                            return null;
                          },
                        node: controller.node1,
                      onChanged: (String? value){
                        if(value!.length == 1){
                          print("We e here");
                          FocusScope.of(context).nextFocus();

                          // controller.node1.requestFocus(controller.node2);
                      }
                      },
                      ),
                      SizedBox(width: 20.w,),
                      TextFiledPin(controller: controller.numberController2,
                          validator: (String? value) {
                            if (!GetUtils.isEmail(value!)) {
                              return "يرجى ادخال بريد الكتروني صالح";
                            }
                            return null;
                          },
                        node: controller.node2,

                        onChanged: (String? value){
                          if(value!.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },),
                      SizedBox(width: 20.w,),

                      TextFiledPin(controller: controller.numberController3,
                          validator: (String? value) {
                            if (!GetUtils.isEmail(value!)) {
                              return "يرجى ادخال بريد الكتروني صالح";
                            }
                            return null;
                          },
                        node: controller.node3,

                        onChanged: (String? value){
                          if(value!.length == 1){
                            FocusScope.of(context).nextFocus();

                          }
                        },
                      ),
                      SizedBox(width: 20.w,),

                      TextFiledPin(controller: controller.numberController4,
                          validator: (String? value) {
                            if (!GetUtils.isEmail(value!)) {
                              return "يرجى ادخال بريد الكتروني صالح";
                            }
                            return null;
                          },
                        node: controller.node4,
                        onChanged: (String? value){
                          if(value!.length == 1){
                            controller.node4.unfocus();
                          }
                        },),
                    ],
                  ),
                ),
                Spacer(),
                ButtonApp(borderColor: Colors.white,
                  buttonColor: AppColor.primaryColorApp,
                  textColor: Colors.white,
                  textApp: "ارسل الرمز",
                  presed: controller.checkFormForget,
                ),
                SizedBox(height: 63.h,),

              ],
            ),
          ),
        );
  }
}
