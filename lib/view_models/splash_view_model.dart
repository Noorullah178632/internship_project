import 'dart:async';

import 'package:first_app/utils/Routes/routes.dart';

import 'package:flutter/material.dart';

class SplashViewModel extends ChangeNotifier {
  //function that will take build context and move to the boarding screen
  //buildcontext will help flutter to move from which screen to which one
  void start(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RouteName.boardingScreen);
    });
  }
}
