// To parse this JSON data, do
//
//     final accountUpdateResponse = accountUpdateResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'account_update_response.freezed.dart';
part 'account_update_response.g.dart';

AccountUpdateResponse accountUpdateResponseFromJson(String str) =>
    AccountUpdateResponse.fromJson(json.decode(str));

String accountUpdateResponseToJson(AccountUpdateResponse data) =>
    json.encode(data.toJson());

@freezed
class AccountUpdateResponse with _$AccountUpdateResponse {
  const factory AccountUpdateResponse({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") dynamic data,
  }) = _AccountUpdateResponse;

  factory AccountUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountUpdateResponseFromJson(json);
}
