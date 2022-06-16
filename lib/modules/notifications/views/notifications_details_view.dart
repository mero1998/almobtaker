import 'package:almobtaker/modules/forgetPassword/controllers/forget_password_controller.dart';
import 'package:almobtaker/modules/notifications/controllers/notifications_controller.dart';
import 'package:almobtaker/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../../../utils/widgets/button_app.dart';
import '../../../utils/widgets/home_card.dart';
import '../../../utils/widgets/scaffold_bg.dart';
import '../../../utils/widgets/text_app.dart';
import '../../../utils/widgets/text_filed_email.dart';
import '../../../utils/widgets/text_filed_name.dart';
import '../../../utils/widgets/text_filed_password.dart';
import 'package:get/get.dart';

import '../../mainScreen/controllers/main_screen_controller.dart';

class NotificationsDetailsView extends GetView<NotificationsController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextApp(text: "تفاصيل الاشعار", fontColor: Color(0xFf1E3354), fontSize: 22),
        centerTitle: true,
        actions: [
          Padding(
            padding:  EdgeInsetsDirectional.only(top: 15.h, end: 24.w),
            child: Stack(
              children: [
                Image.asset("assets/images/notification.png"),
                PositionedDirectional(
                  top: 2.h,
                  end: 4.w,
                  child: InkWell(
                    onTap: () => Get.toNamed(Routes.CART),

                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 15.w,
                          height: 14.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF4A9688).withOpacity(0.4),
                                offset: Offset(0, 3.0),
                                blurRadius: 8.0,
                              ),
                            ],
                          ),
                          // padding: EdgeInsets.all(5),
                        ),
                        PositionedDirectional(
                          start: 0,
                          top: 2.h,
                          end: 0,
                          child: Center(
                            child: Wrap(
                              children: [
                                SizedBox(
                                  // width: 10.w,
                                  // height: 15.h,
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 8.0.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      // height: 3.25,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
            color: Color(0xFF1E3354)
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(16),
          child: SizedBox(
            height: 700.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color:  Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.16),
                        offset: Offset(0, 3.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  padding: EdgeInsetsDirectional.all(12.h),
                  margin: EdgeInsets.only(bottom: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 48.w,
                                  height: 32.h,
                                  decoration: BoxDecoration(
                                      color: AppColor.primaryColorApp,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Image.asset("assets/images/notification_image.png")),
                              SizedBox(width: 16.w,),
                              TextApp(text: "عنوان الاشعار", fontColor: Color(0xFf1E3354), fontSize: 16),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                    style: TextStyle(color:  Color(0xFf1E3354),
                                      fontSize: 10.sp,
                                      fontFamily: "TufuliArabicDEMO",),
                                    children: [
                                      TextSpan(
                                        text: "12:00",
                                      ),
                                      TextSpan(text : "AM"),
                                    ]
                                ),
                              ),
                              // TextApp(text: "AM 12:00", fontColor: Color(0xFf1E3354), fontSize: 10),
                              SizedBox(width: 7.8.w,),
                              Padding(
                                padding:  EdgeInsets.only(top: 2.h),
                                child: Icon(Icons.access_time_outlined, size: 8.w,color: Colors.black,),
                              ),

                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 27.h,),
                      TextApp(text: "لوريم إيبسوم طريقة لكتابة النصوص في النشر والتصميم الجرافيكي تستخدم بشكل شائع لتوضيح الشكل المرئي للمستند أو الخط دون الاعتماد على محتوى ذي معنى. يمكن استخدام لوريم إيبسوم قبل نشر النسخة النهائية", fontColor: Color(0xFf1E3354), fontSize: 16, textAlign: TextAlign.start,),

                      Align(
                        alignment: Alignment.bottomLeft,
                        child: ElevatedButton(onPressed: (){},
                          child: TextApp(text: "حذف", fontSize: 14.sp, fontColor: Colors.white,
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: AppColor.textColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Spacer(),
                ButtonApp(borderColor: Colors.transparent, buttonColor: AppColor.textColor, textColor: Colors.white, presed: (){}, textApp: "الرجوع للرئيسية")
              ],
            ),
          ),
        ),
      ),
    );
  }
}





