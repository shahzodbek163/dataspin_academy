import 'package:flutter/material.dart';

class ForPdfViewProvider extends ChangeNotifier {
  int? photoId;

  change(int photoIdP) {
    photoId = photoIdP;
    notifyListeners();
  }
}
