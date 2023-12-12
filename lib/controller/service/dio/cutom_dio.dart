import 'package:dataspin_academy/controller/service/dialogs/custom_snack_bar.dart';
import 'package:dio/dio.dart';

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
              "Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI5OTg5OTk5OTk5OTkiLCJpYXQiOjE3MDIyMjQ4MjgsImV4cCI6MTcwNDgxNjgyOH0.Mbb-meU3jinRXA4uRTN2hzIsTeSOg5IaxxKjZqslqX6j8rTBJCk2oGq25j6cCQ6n7xm0sxX0j0ki8z-vEoclXw";
          return handler.next(options);
        },
        onResponse: (response, handler) {
          switch (response.statusCode) {
            case 401:
              {
                // NavigationService.navigatorKey.currentContext!.pushReplacement(SendCodeScreen.routeName);
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
