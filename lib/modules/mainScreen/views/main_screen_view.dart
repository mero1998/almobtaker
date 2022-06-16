import 'package:almobtaker/modules/forgetPassword/controllers/forget_password_controller.dart';
import 'package:almobtaker/modules/mainScreen/controllers/main_screen_controller.dart';
import 'package:almobtaker/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../../../utils/widgets/button_app.dart';
import '../../../utils/widgets/scaffold_bg.dart';
import '../../../utils/widgets/text_app.dart';
import '../../../utils/widgets/text_filed_email.dart';
import '../../../utils/widgets/text_filed_name.dart';
import '../../../utils/widgets/text_filed_password.dart';
import 'package:get/get.dart';

class MainScreenView extends GetView<MainScreenController> {

  @override
  Widget build(BuildContext context) {
        return GetX<MainScreenController>(
          builder: (mainController){
            return Scaffold(
              extendBody: true,
              bottomNavigationBar: BottomNavigationBar(
                items: controller.items,
                currentIndex: controller.index.value,
                onTap: (int index){
                  controller.index.value = index;
                  print(index);
                },
              ),
              appBar: mainController.index.value == 2 ? AppBar(
                title: TextApp(text: "صمم هنا",
                  fontColor: Color(0xFF1E3354),
                  fontSize: 18,
                ),
                centerTitle: true,
                automaticallyImplyLeading: false,
                iconTheme: IconThemeData(
                  color: Color(0xFF1E3354),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,) : null,
              body:_getScreen(),
            );
          },
        );
  }

  _getScreen(){
   return controller.screens.elementAt(controller.index.value);
  }
}
