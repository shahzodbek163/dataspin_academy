import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/auth_dio.dart';
import 'package:dataspin_academy/model/auth/checkcode/check_code_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_code_state.dart';
part 'check_code_cubit.freezed.dart';

class CheckCodeCubit extends Cubit<CheckCodeState> {
  final apiService = ApiService(AuthDio().get);

  CheckCodeCubit() : super(const CheckCodeState.initial());
  void checkCode(String code, String phone)async{
    emit(const CheckCodeState.checking());
    CheckCodeResult checkCodeResult = await apiService.checkCode(code, phone);
    emit(CheckCodeState.checked(checkCodeResult));
  }
}
