part of 'course_filter_by_type_bloc.dart';

@freezed
class CourseFilterByTypeState with _$CourseFilterByTypeState {
  const factory CourseFilterByTypeState.initial() = _Initial;
  const factory CourseFilterByTypeState.data(
      CourseWithPriceResponse courses, String name) = _Data;
}
