import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/utils/Routes/routes_navigation.dart';
import 'package:first_app/view_models/boarding_view_model.dart';
import 'package:first_app/view_models/bottom_view_nav.dart';
import 'package:first_app/view_models/normal_model.dart';
import 'package:first_app/view_models/splash_view_model.dart';
import 'package:first_app/view_models/switch_view_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNav()),
        ChangeNotifierProvider(create: (_) => SwitchViewModel()),
        ChangeNotifierProvider(create: (_) => SplashViewModel()),
        ChangeNotifierProvider(create: (_) => NormalModel()),
        ChangeNotifierProvider(create: (_) => BoardingViewModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //try to set the routing
      initialRoute: RouteName.login,

      onGenerateRoute: AppRoutes.RoutesNavigation,
      debugShowCheckedModeBanner: false,

      title: 'Flutter Project',
      theme: ThemeData(
        //set the theme of the text for the entire app
        textTheme: GoogleFonts.poppinsTextTheme(),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
//i will start my work from the Drawer screen present in the View section 