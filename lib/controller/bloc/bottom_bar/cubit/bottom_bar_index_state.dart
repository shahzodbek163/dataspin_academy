part of 'bottom_bar_index_cubit.dart';

@immutable
abstract class BottomBarIndexState {
  final int index;
  const BottomBarIndexState(this.index);
}

class BottomBarIndexData extends BottomBarIndexState {
  const BottomBarIndexData(super.index);
}
