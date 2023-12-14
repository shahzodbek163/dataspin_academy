import 'package:bloc/bloc.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/news/response/news_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  final apiService = ApiService(CustomDio().get);
  NewsCubit() : super(const NewsState.initial());
  void getAllNews() async {
    emit(const NewsState.getting());
    NewsResponse result = await apiService.getAllNews();
    emit(NewsState.get(result));
  }
}
