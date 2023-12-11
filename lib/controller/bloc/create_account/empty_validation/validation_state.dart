part of 'validation_bloc.dart';

@freezed
class ValidationState with _$ValidationState {
  const factory ValidationState.emptyState(bool isValid) = _EmptyState;
  const factory ValidationState.formatState(bool isValid) = _FormatState;
}
