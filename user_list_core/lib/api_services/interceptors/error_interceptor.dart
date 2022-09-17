import 'dart:developer';

import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // AppException appException = AppException.create(err);
    // // 错误提示
    // debugPrint('DioError===: ${appException.toString()}');
    // err.error = appException;
    log("message");
    super.onError(err, handler);
  }
}
