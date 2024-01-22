part of 'aboutus_cubit.dart';

@freezed
class AboutusState with _$AboutusState {
  const factory AboutusState.initial() = _Initial;
  const factory AboutusState.getting() = _Getting;
  const factory AboutusState.get(AboutUsResult response) = _Get;
  const factory AboutusState.error() = _Error;
}
