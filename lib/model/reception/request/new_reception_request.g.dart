// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_reception_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewReceptionRequestImpl _$$NewReceptionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$NewReceptionRequestImpl(
      courseId: json['courseID'] as int,
      description: json['description'] as String?,
      receptionNumber: json['receptionNumber'] as String,
    );

Map<String, dynamic> _$$NewReceptionRequestImplToJson(
        _$NewReceptionRequestImpl instance) =>
    <String, dynamic>{
      'courseID': instance.courseId,
      'description': instance.description,
      'receptionNumber': instance.receptionNumber,
    };
