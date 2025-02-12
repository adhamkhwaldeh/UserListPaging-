import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:user_list_core/data/posts/refresh_model.dart';
import 'package:user_list_core/data/posts/sign_in_model.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';
import 'package:user_list_core/repositories/faked/dummy_data_helper.dart';
import 'package:user_list_core/repositories/implementations/iaccount_repository.dart';

@lazySingleton
class FakedAccountRepository implements IAccountRepository {
  FakedAccountRepository();

  @override
  Future<SignInResponse> auth({required SignInModel signInModel}) async {
    if (signInModel.email == DummyDataHelper.correctEmail) {
      return DummyDataHelper.userResponse;
    } else {
      throw DioException.badCertificate(requestOptions: RequestOptions());
    }
  }

  @override
  Future<SignInResponse> refresh({required RefreshModel refreshModel}) async {
    if (refreshModel.refresh_token ==
        DummyDataHelper.userResponse.refresh_token) {
      return DummyDataHelper.userResponse;
    } else {
      throw DioException.badCertificate(requestOptions: RequestOptions());
    }
  }
}
