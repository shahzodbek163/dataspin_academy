import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/controller/service/navigation/navigation_service.dart';
import 'package:dataspin_academy/model/create_account/request/create_account_request.dart';
import 'package:dataspin_academy/model/create_account/response/create_account_response.dart';
import 'package:dataspin_academy/model/create_account/validation/validation_state_data.dart';
import 'package:dataspin_academy/view/screen/home/screen/home_screen.dart';
import 'package:dataspin_academy/view/value/phone_codes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'register_validation_state.dart';
part 'register_validation_cubit.freezed.dart';

class RegisterValidationCubit extends Cubit<RegisterValidationState> {
  RegisterValidationCubit() : super(const RegisterValidationState.initial());
  final apiService = ApiService(CustomDio().get);

  validate(CreateAccountRequest data) async {
    ValidationStateData validationData = state.maybeWhen(
      data: (validationStateData) => validationStateData,
      orElse: () => const ValidationStateData(
        firstnameEmpty: false,
        lastnameEmpty: false,
        birhtdayValid: true,
        phone: Phone(isValid: false, isEmpty: false),
        additionalPhoneValid: true,
      ),
    );
    if (data.firstname.isEmpty) {
      validationData = validationData.copyWith(firstnameEmpty: true);
    } else {
      validationData = validationData.copyWith(firstnameEmpty: false);
    }
    if (data.lastname.isEmpty) {
      validationData = validationData.copyWith(lastnameEmpty: true);
    } else {
      validationData = validationData.copyWith(lastnameEmpty: false);
    }
    if (data.birthday != null) {
      if (data.birthday!.length != 10) {
        validationData = validationData.copyWith(birhtdayValid: false);
      } else if (data.birthday!.length == 10) {
        List<String> list = data.birthday!.split("-");
        String day = list[0];
        String month = list[1];
        String year = list[2];

        int dayI = int.parse(day);
        int monthI = int.parse(month);
        int yearI = int.parse(year);

        if (((dayI >= 1 && dayI <= 31) &&
            (monthI >= 1 && monthI <= 12) &&
            (yearI >= 1800 && yearI <= DateTime.now().year))) {
          validationData = validationData.copyWith(birhtdayValid: true);
        } else {
          validationData = validationData.copyWith(birhtdayValid: false);
        }
      }
    } else {
      validationData = validationData.copyWith(birhtdayValid: true);
    }
    if (data.tel1.isEmpty) {
      print("is empty");
      validationData = validationData.copyWith(
          phone: validationData.phone.copyWith(isEmpty: true));
    } else {
      validationData = validationData.copyWith(
          phone: validationData.phone.copyWith(isEmpty: false));
    }
    if (data.tel1.length != 19) {
      validationData = validationData.copyWith(
        phone: validationData.phone.copyWith(isValid: false),
      );
    } else if (!PhoneCode.phoneCodes.contains(data.tel1.substring(6, 8))) {
      validationData = validationData.copyWith(
        phone: validationData.phone.copyWith(isValid: false),
      );
    } else {
      validationData = validationData.copyWith(
        phone: validationData.phone.copyWith(isValid: true),
      );
    }
    if (data.tel2 != null) {
      if (data.tel2!.length != 19) {
        validationData = validationData.copyWith(additionalPhoneValid: false);
      } else if (!PhoneCode.phoneCodes.contains(data.tel2!.substring(6, 8))) {
        validationData = validationData.copyWith(additionalPhoneValid: false);
      } else {
        validationData = validationData.copyWith(additionalPhoneValid: false);
      }
    } else {
      validationData = validationData.copyWith(additionalPhoneValid: true);
    }

    if (!validationData.firstnameEmpty &&
        !validationData.lastnameEmpty &&
        validationData.phone.isValid &&
        !validationData.phone.isEmpty) {
      emit(const RegisterValidationState.sending());
      CreateAccountResponse createAccountResponse =
          await apiService.createAccount(data);
      emit(RegisterValidationState.sent(createAccountResponse));
      goHome();
    } else {
      emit(RegisterValidationState.data(validationData));
    }
  }

  goHome() {
    NavigationService.navigatorKey.currentState!.context
        .pushReplacement(HomeScreen.routeName);
  }
}
