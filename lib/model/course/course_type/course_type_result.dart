// To parse this JSON data, do
//
//     final courseTypeResult = courseTypeResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'course_type_result.freezed.dart';
part 'course_type_result.g.dart';

CourseTypeResult courseTypeResultFromJson(String str) => CourseTypeResult.fromJson(json.decode(str));

String courseTypeResultToJson(CourseTypeResult data) => json.encode(data.toJson());

@freezed
class CourseTypeResult with _$CourseTypeResult {
  const factory CourseTypeResult({
    @JsonKey(name: "status")
    required bool status,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "data")
    required List<Datum> data,
  }) = _CourseTypeResult;

  factory CourseTypeResult.fromJson(Map<String, dynamic> json) => _$CourseTypeResultFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "date")
    required DateTime date,
    @JsonKey(name: "photo")
    required Photo photo,
    @JsonKey(name: "description")
    required String description,
    @JsonKey(name: "courseTags")
    required List<CourseTag> courseTags,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class CourseTag with _$CourseTag {
  const factory CourseTag({
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "date")
    required DateTime date,
  }) = _CourseTag;

  factory CourseTag.fromJson(Map<String, dynamic> json) => _$CourseTagFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    @JsonKey(name: "id")
    required int id,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
