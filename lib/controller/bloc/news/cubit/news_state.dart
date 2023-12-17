part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
    const factory NewsState.initial() = _Initial;
  const factory NewsState.getting() = _Getting;
  const factory NewsState.get(NewsResponse result) = _Get;
  const factory NewsState.error() = _Error;
}
