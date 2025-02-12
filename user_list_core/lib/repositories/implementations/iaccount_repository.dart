import 'package:user_list_core/data/posts/refresh_model.dart';
import 'package:user_list_core/data/posts/sign_in_model.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';

abstract class IAccountRepository {
  Future<SignInResponse> auth({required SignInModel signInModel});

  Future<SignInResponse> refresh({required RefreshModel refreshModel});
}
