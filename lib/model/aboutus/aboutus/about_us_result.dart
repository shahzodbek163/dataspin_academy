// To parse this JSON data, do
//
//     final aboutUsResult = aboutUsResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'about_us_result.freezed.dart';
part 'about_us_result.g.dart';

AboutUsResult aboutUsResultFromJson(String str) =>
    AboutUsResult.fromJson(json.decode(str));

String aboutUsResultToJson(AboutUsResult data) => json.encode(data.toJson());

@freezed
class AboutUsResult with _$AboutUsResult {
  const factory AboutUsResult({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required Data data,
  }) = _AboutUsResult;

  factory AboutUsResult.fromJson(Map<String, dynamic> json) =>
      _$AboutUsResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "additionalPhoto") required List<Photo> additionalPhoto,
    @JsonKey(name: "licensePhotos") required List<Photo> licensePhotos,
    @JsonKey(name: "mainPhoto") required Photo mainPhoto,
    @JsonKey(name: "youTubeLinks") required String youTubeLinks,
    @JsonKey(name: "ourLocation") required String ourLocation,
    @JsonKey(name: "activityDesc") required String activityDesc,
    @JsonKey(name: "fullAboutUs") required String fullAboutUs,
    @JsonKey(name: "academyName") required String academyName,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    @JsonKey(name: "id") required int id,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
