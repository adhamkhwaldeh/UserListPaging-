// 1
import 'package:json_annotation/json_annotation.dart';

// 2
part 'sign_in_model.g.dart';

// 3
@JsonSerializable()
class SignInModel {
  String email;

  SignInModel({
    required this.email,
  });

  // 7
  factory SignInModel.fromJson(Map<String, dynamic> json) =>
      _$SignInModelFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$SignInModelToJson(this);
}
