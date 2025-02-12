import 'package:dio/dio.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';
import 'package:user_list_core/di/di.dart';
import 'package:user_list_core/repositories/general_repository.dart';

// 1
class DioHeaderInterceptors extends InterceptorsWrapper {
  DioHeaderInterceptors();
  GeneralRepository get generalRepository => getIt<GeneralRepository>();
  // 2
  static const String authHeader = "Authorization";
  // 3
  static const String bearer = "Bearer ";
  // 4
  // static const String V4_AUTH_HEADER = "< your key here >";

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    SignInResponse? userModel =
        await generalRepository.getLoggedUser(); //shared
    options.headers['Content-type'] = 'application/json';
    // options.headers['API Key'] = 'owwn-challenge-22bbdk';
    options.headers['X-API-KEY'] = 'owwn-challenge-22bbdk';

    if (userModel?.access_token != null) {
      // Request newRequest = request.copyWith(headers: {
      //   AUTH_HEADER: BEARER + loginModel.authenticationToken,
      // });
      // options.headers[AUTH_HEADER] = BEARER + userModel!.token!;
      options.headers[authHeader] = userModel!.access_token;
    }
    super.onRequest(options, handler);
  }
  // @override
  // Future onResponse(Response response) {
  //   print(
  //       "RESPONSE[${response?.statusCode}] => PATH: ${response?.request?.path}");
  //   return super.onResponse(response);
  // }

  // @override
  // Future onError(DioException err) {
  //   print("ERROR[${err?.response?.statusCode}] => PATH: ${err?.request?.path}");
  //   return super.onError(err);
  // }
}
