import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_filter_by_type_event.dart';
part 'course_filter_by_type_state.dart';
part 'course_filter_by_type_bloc.freezed.dart';

class CourseFilterByTypeBloc extends Bloc<CourseFilterByTypeEvent, CourseFilterByTypeState> {
  final courseWithPrice = CourseWithPriceCubit();
  CourseFilterByTypeBloc() : super(const CourseFilterByTypeState.initial()) {
    on<CourseFilterByTypeEvent>((event, emit) {
      //event.when(all: (){}, byId: );
    });
  }
}
