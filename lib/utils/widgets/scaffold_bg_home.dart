import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BGScaffoldHome extends StatelessWidget {

  Widget child;
   BGScaffoldHome({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 204.h,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg_home.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        // resizeToAvoidBottomInset: false,
        body: SafeArea(child: child)
      ),
    );
  }
}
