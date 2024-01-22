part of 'user_register_cubit.dart';

@freezed
class UserRegisterState with _$UserRegisterState {
  const factory UserRegisterState.initial() = _Initial;
  const factory UserRegisterState.registering() = _Registering;
  const factory UserRegisterState.registered() = _Registered;
  const factory UserRegisterState.errorOccured() = _Error;
}
