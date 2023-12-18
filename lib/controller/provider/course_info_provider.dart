import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';

class CourseInfoProvider {
  CourseWithPriceData? courseWithPriceData;

  void change(CourseWithPriceData courseWithPriceDataP) {
    courseWithPriceData = courseWithPriceDataP;
  }
}
