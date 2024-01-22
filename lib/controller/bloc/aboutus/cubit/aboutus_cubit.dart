import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/aboutus/aboutus/about_us_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'aboutus_cubit.freezed.dart';
part 'aboutus_state.dart';

class AboutUsCubit extends Cubit<AboutusState> {
  final apiService = ApiService(CustomDio().get);

  AboutUsCubit() : super(const AboutusState.initial());

  void getAllAboutUs() async {
    emit(const AboutusState.getting());
    AboutUsResult result = await apiService.aboutUsInfo();
    emit(AboutusState.get(result));
  }
}
