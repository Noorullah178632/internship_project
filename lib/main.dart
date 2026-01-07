import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/utils/Routes/routes_navigation.dart';
import 'package:first_app/view_models/bottom_view_nav.dart';
import 'package:first_app/view_models/drawer_view_models.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNav()),
        ChangeNotifierProvider(create: (cu) => DrawerViewModels()),
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
      initialRoute: Routes.home,

      onGenerateRoute: AppRoutes.RoutesNavigation,
      debugShowCheckedModeBanner: false,

      title: 'Flutter Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
