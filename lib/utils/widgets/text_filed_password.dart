import 'package:almobtaker/modules/regeister/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../colors.dart';
class TextFiledPassword extends StatelessWidget {
  TextEditingController controller;
  final VoidCallback showPassword;
  bool isObsecurePass;
  var visibilityIcon;
  final String? Function(String? value)? validator;


  TextFiledPassword({Key? key , required this.controller,
    required this.validator,
 required this.showPassword,
   required this.visibilityIcon,
  required  this.isObsecurePass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      alignment: Alignment(0.72.w, 0.03.h),
      width: 304.0.w,
      height: 63.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(31.5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.17),
            offset: Offset(0, 3.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: TextFormField(
            obscureText: isObsecurePass,
            cursorColor: AppColor.textColor,
            style: TextStyle(
                color: AppColor.textColor,
                fontFamily: "TufuliArabicDEMO",
                fontSize: 14.sp
            ),

            decoration: InputDecoration(
              suffixIcon: IconButton(icon: Icon(visibilityIcon),
                onPressed: showPassword),
              contentPadding: EdgeInsetsDirectional.only(start: 27.w, top: 20.h, bottom: 23.h),
              fillColor: Colors.white,
              filled: true,
              focusColor: AppColor.textColor,
              hintText: "كلمة المرور",
              hintStyle: TextStyle(
                  color: AppColor.textColor,
                  fontFamily: "TufuliArabicDEMO",
                  fontSize: 14.sp
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      color: Colors.white
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      color: Colors.white
                  )
              ),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                      color: Colors.white
                  )
              ),
              errorStyle: TextStyle(
                  color: AppColor.textColor,
                  fontFamily: "TufuliArabicDEMO",
                  fontSize: 10.sp
              ),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none
              ),
            ),
        validator: validator,

      ),
    );
  }
}
