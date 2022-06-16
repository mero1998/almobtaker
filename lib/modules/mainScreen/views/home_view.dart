import 'package:almobtaker/modules/cart/views/cart_view.dart';
import 'package:almobtaker/modules/mainScreen/controllers/main_screen_controller.dart';
import 'package:almobtaker/utils/colors.dart';
import 'package:almobtaker/utils/widgets/home_card.dart';
import 'package:almobtaker/utils/widgets/text_app.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loop_page_view/loop_page_view.dart';

import '../../../routes/app_pages.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


@override
  void initState() {
    // TODO: implement initState
  // WidgetsBinding.instance!.addPostFrameCallback((_) {
  //   RenderBox stackRB =
  //   _itemsView.currentContext!.findRenderObject() as RenderBox;
  //
  // });
  super.initState();
  }


  @override
  Widget build(BuildContext context) {

  bool clickList = false;
 bool clickGrid = false;
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        if(MainScreenController.to.pageController.hasClients){
          Future.delayed(Duration(seconds: 5),(){
            MainScreenController.to.pageController.jumpToPage(1);
          });
        }
    });
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 204.h,
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

                                SizedBox(width: 12.w,),
                                InkWell(
                                  onTap: () => Get.toNamed(Routes.FAVOURATE),
                                  child: Stack(
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
                                ),
                              ],
                            ),
                            TextApp(text: "انا المبتكر", fontColor: Colors.white, fontSize: 24),

                            InkWell(
                              onTap: () => Get.toNamed(Routes.NOTIFICATIONS),
                              child: Stack(
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

                            onTap: () => Get.toNamed(Routes.SEARCH),
                            readOnly: true,
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
          //  // key: _itemsView,
          //                 // top: 228.h,
          //                 // start: 37.w,
          //                 // end: 37.w,
          GetX<MainScreenController>(
            builder: (mainController){
              print(mainController.pageViewIndex);
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 37.w, end: 37.w, top: 24.h),
                      child: TextApp(text: "اخر العروض", fontColor: Color(0xFF1E3354), fontSize: 18),
                    ),
                    SizedBox(height: 16.h,),
                    InkWell(
                     onTap : () => Get.toNamed(Routes.OFFERS),
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(start: 37.w, end: 37.w),
                        child: Container(
                          height: 191.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.primaryColorApp,
                                offset: Offset(0, 0),
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child: PageView(
                            controller: MainScreenController.to.pageController,
                            onPageChanged: (index){
                              mainController.pageViewIndex.value = index;
                              if(index == 0){
                                  WidgetsBinding.instance!.addPostFrameCallback((_) {
    if(MainScreenController.to.pageController.hasClients) {
      Future.delayed(Duration(seconds: 5),(){
        MainScreenController.to.pageController.nextPage(duration: Duration(seconds: 5), curve: Curves.easeIn);
      });
    }

                                });
                              }else if(index == 1){
                                  WidgetsBinding.instance!.addPostFrameCallback((_) {
    if(MainScreenController.to.pageController.hasClients) {
      Future.delayed(Duration(seconds: 5),(){
        MainScreenController.to.pageController.nextPage(duration: Duration(seconds: 5), curve: Curves.easeIn);

      });
    }

                                });
                              }else if(index == 2){
                                  WidgetsBinding.instance!.addPostFrameCallback((_) {
                                    if(MainScreenController.to.pageController.hasClients){
                                      Future.delayed(Duration(seconds: 5),(){
                                        MainScreenController.to.pageController.jumpToPage(0);
                                      });
                                    }
                                });
                              }

                            },
                            children: [
                              Image.asset("assets/images/item3.png"),
                              Image.asset("assets/images/item4.png"),
                              Image.asset("assets/images/item5.png"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    SizedBox(
                      height: 8.h,
                      child: Center(
                        child: ListView.builder(
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index){
                              return Center(child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 8.w,
                                    height: 8.h,
                                    alignment: Alignment.center,
                                    // padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: mainController.pageViewIndex.value == index ? AppColor.primaryColorApp : Color(0xFF9EF2B2),
                                      shape: BoxShape.circle,

                                    ),
                                  ),
                                  SizedBox(width: 5.w,),
                                ],
                              ));
                            }),
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 37.w, end: 37.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextApp(text: "تسوق حسب الفئات", fontColor: Color(0xFF1E3354), fontSize: 18),
                          TextApp(text: "المزيد", fontColor: AppColor.textColor, fontSize: 14),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 152.h,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          itemCount: 10,
                          itemBuilder: (context, index){
                            return InkWell(onTap: (){
                              MainScreenController.to.selectItem(index: index, type: "listHome");

                            },child: Container(margin: EdgeInsetsDirectional.only(end: 19.w, top: 30.h, bottom: 16.h),child: HomeCard(index: index,type: "listHome",)));
                          }),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 37.w, end: 37.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextApp(text: "تسوق حسب الفئات", fontColor: Color(0xFF1E3354), fontSize: 18),
                          TextApp(text: "المزيد", fontColor: AppColor.textColor, fontSize: 14),
                        ],
                      ),
                    ),

                    GridView.builder(
                        padding: EdgeInsetsDirectional.only(start: 15.w,end: 15.w, top: 30.h, bottom: 70.h),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                        crossAxisSpacing: 19.w,
                        mainAxisSpacing: 16.h,
                        childAspectRatio: 20/20,
                        ),

                        // padding: EdgeInsets.all(20),
                        itemBuilder: (context, index){
                          return InkWell(onTap: () {
                            MainScreenController.to.selectItem(index: index, type: "gridHome");
                          },child: HomeCard(index: index , type: "gridHome",));
                        }),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
