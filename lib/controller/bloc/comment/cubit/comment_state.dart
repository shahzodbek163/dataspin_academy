part of 'comment_cubit.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;
  const factory CommentState.getting() = _Getting;
  const factory CommentState.get(CommentResponse response) = _Get;
  const factory CommentState.error() = _Error;
}
