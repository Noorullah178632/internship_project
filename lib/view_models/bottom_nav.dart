import 'package:flutter/material.dart';

class BottomNav extends ChangeNotifier {
  int currentIndex = 0;
  //function for the changing the index of navigation

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
