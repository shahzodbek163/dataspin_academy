// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_code_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendCodeResultImpl _$$SendCodeResultImplFromJson(Map<String, dynamic> json) =>
    _$SendCodeResultImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: json['data'] as String,
    );

Map<String, dynamic> _$$SendCodeResultImplToJson(
        _$SendCodeResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
