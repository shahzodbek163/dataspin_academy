import 'package:dataspin_academy/controller/service/dialogs/custom_snack_bar.dart';
import 'package:dataspin_academy/controller/service/dio/secure_storage.dart';
import 'package:dio/dio.dart';

class CustomDio {
  static Dio _dio = Dio();
  static final CustomSnackBar _snackBar = CustomSnackBar();

  CustomDio() {
    final token = SecureStorage().getAccess();

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
        baseUrl: 'https://I8speak.ucoders.uz',
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
          options.headers['Authorization'] = 'Bearer $token';

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
          if (e.response!.statusCode == 401) {}
          _snackBar.showError('Error occurred!');
          handler.next(e);
        },
      ),
    );
  }

  Dio get get => _dio;
}
