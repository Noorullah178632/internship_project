import 'package:flutter/material.dart';

class NormalModel extends ChangeNotifier {
  //for checkbox
  bool isChecked = false;
  void setChecked() {
    isChecked = !isChecked;
    notifyListeners();
  }

  //for visibility icon in password
  bool isvisible = false;
  void setvisibility() {
    isvisible = !isvisible;
    notifyListeners();
  }
}
