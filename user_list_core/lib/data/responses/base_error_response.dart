import 'package:json_annotation/json_annotation.dart';

part 'base_error_response.g.dart';

@JsonSerializable()
class BaseErrorResponse {
  BaseErrorResponse();
  bool? status = false;
  String? message = "";

  factory BaseErrorResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseErrorResponseFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$BaseErrorResponseToJson(this);
}
