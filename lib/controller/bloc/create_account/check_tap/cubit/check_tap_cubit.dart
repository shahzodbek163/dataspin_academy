import 'package:bloc/bloc.dart';

class CheckTapCubit extends Cubit<bool> {
  CheckTapCubit() : super(false);

  change(bool isTap) {
    emit(isTap);
  }
}
