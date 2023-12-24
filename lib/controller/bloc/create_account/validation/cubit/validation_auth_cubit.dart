import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/model/auth/sendcode/send_code_result.dart';
import 'package:dataspin_academy/view/value/phone_codes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_auth_state.dart';
part 'validation_auth_cubit.freezed.dart';


class ValidationAuthCubit extends Cubit<ValidationAuthState> {
  ValidationAuthCubit() : super(const ValidationAuthState.initial());

  validation(ValidationAuthType validationType, String text) {
    if (validationType == ValidationAuthType.date) {}
    if (validationType == ValidationAuthType.phone) {
      if (text.length >= 10) {
        String code = text.substring(6, 8);
        if (PhoneCode.phoneCodes.contains(code)) {
          if (text.length == 19) {
            emit(const ValidationAuthState.formatState(true));
          } else {
            emit(const ValidationAuthState.formatState(false));
          }
        } else {
          emit(const ValidationAuthState.formatState(false));
        }
      } else {
        emit(const ValidationAuthState.emptyState(true));
      }
    }
  }
}
