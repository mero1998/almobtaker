
import 'package:almobtaker/modules/on%20boadrding/controller/on_boadring_controller.dart';
import 'package:almobtaker/modules/on%20boadrding/widget/on_boadrding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class OnBoardingView extends GetView<OnBoardingController>{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
extendBody: true,
     body: PageView.builder(
       controller: controller.pageController,
       onPageChanged: (index){
         controller.index.value = index;
         print(controller.index.value);
         print(index);
       },
       itemCount: 3,
         itemBuilder: (context, index){
           return OnBoardingWidget(bGImage: controller.bgImages[index],
               image: controller.images[index],
               title: controller.title[index],
               desc: controller.desc[index],
               currentPage: index);
         }),
   );
  }

}