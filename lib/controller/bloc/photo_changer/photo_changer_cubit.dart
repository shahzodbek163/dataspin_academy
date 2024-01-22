import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';

class PhotoChangerCubit extends Cubit<XFile?> {
  PhotoChangerCubit(super.initialState);
  change(XFile xFile) {
    emit(xFile);
  }
}
