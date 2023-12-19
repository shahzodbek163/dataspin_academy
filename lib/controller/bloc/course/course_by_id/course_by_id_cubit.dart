import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_by_id_state.dart';
part 'course_by_id_cubit.freezed.dart';

class CourseByIdCubit extends Cubit<CourseByIdState> {
  CourseByIdCubit() : super(const CourseByIdState.initial());
}
