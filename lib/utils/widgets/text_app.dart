import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TextApp extends StatelessWidget {

  final String text;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
 final TextAlign textAlign;
  final TextDecoration textDecoration;
  const TextApp({Key? key,
  required  this.text,
   required this.fontColor,
   required this.fontSize,
    this.textAlign = TextAlign.center,
    this.textDecoration = TextDecoration.none,
    this.fontWeight = FontWeight.normal}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Text(text,

      style: TextStyle(color: fontColor,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          decoration:
          textDecoration,
          fontFamily: "TufuliArabicDEMO"), textAlign: textAlign,);
  }
}
