// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_promocode_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllPromocodeResponseImpl _$$AllPromocodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AllPromocodeResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => AllPromocodeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllPromocodeResponseImplToJson(
        _$AllPromocodeResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$AllPromocodeDataImpl _$$AllPromocodeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AllPromocodeDataImpl(
      id: json['id'] as int,
      userInfo: AccountData.fromJson(json['userInfo'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      status: json['status'] as bool,
      activeCount: json['activeCount'] as int,
      totalCount: json['totalCount'] as int,
      promoCode: json['promoCode'] as String,
    );

Map<String, dynamic> _$$AllPromocodeDataImplToJson(
        _$AllPromocodeDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userInfo': instance.userInfo,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
      'activeCount': instance.activeCount,
      'totalCount': instance.totalCount,
      'promoCode': instance.promoCode,
    };

_$ProfilePhotoImpl _$$ProfilePhotoImplFromJson(Map<String, dynamic> json) =>
    _$ProfilePhotoImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$ProfilePhotoImplToJson(_$ProfilePhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
