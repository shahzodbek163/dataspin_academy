// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_session_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenSessionResponseImpl _$$TokenSessionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenSessionResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TokenSessionResponseImplToJson(
        _$TokenSessionResponseImpl instance) =>
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
