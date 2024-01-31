// To parse this JSON data, do
//
//     final allPromocodeResponse = allPromocodeResponseFromJson(jsonString);

import 'package:dataspin_academy/model/account/response/account_response.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'all_promocode_response.freezed.dart';
part 'all_promocode_response.g.dart';

AllPromocodeResponse allPromocodeResponseFromJson(String str) =>
    AllPromocodeResponse.fromJson(json.decode(str));

String allPromocodeResponseToJson(AllPromocodeResponse data) =>
    json.encode(data.toJson());

@freezed
class AllPromocodeResponse with _$AllPromocodeResponse {
  const factory AllPromocodeResponse({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required List<AllPromocodeData> data,
  }) = _AllPromocodeResponse;

  factory AllPromocodeResponse.fromJson(Map<String, dynamic> json) =>
      _$AllPromocodeResponseFromJson(json);
}

@freezed
class AllPromocodeData with _$AllPromocodeData {
  const factory AllPromocodeData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "userInfo") required AccountData userInfo,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "activeCount") required int activeCount,
    @JsonKey(name: "totalCount") required int totalCount,
    @JsonKey(name: "promoCode") required String promoCode,
  }) = _AllPromocodeData;

  factory AllPromocodeData.fromJson(Map<String, dynamic> json) =>
      _$AllPromocodeDataFromJson(json);
}

@freezed
class ProfilePhoto with _$ProfilePhoto {
  const factory ProfilePhoto({
    @JsonKey(name: "id") required int id,
  }) = _ProfilePhoto;

  factory ProfilePhoto.fromJson(Map<String, dynamic> json) =>
      _$ProfilePhotoFromJson(json);
}
