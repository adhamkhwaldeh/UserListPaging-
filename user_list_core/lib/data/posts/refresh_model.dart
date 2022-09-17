// 1
import 'package:json_annotation/json_annotation.dart';

// 2
part 'refresh_model.g.dart';


// 3
@JsonSerializable()
class RefreshModel {
  final String refresh_token;

  const RefreshModel({
    required this.refresh_token,
  });

      // 7
  factory RefreshModel.fromJson(Map<String, dynamic> json) =>
      _$RefreshModelFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$RefreshModelToJson(this);
}


