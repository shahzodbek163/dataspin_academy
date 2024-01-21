import 'package:flutter/material.dart';

class ForPdfViewProvider extends ChangeNotifier {
  String? filePath;

  void change(String filePath) {
    this.filePath = filePath;
    notifyListeners();
  }
}
