// To parse this JSON data, do
//
//     final courseByIdResult = courseByIdResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'course_by_id_result.freezed.dart';
part 'course_by_id_result.g.dart';

CourseByIdResult courseByIdResultFromJson(String str) => CourseByIdResult.fromJson(json.decode(str));

String courseByIdResultToJson(CourseByIdResult data) => json.encode(data.toJson());

@freezed
class CourseByIdResult with _$CourseByIdResult {
  const factory CourseByIdResult({
    @JsonKey(name: "status")
    required bool status,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "data")
    required List<Datum> data,
  }) = _CourseByIdResult;

  factory CourseByIdResult.fromJson(Map<String, dynamic> json) => _$CourseByIdResultFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "courseFor")
    required Course courseFor,
    @JsonKey(name: "courseType")
    required CourseType courseType,
    @JsonKey(name: "previewPhoto")
    required Photo previewPhoto,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "date")
    required DateTime date,
    @JsonKey(name: "description")
    String? description,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class CourseType with _$CourseType {
  const factory CourseType({
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
    required List<Course> courseTags,
  }) = _CourseType;

  factory CourseType.fromJson(Map<String, dynamic> json) => _$CourseTypeFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    @JsonKey(name: "id")
    required int id,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
