// To parse this JSON data, do
//
//     final checkCodeResponse = checkCodeResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_code_response.freezed.dart';
part 'check_code_response.g.dart';

CheckCodeResponse checkCodeResponseFromJson(String str) => CheckCodeResponse.fromJson(json.decode(str));

String checkCodeResponseToJson(CheckCodeResponse data) => json.encode(data.toJson());

@freezed
class CheckCodeResponse with _$CheckCodeResponse {
    const factory CheckCodeResponse({
        @JsonKey(name: "status")
        required bool status,
        @JsonKey(name: "message")
        required String message,
        @JsonKey(name: "data")
        required String? data,
    }) = _CheckCodeResponse;

    factory CheckCodeResponse.fromJson(Map<String, dynamic> json) => _$CheckCodeResponseFromJson(json);
}
