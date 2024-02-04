import 'package:flutter/material.dart';

class ForPdfViewProvider extends ChangeNotifier {
  int? photoId;

  void change(int photoIdP) {
    photoId = photoIdP;
    notifyListeners();
  }
}
