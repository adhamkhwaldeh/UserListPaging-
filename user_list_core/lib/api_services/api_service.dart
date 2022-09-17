import 'dart:async';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:user_list_core/api_services/api_configuration.dart';
import 'package:user_list_core/data/models/user.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:user_list_core/data/posts/refresh_model.dart';
import 'package:user_list_core/data/posts/sign_in_model.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConfiguration.baseUrl)
@lazySingleton
abstract class ApiService {
  static late Dio globalDio;

  @factoryMethod
  static ApiService create(Dio dio) {
    var retrofit = ApiService(dio);
    globalDio = dio;
    // dio.interceptors.add(PrettyDioLogger.initialTab)
    return retrofit;
  }

  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("auth")
  Future<SignInResponse> auth(@Body() SignInModel signInModel);

  @POST("refresh")
  Future<SignInResponse> refresh(@Body() RefreshModel refreshModel);

  @GET("users")
  Future<UserListResponse> getUsers({
    @Query("page") required int page,
    @Query("limit") int limit = ApiConfiguration.pagingSize,
  });
}
