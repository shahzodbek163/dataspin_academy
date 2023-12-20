import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:flutter/material.dart';

class CourseInfoProvider extends ChangeNotifier {
  CourseWithPriceData? courseWithPriceData;

  void change(CourseWithPriceData courseWithPriceDataP) {
    courseWithPriceData = courseWithPriceDataP;
    notifyListeners();
  }
}
