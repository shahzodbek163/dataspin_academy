import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/create_account/request/create_account_request.dart';
import 'package:dataspin_academy/model/create_account/response/create_account_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_state.dart';
part 'create_account_cubit.freezed.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  final apiService = ApiService(CustomDio().get);
  CreateAccountCubit() : super(const CreateAccountState.initial());
  Future<bool> createAccount(CreateAccountRequest createAccountRequest) async {
    emit(const CreateAccountState.sending());
    CreateAccountResponse createAccountResponse =
        await apiService.createAccount(createAccountRequest);
    emit(CreateAccountState.send(createAccountResponse));
    return true;
  }
}
