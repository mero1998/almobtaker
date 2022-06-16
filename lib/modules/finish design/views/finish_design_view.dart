import 'dart:io';

import 'package:almobtaker/modules/finish%20design/controllers/finish_design_controller.dart';
import 'package:almobtaker/modules/forgetPassword/controllers/forget_password_controller.dart';
import 'package:almobtaker/routes/app_pages.dart';
import 'package:almobtaker/utils/widgets/button_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../utils/colors.dart';
import '../../../utils/widgets/text_app.dart';

class FinishDesignView extends GetView<FinishDesignController> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: TextApp(text: "صمم هنا", fontColor: Color(0xFf1E3354), fontSize: 22),
          centerTitle: true,

          // automaticallyImplyLeading: true,
          iconTheme: IconThemeData(
              color: Color(0xFF1E3354)
          ),
        leading: IconButton(onPressed: (){

          showDialog(context: context,
           barrierColor: Colors.black.withOpacity(0.50)
              ,   builder: (context){
            return Center(
              child: Container(
                height: 147.h,
                width: double.infinity,
                margin: EdgeInsetsDirectional.only(start: 64.w, end: 64.w),
                padding: EdgeInsetsDirectional.only(start: 30.w, end: 30.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      offset: Offset(0,3),
                      blurRadius: 6
                    )
                  ],
                ),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextApp(text: "هل تريد بالتأكيد الرجوع", fontColor: AppColor.primaryColorApp, fontSize: 16),
                    SizedBox(height: 29.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(onPressed: () => Get.toNamed(Routes.MAIN_SCREEN), child: TextApp(text: "نعم", fontColor: Colors.white, fontSize: 16,), style: ElevatedButton.styleFrom(primary: AppColor.textColor),),
                        ElevatedButton(onPressed: () => Navigator.pop(context), child: TextApp(text: "الغاء", fontColor: Colors.white, fontSize: 16,), style: ElevatedButton.styleFrom(primary: AppColor.primaryColorApp),),
                      ],
                    )
                  ],
                ),
              ),
            );
          });
        }, icon: Icon(Icons.arrow_back),),
        ),
        body: GetX<FinishDesignController>(
          builder: (finController){
            print(finController.option.length);
            return Padding(
              padding:  EdgeInsetsDirectional.only(
                  start: 16.w,
                  end: 16.w,
                  top: 27.h,
                  bottom: 42.h
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 250.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: controller.imgFile != null ? FileImage(File(controller.imgFile!.path)) : FileImage(File("ed")),
                        ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,3),
                              blurRadius: 6,
                              color: Colors.black.withOpacity(0.16),
                            )
                          ]
                      ),
                    ),

                    SizedBox(height: 23.h,),
                    InkWell(
                     onTap: controller.pickImage,
                      child: Row(
                        children: [
                          Image.asset("assets/images/upload.png"),
                          SizedBox(width: 15.w,),
                          TextApp(text: "رفع الصورة", fontColor: AppColor.primaryColorApp, fontSize: 20)
                        ],
                      ),
                    ),
                    RadioListTile(
                        activeColor: AppColor.primaryColorApp,

                        title: TextApp(text: finController.option.first, fontColor: Color(0xFF1E3354), fontSize: 20,),
                        value: finController.option.first,
                        groupValue: finController.selectedOption.value,
                        onChanged: (String? value){
                          controller.selectedOption.value = value!;

                        }),
                    RadioListTile(
                      activeColor: AppColor.primaryColorApp,
                        title: TextApp(text: finController.option.last, fontColor: Color(0xFF1E3354), fontSize: 20,),
                        value: finController.option.last,
                        groupValue:finController.selectedOption.value,
                        onChanged: (String? value){
                          controller.selectedOption.value = value!;
                          if(controller.option.last == value){
                            controller.isDisabled.value = false;
                          }
                        }),

                    Visibility(
                      visible: finController.selectedOption == finController.option.first,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextApp(text: "اختر القالب المناسب قبل الطباعة", fontColor: Color(0xFF1E3354) , fontSize: 20),
                          SizedBox(
                            height: 158.h,
                            child: ListView.builder(
                                itemCount: controller.templates.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsetsDirectional.only(top: 14.h, bottom: 14.h),
                                physics: ScrollPhysics(),
                                itemBuilder: (context, index){
                              return Padding(
                                padding: EdgeInsetsDirectional.only(end: 16.w),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 80.w,
                                      height: 80.h,
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius: BorderRadius.circular(15),
                                         boxShadow: [
                                           BoxShadow(
                                             color: Colors.black.withOpacity(0.16),
                                             offset: Offset(0,3),
                                             blurRadius: 6,
                                           ),
                                         ]
                                       ),
                                      child: Center(child: TextApp(text: controller.templates[index], fontSize: 14, fontColor: AppColor.textColor,)),
                                    ),
                                    GetX<FinishDesignController>(
                                      builder: (test){
                                        return  Radio(
                                            activeColor: AppColor.primaryColorApp,

                                            value: test.templates[index],
                                            groupValue: test.selectedTemplate.value,
                                            onChanged: (String? value){
                                              test.selectedTemplate.value = value!;
                                              test.isDisabled.value = false;
                                            });
                                      },
                                    )
                                  ],
                                ),
                              );
                            }),
                          ),

                          // TextApp(text: "اختر نوع الطباعة", fontColor: Color(0xFF1E3354) , fontSize: 20),
                          // SizedBox(
                          //   height: 158.h,
                          //   child: ListView.builder(
                          //       itemCount: controller.templates.length,
                          //       shrinkWrap: true,
                          //       scrollDirection: Axis.horizontal,
                          //       padding: EdgeInsetsDirectional.only(top: 14.h, bottom: 14.h),
                          //       physics: ScrollPhysics(),
                          //       itemBuilder: (context, index){
                          //         return Padding(
                          //           padding: EdgeInsetsDirectional.only(end: 16.w),
                          //           child: Column(
                          //             children: [
                          //               Container(
                          //                 width: 80.w,
                          //                 height: 80.h,
                          //                 decoration: BoxDecoration(
                          //                     color: Colors.white,
                          //                     borderRadius: BorderRadius.circular(15),
                          //                     boxShadow: [
                          //                       BoxShadow(
                          //                         color: Colors.black.withOpacity(0.16),
                          //                         offset: Offset(0,3),
                          //                         blurRadius: 6,
                          //                       ),
                          //                     ]
                          //                 ),
                          //                 child: Center(child: TextApp(text: controller.printTypes[index], fontSize: 14, fontColor: AppColor.primaryColorApp,)),
                          //               ),
                          //               GetX<FinishDesignController>(
                          //                 builder: (test){
                          //                   return  Radio(
                          //                     activeColor: AppColor.primaryColorApp,
                          //
                          //                     value: test.printTypes[index],
                          //                     groupValue: test.selectedPrintType.value,
                          //                     onChanged: (String? value){
                          //                       test.selectedPrintType.value = value!;
                          //                     },
                          //                   );
                          //                 },
                          //               )
                          //             ],
                          //           ),
                          //         );
                          //       }),
                          // ),

                        ],
                      ),
                    ),
                    ButtonApp(borderColor: Colors.transparent, buttonColor: AppColor.textColor,
                        textColor: Colors.white,
                        presed: checkOptions() ? () => action(context) : null , textApp: "التالي"),
                  ],
                ),
              ),
            );
          },
        )
    );
  }

  checkOptions(){
    if(controller.selectedOption != ""){
      if(controller.selectedTemplate != ""){
        return true;
      }else if(controller.selectedOption == controller.option.last){
        return true;
      }
      else{
        return false;
      }
    }else{
      return false;
    }
  }
  
  action(BuildContext context){
    if(controller.selectedOption == controller.option.first){
      Get.toNamed(Routes.PRINTINGTECHNIQUES);
    }else{
      showDialog(context: context,
          barrierColor: Colors.black.withOpacity(0.50)
          ,   builder: (context){
            return Center(
              child: Container(
                height: 147.h,
                width: double.infinity,
                margin: EdgeInsetsDirectional.only(start: 64.w, end: 64.w),
                padding: EdgeInsetsDirectional.only(start: 30.w, end: 30.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.16),
                        offset: Offset(0,3),
                        blurRadius: 6
                    )
                  ],
                ),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextApp(text: "تم ارسال طلب التعديل", fontColor: AppColor.primaryColorApp, fontSize: 16),
                    SizedBox(height: 29.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () => Navigator.pop(context), child: TextApp(text: "موافق", fontColor: Colors.white, fontSize: 16,), style: ElevatedButton.styleFrom(primary: AppColor.primaryColorApp),),
                      ],
                    )
                  ],
                ),
              ),
            );
          });
    }
  }
}


