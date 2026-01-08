import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SwitchViewModel extends ChangeNotifier {
  //first switch toggle
  bool toggle = false;
  void toggleSwitch(bool value) {
    toggle = value;
    notifyListeners();
  }

  //second switch toggle
  bool toggle2 = false;
  void toggleSwitch2(bool value) {
    toggle2 = value;
    notifyListeners();
  }
}
