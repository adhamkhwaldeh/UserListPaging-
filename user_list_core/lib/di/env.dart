import 'dart:ffi';

import 'package:flutter/foundation.dart' as foundation;
import 'package:user_list_core/api_services/api_configuration.dart';

class Env {
  static late EnvData _env;

  static EnvData get data => _env;

  static const bool isRelease = foundation.kReleaseMode;

  static const bool isDebug = !foundation.kReleaseMode;

  static void init() {
    _env = isRelease ? Env.prod : Env.dev;
  }

  static final EnvData dev = EnvData(
    debug: true,
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    debugApiClient: true,
    apiBaseUrl: ApiConfiguration.baseUrl,
    useFakeData: true,
  );

  static final EnvData prod = EnvData(
    debug: false,
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    debugApiClient: false,
    apiBaseUrl: ApiConfiguration.baseUrl,
    useFakeData: true,
  );
}

class EnvData {
  final bool debug;
  final bool debugShowCheckedModeBanner;
  final bool debugShowMaterialGrid;
  final bool debugApiClient;
  final String apiBaseUrl;
  final bool useFakeData;

  EnvData({
    required this.debug,
    required this.debugShowCheckedModeBanner,
    required this.debugShowMaterialGrid,
    required this.debugApiClient,
    required this.apiBaseUrl,
    required this.useFakeData,
  });
  
}
