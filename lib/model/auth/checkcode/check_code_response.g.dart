// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckCodeResponseImpl _$$CheckCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckCodeResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$CheckCodeResponseImplToJson(
        _$CheckCodeResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
