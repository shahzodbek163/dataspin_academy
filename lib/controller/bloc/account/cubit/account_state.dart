part of 'account_cubit.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = _Initial;
  const factory AccountState.getting() = _Getting;
  const factory AccountState.get(AccountResponse response) = _Get;
  const factory AccountState.error() = _Error;
}
