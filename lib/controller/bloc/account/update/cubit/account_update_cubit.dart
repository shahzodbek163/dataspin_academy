import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/account/response/update_response/account_update_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_update_cubit.freezed.dart';
part 'account_update_state.dart';

class AccountUpdateCubit extends Cubit<AccountUpdateState> {
  final apiService = ApiService(CustomDio().get);
  AccountUpdateCubit() : super(const AccountUpdateState.initial());
  Future<bool> update({
    String? birthday,
    File? photo,
    String? tel1,
    String? tel2,
  }) async {
    print("$tel2 8888");
    emit(const AccountUpdateState.updating());
    AccountUpdateResponse response =
        await apiService.updateAccount(birthday, photo, tel1, tel2);
    emit(AccountUpdateState.updated(response));
    return true;
  }
}
