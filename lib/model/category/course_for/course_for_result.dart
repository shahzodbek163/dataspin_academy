// To parse this JSON data, do
//
//     final courseForResult = courseForResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'course_for_result.freezed.dart';
part 'course_for_result.g.dart';

CourseForResult courseForResultFromJson(String str) => CourseForResult.fromJson(json.decode(str));

String courseForResultToJson(CourseForResult data) => json.encode(data.toJson());

@freezed
class CourseForResult with _$CourseForResult {
  const factory CourseForResult({
    @JsonKey(name: "status")
    required bool status,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "data")
    required List<Datum> data,
  }) = _CourseForResult;

  factory CourseForResult.fromJson(Map<String, dynamic> json) => _$CourseForResultFromJson(json);
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
    @JsonKey(name: "description")
    required String description,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
