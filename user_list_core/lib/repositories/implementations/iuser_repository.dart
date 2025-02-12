import 'package:user_list_core/data/responses/user_list_response.dart';

abstract class IUserRepository {
  Future<UserListResponse> pageList(int page, int limit);
}
