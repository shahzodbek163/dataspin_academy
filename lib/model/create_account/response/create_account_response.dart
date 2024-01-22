// To parse this JSON data, do
//
//     final createAccountResponse = createAccountResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_response.freezed.dart';
part 'create_account_response.g.dart';

CreateAccountResponse createAccountResponseFromJson(String str) =>
    CreateAccountResponse.fromJson(json.decode(str));

String createAccountResponseToJson(CreateAccountResponse data) =>
    json.encode(data.toJson());

@freezed
class CreateAccountResponse with _$CreateAccountResponse {
  const factory CreateAccountResponse({
    required bool status,
    required String message,
    required dynamic data,
  }) = _CreateAccountResponse;

  factory CreateAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountResponseFromJson(json);
}
