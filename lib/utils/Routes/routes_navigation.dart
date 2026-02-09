import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/views/creater/admin_DashBoard/admin_dashboard_view.dart';
import 'package:first_app/views/creater/detailed_profile_view.dart';
import 'package:first_app/views/creater/service_listing_management_view.dart';
import 'package:first_app/views/dummyclass_view.dart';
import 'package:first_app/views/users/about_view.dart';
import 'package:first_app/views/users/Boarding_pages/boarding_view.dart';
import 'package:first_app/views/users/chatting/chatting_view.dart';

import 'package:first_app/views/users/CrisisLines/crisis_line_view.dart';
import 'package:first_app/views/users/community_screens/community_view.dart';
import 'package:first_app/views/users/favorite_screens/myfavorite_view.dart';

import 'package:first_app/views/users/give_feedback_view.dart';
import 'package:first_app/views/users/homescreens/homescreens.dart';
import 'package:first_app/views/users/login_view.dart';
import 'package:first_app/views/users/offileData/offline_data_view.dart';
import 'package:first_app/views/users/reset_password_view.dart';
import 'package:first_app/views/users/show_tutorial_view.dart';
import 'package:first_app/views/users/signup_view.dart';
import 'package:first_app/views/users/splash_view.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> RoutesNavigation(RouteSettings settings) {
    //with the the help of switching we have to switch through screens
    switch (settings.name) {
      //user Routes

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
      //admin Routes
      case RouteName.adminDashboard:
        return MaterialPageRoute(builder: (_) => AdminDashboardView());

      case RouteName.drawerAdmin:
        return MaterialPageRoute(builder: (_) => Drawer());

      case RouteName.detailProfile:
        return MaterialPageRoute(builder: (_) => DetailedProfileView());
      case RouteName.serviceListingManagement:
        return MaterialPageRoute(
          builder: (_) => ServiceListingManagementView(),
        );

      //dummy screen
      case RouteName.dummyPage:
        return MaterialPageRoute(builder: (_) => DummyclassView());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(body: Center(child: Text("Route Not Found"))),
        );
    }
  }
}
