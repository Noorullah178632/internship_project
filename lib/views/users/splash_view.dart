import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/view_models/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<SplashViewModel>().start(context);
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
