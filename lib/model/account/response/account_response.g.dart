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
      data: json['data'] == null
          ? null
          : AccountResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountResponseImplToJson(
        _$AccountResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$AccountResponseDataImpl _$$AccountResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountResponseDataImpl(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      profilePhoto: json['profilePhoto'],
      primaryPhone: json['primaryPhone'] as String,
      secondaryPhone: json['secondaryPhone'],
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      middlename: json['middlename'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      userData: UserData.fromJson(json['userData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountResponseDataImplToJson(
        _$AccountResponseDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'profilePhoto': instance.profilePhoto,
      'primaryPhone': instance.primaryPhone,
      'secondaryPhone': instance.secondaryPhone,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'middlename': instance.middlename,
      'birthday': instance.birthday.toIso8601String(),
      'userData': instance.userData,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
