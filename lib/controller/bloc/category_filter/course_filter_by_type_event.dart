part of 'course_filter_by_type_bloc.dart';

@freezed
class CourseFilterByTypeEvent with _$CourseFilterByTypeEvent {
  const factory CourseFilterByTypeEvent.all() = _All;
  const factory CourseFilterByTypeEvent.byId() = _ById;
}
