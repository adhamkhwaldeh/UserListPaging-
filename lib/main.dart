import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:owwn_coding_challenge/components/app_component.dart';
import 'package:user_list_core/di/di.dart' as di;
import 'package:user_list_core/di/env.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.greenAccent, // navigation bar color
      // statusBarColor: Colors.greenAccent, // status bar color
      statusBarBrightness: Brightness.light, //status bar brigtness
      statusBarIconBrightness: Brightness.light, //status barIcon Brightness
      systemStatusBarContrastEnforced: true,
      systemNavigationBarIconBrightness: Brightness.light,
      // systemNavigationBarDividerColor:
      //     Colors.greenAccent, //Navigation bar divider color
      // systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
    ),
  );

  // await di.init(_openConnection());
  await di.init();

  Env.init();

  runApp(const AppComponent());
}
