import 'package:almobtaker/modules/regeister/controller/register_controller.dart';
import 'package:almobtaker/utils/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';
class BirthDatePicker extends StatelessWidget {
  const BirthDatePicker({Key? key}) : super(key: key);

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
        start: 30.w,
        end: 24.w,
        bottom: 19.h
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextApp(text: RegisterController.to.selectDateFromFormat, fontColor: AppColor.textColor,
              fontSize: 14.sp),

          InkWell(
              onTap: () => RegisterController.to.selectDate(context),
              child: Image.asset("assets/images/picker.png")),
          // IconButton(onPressed: (){}, icon: Icon(Icons.date_range))
        ],
      ),
    );
  }
}
