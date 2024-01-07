// To parse this JSON data, do
//
//     final createAccountResponse = createAccountResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

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
    required Data? data,
  }) = _CreateAccountResponse;

  factory CreateAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "firstname") required String firstname,
    @JsonKey(name: "lastname") required String lastname,
    @JsonKey(name: "middlename") String? middlename,
    @JsonKey(name: "birthday") DateTime? birthday,
    @JsonKey(name: "primaryPhone") required String primaryPhone,
    @JsonKey(name: "secondaryPhone") String? secondaryPhone,
    @JsonKey(name: "userData") UserData? userData,
    @JsonKey(name: "date") DateTime? date,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "pass") required String pass,
    @JsonKey(name: "roles") required List<Role> roles,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
