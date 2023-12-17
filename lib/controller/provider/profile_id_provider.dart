import 'package:flutter/material.dart';

class ProfileIdProvider extends ChangeNotifier {
  int id = 0;

  void changeId(int value) {
    id = value;
    notifyListeners();
  }
}
