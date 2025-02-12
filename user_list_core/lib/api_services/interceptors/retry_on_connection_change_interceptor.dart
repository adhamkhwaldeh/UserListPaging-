import 'dart:io';

import 'package:dio/dio.dart';
import 'package:user_list_core/api_services/connectivity/dio_connectivity_request_retrier.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final DioConnectivityRequestRetrier requestRetrier;

  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
  });

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    if (_shouldRetry(err)) {
      try {
        requestRetrier.scheduleRequestRetry(err.requestOptions);
      } catch (e) {
        // Let any new error from the retrier pass through
        // return e;//1234
      }
    }
    // Let the error pass through if it's not the error we're looking for
    err;
  }
  // Future onError(DioException err) async {
  //   if (_shouldRetry(err)) {
  //     try {
  //       return requestRetrier.scheduleRequestRetry(err.request);
  //     } catch (e) {
  //       // Let any new error from the retrier pass through
  //       return e;
  //     }
  //   }
  //   // Let the error pass through if it's not the error we're looking for
  //   return err;
  // }

  bool _shouldRetry(DioException err) {
    return err.type == DioExceptionType.unknown &&
        err.error != null &&
        err.error is SocketException;
  }
}
