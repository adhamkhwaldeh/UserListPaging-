// import 'package:cookie_jar/cookie_jar.dart';
// import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:user_list_core/api_services/interceptors/dio_header_interceptor.dart';

@module
abstract class NetworkDi {
  @lazySingleton
  // @Named('Dio')
  Dio dio() {
    Dio dio = Dio();
    dio.interceptors.add(DioHeaderInterceptors());

    // if (Env.data.debugApiClient) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        queryParameters: true,
        showProcessingTime: true,
        canShowLog: true,
        // logPrint: true,
        // compact: true,
      ),
    );
    // }

    // dio.interceptors.add(
    //   RetryOnConnectionChangeInterceptor(
    //     requestRetrier: DioConnectivityRequestRetrier(
    //       dio: dio,
    //       connectivity: Connectivity(),
    //     ),
    //   ),
    // );
    // dio.interceptors.add(ErrorInterceptor());

    // Cookie管理
    // CookieJar cookieJar = CookieJar();
    // dio.interceptors.add(CookieManager(cookieJar));
    // 加内存缓存
    // dio.interceptors.add(NetCache());

    return dio;
  }

  // @LazySingleton()
  // RetryOnConnectionChangeInterceptor retryConnection() {
  //   Dio dio = Dio();
  //   return RetryOnConnectionChangeInterceptor(
  //     requestRetrier: DioConnectivityRequestRetrier(
  //       dio: dio,
  //       connectivity: Connectivity(),
  //     ),
  //   );
  // }

  // @lazySingleton
  // ApiServiceRetrofit apiServiceRetrofit() => ApiServiceRetrofit(dio());
}
