import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/auth_dio.dart';
import 'package:dataspin_academy/model/auth/sendcode/send_code_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_code_state.dart';
part 'send_code_cubit.freezed.dart';

class SendCodeCubit extends Cubit<SendCodeState> {
  final apiService = ApiService(AuthDio().get);
  SendCodeCubit() : super(const SendCodeState.initial());
  Future<bool> sendCode(String phone) async {
    emit(const SendCodeState.sending());
    SendCodeResult result = await apiService.sendCode(phone);
    emit(SendCodeState.send(result));
    return true;
  }
}
