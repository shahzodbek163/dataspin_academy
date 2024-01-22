part of 'account_update_cubit.dart';

@freezed
class AccountUpdateState with _$AccountUpdateState {
  const factory AccountUpdateState.initial() = _Initial;
  const factory AccountUpdateState.updating() = _Updating;
  const factory AccountUpdateState.updated(AccountUpdateResponse response) = _Updated;
  const factory AccountUpdateState.error() = _Error;
}
