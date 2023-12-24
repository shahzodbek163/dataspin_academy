part of 'validation_auth_cubit.dart';

enum ValidationAuthType { date, phone }


@freezed
class ValidationAuthState with _$ValidationAuthState {
  const factory ValidationAuthState.initial() = _Initial;
  const factory ValidationAuthState.emptyState(bool isEmpty) = _EmptyState;
  const factory ValidationAuthState.formatState(bool isValid) = _FormatState;
  const factory ValidationAuthState.sending() = _Sending;
  const factory ValidationAuthState.send(SendCodeResult sendCodeResult) = _Send;
}
