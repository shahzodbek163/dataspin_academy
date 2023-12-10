// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_code_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckCodeResultImpl _$$CheckCodeResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckCodeResultImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckCodeResultImplToJson(
        _$CheckCodeResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      message: json['message'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'token': instance.token,
    };
