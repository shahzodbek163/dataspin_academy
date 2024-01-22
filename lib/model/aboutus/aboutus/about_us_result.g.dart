// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_us_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AboutUsResultImpl _$$AboutUsResultImplFromJson(Map<String, dynamic> json) =>
    _$AboutUsResultImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AboutUsResultImplToJson(_$AboutUsResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as int,
      additionalPhoto: (json['additionalPhoto'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      licensePhotos: (json['licensePhotos'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      mainPhoto: Photo.fromJson(json['mainPhoto'] as Map<String, dynamic>),
      youTubeLinks: json['youTubeLinks'] as String,
      ourLocation: json['ourLocation'] as String,
      activityDesc: json['activityDesc'] as String,
      fullAboutUs: json['fullAboutUs'] as String,
      academyName: json['academyName'] as String,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'additionalPhoto': instance.additionalPhoto,
      'licensePhotos': instance.licensePhotos,
      'mainPhoto': instance.mainPhoto,
      'youTubeLinks': instance.youTubeLinks,
      'ourLocation': instance.ourLocation,
      'activityDesc': instance.activityDesc,
      'fullAboutUs': instance.fullAboutUs,
      'academyName': instance.academyName,
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
