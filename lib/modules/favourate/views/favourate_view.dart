import 'package:almobtaker/modules/forgetPassword/controllers/forget_password_controller.dart';
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

class FavourateView extends GetView<ForgetPasswordController> {

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 154.h,
                  child: Stack(
                    children: [
                      Container(
                        height: 204.h,
                        decoration:  BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment(0, -.5.h),
                              image: AssetImage("assets/images/bg_home.png"),
                              fit: BoxFit.cover),
                        ),
                        // alignment: Alignment.bottomCenter,
                        // padding: EdgeInsets.only(bottom: 20),
                      ),
                      // PositionedDirectional(
                      //     top: 0,
                      //     start: 0,
                      //     end: 0,
                      //     child: Container(height: 204,)),

                      PositionedDirectional(
                        top: 33.h,
                        start: 24.w,
                        end: 28.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset("assets/images/cart_icon.png", fit: BoxFit.cover,),
                                    PositionedDirectional(
                                      top: 2.h,
                                      end: 4.w,
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
                                    )
                                  ],
                                ),

                                SizedBox(width: 12.w,),
                                Stack(
                                  children: [
                                    Image.asset("assets/images/heart_icon.png", fit: BoxFit.cover,),
                                    PositionedDirectional(
                                      start: 1.w,
                                      child: Stack(
                                        children: <Widget>[
                                          Container(
                                            width: 6.w,
                                            height: 6.h,
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
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            TextApp(text: "انا المبتكر", fontColor: Colors.white, fontSize: 24),

                            Stack(
                              children: [
                                Image.asset("assets/images/notification_icon.png", fit: BoxFit.cover,),
                                PositionedDirectional(
                                  end: 4.w,
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
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      PositionedDirectional(
                        top: 90.h,
                        start: 24.w,
                        end: 24.w,
                        child: Container(
                          alignment: Alignment(0.77, 0.0),
                          height: 44.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.04),
                                offset: Offset(0, 20.0),
                                blurRadius: 80.0,
                              ),
                            ],
                          ),
                          child: TextField(

                            decoration: InputDecoration(

                              hintText: "ابحث عن العناصر المفضلة",
                              hintStyle:  TextStyle(
                                fontFamily: 'Tufuli Arabic DEMO',
                                fontSize: 14.0.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.14,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsetsDirectional.only(end: 40),
                                child: Icon(Icons.search),
                              ),
                              prefixIconConstraints: BoxConstraints(
                                maxHeight: 24,
                                maxWidth: 24,
                              ),
                              contentPadding: EdgeInsetsDirectional.only(start: 30.w ,top: 14.h, bottom: 14.h),
                            ),
                          ),
                        ),
                      ),

                      // Container(
                      //   height: _stackHeight != null ? _stackHeight !+ 90 : 0,
                      // )


                    ],
                  ),
                ),

                GridView.builder(
                    padding: EdgeInsetsDirectional.only(start: 15.w,end: 15.w, top: 30.h, bottom: 10.h),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 29.w,
                      mainAxisSpacing: 29.h,
                      childAspectRatio: 22/33
                    ),

                    // padding: EdgeInsets.all(20),
                    itemBuilder: (context, index){
                      return Container(
                        width: 157.w,
                        height: 224.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              offset: Offset(0, 2.0),
                              blurRadius: 48.0,
                            ),
                          ],
                        ),
                        padding: EdgeInsetsDirectional.only(start: 12.h, end: 12.h, bottom: 14.h),
                        child: Column(
                          children: [
                            Align(alignment: Alignment.topRight ,child: IconButton(onPressed: (){}, padding: EdgeInsets.zero,icon: Icon(Icons.favorite, color: Colors.red,))),
                      Container(
                      width: 133.w,
                      height: 111.h,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color:  Color(0xFFF4EEE7),
                      ),
                      ),
                            SizedBox(height: 7.h,),
                            TextApp(text: "اسم الرسمة", fontColor: Color(0XFF1E3354), fontSize: 16),
                            SizedBox(height: 2.h,),
                            TextApp(text: "اسم المبتكر", fontColor: Color(0XFFF583A4), fontSize: 14),
                            Align(alignment: Alignment.bottomLeft ,child: TextApp(text: "١ د.آ", fontColor: AppColor.primaryColorApp, fontSize: 18)),
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        );
  }
}

