import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/view_models/barChart_view_model.dart';
import 'package:first_app/views/creater/Drawer/drawer_view.dart';
import 'package:first_app/views/creater/admin_DashBoard/widgets/bar_chart_view2.dart';
import 'package:first_app/views/creater/admin_DashBoard/widgets/donut_chart_view.dart';
import 'package:first_app/views/creater/admin_DashBoard/widgets/heat_map_view.dart';
import 'package:first_app/views/creater/admin_DashBoard/widgets/line_chart_view.dart';
import 'package:first_app/views/creater/admin_DashBoard/widgets/recent_activity_view.dart';
import 'package:first_app/views/creater/admin_DashBoard/widgets/stacked_bar_chart_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDashboardView extends StatefulWidget {
  const AdminDashboardView({super.key});

  @override
  State<AdminDashboardView> createState() => _AdminDashboardViewState();
}

class _AdminDashboardViewState extends State<AdminDashboardView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        //remove back button
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/icons/Logo.png"),
            ),
            Text(
              "Amdad",
              style: GoogleFonts.marhey(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Color(0XFF4CAF50),
              ),
            ),
          ],
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.menu),
              iconSize: 40,
              color: Colors.black,
            ),
          ),
        ],
      ),
      endDrawer: DrawerView(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
          width: screenWidth,
          decoration: BoxDecoration(color: Color(0XFFFEF9EF)),
          child: Column(
            children: [
              //1st part
              Container(
                width: screenWidth,
                child: Column(
                  children: [
                    Text(
                      "Welcome to the Admin Dashboard",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 32.sp,
                        height: 1.5,
                        letterSpacing: 1,
                        color: Color(0XFF505050),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Text(
                      "Gain a comprehensive overview of your platform's activity and statistics. Quickly access pending verifications, flagged services, total services listed, verified NGOs/Providers, pending requests, and recent user reviews/flags",
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        height: 1.5,
                        letterSpacing: 0.75,
                        color: Color(0XFF393939),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Container(
                      width: screenWidth,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Appcolors.primarColor,
                      ),
                      child: Center(
                        child: Text(
                          "Explore Dashboard",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            height: 1.5,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Text(
                      "Platform Activity",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 32.sp,
                        height: 1.5,
                        letterSpacing: 1,
                        color: Color(0XFFA09D9A),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              //2nd part
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: screenWidth,
                //  height: screenHeight * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Platform Statistics",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        height: 1.5,
                        letterSpacing: 1,
                        color: Color(0XFF505050),
                      ),
                    ),

                    _buildStatCard(
                      imagePath: "assets/images/admin/dashboard/register.png",
                      text1: "Total Users",
                      text2: " Registered",
                      text3: '1,248',
                      text4: "+34 this week",
                      backgroundColor: Color(0XFFC7DCFF),
                    ),
                    SizedBox(height: 10.h),
                    _buildStatCard(
                      imagePath: "assets/images/admin/dashboard/listing.png",
                      text1: "Active",
                      text2: "Listings",
                      text3: "306",
                      text4: "Shelters,Food etc",
                      backgroundColor: Color(0XFFC8E6C9),
                    ),
                    SizedBox(height: 10.h),
                    _buildStatCard(
                      imagePath: "assets/images/admin/dashboard/pending.png",
                      text1: "Listings",
                      text2: "Pinding",
                      text3: "17",
                      text4: "Needs admin review",
                      backgroundColor: Color(0XFFFFEEAC),
                    ),
                    SizedBox(height: 10.h),
                    _buildStatCard(
                      imagePath: "assets/images/admin/dashboard/rating.png",
                      text1: "Average",
                      text2: "User Rating",
                      text3: "4.3 / 5",
                      text4: "Based on 215 reviews",
                      backgroundColor: Color(0XFFD2D2D2),
                    ),
                    SizedBox(height: 10.h),
                    _buildStatCard(
                      imagePath: "assets/images/admin/dashboard/status.png",
                      text1: "System",
                      text2: "Status",
                      text3: "99.98% Uptime",
                      text4: "No recent downtimes",
                      backgroundColor: Color(0XFFFFC7C7),
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              //3rd part
              FlChartView(),
              SizedBox(height: screenHeight * 0.03),
              //4th part
              StackedBarChartView(),
              SizedBox(height: screenHeight * 0.03),
              //5th part
              DonutChartView(),
              SizedBox(height: screenHeight * 0.03),

              //6th part
              BarChartView2(),
              SizedBox(height: screenHeight * 0.03),

              //7th part
              HeatMapView(),

              SizedBox(height: screenHeight * 0.03),
              //8th part
              RecentActivity(),
            ],
          ),
        ),
      ),
    );
  }

  //making widget for the 3rd part of the screen
  Widget _buildStatCard({
    required String imagePath,
    required String text1,
    required String text2,
    required String text3,
    required String text4,

    required Color backgroundColor,
    // BuildContext? context,
    // String? route,
  }) {
    return GestureDetector(
      // onTap: context != null && route != null
      //     ? () => Navigator.pushNamed(context, route)
      //     : null,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage(imagePath), width: 32, height: 32),
            //  SizedBox(width: 20),
            Expanded(
              child: Column(
                children: [
                  Text(
                    text1,
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      height: 1.5,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF505050),
                    ),
                  ),
                  Text(
                    text2,
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      height: 1.5,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF505050),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text3,
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    letterSpacing: 1,
                    color: Color(0XFF505050),
                  ),
                ),
                Text(
                  text4,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 9.sp,
                    height: 2,
                    letterSpacing: 1,
                    color: Color(0XFF747474),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
