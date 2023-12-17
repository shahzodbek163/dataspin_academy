import 'package:dataspin_academy/model/auth/checkcode/check_code_result.dart';
import 'package:dataspin_academy/model/auth/sendcode/send_code_result.dart';
import 'package:dataspin_academy/model/course/course_for/course_for_result.dart';
import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:dataspin_academy/model/course/course_type/course_type_result.dart';
import 'package:dataspin_academy/model/create_account/request/create_account_request.dart';
import 'package:dataspin_academy/model/create_account/response/create_account_response.dart';
import 'package:dataspin_academy/model/mentor/mentor_result.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://71c2-92-63-204-75.ngrok-free.app/api")
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
  @GET("/course-type/")
  Future<CourseTypeResult> getAllCourseType();
  @GET("/course-for/")
  Future<CourseForResult> getAllCourseFor();
  @GET("/course/with-prices")
  Future<CourseWithPriceResponse> getAllCourseWithPrice();
  @GET("/mentors/")
  Future<MentorResult> getAllMentor();
}
