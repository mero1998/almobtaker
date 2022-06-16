import 'package:almobtaker/modules/forgetPassword/controllers/forget_password_controller.dart';
import 'package:almobtaker/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../../../utils/widgets/button_app.dart';
import '../../../utils/widgets/home_card.dart';
import '../../../utils/widgets/scaffold_bg.dart';
import '../../../utils/widgets/text_app.dart';
import '../../../utils/widgets/text_filed_email.dart';
import '../../../utils/widgets/text_filed_name.dart';
import '../../../utils/widgets/text_filed_password.dart';
import 'package:get/get.dart';

import '../../mainScreen/controllers/main_screen_controller.dart';

class CartView extends StatefulWidget {
  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  List _selecteCategorysID = [];

  bool rememberMe = false;

  List<String>userList = ['Sam', 'John', 'Rohan', 'Peter'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextApp(text: "السلة", fontColor: Color(0xFf1E3354), fontSize: 22),
     centerTitle: true,
        actions: [
          Padding(
            padding:  EdgeInsetsDirectional.only(top: 15.h, end: 24.w),
            child: Stack(
              children: [
                Icon(Icons.shopping_cart_outlined),
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
          ),

        ],
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Color(0xFF1E3354)
        ),
      ),
      body: LayoutBuilder(
       builder: (context, constraint){
         return SingleChildScrollView(
           child: Padding(
             padding:  EdgeInsetsDirectional.only(top: 38.h, start: 24.w, end: 24.w),
             child: ConstrainedBox(
               constraints: BoxConstraints(minHeight: constraint.maxHeight),
               child: IntrinsicHeight(
                 child: Column(
                   mainAxisSize: MainAxisSize.max,

                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Container(
                               alignment: Alignment.center,
                               width: 24.0,
                               height: 24.0,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(4.0),
                                 gradient: LinearGradient(
                                   begin: Alignment(1.54, -1.0),
                                   end: Alignment(-1.0, 5.08),
                                   colors: [const Color(0xFF3AD4E0), const Color(0xFF2EB5BF)],
                                 ),
                               ),
                             ),
                             SizedBox(width: 16.w,),
                             TextApp(text: "اختيار الجميع", fontColor: Color(0xFF1E3354), fontSize: 16)
                           ],
                         ),
                         TextApp(text: "حذف الجميع", fontColor: Color(0xFFFA634D), fontSize: 16)
                       ],
                     ),
                     SizedBox(height: 19.h,),
                     SizedBox(
                       height: 450,
                       child: ListView.builder(
                           itemCount: 10,
                           shrinkWrap: true,
                           physics: ScrollPhysics(),
                           // padding: EdgeInsets.only(bottom: 16.h),
                           itemBuilder: (context, index){
                             return  Container(
                               margin: EdgeInsets.only(bottom: 16.h),
                               padding: EdgeInsetsDirectional.only(start: 19.w, end: 16.w, top: 19.h, bottom: 19.h),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(4.0),
                                 color: Colors.white,
                                 boxShadow: [
                                   BoxShadow(
                                     color: const Color(0xFF050828).withOpacity(0.02),
                                     offset: Offset(0, 18.0),
                                     blurRadius: 80.0,
                                   ),
                                 ],
                               ),
                               child: Column(
                                 children: [
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Icon(Icons.store, color: Color(0xff3AD4E0),),
                                       TextApp(text: "اسم المتجر/اسم المبتكر", fontColor: Color(0xFF1E3354), fontSize: 16),

                                       Container(
                                         alignment: Alignment.center,
                                         width: 24.0,
                                         height: 24.0,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(4.0),
                                           gradient: LinearGradient(
                                             begin: Alignment(1.54, -1.0),
                                             end: Alignment(-1.0, 5.08),
                                             colors: [const Color(0xFF3AD4E0), const Color(0xFF2EB5BF)],
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                   Divider(),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Container(
                                         width: 56.w,
                                         height: 56.h,
                                         color: Color(0xFFFEF5C2),
                                       ),
                                       Column(
                                         children: [
                                           TextApp(text: "اسم الرسمة/ الصنف", fontColor: Color(0xFF1E3354), fontSize: 14),
                                         ],
                                       ),
                                       TextApp(text: "18", fontColor: Color(0xFF1E3354), fontSize: 16, textDecoration: TextDecoration.lineThrough,),
                                       SizedBox(width: 14.w,),
                                       TextApp(text: "1 د.أ", fontColor: Color(0xFF1E3354), fontSize: 20),
                                     ],
                                   ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.end,
                                     children: [
                                       Padding(
                                         padding:  EdgeInsetsDirectional.only(end: 79.w),
                                         child: Container(
                                           width: 103.w,
                                           height: 30.h,
                                           decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(30),
                                               border: Border.all(
                                                 color: Color(0XFFC7CAD9),
                                               ),
                                               shape: BoxShape.rectangle
                                           ),
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: [
                                               Padding(
                                                 padding:  EdgeInsetsDirectional.only(start: 11.w),
                                                 child: TextApp(text: "+", fontColor: Color(0xFF1E3354), fontSize: 12,),
                                               ),
                                               VerticalDivider(thickness: 1,),
                                               TextApp(text: "1", fontColor: Color(0xFF1E3354), fontSize: 16, ),
                                               VerticalDivider(thickness: 1,),
                                               Padding(
                                                 padding:  EdgeInsetsDirectional.only(end: 11.w),
                                                 child: TextApp(text: "-", fontColor: Color(0xFF1E3354), fontSize: 12,),
                                               ),

                                             ],
                                           ),
                                         ),
                                       ),

                                       Icon(Icons.delete),
                                       // IconButton(padding: EdgeInsets.zero,onPressed: (){}, icon: Icon(Icons.delete, size: 17.w,)),

                                     ],
                                   )
                                 ],
                               ),
                             );
                           }),
                     ),
                     Spacer(),
                     Container(
                       width: double.infinity,
                       height: 164.h,
                       color: Colors.white,
                       child: Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               TextApp(text: "المجموع :", fontColor: Color(0xFF1E3354), fontSize: 14),
                               TextApp(text: "18 د.أ", fontColor: Color(0xFF1E3354), fontSize: 14),
                             ],
                           ),
                           ButtonApp(borderColor: Colors.transparent,
                             buttonColor: Color(0XFFF8819E),
                             textColor: Colors.white,
                             presed: () => openModalSheet(context),
                             textApp: "تاكيدالطلب",
                             height: 52,),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ),
         );
       },
      ),
    );

    // return Scaffold(
    //     appBar: AppBar(),
    //     body: Column(
    //       children: <Widget>[
    //         Padding(
    //           padding: const EdgeInsets.only(left: 20, right: 20),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: <Widget>[
    //               Text("Select All"),
    //               Checkbox(
    //                   value: rememberMe,
    //                   onChanged: (bool? select) {
    //                     _onRememberMeChanged(select!);
    //                   }
    //               )
    //             ],
    //           ),
    //         ),
    //         SizedBox(
    //           height: 450,
    //           child: ListView.builder(
    //               itemCount: userList.length,
    //               itemBuilder: (context, item) {
    //                 return Card(
    //                     child: CheckboxListTile(
    //                       selected: _selecteCategorysID.contains(userList[item]),
    //                       value: _selecteCategorysID.contains(userList[item]),
    //                       onChanged: (bool? selected) {
    //                         _onCategorySelected(selected!, userList[item]);
    //                       },
    //
    //                       title: Text(userList[item]),
    //                     ));
    //               }),
    //         ),
    //       ],
    //     ));
  }

  void _onCategorySelected(bool selected, category_id) {
    if (selected == true) {
      setState(() {
        _selecteCategorysID.add(category_id);

      });
    } else {
      setState(() {
        _selecteCategorysID.remove(category_id);

      });
    }
  }

  void _onRememberMeChanged(bool newValue) => setState(() {
    rememberMe = newValue;

    print("HERREE");
    if (rememberMe) {
      _selecteCategorysID.addAll(userList);
      // TODO: Here goes your functionality to select all checkbox
    } else {
      _selecteCategorysID.clear();
    }
  });

  openModalSheet(BuildContext context){
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
      return Container(
        height: 200,
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Modal BottomSheet'),
              ElevatedButton(
                child: const Text('Close BottomSheet'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
        );
      });
  }
}

