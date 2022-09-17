import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:common_library/helpers/dimens_helper.dart';
import 'package:velocity_x/velocity_x.dart';

class SnackBarHelper {
  static errorSnackBar(String title, String message) {
    _snackBar(title, message, Colors.red);
  }

  static _snackBar(String title, String message, Color color) {
    FocusManager.instance.primaryFocus?.unfocus();
    Get.snackbar(
      title ,
      message,
      colorText: Colors.white,
      backgroundColor: color,
      snackStyle: SnackStyle.FLOATING,
      snackPosition: SnackPosition.BOTTOM,
      // padding: EdgeInsets.all(0),
      titleText: Text(
        title,
        style: Get.textTheme.subtitle1?.copyWith(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      messageText: Text(
        message,
        style: Get.textTheme.subtitle1?.copyWith(
          color: Colors.white,
          height: 0.8,
        ),
      ).pOnly(
        bottom: 2,
      ),
      borderRadius: 10.0,
      margin: EdgeInsets.only(
        left: DimensHelper.paddingXLg,
        right: DimensHelper.paddingXLg,
        bottom: DimensHelper.paddingMD,
      ),
    );
  }
}
