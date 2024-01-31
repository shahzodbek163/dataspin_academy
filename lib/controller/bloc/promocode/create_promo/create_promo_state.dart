part of 'create_promo_cubit.dart';

@freezed
class CreatePromoState with _$CreatePromoState {
  const factory CreatePromoState.initial() = _Initial;
  const factory CreatePromoState.creating() = _Creating;
  const factory CreatePromoState.invalid() = _Invalid;
  const factory CreatePromoState.created() = _Created;
}
