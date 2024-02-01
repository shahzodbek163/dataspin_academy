// To parse this JSON data, do
//
//     final commentResponse = commentResponseFromJson(jsonString);

import 'package:dataspin_academy/model/account/response/account_response.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_response.freezed.dart';
part 'comment_response.g.dart';

CommentResponse commentResponseFromJson(String str) => CommentResponse.fromJson(json.decode(str));

String commentResponseToJson(CommentResponse data) => json.encode(data.toJson());

@freezed
class CommentResponse with _$CommentResponse {
    const factory CommentResponse({
        @JsonKey(name: "status")
        required bool status,
        @JsonKey(name: "message")
        required String message,
        @JsonKey(name: "data")
        required List<CommentData> data,
    }) = _CommentResponse;

    factory CommentResponse.fromJson(Map<String, dynamic> json) => _$CommentResponseFromJson(json);
}

@freezed
class CommentData with _$CommentData {
    const factory CommentData({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "userInfo")
        required AccountData userInfo,
        @JsonKey(name: "date")
        required DateTime date,
        @JsonKey(name: "course")
        required Course course,
        @JsonKey(name: "replyText")
        required String replyText,
    }) = _CommentData;

    factory CommentData.fromJson(Map<String, dynamic> json) => _$CommentDataFromJson(json);
}

@freezed
class Course with _$Course {
    const factory Course({
        @JsonKey(name: "name")
        required String name,
        @JsonKey(name: "id")
        required int id,
    }) = _Course;

    factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}


@freezed
class ProfilePhoto with _$ProfilePhoto {
    const factory ProfilePhoto({
        @JsonKey(name: "id")
        required int id,
    }) = _ProfilePhoto;

    factory ProfilePhoto.fromJson(Map<String, dynamic> json) => _$ProfilePhotoFromJson(json);
}
