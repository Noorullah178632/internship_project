import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertNotificationView extends StatefulWidget {
  const AlertNotificationView({super.key});

  @override
  State<AlertNotificationView> createState() => _AlertNotificationViewState();
}

class _AlertNotificationViewState extends State<AlertNotificationView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        width: 1.sw,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Alerts & Notifications",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 24.sp,
                height: 1.5.h,
                letterSpacing: 1,
                color: Color(0XFF505050),
              ),
            ),
            SizedBox(height: 10.h),
            //Pending container
            _buildContainer(
              title: "Pending Listings Spike",
              description: "45 pending listings in last 24h (↑300%)",
              time: "5 min ago",
              iconButton: Icons.info_outline_rounded,
              containerColor: Color(0XFFCD3546),
              iconColor: Colors.white,
              textColor: Colors.white,
            ),
            SizedBox(height: 10.h),
            //FlagReports
            _buildContainer(
              title: "Multiple Flagged Reports",
              description: "8 users flagged “Food Aid Gulshan” as inaccurate",
              time: "20 min ago",
              iconButton: Icons.warning_amber_outlined,
              containerColor: Color(0XFFE28040),
              iconColor: Colors.white,
              textColor: Colors.white,
            ),
            SizedBox(height: 10.h),
            //Api Failure
            _buildContainer(
              title: "API Failure Detected",
              description: "Map service failed to load for 30% of users",
              time: "1 hr ago",
              iconButton: Icons.info_outline_rounded,
              containerColor: Color(0XFFF1CBD2),
              iconColor: Color(0XFFCD3546),
              textColor: Color(0XFF681923),
            ),
            SizedBox(height: 10.h),
            //Server Load Warning
            _buildContainer(
              title: "Server Load Warning",
              description: "Server usage at 80% capacity",
              time: "2 hrs ago",
              iconButton: Icons.warning_amber_outlined,
              containerColor: Color(0XFFF7DFB6),
              iconColor: Color(0XFFE28040),
              textColor: Color(0XFF673617),
            ),
            SizedBox(height: 10.h),
            //System Normal
            _buildContainer(
              title: "All Systems Normal",
              description: "Server usage at 80% capacity",
              time: "2 hrs ago",
              iconButton: Icons.check_circle,
              containerColor: Color(0XFF66C397),
              iconColor: Colors.white,
              textColor: Color(0XFF30624A),
            ),
          ],
        ),
      ),
    );
  }

  // contianer
  Widget _buildContainer({
    required String title,
    required String description,
    required String time,
    required IconData iconButton,
    required Color containerColor,
    required Color iconColor,
    required Color textColor,
  }) {
    return Container(
      padding: EdgeInsets.only(top: 2, bottom: 10),
      width: 1.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: containerColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //for list tile
          ListTile(
            contentPadding: EdgeInsets.only(left: 10),
            leading: Icon(iconButton, color: iconColor),
            title: Text(
              title,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
                color: textColor,
              ),
            ),
            subtitle: Text(
              description,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: textColor,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                Text(
                  time,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                    color: textColor,
                  ),
                ),
                SizedBox(width: 5.w),
                Icon(Icons.directions_outlined, color: textColor, size: 17.w),
                SizedBox(width: 5.w),

                Icon(Icons.close, color: textColor, size: 17.w),
              ],
            ),
          ),
          //for cloase and open
          Row(
            children: [
              SizedBox(width: 20.w),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: textColor, width: 1.5),
                  ),
                ),
                padding: EdgeInsets.only(
                  bottom: 2.h,
                ), // ✅ Space between text and line
                child: Text(
                  "Closed",
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: textColor,
                    // No decoration needed
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: textColor, width: 1.5),
                  ),
                ),
                padding: EdgeInsets.only(
                  bottom: 2.h,
                ), // ✅ Space between text and line
                child: Text(
                  "Open",
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: textColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
