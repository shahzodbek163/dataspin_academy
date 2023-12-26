import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/auth_dio.dart';
import 'package:dataspin_academy/controller/service/dio/secure_storage.dart';
import 'package:dataspin_academy/model/auth/checkcode/check_code_result.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_code_state.dart';

part 'check_code_cubit.freezed.dart';

class CheckCodeCubit extends Cubit<CheckCodeState> {
  final apiService = ApiService(AuthDio().get);

  CheckCodeCubit() : super(const CheckCodeState.initial());

  Future<String> checkCode(String code, String phone) async {
    emit(const CheckCodeState.checking());
    try {
      CheckCodeResult checkCodeResult = await apiService.checkCode(code, phone);
      emit(CheckCodeState.checked(checkCodeResult));
      SecureStorage().setAccess(checkCodeResult.data.token);
      return checkCodeResult.message;
    } on DioException catch (error) {
      emit(CheckCodeState.error(error.response!.data["message"]));
      return "error";
    }
  }
}
