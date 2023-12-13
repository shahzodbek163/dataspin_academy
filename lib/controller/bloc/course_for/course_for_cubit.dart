import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/category/course_for/course_for_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_for_state.dart';

part 'course_for_cubit.freezed.dart';

class CourseForCubit extends Cubit<CourseForState> {
  final apiService = ApiService(CustomDio().get);

  CourseForCubit() : super(const CourseForState.initial());

  void getAllCourseFor() async {
    emit(const CourseForState.getting());
    CourseForResult result = await apiService.getAllCourseFor();
    emit(CourseForState.get(result));
  }
}
