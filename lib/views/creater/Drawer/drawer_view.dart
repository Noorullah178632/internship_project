import 'package:first_app/utils/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTextWidget(context, "Dashboard", RouteName.adminDashboard),

          _buildTextWidget(
            context,
            "Service Listings Management",
            RouteName.adminDashboard,
          ),

          _buildTextWidget(
            context,
            "NGOs / Services",
            RouteName.adminDashboard,
          ),

          _buildTextWidget(
            context,
            "User Reports & Feedback",
            RouteName.adminDashboard,
          ),

          _buildTextWidget(
            context,
            "Offer Help Requests",
            RouteName.adminDashboard,
          ),

          _buildTextWidget(
            context,
            "User Management",
            RouteName.adminDashboard,
          ),

          _buildTextWidget(
            context,
            "Content Management (CMS)",
            RouteName.adminDashboard,
          ),

          _buildTextWidget(
            context,
            "Reviews & Ratings Management",
            RouteName.adminDashboard,
          ),

          _buildTextWidget(
            context,
            "Location & Service Map",
            RouteName.adminDashboard,
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
            RouteName.adminDashboard,
          ),

          _buildTextWidget(context, "Settings", RouteName.adminDashboard),

          _buildTextWidget(context, "Logout", RouteName.adminDashboard),
        ],
      ),
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
