// To parse this JSON data, do
//
//     final sendCodeResult = sendCodeResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'send_code_result.freezed.dart';
part 'send_code_result.g.dart';

SendCodeResult sendCodeResultFromJson(String str) => SendCodeResult.fromJson(json.decode(str));

String sendCodeResultToJson(SendCodeResult data) => json.encode(data.toJson());

@freezed
class SendCodeResult with _$SendCodeResult {
  const factory SendCodeResult({
    @JsonKey(name: "status")
    required bool status,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "data")
    required String data,
  }) = _SendCodeResult;

  factory SendCodeResult.fromJson(Map<String, dynamic> json) => _$SendCodeResultFromJson(json);
}
