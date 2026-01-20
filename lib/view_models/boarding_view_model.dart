import 'package:flutter/material.dart';

class BoardingViewModel extends ChangeNotifier {
  //make a controller for page controller
  final PageController controller = PageController();
  //for current index
  int currentindex = 0;
  void setPage(int index) {
    currentindex = index;
    notifyListeners();
  }

  //for next page in boarding screen
  void nextPage() {
    controller.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  //for previous page in boarding screen
  void previousPage() {
    controller.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  //skiping pages
  void skip() {
    controller.animateToPage(
      2,
      duration: Duration(milliseconds: 20),
      curve: Curves.easeInOut,
    );
    currentindex = 2;
    notifyListeners();
  }
}
