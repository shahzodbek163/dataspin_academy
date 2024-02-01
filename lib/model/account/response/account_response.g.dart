// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountResponseImpl _$$AccountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: AccountData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountResponseImplToJson(
        _$AccountResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$AccountDataImpl _$$AccountDataImplFromJson(Map<String, dynamic> json) =>
    _$AccountDataImpl(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      userData: ProfilePhoto.fromJson(json['userData'] as Map<String, dynamic>),
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      middlename: json['middlename'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      profilePhoto: json['profilePhoto'] == null
          ? null
          : ProfilePhoto.fromJson(json['profilePhoto'] as Map<String, dynamic>),
      primaryPhone: json['primaryPhone'] as String,
      secondaryPhone: json['secondaryPhone'] as String?,
    );

Map<String, dynamic> _$$AccountDataImplToJson(_$AccountDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'userData': instance.userData,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'middlename': instance.middlename,
      'birthday': instance.birthday?.toIso8601String(),
      'profilePhoto': instance.profilePhoto,
      'primaryPhone': instance.primaryPhone,
      'secondaryPhone': instance.secondaryPhone,
    };

_$ProfilePhotoImpl _$$ProfilePhotoImplFromJson(Map<String, dynamic> json) =>
    _$ProfilePhotoImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$ProfilePhotoImplToJson(_$ProfilePhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
