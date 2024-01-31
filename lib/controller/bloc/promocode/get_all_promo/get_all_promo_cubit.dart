import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_promo_state.dart';
part 'get_all_promo_cubit.freezed.dart';

class GetAllPromoCubit extends Cubit<GetAllPromoState> {
  GetAllPromoCubit() : super(const GetAllPromoState.initial());
}
