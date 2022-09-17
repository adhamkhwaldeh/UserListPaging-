import 'package:user_list_core/data/models/user.dart';
// 1
import 'package:json_annotation/json_annotation.dart';

// 2
part 'user_list_response.g.dart';

// 3
@JsonSerializable()
class UserListResponse {
  final List<User> users;
  final int total;

  const UserListResponse({
    required this.users,
    required this.total,
  });


  // 7
  factory UserListResponse.fromJson(Map<String, dynamic> json) =>
      _$UserListResponseFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$UserListResponseToJson(this);

}
