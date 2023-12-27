// To parse this JSON data, do
//
//     final tokenSessionResponse = tokenSessionResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'token_session_response.freezed.dart';
part 'token_session_response.g.dart';

TokenSessionResponse tokenSessionResponseFromJson(String str) => TokenSessionResponse.fromJson(json.decode(str));

String tokenSessionResponseToJson(TokenSessionResponse data) => json.encode(data.toJson());

@freezed
class TokenSessionResponse with _$TokenSessionResponse {
    const factory TokenSessionResponse({
        @JsonKey(name: "status")
        required bool status,
        @JsonKey(name: "message")
        required String message,
        @JsonKey(name: "data")
        required Data data,
    }) = _TokenSessionResponse;

    factory TokenSessionResponse.fromJson(Map<String, dynamic> json) => _$TokenSessionResponseFromJson(json);
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
