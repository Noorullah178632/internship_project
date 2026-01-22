import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/views/about_view.dart';
import 'package:first_app/views/Boarding_pages/boarding_view.dart';
import 'package:first_app/views/chatting_view.dart';
import 'package:first_app/views/CrisisLines/crisis_line_view.dart';
import 'package:first_app/views/community_screens/community_view.dart';
import 'package:first_app/views/favorite_screens/myfavorite_view.dart';

import 'package:first_app/views/give_feedback_view.dart';
import 'package:first_app/views/homescreens/homescreens.dart';
import 'package:first_app/views/login_view.dart';
import 'package:first_app/views/offline_data_view.dart';
import 'package:first_app/views/reset_password_view.dart';
import 'package:first_app/views/show_tutorial_view.dart';
import 'package:first_app/views/signup_view.dart';
import 'package:first_app/views/splash_view.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> RoutesNavigation(RouteSettings settings) {
    //with the the help of switching we have to switch through screens
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => Homescreens());

      case RouteName.chatting:
        return MaterialPageRoute(builder: (_) => ChattingView());

      case RouteName.signup:
        return MaterialPageRoute(builder: (_) => SignupView());

      case RouteName.resetPassword:
        return MaterialPageRoute(builder: (_) => ResetPasswordView());

      case RouteName.crisisLine:
        return MaterialPageRoute(builder: (_) => CrisisLineView());

      case RouteName.offLineData:
        return MaterialPageRoute(builder: (_) => OfflineDataView());

      case RouteName.about:
        return MaterialPageRoute(builder: (_) => AboutView());

      case RouteName.showTutorial:
        return MaterialPageRoute(builder: (_) => ShowTutorialView());

      case RouteName.giveFeedBack:
        return MaterialPageRoute(builder: (_) => GiveFeedbackView());

      case RouteName.login:
        return MaterialPageRoute(builder: (_) => LoginView());

      case RouteName.boardingScreen:
        return MaterialPageRoute(builder: (_) => BoardingView());
      case RouteName.myFavorite:
        return MaterialPageRoute(builder: (_) => MyfavoriteView());
      case RouteName.communityCare:
        return MaterialPageRoute(builder: (_) => CommunityView());

      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashView());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(body: Center(child: Text("Route Not Found"))),
        );
    }
  }
}
