import 'package:almobtaker/modules/forgetPassword/controllers/forget_password_controller.dart';
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
import 'package:get/get.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {

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
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/item5.png"),
                      ),
                      SizedBox(
                          width: 128.w,
                          height: 78.h,
                          child: TextApp(text: "ادخل البريد الالكتروني", fontColor: AppColor.textColor, fontSize: 30)),

                    ],),
                ),

                SizedBox(height: 16.h,),
                Form(
                  key: controller.forgotPasswordFormKey,
                  child: Column(
                    children: [
                      TextFiledEmail(controller: controller.emailController,
                          validator: (String? value) {
                            if (!GetUtils.isEmail(value!)) {
                              return "يرجى ادخال بريد الكتروني صالح";
                            }
                            return null;
                          } ),
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
