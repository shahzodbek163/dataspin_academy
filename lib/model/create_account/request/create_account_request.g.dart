// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateAccountRequestImpl _$$CreateAccountRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAccountRequestImpl(
      birthday: json['birthday'] as String?,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      middlename: json['middlename'] as String?,
      tel1: json['tel1'] as String,
      tel2: json['tel2'] as String?,
      tg: json['tg'] as String?,
    );

Map<String, dynamic> _$$CreateAccountRequestImplToJson(
        _$CreateAccountRequestImpl instance) =>
    <String, dynamic>{
      'birthday': instance.birthday,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'middlename': instance.middlename,
      'tel1': instance.tel1,
      'tel2': instance.tel2,
      'tg': instance.tg,
    };
