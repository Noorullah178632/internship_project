import 'package:flutter/material.dart';

class CheckBoxViewModel extends ChangeNotifier {
  final List<bool> _checks = List.generate(10, (value) => false);
  List<bool> get check => _checks;
  void toggle(int index, bool value) {
    _checks[index] = value;
    notifyListeners();
  }
}
