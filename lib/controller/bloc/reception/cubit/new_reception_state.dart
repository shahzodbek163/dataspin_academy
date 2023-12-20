part of 'new_reception_cubit.dart';

@freezed
class NewReceptionState with _$NewReceptionState {
  const factory NewReceptionState.initial() = _Initial;
  const factory NewReceptionState.sending() = _Sending;
  const factory NewReceptionState.send(NewReceptionResponse newReceptionResponse) = _Send;
  const factory NewReceptionState.error() = _Error;
}
