// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_type_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseTypeResultImpl _$$CourseTypeResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseTypeResultImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseTypeResultImplToJson(
        _$CourseTypeResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      name: json['name'] as String,
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>),
      description: json['description'] as String,
      courseTags: (json['courseTags'] as List<dynamic>)
          .map((e) => CourseTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'photo': instance.photo,
      'description': instance.description,
      'courseTags': instance.courseTags,
    };

_$CourseTagImpl _$$CourseTagImplFromJson(Map<String, dynamic> json) =>
    _$CourseTagImpl(
      name: json['name'] as String,
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$CourseTagImplToJson(_$CourseTagImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'date': instance.date.toIso8601String(),
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
