part of 'send_code_cubit.dart';

@freezed
class SendCodeState with _$SendCodeState {
  const factory SendCodeState.initial() = _Initial;
  const factory SendCodeState.sending() = _Sending;
  const factory SendCodeState.send(SendCodeResult result) = _Send;
  const factory SendCodeState.error() = _Error;
}
