import 'dart:io';

import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/model/aboutus/aboutus/about_us_result.dart';
import 'package:dataspin_academy/model/account/response/account_response.dart';
import 'package:dataspin_academy/model/account/response/update_response/account_update_response.dart';
import 'package:dataspin_academy/model/comment/response/comment_response.dart';
import 'package:dataspin_academy/model/course/course_for/course_for_result.dart';
import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:dataspin_academy/model/course/course_type/course_type_result.dart';
import 'package:dataspin_academy/model/create_account/response/create_account_response.dart';
import 'package:dataspin_academy/model/login/response/login_response.dart';
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

  @POST("/auth/register/user")
  Future<CreateAccountResponse> createAccount(
    @Part(name: "firstname") String firstname,
    @Part(name: "lastname") String lastname,
    @Part(name: "middlename") String? middlename,
    @Part(name: "birthday") String? birthday,
    @Part(name: "tel1") String tel1,
    @Part(name: "tel2") String? tel2,
    @Part(name: "profilePhoto") File? profilePhoto,
    @Part(name: "username") String username,
    @Part(name: "password") String password,
  );

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
  @GET("/about-us/")
  Future<AboutUsResult> aboutUsInfo();
  @GET("/comments/")
  Future<CommentResponse> getComment(@Part(name: "course_id") int courseId);
}
