import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/bloc/splash/jump_screen.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dialogs/show_top_snack_bar.dart';
import 'package:dataspin_academy/controller/service/dio/auth_dio.dart';
import 'package:dataspin_academy/controller/service/dio/secure_storage.dart';
import 'package:dataspin_academy/controller/service/locator/service_locator.dart';
import 'package:dataspin_academy/controller/service/navigation/navigation_service.dart';
import 'package:dataspin_academy/model/create_account/response/create_account_response.dart';
import 'package:dataspin_academy/model/login/response/login_response.dart';
import 'package:dataspin_academy/model/user_data/user_data_model.dart';
import 'package:dataspin_academy/view/screen/home/screen/home_screen.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'user_register_cubit.freezed.dart';
part 'user_register_state.dart';

class UserRegisterCubit extends Cubit<UserRegisterState> {
  final _apiService = ApiService(AuthDio().get);
  UserRegisterCubit() : super(const UserRegisterState.initial());

  register({
    required String firstname,
    required String lastname,
    String? middlename,
    String? birthday,
    required String tel1,
    String? tel2,
    File? profilePhoto,
    required String username,
    required String password,
  }) async {
    print(locator<UserData>());
    emit(const UserRegisterState.registering());
    try {
      CreateAccountResponse response = await _apiService.createAccount(
        firstname,
        lastname,
        middlename,
        birthday,
        tel1,
        tel2,
        profilePhoto,
        username,
        password,
      );
      LoginResponse loginResponse = await _apiService.login(username, password);
      showSuccessSnackBar("User ro'yxatdan o'tdi");
      SecureStorage().setAccess(loginResponse.data);
      emit(const UserRegisterState.registered());
      _navigateToHome();
    } on DioException catch (e) {
      emit(const UserRegisterState.errorOccured());
    }
  }

  _navigateToHome() {
    NavigationService.navigatorKey.currentState!.context
        .pushReplacement(JumpScreen.routeName);
  }
}
