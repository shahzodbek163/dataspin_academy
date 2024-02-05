import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/auth_dio.dart';
import 'package:dataspin_academy/controller/service/dio/secure_storage.dart';
import 'package:dataspin_academy/controller/service/navigation/navigation_service.dart';
import 'package:dataspin_academy/model/login/response/login_response.dart';
import 'package:dataspin_academy/view/screen/main/screen/main_screen.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final _apiService = ApiService(AuthDio().get);
  LoginCubit() : super(const LoginState.initial());
  login(String username, String password) async {
    emit(const LoginState.checking());
    try {
      LoginResponse response = await _apiService.login(username, password);
      SecureStorage().setAccess(response.data);
      emit(const LoginState.success());
      _navigateHome();
    } on DioException catch (exception) {
      emit(const LoginState.failed());
    }
  }

  _navigateHome() {
    NavigationService.navigatorKey.currentState!.context
        .pushReplacement(MainScreen.routeName);
  }
}
