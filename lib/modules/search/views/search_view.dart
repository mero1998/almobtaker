import 'package:almobtaker/modules/forgetPassword/controllers/forget_password_controller.dart';
import 'package:almobtaker/modules/notifications/controllers/notifications_controller.dart';
import 'package:almobtaker/modules/search/controllers/search_controller.dart';
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

class SearchView extends GetView<SearchController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextApp(text: "البحث", fontColor: AppColor.textColor, fontSize: 22),
        centerTitle: true,

        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
            color: Color(0xFF1E3354)
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14.h,),
              Container(
                height: 44.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: TextField(

                  onTap: () => Get.toNamed(Routes.SEARCH),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: AppColor.primaryColorApp
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                          color: AppColor.primaryColorApp
                      ),
                    ),
                    hintText: "ابحث عن العناصر المفضلة",
                    hintStyle:  TextStyle(
                      fontFamily: 'Tufuli Arabic DEMO',
                      fontSize: 14.0.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      height: 1.14,
                    ),
                    suffixIcon: Container(
                      width:80.w ,
                      height: 36.h,
                      // padding: const EdgeInsetsDirectional.only(end: 40),
                      decoration: BoxDecoration(
                        color: AppColor.primaryColorApp,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search, color: Colors.white,),
                          SizedBox(width: 6.w,),
                          TextApp(text: "بحث", fontColor: Colors.white, fontSize: 16),

                        ],
                      ),
                    ),

                    // suffixIconConstraints: BoxConstraints(
                    //   maxHeight: 24,
                    //   maxWidth: 24,
                    // ),
                    contentPadding: EdgeInsetsDirectional.only(start: 76.w ,top: 14.h, bottom: 14.h, end: 15),
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index){
                    return Image.asset("assets/images/search_icon.png");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}





