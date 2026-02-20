import 'package:first_app/utils/Routes/routes.dart';
import 'package:first_app/utils/appcolors.dart';
import 'package:first_app/views/users/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlowscreenView extends StatefulWidget {
  const FlowscreenView({super.key});

  @override
  State<FlowscreenView> createState() => _FlowscreenViewState();
}

class _FlowscreenViewState extends State<FlowscreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Appcolors.primarColor,
        title: Text(
          "Screens Flow",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.signUpUser);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                //  width: 100.w,
                height: 70.w,
                decoration: BoxDecoration(
                  color: Appcolors.primarColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "USER",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.signup);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                //  width: 100.w,
                height: 70.w,
                decoration: BoxDecoration(
                  color: Appcolors.primarColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "ADMIN",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
