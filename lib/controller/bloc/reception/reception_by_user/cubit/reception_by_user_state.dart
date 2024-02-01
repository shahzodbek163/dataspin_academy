part of 'reception_by_user_cubit.dart';

@freezed
class ReceptionByUserState with _$ReceptionByUserState {
  const factory ReceptionByUserState.initial() = _Initial;
  const factory ReceptionByUserState.loading() = _Loading;
  const factory ReceptionByUserState.loaded(ReceptionByUserResponse response) = _Loaded;
  const factory ReceptionByUserState.error() = _Error;
}
