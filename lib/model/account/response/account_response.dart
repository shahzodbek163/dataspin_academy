// To parse this JSON data, do
//
//     final accountResponse = accountResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'account_response.freezed.dart';
part 'account_response.g.dart';

AccountResponse accountResponseFromJson(String str) =>
    AccountResponse.fromJson(json.decode(str));

String accountResponseToJson(AccountResponse data) =>
    json.encode(data.toJson());

@freezed
class AccountResponse with _$AccountResponse {
  const factory AccountResponse({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required AccountResponseData? data,
  }) = _AccountResponse;

  factory AccountResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountResponseFromJson(json);
}

@freezed
class AccountResponseData with _$AccountResponseData {
  const factory AccountResponseData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "profilePhoto") dynamic profilePhoto,
    @JsonKey(name: "primaryPhone") required String primaryPhone,
    @JsonKey(name: "secondaryPhone") dynamic secondaryPhone,
    @JsonKey(name: "firstname") required String firstname,
    @JsonKey(name: "lastname") required String lastname,
    @JsonKey(name: "middlename") required String middlename,
    @JsonKey(name: "birthday") required DateTime birthday,
    @JsonKey(name: "userData") required UserData userData,
  }) = _AccountResponseData;

  factory AccountResponseData.fromJson(Map<String, dynamic> json) =>
      _$AccountResponseDataFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: "id") required int id,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
