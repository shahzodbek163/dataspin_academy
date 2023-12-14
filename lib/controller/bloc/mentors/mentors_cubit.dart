import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:dataspin_academy/model/mentor/mentor_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mentors_state.dart';

part 'mentors_cubit.freezed.dart';

class MentorsCubit extends Cubit<MentorsState> {
  final apiService = ApiService(CustomDio().get);

  MentorsCubit() : super(const MentorsState.initial());

  void getMentors() async {
    emit(const MentorsState.getting());
    MentorResult result = await apiService.getAllMentor();
    emit(MentorsState.get(result));
  }
}
