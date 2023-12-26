import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/auth_dio.dart';
import 'package:dataspin_academy/controller/service/dio/secure_storage.dart';
import 'package:dataspin_academy/controller/service/navigation/navigation_service.dart';
import 'package:dataspin_academy/model/auth/checkcode/check_code_response.dart';
import 'package:dataspin_academy/model/auth/token_session/token_session_response.dart';
import 'package:dataspin_academy/view/screen/create_accaunt/screen/create_account_screen.dart';
import 'package:dataspin_academy/view/screen/home/screen/home_screen.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'check_code_state.dart';

part 'check_code_cubit.freezed.dart';

class CheckCodeCubit extends Cubit<CheckCodeState> {
  final apiService = ApiService(AuthDio().get);

  CheckCodeCubit() : super(const CheckCodeState.initial());

  Future<String> checkCode(String code, String phone) async {
    emit(const CheckCodeState.checking());
    try {
      CheckCodeResponse checkCodeResponse =
          await apiService.checkCode(code, phone);

      TokenSessionResponse tokenSessionResponse =
          await apiService.tokenSession(code, phone);

      SecureStorage().setAccess(tokenSessionResponse.data.token);

      emit(const CheckCodeState.checked());

      goNext(tokenSessionResponse.message);

      return checkCodeResponse.message;
    } on DioException catch (error) {
      emit(CheckCodeState.error(error.response!.data["message"]));
      return "error";
    }
  }

  goNext(String message) {
    if (message == "Inactive") {
      NavigationService.navigatorKey.currentState!.context
          .pushReplacement(CreateAccountScreen.routeName);
    } else {
      NavigationService.navigatorKey.currentState!.context
          .pushReplacement(HomeScreen.routeName);
    }
  }
}
