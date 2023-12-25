part of 'validation_auth_cubit.dart';



@freezed
class ValidationAuthState with _$ValidationAuthState {
  const factory ValidationAuthState.initial() = _Initial;
  const factory ValidationAuthState.emptyState(bool isEmpty) = _EmptyState;
  const factory ValidationAuthState.formatState(bool isValid) = _FormatState;
}
