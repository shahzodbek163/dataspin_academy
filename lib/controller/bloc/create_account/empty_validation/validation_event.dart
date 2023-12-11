part of 'validation_bloc.dart';

enum ValidationType { date, phone }

@freezed
class ValidationEvent with _$ValidationEvent {
  const factory ValidationEvent.empty(String text) = _Empty;
  const factory ValidationEvent.format(
      ValidationType validationType, String text) = _Format;
  const factory ValidationEvent.accept(
      ValidationType validationType, String text) = _Accept;
}
