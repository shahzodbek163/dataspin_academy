// To parse this JSON data, do
//
//     final createAccountRequest = createAccountRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_account_request.freezed.dart';
part 'create_account_request.g.dart';

CreateAccountRequest createAccountRequestFromJson(String str) =>
    CreateAccountRequest.fromJson(json.decode(str));

String createAccountRequestToJson(CreateAccountRequest data) =>
    json.encode(data.toJson());

@freezed
class CreateAccountRequest with _$CreateAccountRequest {
  const factory CreateAccountRequest({
    String? birthday,
    required String firstname,
    required String lastname,
    String? middlename,
    required String tel1,
    String? tel2,
  }) = _CreateAccountRequest;

  factory CreateAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountRequestFromJson(json);
}
