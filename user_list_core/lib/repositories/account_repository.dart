import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:user_list_core/api_services/api_service.dart';
import 'package:user_list_core/data/posts/refresh_model.dart';
import 'package:user_list_core/data/posts/sign_in_model.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';

@lazySingleton
class AccountRepository {
  final ApiService apiService;
  // final AppDatabase appDataBase;

  AccountRepository(
    this.apiService,
    // this.appDataBase,
  );

  Future<SignInResponse> auth({required SignInModel signInModel}) async {
    return apiService.auth(signInModel);
  }

  Future<SignInResponse> refresh({required RefreshModel refreshModel}) async {
    return apiService.refresh(refreshModel);
  }
}
