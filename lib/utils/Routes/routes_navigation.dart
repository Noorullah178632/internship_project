import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/views/creater/admin_DashBoard/admin_dashboard_view.dart';
import 'package:first_app/views/creater/content_management_view.dart';
import 'package:first_app/views/creater/detailed_profile_view.dart';
import 'package:first_app/views/creater/location_services_view.dart';
import 'package:first_app/views/creater/offer_help_request_view.dart';
import 'package:first_app/views/creater/report_list.dart';
import 'package:first_app/views/creater/review_rating_management_view.dart';
import 'package:first_app/views/creater/service_listing_management_view.dart';
import 'package:first_app/views/creater/service_provider_notification.dart';
import 'package:first_app/views/creater/user_management_view.dart';
import 'package:first_app/views/dummyclass_view.dart';
import 'package:first_app/views/flowscreen_view.dart';
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
import 'package:first_app/views/users/signup_admin_view.dart';
import 'package:first_app/views/users/signup_user_view.dart';
import 'package:first_app/views/users/splash_view.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  // ignore: non_constant_identifier_names
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
      case RouteName.flowOfScreens:
        return MaterialPageRoute(builder: (_) => FlowscreenView());
      case RouteName.signUpUser:
        return MaterialPageRoute(builder: (_) => SignupUserView());
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
      case RouteName.serviceProviderNotification:
        return MaterialPageRoute(builder: (_) => ServiceProviderNotificaton());
      case RouteName.reportList:
        return MaterialPageRoute(builder: (_) => ReportList());
      case RouteName.userManagement:
        return MaterialPageRoute(builder: (_) => UserManagementView());
      case RouteName.contentManagement:
        return MaterialPageRoute(builder: (_) => ContentManagementView());
      case RouteName.reviewManagement:
        return MaterialPageRoute(builder: (_) => ReviewRatingManagementView());
      case RouteName.locationServices:
        return MaterialPageRoute(builder: (_) => LocationServicesView());

      case RouteName.offerHelpRequest:
        return MaterialPageRoute(builder: (_) => OfferHelpRequestView());

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
