// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentResponseImpl _$$CommentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => CommentData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CommentResponseImplToJson(
        _$CommentResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$CommentDataImpl _$$CommentDataImplFromJson(Map<String, dynamic> json) =>
    _$CommentDataImpl(
      id: json['id'] as int,
      userInfo: AccountData.fromJson(json['userInfo'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      course: Course.fromJson(json['course'] as Map<String, dynamic>),
      replyText: json['replyText'] as String,
    );

Map<String, dynamic> _$$CommentDataImplToJson(_$CommentDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userInfo': instance.userInfo,
      'date': instance.date.toIso8601String(),
      'course': instance.course,
      'replyText': instance.replyText,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      name: json['name'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

_$ProfilePhotoImpl _$$ProfilePhotoImplFromJson(Map<String, dynamic> json) =>
    _$ProfilePhotoImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$ProfilePhotoImplToJson(_$ProfilePhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
