import 'package:injectable/injectable.dart';
import 'package:user_list_core/api_services/api_service.dart';
import 'package:user_list_core/data/responses/user_list_response.dart';
import 'package:user_list_core/repositories/faked/dummy_data_helper.dart';
import 'package:user_list_core/repositories/implementations/iuser_repository.dart';

@lazySingleton
class FakedUserRepository implements IUserRepository {
  FakedUserRepository();

  @override
  Future<UserListResponse> pageList(int page, int limit) async {
    return UserListResponse(users: DummyDataHelper.userList, total: 60);
  }
}
