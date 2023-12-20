// To parse this JSON data, do
//
//     final newReceptionRequest = newReceptionRequestFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'new_reception_request.freezed.dart';
part 'new_reception_request.g.dart';

NewReceptionRequest newReceptionRequestFromJson(String str) =>
    NewReceptionRequest.fromJson(json.decode(str));

String newReceptionRequestToJson(NewReceptionRequest data) =>
    json.encode(data.toJson());

@freezed
class NewReceptionRequest with _$NewReceptionRequest {
  const factory NewReceptionRequest({
    @JsonKey(name: "courseID") required int courseId,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "receptionNumber") required String receptionNumber,
  }) = _NewReceptionRequest;

  factory NewReceptionRequest.fromJson(Map<String, dynamic> json) =>
      _$NewReceptionRequestFromJson(json);
}
