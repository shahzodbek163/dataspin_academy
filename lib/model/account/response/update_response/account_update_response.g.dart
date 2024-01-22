// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountUpdateResponseImpl _$$AccountUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountUpdateResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$$AccountUpdateResponseImplToJson(
        _$AccountUpdateResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
