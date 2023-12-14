part of 'course_for_cubit.dart';

@freezed
class CourseForState with _$CourseForState {
  const factory CourseForState.initial() = _Initial;
  const factory CourseForState.getting() = _Getting;
  const factory CourseForState.get(CourseForResult result) = _Get;
  const factory CourseForState.error() = _Error;
}
