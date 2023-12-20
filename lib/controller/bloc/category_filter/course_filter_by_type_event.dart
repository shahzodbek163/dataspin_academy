part of 'course_filter_by_type_bloc.dart';

@freezed
class CourseFilterByTypeEvent with _$CourseFilterByTypeEvent {
  const factory CourseFilterByTypeEvent.all(CourseWithPriceResponse courses) = _All;
  const factory CourseFilterByTypeEvent.byId(CourseWithPriceResponse courses, int courseTypeId) = _ById;
}
