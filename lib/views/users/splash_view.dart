import 'package:first_app/services/splash_services.dart';
import 'package:first_app/utils/appcolors.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    splashServices.isLoggin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolors.primarColor,
      body: Center(
        child: Container(
          width: double.infinity,
          height: screenHeight / 3,
          //  color: Colors.white,
          child: Image(
            image: AssetImage("assets/images/boarding_icons/splash.png"),
          ),
        ),
      ),
    );
  }
}
