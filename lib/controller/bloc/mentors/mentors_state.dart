part of 'mentors_cubit.dart';

@freezed
class MentorsState with _$MentorsState {
  const factory MentorsState.initial() = _Initial;
  const factory MentorsState.getting() = _Getting;
  const factory MentorsState.get(MentorResult result) = _Get;
  const factory MentorsState.error() = _Error;
}
