// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseErrorResponse _$BaseErrorResponseFromJson(Map<String, dynamic> json) =>
    BaseErrorResponse()
      ..status = json['status'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$BaseErrorResponseToJson(BaseErrorResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
