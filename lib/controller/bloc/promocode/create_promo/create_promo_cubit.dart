import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dialogs/show_top_snack_bar.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:string_validator/string_validator.dart';

part 'create_promo_cubit.freezed.dart';
part 'create_promo_state.dart';

class CreatePromoCubit extends Cubit<CreatePromoState> {
  final apiService = ApiService(CustomDio().get);
  CreatePromoCubit() : super(const CreatePromoState.initial());

  create(String promo) async {
    emit(const CreatePromoState.creating());
    if (promo.length != 7) {
      emit(const CreatePromoState.invalid());
      showErrorSnackBar("7 ta belgidan iborat bo'lishi kerak");
    } else if (!isUppercase(promo)) {
      emit(const CreatePromoState.invalid());
      showErrorSnackBar("Harflar katta bilan yozilishi kerak");
    } else {
      try {
        final result = await apiService.createPromo(promo);
        emit(const CreatePromoState.created());
        showSuccessSnackBar("Promocode yaratildi");
      } on DioException catch (e) {
        emit(const CreatePromoState.initial());
      }
    }
  }
}
