import 'package:almobtaker/modules/finish%20design/controllers/finish_design_controller.dart';
import 'package:almobtaker/modules/forgetPassword/controllers/forget_password_controller.dart';
import 'package:almobtaker/modules/printing%20techniques/controllers/printing_techniques_controller.dart';
import 'package:almobtaker/routes/app_pages.dart';
import 'package:almobtaker/utils/widgets/button_app.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../../../utils/widgets/text_app.dart';

 class PrintingTechniquesView extends GetView<PrintingTechniquesController>{


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: TextApp(text: "تقنيات الطباعة", fontColor: Color(0xFf1E3354), fontSize: 22),
            centerTitle: true,

            automaticallyImplyLeading: true,
            iconTheme: IconThemeData(
                color: Color(0xFF1E3354)
            ),
            bottom: TabBar(
            indicatorColor: AppColor.primaryColorApp,
            labelColor: AppColor.primaryColorApp,
            unselectedLabelColor: AppColor.textColor,
              tabs: [
                // TextApp(text: "طباعة حرارية", fontColor: AppColor.textColor, fontSize: 16),
                // TextApp(text: "طباعة ثلاثية الأبعاد", fontColor: AppColor.textColor, fontSize: 16),
                // TextApp(text: "قص وحفر الليزر", fontColor: AppColor.textColor, fontSize: 16),
                Text("طباعة حرارية ", style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: "TufuliArabicDEMO",
                ),),
                Text("طباعة ثلاثية الأبعاد",style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: "TufuliArabicDEMO",
                ),
                  textAlign: TextAlign.center,
                ),
                Text("حفر وقص الليزر",style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: "TufuliArabicDEMO",
                ),),
              ],
            ),
          ),
          body: TabBarView(
    physics: BouncingScrollPhysics(),
    dragStartBehavior: DragStartBehavior.down,
    children: [
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                  itemCount: controller.list.length,
                  shrinkWrap: true,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                  return InkWell(
                    onTap: () {
                      controller.index.value = index;
                    },
                    child: Container(
                      width: 80.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                       border: Border.all(
                         color: Color(0xFFF2F2F2),
                         width: 1
                       )
                      ),
                      child: Center(child: TextApp(text: controller.list[index].productName ?? "", fontColor: Colors.black, fontSize: 12,)),
                    ),
                  );
                }),
              ),
              GetX<PrintingTechniquesController>(
                  builder: (priController){
                return Text(priController.list[priController.index.value].type == null ? "No items" : priController.list[priController.index.value].type!.types.toString());
              })
            ],
          ),
        ),
        Container(),
        Container(),
    ],
      ),
      )
    );


  }

}


