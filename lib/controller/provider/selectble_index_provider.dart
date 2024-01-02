import 'package:flutter/material.dart';

class SelectableIndexProvider extends ChangeNotifier {
  int? selectIndex;

  void change(int index) {
    selectIndex = index;
    notifyListeners();
  }
  int selIndex(){
    int natija = selectIndex! + 1;
    return natija ;
  }
}
