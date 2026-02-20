import 'package:first_app/firebase_options.dart';
import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/utils/Routes/routes_navigation.dart';
import 'package:first_app/view_models/firebaseServices_viewModels/authentication_view_model.dart';
import 'package:first_app/view_models/boarding_view_model.dart';
import 'package:first_app/view_models/bottom_view_nav.dart';
import 'package:first_app/view_models/Table_view_model.dart';
import 'package:first_app/view_models/drop_down_service_provider_view_model.dart';
import 'package:first_app/view_models/drop_down_view_model.dart';
import 'package:first_app/view_models/heat_map_view_model.dart';
import 'package:first_app/view_models/location_services_view_model.dart';
import 'package:first_app/view_models/normal_model.dart';
import 'package:first_app/view_models/offer_help_view_model.dart';
import 'package:first_app/view_models/report_list_view_model.dart';
import 'package:first_app/view_models/review_rating_management_view_model.dart';
import 'package:first_app/view_models/switch_view_model.dart';
import 'package:first_app/view_models/user_management_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  //make sure bindings are initialize
  WidgetsFlutterBinding.ensureInitialized();
  //for firebase
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //for hive
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthenticationViewModel()),
        ChangeNotifierProvider(create: (_) => BottomNav()),
        ChangeNotifierProvider(create: (_) => SwitchViewModel()),

        ChangeNotifierProvider(create: (_) => NormalModel()),
        ChangeNotifierProvider(create: (_) => BoardingViewModel()),
        ChangeNotifierProvider(create: (_) => HeatMapViewModel()),
        ChangeNotifierProvider(create: (_) => DropDownViewModel()),
        ChangeNotifierProvider(create: (_) => CheckBoxViewModel()),
        ChangeNotifierProvider(
          create: (_) => DropDownServiceProviderViewModel(),
        ),

        ChangeNotifierProvider(create: (_) => OfferHelpViewModel()),
        ChangeNotifierProvider(create: (_) => ReportListViewModel()),

        ChangeNotifierProvider(create: (_) => UserManagementViewModel()),
        ChangeNotifierProvider(
          create: (_) => ReviewRatingManagementViewModel(),
        ),
        ChangeNotifierProvider(create: (_) => LocationServicesViewModel()),
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
    return ScreenUtilInit(
      designSize: Size(412, 916),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          //try to set the routing
          initialRoute: RouteName.flowOfScreens,

          onGenerateRoute: AppRoutes.RoutesNavigation,
          debugShowCheckedModeBanner: false,

          title: 'Flutter Project',
          theme: ThemeData(
            //set the theme of the text for the entire app
            textTheme: GoogleFonts.poppinsTextTheme(),
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
        );
      },
    );
  }
}
//i will start my work from the Drawer screen present in the View section 