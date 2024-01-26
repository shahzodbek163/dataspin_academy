// To parse this JSON data, do
//
//     final courseWithPriceResponse = courseWithPriceResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

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
    @JsonKey(name: "data") required List<CourseWithPriceData?> data,
  }) = _CourseWithPriceResponse;

  factory CourseWithPriceResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseWithPriceResponseFromJson(json);
}

@freezed
class CourseWithPriceData with _$CourseWithPriceData {
  const factory CourseWithPriceData({
    @JsonKey(name: "course") required Course course,
    @JsonKey(name: "mentor") required Mentor mentor,
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
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "courseFor") required CourseForElement courseFor,
    @JsonKey(name: "courseType") required CourseType courseType,
    @JsonKey(name: "previewPhoto") required PreviewPhoto previewPhoto,
    @JsonKey(name: "courseAboutParts")
    required List<CourseForElement> courseAboutParts,
    @JsonKey(name: "status") required bool status,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class CourseForElement with _$CourseForElement {
  const factory CourseForElement({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "icon") PreviewPhoto? icon,
    @JsonKey(name: "date") DateTime? date,
  }) = _CourseForElement;

  factory CourseForElement.fromJson(Map<String, dynamic> json) =>
      _$CourseForElementFromJson(json);
}

@freezed
class PreviewPhoto with _$PreviewPhoto {
  const factory PreviewPhoto({
    @JsonKey(name: "id") required int id,
  }) = _PreviewPhoto;

  factory PreviewPhoto.fromJson(Map<String, dynamic> json) =>
      _$PreviewPhotoFromJson(json);
}

@freezed
class CourseType with _$CourseType {
  const factory CourseType({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "courseTags") required List<CourseForElement> courseTags,
    @JsonKey(name: "photo") required PreviewPhoto photo,
  }) = _CourseType;

  factory CourseType.fromJson(Map<String, dynamic> json) =>
      _$CourseTypeFromJson(json);
}

@freezed
class Mentor with _$Mentor {
  const factory Mentor({
    @JsonKey(name: "courses") required List<PreviewPhoto> courses,
    @JsonKey(name: "employee") required Employee employee,
  }) = _Mentor;

  factory Mentor.fromJson(Map<String, dynamic> json) => _$MentorFromJson(json);
}

@freezed
class Employee with _$Employee {
  const factory Employee({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "face") required Face face,
    @JsonKey(name: "about") dynamic about,
    @JsonKey(name: "photo") required PreviewPhoto photo,
    @JsonKey(name: "practice") required int practice,
    @JsonKey(name: "isVerified") required bool isVerified,
    @JsonKey(name: "endDate") dynamic endDate,
    @JsonKey(name: "startDate") required DateTime startDate,
    @JsonKey(name: "stuff") required Stuff stuff,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}

@freezed
class Face with _$Face {
  const factory Face({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "firstname") required String firstname,
    @JsonKey(name: "lastname") required String lastname,
    @JsonKey(name: "middlename") required String middlename,
    @JsonKey(name: "passport") required String passport,
    @JsonKey(name: "birthday") required DateTime birthday,
    @JsonKey(name: "tel1") required String tel1,
    @JsonKey(name: "tel2") required String tel2,
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
