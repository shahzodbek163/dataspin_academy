import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/reception/response/reception_by_user/response/reception_by_user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reception_by_user_state.dart';
part 'reception_by_user_cubit.freezed.dart';

class ReceptionByUserCubit extends Cubit<ReceptionByUserState> {
  final apiService = ApiService(CustomDio().get);

  ReceptionByUserCubit() : super(const ReceptionByUserState.initial());
  void getReceptionByUser() async {
    emit(const ReceptionByUserState.loading());
    ReceptionByUserResponse response = await apiService.getReceptionByUser();
    emit(ReceptionByUserState.loaded(response));
  }
}
