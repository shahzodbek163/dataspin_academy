// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateAccountResponseImpl _$$CreateAccountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAccountResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$$CreateAccountResponseImplToJson(
        _$CreateAccountResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
