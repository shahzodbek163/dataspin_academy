import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_bar_index_state.dart';

class BottomBarIndexCubit extends Cubit<BottomBarIndexState> {
  BottomBarIndexCubit() : super(const BottomBarIndexData(0));

  void changeIndex(int index) {
    emit(BottomBarIndexData(index));
  }
}
