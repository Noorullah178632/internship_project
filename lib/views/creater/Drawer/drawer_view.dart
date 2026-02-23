import 'package:first_app/services/shared_pref/shared_pref_service.dart';
import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/view_models/firebaseServices_viewModels/authentication_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      width: screenWidth * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 70.h),
          _buildTextWidget(context, "Dashboard", RouteName.adminDashboard),

          _buildTextWidget(
            context,
            "Service Listings Management",
            RouteName.serviceListingManagement,
          ),

          _buildTextWidget(
            context,
            "NGOs / Services",
            RouteName.serviceProviderNotification,
          ),

          _buildTextWidget(
            context,
            "User Reports & Feedback",
            RouteName.reportList,
          ),

          _buildTextWidget(
            context,
            "Offer Help Requests",
            RouteName.offerHelpRequest,
          ),

          _buildTextWidget(
            context,
            "User Management",
            RouteName.userManagement,
          ),

          _buildTextWidget(
            context,
            "Content Management (CMS)",
            RouteName.contentManagement,
          ),

          _buildTextWidget(
            context,
            "Reviews & Ratings Management",
            RouteName.reviewManagement,
          ),

          _buildTextWidget(
            context,
            "Location & Service Map",
            RouteName.locationServices,
          ),

          _buildTextWidget(
            context,
            "Analytics & Reports",
            RouteName.adminDashboard,
          ),

          _buildTextWidget(
            context,
            "Admin Roles & Permissions",
            RouteName.adminDashboard,
          ),

          _buildTextWidget(
            context,
            "Messages / Notifications",
            RouteName.serviceProviderNotification,
          ),

          _buildTextWidget(context, "Settings", RouteName.adminDashboard),

          GestureDetector(
            onTap: () {
              dialogShow(context);
            },
            child: Container(
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0XFF5E5E5E), width: 0.3),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/icons/login.png"),
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Logout",
                      style: TextStyle(
                        color: Appcolors.primarColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        letterSpacing: 1,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //show dialog
  Future<bool?> dialogShow(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("You Want to Log out ?"),
          actions: [
            Consumer<AuthenticationViewModel>(
              builder: (context, vm, child) {
                return ElevatedButton(
                  onPressed: () async {
                    await vm.signOut();
                    // show snackbar first
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Successfully logged out")),
                    );
                    // close the dialog
                    Navigator.pop(context);

                    // navigate to sign up screen
                    Navigator.pushReplacementNamed(
                      context,
                      RouteName.flowOfScreens,
                    ).then((value) {
                      SharedPrefService().clearUser();
                    });
                  },
                  child: Text("Yes"),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("No"),
            ),
          ],
        );
      },
    );
  }

  Widget _buildTextWidget(BuildContext context, String text, String routeName) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          height: 1.6,
          letterSpacing: 1,
          color: Color(0XFF505050),
        ),
      ),
    );
  }
}
