// To parse this JSON data, do
//
//     final mentorResult = mentorResultFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'mentor_result.freezed.dart';
part 'mentor_result.g.dart';

MentorResult mentorResultFromJson(String str) => MentorResult.fromJson(json.decode(str));

String mentorResultToJson(MentorResult data) => json.encode(data.toJson());

@freezed
class MentorResult with _$MentorResult {
  const factory MentorResult({
    @JsonKey(name: "status")
    required bool status,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "data")
    required List<Datum> data,
  }) = _MentorResult;

  factory MentorResult.fromJson(Map<String, dynamic> json) => _$MentorResultFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "date")
    required DateTime date,
    @JsonKey(name: "courses")
    required List<Course> courses,
    @JsonKey(name: "subMentors")
    required List<Employee> subMentors,
    @JsonKey(name: "employee")
    required Employee employee,
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
    @JsonKey(name: "courseFor")
    required CourseForElement courseFor,
    @JsonKey(name: "courseType")
    required CourseType courseType,
    @JsonKey(name: "previewPhoto")
    required Photo previewPhoto,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class CourseForElement with _$CourseForElement {
  const factory CourseForElement({
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "date")
    required DateTime date,
    @JsonKey(name: "description")
    String? description,
  }) = _CourseForElement;

  factory CourseForElement.fromJson(Map<String, dynamic> json) => _$CourseForElementFromJson(json);
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
    required List<CourseForElement> courseTags,
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

@freezed
class Employee with _$Employee {
  const factory Employee({
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "face")
    required Face face,
    @JsonKey(name: "about")
     String? about,
    @JsonKey(name: "photo")
    required Photo photo,
    @JsonKey(name: "endDate")
    required DateTime? endDate,
    @JsonKey(name: "stuff")
    required Stuff stuff,
    @JsonKey(name: "startDate")
    required DateTime startDate,
    @JsonKey(name: "practice")
    required int practice,
    @JsonKey(name: "isVerified")
    required bool? isVerified,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
}

@freezed
class Face with _$Face {
  const factory Face({
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "date")
    required DateTime date,
    @JsonKey(name: "tel1")
    required String tel1,
    @JsonKey(name: "tel2")
    required String tel2,
    @JsonKey(name: "firstname")
    required String firstname,
    @JsonKey(name: "lastname")
    required String lastname,
    @JsonKey(name: "middlename")
    required String middlename,
    @JsonKey(name: "passport")
    required String passport,
    @JsonKey(name: "birthday")
    required DateTime birthday,
  }) = _Face;

  factory Face.fromJson(Map<String, dynamic> json) => _$FaceFromJson(json);
}

@freezed
class Stuff with _$Stuff {
  const factory Stuff({
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "id")
    required int id,
  }) = _Stuff;

  factory Stuff.fromJson(Map<String, dynamic> json) => _$StuffFromJson(json);
}
