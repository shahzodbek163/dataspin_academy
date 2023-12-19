import 'package:dataspin_academy/model/course/course_type/course_type_result.dart';
import 'package:flutter/cupertino.dart';

class CategoryInfoProvider extends ChangeNotifier {
  late CourseTypeResult courseTypeResult;

  void change(CourseTypeResult courseType) {
    courseTypeResult = courseType;
  }
}
