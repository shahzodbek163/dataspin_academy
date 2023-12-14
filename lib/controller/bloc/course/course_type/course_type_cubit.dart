import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/dio/auth_dio.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/course/course_type/course_type_result.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';

part 'course_type_state.dart';
part 'course_type_cubit.freezed.dart';

class CourseTypeCubit extends Cubit<CourseTypeState> {
  final apiService = ApiService(CustomDio().get);
  CourseTypeCubit() : super(const CourseTypeState.initial());
  void getCourseType() async {
    emit(const CourseTypeState.getting());
    CourseTypeResult result = await apiService.getAllCourseType();
    emit(CourseTypeState.get(result));
  }
}
