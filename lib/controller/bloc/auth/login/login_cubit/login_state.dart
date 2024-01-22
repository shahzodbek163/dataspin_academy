part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.checking() = _Checking;
  const factory LoginState.success() = _Success;
  const factory LoginState.failed() = _Failed;
}
