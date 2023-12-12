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
        accept: (validationType, text) {
          if (validationType == ValidationType.date) {
            if (text.length == 10) {
              emit(const ValidationState.formatState(true));
            } else if (text.isNotEmpty) {
              emit(const ValidationState.formatState(false));
            }
          }
          if (validationType == ValidationType.phone) {
            if (text.length == 19) {
              emit(const ValidationState.formatState(true));
            } else if (text.isNotEmpty) {
              emit(const ValidationState.formatState(false));
            }
          }
        },
        empty: (text) {
          emit(ValidationState.emptyState(text.isEmpty));
        },
        format: (validationType, text) {
          if (validationType == ValidationType.date) {
            if (text.length != 10) {
              emit(const ValidationState.formatState(true));
              return;
            } else if (text.length == 10) {
              print("else if -------------");
              List<String> list = text.split("-");
              String day = list[0];
              String month = list[1];
              String year = list[2];

              int dayI = int.parse(day);
              int monthI = int.parse(month);
              int yearI = int.parse(year);
              print("$dayI $monthI $yearI");

              if (((dayI >= 1 && dayI <= 31) &&
                  (monthI >= 1 && monthI <= 12) &&
                  (yearI >= 1800 && yearI <= DateTime.now().year))) {
                emit(const ValidationState.formatState(true));
              } else {
                emit(const ValidationState.formatState(false));
              }
            }
          }

          if (validationType == ValidationType.phone) {
            if (text.length <= 9) {
              emit(const ValidationState.formatState(true));
            } else if (text.length >= 9) {
              String code = text.substring(6, 8);
              if (PhoneCode.phoneCodes.contains(code)) {
                emit(const ValidationState.formatState(true));
              } else {
                emit(const ValidationState.formatState(false));
              }
            }
          }
        },
      );
    });
  }
}
