import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:almobtaker/utils/colors.dart';
import 'package:android_path_provider/android_path_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/webview_flutter.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/widgets/text_app.dart';


class DrawView extends StatefulWidget {
  const DrawView({Key? key}) : super(key: key);

  @override
  State<DrawView> createState() => _DrawViewState();
}

class _DrawViewState extends State<DrawView> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController controller =
InAppWebViewController("23", InAppWebView());


  bool isLoading=true;

  ReceivePort _port = ReceivePort();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    IsolateNameServer.registerPortWithName(_port.sendPort, 'downloader_send_port');
    _port.listen((dynamic data) {
      String id = data[0];
      DownloadTaskStatus status = data[1];
      int progress = data[2];
      setState((){ });
    });

    FlutterDownloader.registerCallback(downloadCallback);


  }

  static void downloadCallback(String id, DownloadTaskStatus status, int progress) {
    final SendPort send = IsolateNameServer.lookupPortByName('downloader_send_port')!;
    send.send([id, status, progress]);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 1.3,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            offset: Offset(0 , 3),
            blurRadius: 6,
            color: Colors.black.withOpacity(0.16)
          )
        ]
      ),
      clipBehavior: Clip.antiAlias,
      child:  Stack(
        children: [
          // WebView(
          //   zoomEnabled: false,
          //   initialUrl: "https://www.autodraw.com",
          //   javascriptMode: JavascriptMode.unrestricted,
          //   onWebViewCreated: (webViewController) {
          //
          //     controller.complete(webViewController);
          //     // controller = webViewController;
          //   },
          //
          //   navigationDelegate: (NavigationRequest request) async{
          //     if (request.url.startsWith("https://www.autodraw.com")) {
          //       return NavigationDecision.navigate;
          //     } else if (request.url.contains("google")) {
          //       return NavigationDecision.navigate;
          //     } else {
          //       print("URL::: ${request.url}");
          //
          //       final taskId = await FlutterDownloader.enqueue(
          //         url: request.url,
          //         savedDir: (await _findLocalPath() ?? ""),
          //         showNotification: true, // show download progress in status bar (for Android)
          //         openFileFromNotification: true, // click on notification to open downloaded file (for Android)
          //         saveInPublicStorage: true,
          //         // fileName: request.url + ".png"
          //       );
          //
          //       // ImageDownloader.downloadImage(request.url).catchError((error) {
          //       //   if (error is PlatformException) {
          //       //     var path = "";
          //       //     if (error.code == "404") {
          //       //       print("Not Found Error.");
          //       //     } else if (error.code == "unsupported_file") {
          //       //       print("UnSupported FIle Error.");
          //       //       path = error.details["unsupported_file_path"];
          //       //     }
          //       //   }
          //       // });
          //       // _launchUrl(Uri.parse(s));
          //       return NavigationDecision.prevent;
          //     }
          //   },
          //   onProgress: (int progress) {
          //     print('WebView is loading (progress : $progress%)');
          //   },
          //   // javascriptChannels: <JavascriptChannel>{
          //   //   _toasterJavascriptChannel(context),
          //   // },
          //   onPageStarted: (String url) {
          //     print('Page started loading: $url');
          //   },
          //   onPageFinished: (String url) {
          //     print('Page finished loading: $url');
          //     setState(() {
          //       isLoading = false;
          //     });
          //   },
          //   // gestureNavigationEnabled: true,
          //   backgroundColor: Colors.white,
          // ),
          InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse("https://www.autodraw.com")),
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                // debuggingEnabled: true,
                useOnDownloadStart: true,
                javaScriptEnabled: true,
              ),
            ),
            //javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (InAppWebViewController webViewController) {
              controller = webViewController;
              controller.addJavaScriptHandler(
                handlerName: "blobToBase64Handler",
                callback: (data) async {
                  if (data.isNotEmpty) {
                    final String receivedFileInBase64 = data[0];
                    final String receivedMimeType = data[1];

                    // NOTE: create a method that will handle your extensions
                    // final String yourExtension =
                    // _mapMimeTypeToYourExtension(receivedMimeType); // 'pdf'

                    _createFileFromBase64(
                        receivedFileInBase64, 'YourFileName', "png");
                  }
                },
              );
            },
            onDownloadStart:(_controller,url) async{
    print("onDownloadStart $url");
    var jsContent = await rootBundle.loadString("assets/js/base64.js");
    await controller.evaluateJavascript(
    source: jsContent.replaceAll("blobUrlPlaceholder", url.toString()));
    // final taskId = await FlutterDownloader.enqueue(
    //   url: url.toString(),
    //   savedDir: await _findLocalPath() ?? "",
    //   showNotification: true, // show download progress in status bar (for Android)
    //   openFileFromNotification: true, // click on notification to open downloaded file (for Android)
    // );
            }
          ),
          PositionedDirectional(
          start: 0,
            end: 0,
              bottom: 10,
              child: Center(child:
              ElevatedButton(onPressed: () => Get.toNamed(Routes.FINISH_DESIGN),
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.textColor,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(25)
)
,                  ),
                  child: TextApp(text: "انهاء", fontSize: 20, fontColor: Colors.white,))))
        ],
      ),
    );

  }
  void _launchUrl(Uri url) async {
    print(url);
    if (!await launchUrl(url)) throw 'Could not launch $url';
  }

  Future<String?> _findLocalPath() async {
    var externalStorageDirPath;
    if (Platform.isAndroid) {
      try {
        externalStorageDirPath = await AndroidPathProvider.downloadsPath;
      } catch (e) {
        final directory = await getExternalStorageDirectory();
        externalStorageDirPath = directory?.path;
      }
    } else if (Platform.isIOS) {
      externalStorageDirPath =
          (await getApplicationDocumentsDirectory()).absolute.path;
    }
    return externalStorageDirPath;
  }

  _createFileFromBase64(String base64content, String fileName, String yourExtension) async {
    var bytes = base64Decode(base64content.replaceAll('\n', ''));
    var output = AndroidPathProvider.downloadsPath;
    print(output!);
    final file = File("${output}/$fileName.$yourExtension");
    await file.writeAsBytes(bytes.buffer.asUint8List());
    print("${output}/${fileName}.$yourExtension");
    // ImageDownloader.downloadImage(bytes.buffer.asUint8List().toString());
    await OpenFile.open("${output}/$fileName.$yourExtension");
    setState(() {});
  }

}
