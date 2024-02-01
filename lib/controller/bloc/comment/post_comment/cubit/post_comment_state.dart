part of 'post_comment_cubit.dart';

@freezed
class PostCommentState with _$PostCommentState {
  const factory PostCommentState.initial() = _Initial;
  const factory PostCommentState.sending() = _Sending;
  const factory PostCommentState.sent() = _Sent;
  const factory PostCommentState.error() = _Error;
}
