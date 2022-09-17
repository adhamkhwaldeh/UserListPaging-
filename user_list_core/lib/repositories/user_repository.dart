import 'package:injectable/injectable.dart';
import 'package:user_list_core/api_services/api_service.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';

@lazySingleton
class UserRepository {
  final ApiService apiInterface;
  UserRepository(
    this.apiInterface,
    // AppDatabase appDataBase,
  ); //: super(apiInterface, appDataBase);

  Future<UserListResponse> pageList(int page, int limit) async {
    return apiInterface.getUsers(page: page, limit: limit);
  }
}
