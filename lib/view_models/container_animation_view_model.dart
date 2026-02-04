import 'package:flutter/material.dart';

class ContainerAnimationViewModel extends ChangeNotifier {
  bool _isHovered = false;

  bool get isHovered => _isHovered;

  void onHover() {
    _isHovered = true;
    notifyListeners();
  }

  void onExit() {
    _isHovered = false;
    notifyListeners();
  }
}
