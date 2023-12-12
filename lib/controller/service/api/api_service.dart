import 'package:dataspin_academy/model/auth/checkcode/check_code_result.dart';
import 'package:dataspin_academy/model/auth/sendcode/send_code_result.dart';
import 'package:dataspin_academy/model/create_account/request/create_account_request.dart';
import 'package:dataspin_academy/model/create_account/response/create_account_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "http://192.168.113.66:8080/api")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  //auth
  @POST("/auth/send-code")
  Future<SendCodeResult> sendCode(@Part() String phone);
  @POST("/auth/check-code")
  Future<CheckCodeResult> checkCode(@Part() String code, @Part() String phone);
  @POST("/user/create")
  Future<CreateAccountResponse> createAccount(
      @Body() CreateAccountRequest createAccountRequest);
}
