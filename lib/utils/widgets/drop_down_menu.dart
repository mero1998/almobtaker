import 'package:almobtaker/modules/regeister/controller/register_controller.dart';
import 'package:almobtaker/utils/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';
class DropDownMenuApp extends StatelessWidget {
  const DropDownMenuApp({Key? key}) : super(key: key);

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
      padding: EdgeInsetsDirectional.only(
        top: 25.h,
        start: 28.w,
        end: 24.w,
        bottom: 19.h
      ),
      child:  DropdownButtonHideUnderline(
        child:DropdownButton<String>(
          hint: TextApp(text: "المدينة",
              fontColor: AppColor.textColor, fontSize: 14.sp), // Not necessary for Option 1
          value: RegisterController.to.selectedCity,
          onChanged: (String? value){
            RegisterController.to.selectCity(value!);
          },
          isExpanded: true,
          isDense: true,
          iconSize: 22.w,
          alignment: Alignment.bottomCenter,
          iconEnabledColor: Color(0xFFB7B7B7),
          items: RegisterController.to.cities.map((city) {
            return DropdownMenuItem(
              child:  TextApp(text: city,
                  fontColor: AppColor.textColor, fontSize: 14.sp),
              value: city,
            );
          }).toList(),
          // DropdownButton<String>(
          //   items:Constant.classification.map((String value) {
          //     return DropdownMenuItem<String>(
          //       value: name,
          //       child: new Text(value,style: TextStyle(
          //         color: Colors.black
          //       ),),
          //     );
          //   }).toList(),
          //   onChanged: (_) {
          //     setState(() {
          //       print(_);
          //       print("this is the selected value");
          //     });
          //   },
        ),
      ),
    );
  }
}
