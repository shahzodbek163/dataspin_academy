part of 'get_all_promo_cubit.dart';

@freezed
class GetAllPromoState with _$GetAllPromoState {
  const factory GetAllPromoState.initial() = _Initial;
  const factory GetAllPromoState.loading() = _Loading;
  const factory GetAllPromoState.loaded(AllPromocodeResponse response) =
      _Loaded;
  const factory GetAllPromoState.invalid() = _Invalid;
}
