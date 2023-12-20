import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_filter_by_type_event.dart';

part 'course_filter_by_type_state.dart';

part 'course_filter_by_type_bloc.freezed.dart';

class CourseFilterByTypeBloc
    extends Bloc<CourseFilterByTypeEvent, CourseFilterByTypeState> {
  final courseWithPrice = CourseWithPriceCubit();

  CourseFilterByTypeBloc() : super(const CourseFilterByTypeState.initial()) {
    on<CourseFilterByTypeEvent>((event, emit) {
      event.when(
        all: (courses) {
          print("BArchasi");
          emit(CourseFilterByTypeState.data(courses));
        },
        byId: (courses, courseTypeId) {
          print(courseTypeId);
          List<CourseWithPriceData?> filteredCourses =
              courses.data!.map((courseWithPrice) {
            if (courseWithPrice!.course.courseType.id == courseTypeId) {
              return courseWithPrice;
            }
          }).toList();
          filteredCourses.removeWhere(
            (element) => element == null,
          );
          print(filteredCourses);
          CourseWithPriceResponse courseWithPriceResponse =
              courses.copyWith(data: filteredCourses);
          emit(CourseFilterByTypeState.data(courseWithPriceResponse));
        },
      );
    });
  }
}
