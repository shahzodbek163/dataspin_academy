import 'dart:ui';

import 'package:dataspin_academy/controller/service/dialogs/custom_snack_bar.dart';
import 'package:dataspin_academy/controller/service/navigation/navigation_service.dart';
import 'package:dataspin_academy/view/screen/send_code/screen/send_code_screen.dart';
import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';

class CustomDio {
  static Dio _dio = Dio();
  static final CustomSnackBar _snackBar = CustomSnackBar();

  CustomDio() {
    // final token = SecureStorage().getAccess();

    _dio = Dio(
      BaseOptions(
        validateStatus: (statusCode) {
          if (statusCode == null) {
            return false;
          }
          if (statusCode == 404) {
            return true;
          }
          if (statusCode == 422) {
            return true;
          } else {
            return statusCode >= 200 && statusCode < 300;
          }
        },
        baseUrl: '',
        connectTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        contentType: 'application/json; charset=utf-8',
      ),
    );

    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers["Authorization"] =
              "Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIrOTk4OTExMTUyOTIyIiwiaWF0IjoxNzAyNDY1MzY2LCJleHAiOjE3MDUwNTczNjZ9.gIbAmGhMsDAi7JcxhY14deLC2iQBVyXFOxq9vO-H4a-0vPCmdlnkgA4EZ-PYeB-2zU4EgHpZxoNE9ks1_9cxKw";
          return handler.next(options);
        },
        onResponse: (response, handler) {
          switch (response.statusCode) {
            case 401:
              {
                NavigationService.navigatorKey.currentState!.context.pushReplacement(SendCodeScreen.routeName);
              }
              break;
          }
          handler.next(response);
        },
        onError: (DioException e, handler) async {
          if (e.response!.statusCode == 400) {}
          _snackBar.showError(e.response!.data["message"]);
          handler.next(e);
        },
      ),
    );
  }

  Dio get get => _dio;
}
