// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsResponseImpl _$$NewsResponseImplFromJson(Map<String, dynamic> json) =>
    _$NewsResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NewsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewsResponseImplToJson(_$NewsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$NewsDataImpl _$$NewsDataImplFromJson(Map<String, dynamic> json) =>
    _$NewsDataImpl(
      name: json['name'] as String,
      id: json['id'] as int,
      shortDesc: json['shortDesc'] as String,
      fullDesc: json['fullDesc'] as String,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewsDataImplToJson(_$NewsDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'shortDesc': instance.shortDesc,
      'fullDesc': instance.fullDesc,
      'photo': instance.photo,
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
