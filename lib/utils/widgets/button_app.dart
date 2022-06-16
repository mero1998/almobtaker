import 'package:almobtaker/utils/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class ButtonApp extends StatelessWidget {

  String textApp;
  Color buttonColor;
  Color borderColor;
  Color textColor;
  double height;
  final VoidCallback? presed;


  ButtonApp({Key? key,required this.borderColor
     ,required this.buttonColor,
     required this.textColor,
    required this.presed,
      this.height = 62,
     required this.textApp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: presed,
      child: TextApp(text: textApp,
          fontColor: textColor,
          fontSize: 16),

      style: ElevatedButton.styleFrom(
          primary: buttonColor,
          minimumSize: Size(double.infinity, height.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.w),
              side: BorderSide(
                color: borderColor,
              )
          )
      ),);
  }
}
