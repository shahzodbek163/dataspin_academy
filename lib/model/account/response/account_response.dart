// To parse this JSON data, do
//
//     final accountResponse = accountResponseFromJson(jsonString);

import 'package:meta/meta.dart';
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
    @JsonKey(name: "data") required AccountData data,
  }) = _AccountResponse;

  factory AccountResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountResponseFromJson(json);
}

@freezed
class AccountData with _$AccountData {
  const factory AccountData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "userData") required ProfilePhoto userData,
    @JsonKey(name: "firstname") required String firstname,
    @JsonKey(name: "lastname") required String lastname,
    @JsonKey(name: "middlename") String? middlename,
    @JsonKey(name: "birthday") DateTime? birthday,
    @JsonKey(name: "profilePhoto") ProfilePhoto? profilePhoto,
    @JsonKey(name: "primaryPhone") required String primaryPhone,
    @JsonKey(name: "secondaryPhone") String? secondaryPhone,
  }) = _AccountData;

  factory AccountData.fromJson(Map<String, dynamic> json) =>
      _$AccountDataFromJson(json);
}

@freezed
class ProfilePhoto with _$ProfilePhoto {
  const factory ProfilePhoto({
    @JsonKey(name: "id") required int id,
  }) = _ProfilePhoto;

  factory ProfilePhoto.fromJson(Map<String, dynamic> json) =>
      _$ProfilePhotoFromJson(json);
}
