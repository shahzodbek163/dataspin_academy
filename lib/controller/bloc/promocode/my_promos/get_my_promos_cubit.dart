import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/promocode/response/all_promocode_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_my_promos_cubit.freezed.dart';
part 'get_my_promos_state.dart';

class GetMyPromosCubit extends Cubit<GetMyPromosState> {
  final apiService = ApiService(CustomDio().get);
  GetMyPromosCubit() : super(const GetMyPromosState.initial());
  getData() async {
    emit(const GetMyPromosState.loading());
    final result = await apiService.getMyPromo();
    emit(GetMyPromosState.loaded(result));
  }
}
