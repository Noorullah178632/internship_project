import 'dart:async';

import 'package:first_app/utils/Routes/routes.dart';
import 'package:flutter/material.dart';

class SplashServices {
  //function for splash screen
  void isLoggin(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RouteName.boardingScreen);
    });
  }
}
