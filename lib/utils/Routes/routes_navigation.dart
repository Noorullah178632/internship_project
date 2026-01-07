import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/views/about_view.dart';
import 'package:first_app/views/chatting_view.dart';
import 'package:first_app/views/crisis_line_view.dart';

import 'package:first_app/views/give_feedback_view.dart';
import 'package:first_app/views/homescreens/homescreens.dart';
import 'package:first_app/views/login_view.dart';
import 'package:first_app/views/offline_data_view.dart';
import 'package:first_app/views/show_tutorial_view.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> RoutesNavigation(RouteSettings settings) {
    //with the the help of switching we have to switch through screens
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => Homescreens());

      case Routes.chatting:
        return MaterialPageRoute(builder: (_) => ChattingView());

      case Routes.crisisLine:
        return MaterialPageRoute(builder: (_) => CrisisLineView());

      case Routes.offLineData:
        return MaterialPageRoute(builder: (_) => OfflineDataView());

      case Routes.about:
        return MaterialPageRoute(builder: (_) => AboutView());

      case Routes.showTutorial:
        return MaterialPageRoute(builder: (_) => ShowTutorialView());

      case Routes.giveFeedBack:
        return MaterialPageRoute(builder: (_) => GiveFeedbackView());

      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginView());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(body: Center(child: Text("Route Not Found"))),
        );
    }
  }
}
