import 'package:almobtaker/modules/on%20boadrding/controller/on_boadring_controller.dart';
import 'package:almobtaker/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/widgets/text_app.dart';
class OnBoardingWidget extends StatelessWidget {

  final String bGImage;
  final String image;
  final String title;
  final String desc;
   int currentPage;

   OnBoardingWidget({Key? key,
   required this.bGImage,
   required this.image,
   required this.title,
   required this.desc,
   required this.currentPage}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
            alignment: Alignment(0, -.5.h),
            image: AssetImage(bGImage),
            fit: BoxFit.cover),
      ),
      // alignment: Alignment.bottomCenter,
      // padding: EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          PositionedDirectional(
              top: currentPage == 2 ? 221.h : 247.h,
              start:  0,
              end:  0,
              child: Column(
                children: [
                  Align(alignment: currentPage == 2 ? Alignment.topLeft : Alignment.center,child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(image,),
                  )),
                  Container(
                    width: 307.w,
                    height: 233.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(42)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFE6E6E6),
                          offset: Offset(0 , 150),
                          blurRadius: 50,
                        )
                      ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextApp(text:title  ,fontColor: Color(0xFFFAC32A), fontSize: 24,),
                        TextApp(text:desc  ,fontColor: Color(0xFF5A5A5A), fontSize: 22,),

                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: currentPage != 2,
                            child: TextButton(onPressed: (){
                              OnBoardingController.to.pageController.jumpToPage(2);

                            }, child: TextApp(text: "تخطي", fontColor: Color(0xFF7AD58F), fontSize: 16)),
                          ),

                          Center(
                            child: Row(

                              children: [
                                Container(width: 5.w, height: 5.h,
                                  decoration: BoxDecoration(shape: BoxShape.circle, color:  currentPage == 0 ? Color(0xFF1E88E5) : Color(0xFFA9B2CF)),),
                                SizedBox(width: 7.w,),
                                Container(width: 5.w, height: 5.h,
                                  decoration: BoxDecoration(shape: BoxShape.circle, color:   currentPage == 1 ? Color(0xFF1E88E5) :Color(0xFFA9B2CF)),),
                                SizedBox(width: 7.w,),
                                Container(width: 5.w, height: 5.h,
                                  decoration: BoxDecoration(shape: BoxShape.circle, color:  currentPage == 2? Color(0xFF1E88E5) :Color(0xFFA9B2CF)),),
                              ],
                            ),
                          ),

                          TextButton(onPressed: (){
                            if(currentPage != 2){
                              OnBoardingController.to.pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                            }else{
                              Get.offNamedUntil(Routes.REGISTER, (route) => false);
                            }
                          }, child: TextApp(text: currentPage == 2 ? "ابدآ رحلتك الان" : "التالي", fontColor: Color(0xFF7AD58F), fontSize: 16)),

                        ],
                      ),
                        SizedBox(height: 21.h,),
                      ],
                    ),
                  )
                ],
              )),

        ],
      ),

    );
    // return  Stack(
    //     children: [
    //
    //       FittedBox(
    //         fit: BoxFit.none,
    //         child: Image.asset("assets/images/bg_on_boarding1.png",
    //           fit: BoxFit.cover,
    //           width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height),
    //       ),
    //       Center(child: Image.asset("assets/images/item1.png", fit: BoxFit.cover,)),
    //
    //     ],
    // );
  }
}
