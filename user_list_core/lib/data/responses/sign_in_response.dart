// 1
import 'package:json_annotation/json_annotation.dart';

// 2
part 'sign_in_response.g.dart';


// 3
@JsonSerializable()
class SignInResponse {
  final String access_token;
  final String refresh_token;

  const SignInResponse({
    required this.access_token,
    required this.refresh_token,
  });


  // 7
  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$SignInResponseToJson(this);

}
