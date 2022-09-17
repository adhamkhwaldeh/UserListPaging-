// import 'dart:async';

// ignore_for_file: constant_identifier_names

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:webview_flutter_plus/webview_flutter_plus.dart';

String _dialogMessage = "Loading...";

var _icon =
    Image.asset('assets/double_ring_loading_io.gif', package: 'common_library');

enum ProgressDialogType { Normal, Download }

ProgressDialogType _progressDialogType = ProgressDialogType.Normal;
double _progress = 0.0;

bool _isShowing = false;

class ProgressDialog {
  late BuildContext _buildContext;
  late BuildContext _context;
  late _MyDialog _dialog;

  ProgressDialog(
      BuildContext buildContext, ProgressDialogType progressDialogtype) {
    _buildContext = buildContext;

    _progressDialogType = progressDialogtype;
  }

  void setMessage(String mess) {
    _dialogMessage = mess;
    debugPrint("ProgressDialog message changed: $mess");
  }

  void changeIcon(icon) {
    _icon = icon;
    debugPrint("Icon changed: $icon");
  }

  void update({required double progress, required String message}) {
    debugPrint("ProgressDialog message changed: ");
    if (_progressDialogType == ProgressDialogType.Download) {
      debugPrint("Old Progress: $_progress, New Progress: $progress");
      _progress = progress;
    }
    debugPrint("Old message: $_dialogMessage, New Message: $message");
    _dialogMessage = message;
    _dialog.update();
  }

  bool isShowing() {
    return _isShowing;
  }

  void hide() {
    _isShowing = false;
    Navigator.of(_context).pop();
    log('ProgressDialog dismissed');
  }

  void show() {
    _dialog = _MyDialog();
    _isShowing = true;
    log('ProgressDialog shown');
    showDialog<dynamic>(
      context: _buildContext,
      barrierDismissible: false,
      builder: (BuildContext context) {
        _context = context;
        return Dialog(
          insetAnimationCurve: Curves.easeInOut,
          insetAnimationDuration: const Duration(milliseconds: 100),
          elevation: 10.0,
          insetPadding: EdgeInsets.only(
            left: Get.width / 3,
            right: Get.width / 3,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _dialog,
            ],
          ),
        );
      },
    );
  }
}

// ignore: must_be_immutable
class _MyDialog extends StatefulWidget {
  final _dialog = _MyDialogState();

  update() {
    _dialog.changeState();
  }

  @override
  State<StatefulWidget> createState() {
    return _dialog;
  }
}

class _MyDialogState extends State<_MyDialog> {
  changeState() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _isShowing = false;
  }

  // final Completer<WebViewController> _controller =
  //     Completer<WebViewController>();
  // WebViewPlusController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(width: 15.0),
          SizedBox(
            width: 60.0,
            // child: WebViewPlus(
            //   initialUrl: 'assets/image_loader.html',
            //   onWebViewCreated: (controller) {
            //     this._controller = controller;
            //   },
            //   onPageFinished: (url) {
            //     // _controller.getHeight().then((double height) {
            //     //   print("Height: " + height.toString());
            //     //   setState(() {
            //     //     _height = height;
            //     //   });
            //     // });
            //   },
            //   javascriptMode: JavascriptMode.unrestricted,
            // ),

            // WebView(
            //   initialUrl: 'assets/image_loader.html',
            //   javascriptMode: JavascriptMode.unrestricted,
            //   onWebViewCreated: (WebViewController webViewController) {
            //     _controller.complete(webViewController);
            //   },
            // ),
            child: _icon,
          ),
          // const SizedBox(width: 15.0),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 4,
            ),
            child: _progressDialogType == ProgressDialogType.Normal
                ? Text(
                    _dialogMessage,
                    textAlign: TextAlign.center,
                    style: Get.textTheme.subtitle1,
                  )
                : Stack(
                    children: <Widget>[
                      Positioned(
                        child: Text(
                          _dialogMessage, //+ "\n$_progress/100",
                          textAlign: TextAlign.center,
                          style: Get.textTheme.subtitle1,
                        ),
                        // top: 35.0,
                      ),
                      // Positioned(
                      //   child: Text(
                      //     "$_progress/100",
                      //     style: Get.textTheme.subtitle1,
                      //   ),
                      //   bottom: 15.0,
                      //   right: 15.0,
                      // ),
                    ],
                  ),
          )
        ],
      ),
    );
  }
}

class MessageBox {
  BuildContext buildContext;
  String message = " ", title = " ";

  MessageBox(this.buildContext, this.message, this.title);

  void show() {
    _showDialog();
  }

  _showDialog() {
    showDialog(
      context: buildContext,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          actions: [
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          content: SizedBox(
            height: 45.0,
            child: Center(
              child: Row(
                children: [
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
