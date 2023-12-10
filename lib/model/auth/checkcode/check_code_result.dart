// To parse this JSON data, do
//
//     final checkCodeResult = checkCodeResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_code_result.freezed.dart';
part 'check_code_result.g.dart';

CheckCodeResult checkCodeResultFromJson(String str) => CheckCodeResult.fromJson(json.decode(str));

String checkCodeResultToJson(CheckCodeResult data) => json.encode(data.toJson());

@freezed
class CheckCodeResult with _$CheckCodeResult {
  const factory CheckCodeResult({
    @JsonKey(name: "status")
    required bool status,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "data")
    required Data data,
  }) = _CheckCodeResult;

  factory CheckCodeResult.fromJson(Map<String, dynamic> json) => _$CheckCodeResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "token")
    required String token,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
