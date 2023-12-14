part of 'course_with_price_cubit.dart';

@freezed
class CourseWithPriceState with _$CourseWithPriceState {
  const factory CourseWithPriceState.initial() = _Initial;
  const factory CourseWithPriceState.getting() = _Getting;
  const factory CourseWithPriceState.get(CourseWithPriceResponse result) = _Get;
  const factory CourseWithPriceState.error() = _Error;
}
