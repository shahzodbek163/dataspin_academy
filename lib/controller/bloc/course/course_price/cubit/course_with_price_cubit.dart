import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_with_price_state.dart';
part 'course_with_price_cubit.freezed.dart';

class CourseWithPriceCubit extends Cubit<CourseWithPriceState> {
  final apiService = ApiService(CustomDio().get);
  CourseWithPriceCubit() : super(const CourseWithPriceState.initial());

  void getAllCourseWithPrice() async {
    emit(const CourseWithPriceState.getting());
    CourseWithPriceResponse result = await apiService.getAllCourseWithPrice();
    emit(CourseWithPriceState.get(result));
  }
}
