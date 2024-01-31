import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/promocode/response/all_promocode_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_promo_state.dart';
part 'get_all_promo_cubit.freezed.dart';

class GetAllPromoCubit extends Cubit<GetAllPromoState> {
  final apiService = ApiService(CustomDio().get);
  GetAllPromoCubit() : super(const GetAllPromoState.initial());
  void getAllPromocode() async {
    emit(const GetAllPromoState.loading());
    AllPromocodeResponse response = await apiService.getAllPromo();
    emit(GetAllPromoState.loaded(response));
  }
}
