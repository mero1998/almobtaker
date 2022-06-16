import 'dart:io';

import 'package:almobtaker/modules/on%20boadrding/controller/on_boadring_controller.dart';
import 'package:almobtaker/modules/on%20boadrding/view/on_boarding_view.dart';
import 'package:almobtaker/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/exceptions/exceptions.dart';
import 'package:get/get.dart';

import 'localiztion_service.dart';

void main() async{
  if(  Platform.isAndroid){
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(0),
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark
    ));
  }
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);

    var swAvailable = await AndroidWebViewFeature.isFeatureSupported(
        AndroidWebViewFeature.SERVICE_WORKER_BASIC_USAGE);
    var swInterceptAvailable = await AndroidWebViewFeature.isFeatureSupported(
        AndroidWebViewFeature.SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST);

    if (swAvailable && swInterceptAvailable) {
      AndroidServiceWorkerController serviceWorkerController =
      AndroidServiceWorkerController.instance();

      await serviceWorkerController
          .setServiceWorkerClient(AndroidServiceWorkerClient(
        shouldInterceptRequest: (request) async {
          print(request);
          return null;
        },
      ));
    }
  }
  await FlutterDownloader.initialize(debug: true, ignoreSsl: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return  GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          locale: LocalizationService.locale,
          fallbackLocale: LocalizationService.fallbackLocale,
          translations: LocalizationService(),
          smartManagement: SmartManagement.onlyBuilder,//here
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),

          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,

          // home: OnBoardingView(),
        );
      },
    );
  }
}


