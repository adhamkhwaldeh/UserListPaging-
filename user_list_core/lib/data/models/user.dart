import 'package:user_list_core/data/enums/gender.dart';
import 'package:user_list_core/data/enums/status.dart';

// 1
import 'package:json_annotation/json_annotation.dart';

// 2
part 'user.g.dart';

// 3
@JsonSerializable()
class User {
  String id;
  String name;
  Gender gender;
  Status status;
  List<double>? statistics;

  // User.initial() : User();

  User({
    this.id = "",
    this.name = "",
    this.gender = Gender.male,
    this.status = Status.active,
    this.statistics = const [],
  });

  // 7
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
