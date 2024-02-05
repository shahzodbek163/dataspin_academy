import 'package:bloc/bloc.dart';

class BottomBarIndexCubit extends Cubit<int> {
  BottomBarIndexCubit(super.initialState);

  changeIndex(index) {
    emit(index);
  }
}
