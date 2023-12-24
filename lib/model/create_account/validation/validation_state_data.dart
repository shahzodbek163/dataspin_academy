// To parse this JSON data, do
//
//     final validationStateData = validationStateDataFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'validation_state_data.freezed.dart';
part 'validation_state_data.g.dart';

ValidationStateData validationStateDataFromJson(String str) => ValidationStateData.fromJson(json.decode(str));

String validationStateDataToJson(ValidationStateData data) => json.encode(data.toJson());

@freezed
class ValidationStateData with _$ValidationStateData {
    const factory ValidationStateData({
        @JsonKey(name: "firstname_empty")
        required bool firstnameEmpty,
        @JsonKey(name: "lastname_empty")
        required bool lastnameEmpty,
        @JsonKey(name: "birhtday_valid")
        required bool birhtdayValid,
        @JsonKey(name: "phone")
        required Phone phone,
        @JsonKey(name: "additional_phone_valid")
        required bool additionalPhoneValid,
    }) = _ValidationStateData;

    factory ValidationStateData.fromJson(Map<String, dynamic> json) => _$ValidationStateDataFromJson(json);
}

@freezed
class Phone with _$Phone {
    const factory Phone({
        @JsonKey(name: "is_empty")
        required bool isEmpty,
        @JsonKey(name: "is_valid")
        required bool isValid,
    }) = _Phone;

    factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);
}
