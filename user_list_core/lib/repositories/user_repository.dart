import 'package:injectable/injectable.dart';
import 'package:user_list_core/api_services/api_service.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';
import 'package:user_list_core/repositories/implementations/iuser_repository.dart';

@lazySingleton
class UserRepository implements IUserRepository {
  final ApiService apiInterface;
  UserRepository(this.apiInterface);

  @override
  Future<UserListResponse> pageList(int page, int limit) async {
    return apiInterface.getUsers(page: page, limit: limit);
  }
}
