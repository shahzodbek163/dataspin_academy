part of 'course_by_id_cubit.dart';

@freezed
class CourseByIdState with _$CourseByIdState {
  const factory CourseByIdState.initial() = _Initial;
  const factory CourseByIdState.loading() = _Loading;
  const factory CourseByIdState.data() = _Data;
}
