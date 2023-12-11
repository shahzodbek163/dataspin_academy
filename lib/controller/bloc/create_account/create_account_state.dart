part of 'create_account_cubit.dart';

@freezed
class CreateAccountState with _$CreateAccountState {
  const factory CreateAccountState.initial() = _Initial;
  const factory CreateAccountState.sending() = _Checking;
  const factory CreateAccountState.send(CreateAccountResponse createAccountResponse) = _Checked;
  const factory CreateAccountState.error() = _Error;
}
