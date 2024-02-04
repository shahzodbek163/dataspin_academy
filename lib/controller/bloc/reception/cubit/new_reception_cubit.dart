import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/reception/request/new_reception_request.dart';
import 'package:dataspin_academy/model/reception/response/new_reception_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_reception_state.dart';
part 'new_reception_cubit.freezed.dart';

class NewReceptionCubit extends Cubit<NewReceptionState> {
  final apiService = ApiService(CustomDio().get);
  NewReceptionCubit() : super(const NewReceptionState.initial());
  Future<bool> newReception(NewReceptionRequest newReceptionRequest) async {
    emit(const NewReceptionState.sending());
    NewReceptionResponse result =
        await apiService.newReception(newReceptionRequest);
    emit(NewReceptionState.send(result));

    return true;
  }

  void backInitialState() {
    emit(const NewReceptionState.initial());
  }
}
