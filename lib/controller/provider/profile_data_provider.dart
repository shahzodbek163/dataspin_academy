import 'package:dataspin_academy/model/mentor/mentor_result.dart';
import 'package:flutter/material.dart';

class ProfileDataProvider extends ChangeNotifier {
  MentorResultData? mentorResultData;

  void change(MentorResultData mentorResultDataP) {
    mentorResultData = mentorResultDataP;
    notifyListeners();
  }
}
