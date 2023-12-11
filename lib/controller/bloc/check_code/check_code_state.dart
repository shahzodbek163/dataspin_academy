part of 'check_code_cubit.dart';

@freezed
class CheckCodeState with _$CheckCodeState {
  const factory CheckCodeState.initial() = _Initial;
  const factory CheckCodeState.checking() = _Checking;
  const factory CheckCodeState.checked(CheckCodeResult checkCodeResult) = _Checked;
  const factory CheckCodeState.error(String message) = _Error;
}
