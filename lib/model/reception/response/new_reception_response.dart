// To parse this JSON data, do
//
//     final newReceptionResponse = newReceptionResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'new_reception_response.freezed.dart';
part 'new_reception_response.g.dart';

NewReceptionResponse newReceptionResponseFromJson(String str) =>
    NewReceptionResponse.fromJson(json.decode(str));

String newReceptionResponseToJson(NewReceptionResponse data) =>
    json.encode(data.toJson());

@freezed
class NewReceptionResponse with _$NewReceptionResponse {
  const factory NewReceptionResponse({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") dynamic data,
  }) = _NewReceptionResponse;

  factory NewReceptionResponse.fromJson(Map<String, dynamic> json) =>
      _$NewReceptionResponseFromJson(json);
}
