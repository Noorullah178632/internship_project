import 'package:first_app/view_models/container_animation_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuickActions extends StatefulWidget {
  const QuickActions({super.key});

  @override
  State<QuickActions> createState() => _QuickActionsState();
}

class _QuickActionsState extends State<QuickActions> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ContainerAnimationViewModel(),
      child: Container(
        width: 1.sw,
        padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "\"Quick Actions\"",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp,
                  color: Color(0XFF505050),
                  height: 1.5,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            //first container
            _buildContainer(
              icondata: FontAwesomeIcons.listCheck,
              text: "Review Pending Listings",
              wid: 270.w,
            ),

            SizedBox(height: 50.h),
            //second container
            _buildContainer(
              icondata: Icons.person_add,
              text: "Add New Admin",
              wid: 200.w,
            ),
            SizedBox(height: 50.h),
            //3rd container
            _buildContainer(
              icondata: Icons.analytics_outlined,
              text: "Generate Report",
              wid: 200.w,
            ),
            SizedBox(height: 50.h),
            //4th container
            _buildContainer(
              icondata: FontAwesomeIcons.fileExport,
              text: "Export Data",
              wid: 165.w,
            ),
          ],
        ),
      ),
    );
  }

  //make a container
  Widget _buildContainer({
    required IconData icondata,
    required String text,
    required double wid,
  }) {
    return Container(
      width: wid,
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0XFF2E7D32),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,

          children: [
            Icon(icondata, color: Colors.white, size: 20.w),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(
                text,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  height: 1.5.h,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
