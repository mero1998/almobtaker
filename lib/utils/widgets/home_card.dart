import 'package:almobtaker/modules/mainScreen/controllers/main_screen_controller.dart';
import 'package:almobtaker/utils/widgets/text_app.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../colors.dart';

class HomeCard extends StatefulWidget {
  int index = -1;
  String type;
   HomeCard({Key? key, required this.index , required this.type}) : super(key: key);

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {

    return GetX<MainScreenController>(
      builder: (controller){
        return Container(
            width: 102.0.w,
            height: 104.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: AppColor.primaryColorApp,
                  offset: Offset(0, 0),
                  blurRadius: 2.0,
                ),
              ],
              color: getBgColor(),
            ),
            // margin: EdgeInsetsDirectional.only(end: 19.w),
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 18, horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 38.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        color: getBgItemColor(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(12),
                        padding: EdgeInsets.all(6),
                        color: Color(0xFF979797),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),

                          child: Icon(Icons.favorite_border),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  TextApp(text: "الفئة", fontColor: Color(0xFF363431), fontSize: 8),
                ],
              ),
            )
        );
      },
    );
  }

  Color getBgColor(){
    if(widget.type == "listHome"){
      if(MainScreenController.to.selectedIndexListHome.contains(widget.index)){
        return AppColor.primaryColorApp;
      }
    }else if(widget.type == "gridHome"){
      if(MainScreenController.to.selectedIndexGridHome.contains(widget.index)){
        return AppColor.primaryColorApp;
      }
    }else{
      if(MainScreenController.to.selectedIndexGridCategory.contains(widget.index)){
        return AppColor.primaryColorApp;
      }
    }
    return Colors.white;
  }

  Color getBgItemColor(){
    if(widget.type == "listHome"){
      if(MainScreenController.to.selectedIndexListHome.contains(widget.index)){
        return Color(0XFF9EF2B2);
      }
    }else if(widget.type == "gridHome"){
      if(MainScreenController.to.selectedIndexGridHome.contains(widget.index)){
        return Color(0XFF9EF2B2);
      }
    }else{
      if(MainScreenController.to.selectedIndexGridCategory.contains(widget.index)){
        return Color(0XFF9EF2B2);
      }
    }
    return Color(0xFFF2F2F2);
  }
}
