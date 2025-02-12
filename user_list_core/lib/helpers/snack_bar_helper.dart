import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_list_core/helpers/dimensions_helper.dart';
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
        style: Get.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      messageText: Text(
        message,
        style: Get.textTheme.titleMedium?.copyWith(
          color: Colors.white,
          height: 0.8,
        ),
      ).pOnly(
        bottom: 2,
      ),
      borderRadius: 10.0,
      margin: EdgeInsets.only(
        left: DimensionsHelper.paddingXLg,
        right: DimensionsHelper.paddingXLg,
        bottom: DimensionsHelper.paddingMD,
      ),
    );
  }
}
