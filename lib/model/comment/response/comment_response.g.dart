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
      userInfo: UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
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

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      profilePhoto:
          ProfilePhoto.fromJson(json['profilePhoto'] as Map<String, dynamic>),
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      middlename: json['middlename'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      primaryPhone: json['primaryPhone'] as String,
      secondaryPhone: json['secondaryPhone'] as String,
      userData: ProfilePhoto.fromJson(json['userData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'profilePhoto': instance.profilePhoto,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'middlename': instance.middlename,
      'birthday': instance.birthday.toIso8601String(),
      'primaryPhone': instance.primaryPhone,
      'secondaryPhone': instance.secondaryPhone,
      'userData': instance.userData,
    };

_$ProfilePhotoImpl _$$ProfilePhotoImplFromJson(Map<String, dynamic> json) =>
    _$ProfilePhotoImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$ProfilePhotoImplToJson(_$ProfilePhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
