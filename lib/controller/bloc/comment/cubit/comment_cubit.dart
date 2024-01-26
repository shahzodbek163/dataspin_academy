import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/comment/response/comment_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_state.dart';
part 'comment_cubit.freezed.dart';

class CommentCubit extends Cubit<CommentState> {
  final apiService = ApiService(CustomDio().get);
  CommentCubit() : super(const CommentState.initial());

  void getComment(int courseId) async {
    emit(const CommentState.getting());
    CommentResponse response = await apiService.getComment(courseId);
    emit(CommentState.get(response));
  }
}
