import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_my_promos_state.dart';
part 'get_my_promos_cubit.freezed.dart';

class GetMyPromosCubit extends Cubit<GetMyPromosState> {
  GetMyPromosCubit() : super(const GetMyPromosState.initial());
}
