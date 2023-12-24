// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_state_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidationStateDataImpl _$$ValidationStateDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationStateDataImpl(
      firstnameEmpty: json['firstname_empty'] as bool,
      lastnameEmpty: json['lastname_empty'] as bool,
      birhtdayValid: json['birhtday_valid'] as bool,
      phone: Phone.fromJson(json['phone'] as Map<String, dynamic>),
      additionalPhoneValid: json['additional_phone_valid'] as bool,
    );

Map<String, dynamic> _$$ValidationStateDataImplToJson(
        _$ValidationStateDataImpl instance) =>
    <String, dynamic>{
      'firstname_empty': instance.firstnameEmpty,
      'lastname_empty': instance.lastnameEmpty,
      'birhtday_valid': instance.birhtdayValid,
      'phone': instance.phone,
      'additional_phone_valid': instance.additionalPhoneValid,
    };

_$PhoneImpl _$$PhoneImplFromJson(Map<String, dynamic> json) => _$PhoneImpl(
      isEmpty: json['is_empty'] as bool,
      isValid: json['is_valid'] as bool,
    );

Map<String, dynamic> _$$PhoneImplToJson(_$PhoneImpl instance) =>
    <String, dynamic>{
      'is_empty': instance.isEmpty,
      'is_valid': instance.isValid,
    };
