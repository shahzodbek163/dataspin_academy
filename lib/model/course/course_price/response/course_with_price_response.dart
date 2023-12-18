// To parse this JSON data, do
//
//     final courseWithPriceResponse = courseWithPriceResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'course_with_price_response.freezed.dart';
part 'course_with_price_response.g.dart';

CourseWithPriceResponse courseWithPriceResponseFromJson(String str) =>
    CourseWithPriceResponse.fromJson(json.decode(str));

String courseWithPriceResponseToJson(CourseWithPriceResponse data) =>
    json.encode(data.toJson());

@freezed
class CourseWithPriceResponse with _$CourseWithPriceResponse {
  const factory CourseWithPriceResponse({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") List<CourseWithPriceData>? data,
  }) = _CourseWithPriceResponse;

  factory CourseWithPriceResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseWithPriceResponseFromJson(json);
}

@freezed
class CourseWithPriceData with _$CourseWithPriceData {
  const factory CourseWithPriceData({
    @JsonKey(name: "course") required Course course,
    @JsonKey(name: "price") int? price,
    @JsonKey(name: "reception_counter")
    required ReceptionCounter receptionCounter,
  }) = _CourseWithPriceData;

  factory CourseWithPriceData.fromJson(Map<String, dynamic> json) =>
      _$CourseWithPriceDataFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "courseFor") required CourseForElement courseFor,
    @JsonKey(name: "courseType") required CourseType courseType,
    @JsonKey(name: "previewPhoto") required Photo previewPhoto,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class CourseForElement with _$CourseForElement {
  const factory CourseForElement({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "description") required String? description,
  }) = _CourseForElement;

  factory CourseForElement.fromJson(Map<String, dynamic> json) =>
      _$CourseForElementFromJson(json);
}

@freezed
class CourseType with _$CourseType {
  const factory CourseType({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "photo") required Photo photo,
    @JsonKey(name: "courseTags") List<CourseForElement>? courseTags,
    @JsonKey(name: "description") required String description,
  }) = _CourseType;

  factory CourseType.fromJson(Map<String, dynamic> json) =>
      _$CourseTypeFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    @JsonKey(name: "id") required int id,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@freezed
class ReceptionCounter with _$ReceptionCounter {
  const factory ReceptionCounter({
    @JsonKey(name: "totalCount") required int totalCount,
    @JsonKey(name: "activeCount") required int activeCount,
    @JsonKey(name: "inactiveCount") required int inactiveCount,
  }) = _ReceptionCounter;

  factory ReceptionCounter.fromJson(Map<String, dynamic> json) =>
      _$ReceptionCounterFromJson(json);
}
