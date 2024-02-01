import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dialogs/show_top_snack_bar.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/mentor/mentor_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_comment_state.dart';
part 'post_comment_cubit.freezed.dart';

class PostCommentCubit extends Cubit<PostCommentState> {
  final apiService = ApiService(CustomDio().get);
  PostCommentCubit() : super(const PostCommentState.initial());
  void postComment(int courseId, String text) async {
    emit(const PostCommentState.sending());
    MentorResult response = await apiService.postComment(courseId, text);
    emit(const PostCommentState.sent());
    showInoSnackBar("Komentariya joylandi");
  }

  void backInitial() {
    emit(const PostCommentState.initial());
  }
}
