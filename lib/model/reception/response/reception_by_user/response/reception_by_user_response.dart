// To parse this JSON data, do
//
//     final receptionByUserResponse = receptionByUserResponseFromJson(jsonString);

import 'dart:convert';

import 'package:dataspin_academy/model/account/response/account_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reception_by_user_response.freezed.dart';
part 'reception_by_user_response.g.dart';

ReceptionByUserResponse receptionByUserResponseFromJson(String str) =>
    ReceptionByUserResponse.fromJson(json.decode(str));

String receptionByUserResponseToJson(ReceptionByUserResponse data) =>
    json.encode(data.toJson());

@freezed
class ReceptionByUserResponse with _$ReceptionByUserResponse {
  const factory ReceptionByUserResponse({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required List<ReceptionByUserData> data,
  }) = _ReceptionByUserResponse;

  factory ReceptionByUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ReceptionByUserResponseFromJson(json);
}

@freezed
class ReceptionByUserData with _$ReceptionByUserData {
  const factory ReceptionByUserData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "userInfo") required AccountData userInfo,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "courseName") required String courseName,
    @JsonKey(name: "receptionNumber") required String receptionNumber,
    @JsonKey(name: "courseFor") required Course courseFor,
    @JsonKey(name: "courseType") required CourseType courseType,
    @JsonKey(name: "employee") required Employee employee,
    @JsonKey(name: "description") dynamic description,
  }) = _ReceptionByUserData;

  factory ReceptionByUserData.fromJson(Map<String, dynamic> json) =>
      _$ReceptionByUserDataFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "description") String? description,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class CourseType with _$CourseType {
  const factory CourseType({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "photo") required Photo photo,
    @JsonKey(name: "courseTags") required List<Course> courseTags,
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
class Employee with _$Employee {
  const factory Employee({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "face") required Face face,
    @JsonKey(name: "about") String? about,
    @JsonKey(name: "endDate") dynamic endDate,
    @JsonKey(name: "photo") required Photo photo,
    @JsonKey(name: "stuff") required Stuff stuff,
    @JsonKey(name: "practice") required int practice,
    @JsonKey(name: "isVerified") required bool isVerified,
    @JsonKey(name: "startDate") required DateTime startDate,
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
    @JsonKey(name: "firstname") required String firstname,
    @JsonKey(name: "lastname") required String lastname,
    @JsonKey(name: "middlename") required String? middlename,
    @JsonKey(name: "birthday") required DateTime birthday,
    @JsonKey(name: "passport") required String passport,
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
