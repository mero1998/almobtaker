import 'package:almobtaker/modules/finish%20design/controllers/finish_design_controller.dart';
import 'package:almobtaker/modules/forgetPassword/controllers/forget_password_controller.dart';
import 'package:almobtaker/modules/offers/controllers/offers_controller.dart';
import 'package:almobtaker/routes/app_pages.dart';
import 'package:almobtaker/utils/widgets/button_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../../../utils/widgets/text_app.dart';

class OffersView extends GetView<OffersController> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: TextApp(text: "العروض", fontColor: Color(0xFf1E3354), fontSize: 22),
          centerTitle: true,

          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(
              color: Color(0xFF1E3354)
          ),
        ),
        body: Container()
    );


  }
}


