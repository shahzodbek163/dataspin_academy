import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/account/response/account_response.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_state.dart';
part 'account_cubit.freezed.dart';

class AccountCubit extends Cubit<AccountState> {
  final apiService = ApiService(CustomDio().get);
  AccountCubit() : super(const AccountState.initial());
  void getAccount() async {
    emit(const AccountState.getting());
    AccountResponse response = await apiService.getAccount();
    emit(AccountState.get(response));
  }
}
