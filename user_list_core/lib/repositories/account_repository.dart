import 'package:injectable/injectable.dart';
import 'package:user_list_core/api_services/api_service.dart';
import 'package:user_list_core/data/posts/refresh_model.dart';
import 'package:user_list_core/data/posts/sign_in_model.dart';
import 'package:user_list_core/data/responses/sign_in_response.dart';
import 'package:user_list_core/repositories/implementations/iaccount_repository.dart';

@lazySingleton
class AccountRepository implements IAccountRepository {
  final ApiService apiService;

  AccountRepository(this.apiService);

  @override
  Future<SignInResponse> auth({required SignInModel signInModel}) async {
    return apiService.auth(signInModel);
  }

  @override
  Future<SignInResponse> refresh({required RefreshModel refreshModel}) async {
    return apiService.refresh(refreshModel);
  }
}
