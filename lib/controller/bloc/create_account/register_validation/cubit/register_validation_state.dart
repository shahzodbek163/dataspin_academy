part of 'register_validation_cubit.dart';

@freezed
class RegisterValidationState with _$RegisterValidationState {
  const factory RegisterValidationState.initial() = _Initial;
  const factory RegisterValidationState.data(ValidationStateData validationStateData) = _Data;
  const factory RegisterValidationState.sending() = _Sending;
  const factory RegisterValidationState.sent(CreateAccountResponse createAccountResponse) = _Sent;



}
