import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BGScaffold extends StatelessWidget {

  Widget child;
   BGScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg_app.png'), fit: BoxFit.cover)),
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
