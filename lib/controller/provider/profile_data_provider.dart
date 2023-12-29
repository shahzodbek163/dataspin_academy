import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:dataspin_academy/model/mentor/mentor_result.dart';
import 'package:flutter/material.dart';

class ProfileDataProvider extends ChangeNotifier {
  MentorResultData? mentorResultData;

  void change(MentorResultData mentorResultDataP) {
    mentorResultData = mentorResultDataP;
    notifyListeners();
  }
}
