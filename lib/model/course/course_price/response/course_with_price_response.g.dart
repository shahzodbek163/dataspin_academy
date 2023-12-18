// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_with_price_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseWithPriceResponseImpl _$$CourseWithPriceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseWithPriceResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CourseWithPriceData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseWithPriceResponseImplToJson(
        _$CourseWithPriceResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$CourseWithPriceDataImpl _$$CourseWithPriceDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseWithPriceDataImpl(
      course: Course.fromJson(json['course'] as Map<String, dynamic>),
      price: json['price'] as int?,
      receptionCounter: ReceptionCounter.fromJson(
          json['reception_counter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseWithPriceDataImplToJson(
        _$CourseWithPriceDataImpl instance) =>
    <String, dynamic>{
      'course': instance.course,
      'price': instance.price,
      'reception_counter': instance.receptionCounter,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      name: json['name'] as String,
      id: json['id'] as int,
      courseFor:
          CourseForElement.fromJson(json['courseFor'] as Map<String, dynamic>),
      courseType:
          CourseType.fromJson(json['courseType'] as Map<String, dynamic>),
      previewPhoto:
          Photo.fromJson(json['previewPhoto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'courseFor': instance.courseFor,
      'courseType': instance.courseType,
      'previewPhoto': instance.previewPhoto,
    };

_$CourseForElementImpl _$$CourseForElementImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseForElementImpl(
      name: json['name'] as String,
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CourseForElementImplToJson(
        _$CourseForElementImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'description': instance.description,
    };

_$CourseTypeImpl _$$CourseTypeImplFromJson(Map<String, dynamic> json) =>
    _$CourseTypeImpl(
      name: json['name'] as String,
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>),
      courseTags: (json['courseTags'] as List<dynamic>?)
          ?.map((e) => CourseForElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$CourseTypeImplToJson(_$CourseTypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'photo': instance.photo,
      'courseTags': instance.courseTags,
      'description': instance.description,
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ReceptionCounterImpl _$$ReceptionCounterImplFromJson(
        Map<String, dynamic> json) =>
    _$ReceptionCounterImpl(
      totalCount: json['totalCount'] as int,
      activeCount: json['activeCount'] as int,
      inactiveCount: json['inactiveCount'] as int,
    );

Map<String, dynamic> _$$ReceptionCounterImplToJson(
        _$ReceptionCounterImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'activeCount': instance.activeCount,
      'inactiveCount': instance.inactiveCount,
    };
