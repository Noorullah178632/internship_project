import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubmittedForm extends StatelessWidget {
  const SubmittedForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(width: 0.3, color: Colors.black)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 60.h),
          // --- Logo Section ---
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/icons/Logo.png"),
              ), // Placeholder for Amdad Logo

              Text(
                'Amdad',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),

          // --- Input Fields ---
          _buildTextField(hint: "Name"),
          SizedBox(height: 16.h),
          _buildTextField(hint: "Email"),
          SizedBox(height: 16.h),
          _buildTextField(hint: "Message", maxLines: 5),

          SizedBox(height: 30.h),

          // --- Submit Button ---
          SizedBox(
            //  width: 100.w,
            // height: 40.h,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                  0xFF4CAF50,
                ), // Green from screenshot
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 14.sp),
              ),
            ),
          ),

          SizedBox(height: 20.h),
          Divider(),
          SizedBox(height: 30.h),

          // --- Footer Links ---
          _footerText("Our Services"),
          _footerText("Resources"),
          _footerText("Contact"),
          _footerText("About"),

          SizedBox(height: 20.h),

          // --- Social Media Icons ---
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _socialIcon(FontAwesomeIcons.facebook, Colors.blue),
              SizedBox(width: 15.w),
              _socialIcon(FontAwesomeIcons.instagram, Colors.pink),
              SizedBox(width: 15.w),
              _socialIcon(FontAwesomeIcons.twitter, Colors.blue),
              SizedBox(width: 15.w),
              _socialIcon(FontAwesomeIcons.linkedin, Colors.blue),
            ],
          ),

          SizedBox(height: 30.h),
          const Divider(),

          // --- Bottom Legal Links ---
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _legalText("English"),
                _legalText("Privacy"),
                _legalText("Legal"),
              ],
            ),
          ),

          Text(
            "© 2025 Amdad | v1.0.3 All Rights Reserved.",
            style: TextStyle(
              fontWeight: FontWeight.w400,

              fontSize: 12.sp,
              color: Color(0XFFA6A7AB),
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  // Helper widget for text fields
  Widget _buildTextField({required String hint, int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5.h),
        TextField(
          maxLines: maxLines,

          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: BorderSide(color: Colors.black),
            ),
            hint: Text(
              hint,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0XFFA6A7AB),
                fontSize: 14.sp,
                height: 1.4.h,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 12.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: const BorderSide(color: Colors.black12),
            ),
          ),
        ),
      ],
    );
  }

  // Helper for footer menu items
  Widget _footerText(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13.sp,
          color: Color(0XFF5C5F66),
        ),
      ),
    );
  }

  // Helper for legal bottom links
  Widget _legalText(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w400,

          fontSize: 14.sp,
          color: Color(0XFF5C5F66),
        ),
      ),
    );
  }

  // Helper for social icons
  Widget _socialIcon(IconData icon, Color color) {
    return Icon(icon, size: 24.sp, color: color);
  }
}
