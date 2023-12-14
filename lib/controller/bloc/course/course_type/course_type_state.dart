part of 'course_type_cubit.dart';

@freezed
class CourseTypeState with _$CourseTypeState {
  const factory CourseTypeState.initial() = _Initial;
  const factory CourseTypeState.getting() = _Getting;
  const factory CourseTypeState.get(CourseTypeResult result) = _Get;
  const factory CourseTypeState.error() = _Error;
}
