import 'package:user_list_core/themes/dark_theme.dart';
import 'package:user_list_core/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

MaterialColor hexColor2MaterialColor({Color? color, int? hexColor}) {
  final color0 = color ?? Color(hexColor!);
  final hexColor0 = hexColor ?? colorToInt(colorToHex(color0));

  final r = color0.red;
  final g = color0.green;
  final b = color0.blue;

  return MaterialColor(
    hexColor0,
    <int, Color>{
      50: Color.fromRGBO(r, g, b, .1),
      100: Color.fromRGBO(r, g, b, .2),
      200: Color.fromRGBO(r, g, b, .3),
      300: Color.fromRGBO(r, g, b, .4),
      400: Color.fromRGBO(r, g, b, .5),
      500: Color.fromRGBO(r, g, b, .6),
      600: Color.fromRGBO(r, g, b, .7),
      700: Color.fromRGBO(r, g, b, .8),
      800: Color.fromRGBO(r, g, b, .9),
      900: Color.fromRGBO(r, g, b, 1),
    },
  );
}

ThemeData getAppThemeFromThemeMode(ThemeMode mode) {
  if (mode == ThemeMode.light) {
    return LightTheme.themeData;
  }

  return DarkTheme.themeData;
}

bool isDarkMode() {
  // final brightness = MediaQuery.of(context).platformBrightness;
  return Get.isPlatformDarkMode; //brightness == Brightness.dark;
}

/// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
String colorToHex(Color color, {bool leadingHashSign = false}) {
  final r = color.red;
  final g = color.green;
  final b = color.blue;
  final a = color.alpha;
  return '${leadingHashSign ? '#' : ''}'
      '${a.toRadixString(16).padLeft(2, '0')}'
      '${r.toRadixString(16).padLeft(2, '0')}'
      '${g.toRadixString(16).padLeft(2, '0')}'
      '${b.toRadixString(16).padLeft(2, '0')}';
}

int colorToInt(String hexColor) {
  var hexColor0 = hexColor.toUpperCase().replaceAll('#', '');

  if (hexColor0.length == 6) {
    hexColor0 = 'FF$hexColor0';
  }

  return int.parse(hexColor0, radix: 16);
}

Color iconColor = Get.isDarkMode ? Colors.white : Get.theme.primaryColor;
