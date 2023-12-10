import 'package:flutter/material.dart';

class PhoneNumberProvider extends ChangeNotifier {
  String phoneNum = "";

  void changePhoneNum(String value) {
    phoneNum = value;
    notifyListeners();
  }
}
