import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/view/value/phone_codes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_event.dart';

part 'validation_state.dart';

part 'validation_bloc.freezed.dart';

class ValidationBloc extends Bloc<ValidationEvent, ValidationState> {
  ValidationBloc() : super(const ValidationState.emptyState(false)) {
    on<ValidationEvent>((event, emit) {
      event.when(
        empty: (text) {
          emit(ValidationState.emptyState(text.isEmpty));
        },
        format: (validationType, text) {
          if (validationType == ValidationType.date) {
            List<String> list = text.split("-");
            String day = list[0];
            String month = list[1];
            String year = list[2];

            int dayI = int.parse(day);
            int monthI = int.parse(day);
            int yearI = int.parse(day);

            if (!((dayI >= 1 && dayI <= 31) &&
                (monthI >= 1 && monthI <= 12) &&
                (yearI >= 1800 && monthI <= DateTime.now().year))) {
              emit(const ValidationState.formatState(true));
            } else {
              emit(const ValidationState.formatState(false));
            }
          }

          if (validationType == ValidationType.phone) {
            String code =
                text.substring(text.indexOf("("), text.indexOf(")") + 1);
            if (!PhoneCode.phoneCodes.contains(code)) {
              emit(const ValidationState.formatState(true));
            } else {
              emit(const ValidationState.formatState(false));
            }
          }
        },
      );
    });
  }
}
