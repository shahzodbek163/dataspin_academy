// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_reception_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewReceptionResponseImpl _$$NewReceptionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NewReceptionResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$$NewReceptionResponseImplToJson(
        _$NewReceptionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
