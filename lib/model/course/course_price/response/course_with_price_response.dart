// To parse this JSON data, do
//
//     final courseWithPriceResponse = courseWithPriceResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'course_with_price_response.freezed.dart';
part 'course_with_price_response.g.dart';

CourseWithPriceResponse courseWithPriceResponseFromJson(String str) => CourseWithPriceResponse.fromJson(json.decode(str));

String courseWithPriceResponseToJson(CourseWithPriceResponse data) => json.encode(data.toJson());

@freezed
class CourseWithPriceResponse with _$CourseWithPriceResponse {
    const factory CourseWithPriceResponse({
        @JsonKey(name: "status")
        bool? status,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        List<CourseWithPriceData>? data,
    }) = _CourseWithPriceResponse;

    factory CourseWithPriceResponse.fromJson(Map<String, dynamic> json) => _$CourseWithPriceResponseFromJson(json);
}

@freezed
class CourseWithPriceData with _$CourseWithPriceData {
    const factory CourseWithPriceData({
        @JsonKey(name: "course")
        Course? course,
        @JsonKey(name: "price")
        int? price,
    }) = _CourseWithPriceData;

    factory CourseWithPriceData.fromJson(Map<String, dynamic> json) => _$CourseWithPriceDataFromJson(json);
}

@freezed
class Course with _$Course {
    const factory Course({
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "courseFor")
        CourseForElement? courseFor,
        @JsonKey(name: "courseType")
        CourseType? courseType,
        @JsonKey(name: "previewPhoto")
        Photo? previewPhoto,
    }) = _Course;

    factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class CourseForElement with _$CourseForElement {
    const factory CourseForElement({
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "date")
        DateTime? date,
        @JsonKey(name: "description")
        String? description,
    }) = _CourseForElement;

    factory CourseForElement.fromJson(Map<String, dynamic> json) => _$CourseForElementFromJson(json);
}

@freezed
class CourseType with _$CourseType {
    const factory CourseType({
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "date")
        DateTime? date,
        @JsonKey(name: "courseTags")
        List<CourseForElement>? courseTags,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "photo")
        Photo? photo,
    }) = _CourseType;

    factory CourseType.fromJson(Map<String, dynamic> json) => _$CourseTypeFromJson(json);
}

@freezed
class Photo with _$Photo {
    const factory Photo({
        @JsonKey(name: "id")
        int? id,
    }) = _Photo;

    factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
