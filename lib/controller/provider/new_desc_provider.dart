import 'package:dataspin_academy/model/mentor/mentor_result.dart';
import 'package:dataspin_academy/model/news/response/news_response.dart';
import 'package:flutter/material.dart';

class NewDescProvider extends ChangeNotifier {
  NewsData? newsData;

  void newsChange(NewsData data) {
    newsData = data;
    notifyListeners();
  }
}
