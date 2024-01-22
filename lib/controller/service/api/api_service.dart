import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/model/account/response/account_response.dart';
import 'package:dataspin_academy/model/course/course_for/course_for_result.dart';
import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:dataspin_academy/model/course/course_type/course_type_result.dart';
import 'package:dataspin_academy/model/create_account/request/create_account_request.dart';
import 'package:dataspin_academy/model/create_account/response/create_account_response.dart';
import 'package:dataspin_academy/model/mentor/mentor_result.dart';
import 'package:dataspin_academy/model/news/response/news_response.dart';
import 'package:dataspin_academy/model/reception/request/new_reception_request.dart';
import 'package:dataspin_academy/model/reception/response/new_reception_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "${AppIp.ip}/api")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  //auth

  @POST("/user/create")
  Future<CreateAccountResponse> createAccount(
      @Body() CreateAccountRequest createAccountRequest);

  @GET("/course-type/")
  Future<CourseTypeResult> getAllCourseType();

  @GET("/course-for/")
  Future<CourseForResult> getAllCourseFor();

  @GET("/course/by-type/")
  Future<CourseWithPriceResponse> getCourseById(@Query("id") int id);

  @GET("/course/with-prices")
  Future<CourseWithPriceResponse> getAllCourseWithPrice();

  @GET("/mentors/")
  Future<MentorResult> getAllMentor();

  @GET("/news/")
  Future<NewsResponse> getAllNews();

  @POST("/reception/new")
  Future<NewReceptionResponse> newReception(
    @Body() NewReceptionRequest newReceptionRequest,
  );

  @GET("/user/me")
  Future<AccountResponse> getAccount();

  @POST("/user/update-profile")
  Future<AccountUpdateResponse> updateAccount(
    @Part() String? birthday,
    @Part() File? photo,
    @Part() String? tel1,
    @Part() String? tel2,
  );
  @POST("/auth/login")
  Future<LoginResponse> login(
    @Part(name: "username") String username,
    @Part(name: "password") String password,
  );
}
