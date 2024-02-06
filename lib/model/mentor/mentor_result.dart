// To parse this JSON data, do
//
//     final mentorResult = mentorResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mentor_result.freezed.dart';
part 'mentor_result.g.dart';

MentorResult mentorResultFromJson(String str) =>
    MentorResult.fromJson(json.decode(str));

String mentorResultToJson(MentorResult data) => json.encode(data.toJson());

@freezed
class MentorResult with _$MentorResult {
  const factory MentorResult({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required List<MentorResultData>? data,
  }) = _MentorResult;

  factory MentorResult.fromJson(Map<String, dynamic> json) =>
      _$MentorResultFromJson(json);
}

@freezed
class MentorResultData with _$MentorResultData {
  const factory MentorResultData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "courses") required List<Course> courses,
    @JsonKey(name: "cv") Photo? cv,
    @JsonKey(name: "subMentors") required List<Employee> subMentors,
    @JsonKey(name: "employee") required Employee employee,
    @JsonKey(name: "youTubeLinks") required String youTubeLinks,
  }) = _MentorResultData;

  factory MentorResultData.fromJson(Map<String, dynamic> json) =>
      _$MentorResultDataFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "courseFor") required CourseForElement courseFor,
    @JsonKey(name: "courseType") required CourseType courseType,
    @JsonKey(name: "previewPhoto") required Photo previewPhoto,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "courseAboutParts")
    required List<CourseForElement> courseAboutParts,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class CourseForElement with _$CourseForElement {
  const factory CourseForElement({
    @JsonKey(name: "icon") Photo? icon,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "date") DateTime? date,
  }) = _CourseForElement;

  factory CourseForElement.fromJson(Map<String, dynamic> json) =>
      _$CourseForElementFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    @JsonKey(name: "id") required int id,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@freezed
class CourseType with _$CourseType {
  const factory CourseType({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "photo") required Photo photo,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "courseTags") required List<CourseForElement> courseTags,
  }) = _CourseType;

  factory CourseType.fromJson(Map<String, dynamic> json) =>
      _$CourseTypeFromJson(json);
}

@freezed
class Employee with _$Employee {
  const factory Employee({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "photo") required Photo photo,
    @JsonKey(name: "endDate") dynamic endDate,
    @JsonKey(name: "stuff") required Stuff stuff,
    @JsonKey(name: "face") required Face face,
    @JsonKey(name: "startDate") required DateTime startDate,
    @JsonKey(name: "practice") required int practice,
    @JsonKey(name: "isVerified") required bool isVerified,
    @JsonKey(name: "speciality") dynamic speciality,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}

@freezed
class Face with _$Face {
  const factory Face({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "tel1") required String tel1,
    @JsonKey(name: "tel2") required String tel2,
    @JsonKey(name: "passport") required String passport,
    @JsonKey(name: "firstname") required String firstname,
    @JsonKey(name: "lastname") required String lastname,
    @JsonKey(name: "middlename") required String middlename,
    @JsonKey(name: "birthday") required DateTime birthday,
  }) = _Face;

  factory Face.fromJson(Map<String, dynamic> json) => _$FaceFromJson(json);
}

@freezed
class Stuff with _$Stuff {
  const factory Stuff({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "id") required int id,
  }) = _Stuff;

  factory Stuff.fromJson(Map<String, dynamic> json) => _$StuffFromJson(json);
}
