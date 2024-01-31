part of 'get_my_promos_cubit.dart';

@freezed
class GetMyPromosState with _$GetMyPromosState {
  const factory GetMyPromosState.initial() = _Initial;
  const factory GetMyPromosState.loading() = _Loading;
  const factory GetMyPromosState.loaded() = _Loaded;
}
