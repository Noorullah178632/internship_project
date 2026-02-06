import 'package:first_app/views/creater/Drawer/drawer_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailedProfileView extends StatefulWidget {
  const DetailedProfileView({super.key});

  @override
  State<DetailedProfileView> createState() => _DetailedProfileViewState();
}

class _DetailedProfileViewState extends State<DetailedProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                fontSize: 20.sp,
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
              iconSize: 40.h,
              color: Colors.black,
            ),
          ),
        ],
      ),
      endDrawer: DrawerView(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //first container
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
              decoration: BoxDecoration(color: Color(0XFFFEF9EF)),
              width: 1.sw,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Detailed Profile View",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 32.sp,
                      height: 1.5.h,
                      color: Color(0XFF505050),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Hope Aid Foundation\n",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18.sp,
                      height: 1.5.h,
                      color: Color(0XFF505050),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "Type :",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 1,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "Expanded NGO/Provider view \n\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            letterSpacing: 0.75,
                            height: 1,
                            color: Colors.black,
                          ),
                        ),

                        TextSpan(text: "Purpose :"),
                        TextSpan(
                          text:
                              "Deep dive into an NGO or provider’s activity history, documentation, and reputation before approving or reviewing services.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            letterSpacing: 0.75,
                            height: 1,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //2nd part
            Container(
              padding: EdgeInsets.only(
                top: 16.h,
                bottom: 40.h,
                left: 20.w,
                right: 20.w,
              ),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  //first detail
                  Column(
                    children: [
                      //title
                      _buildTitle("NGO Details"),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          margin: EdgeInsets.only(top: 10.h),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  //normal title
                                  _buildNormalTitle("Field"),
                                  //normal texts
                                  _buildNormal("Organization Name"),
                                  _buildNormal("Registered Name"),
                                  _buildNormal("Primary Contact Person"),
                                  _buildNormal("Phone Number"),
                                  _buildNormal("Category"),
                                  _buildNormal("Email Address"),
                                  _buildNormal("Location"),
                                  _buildNormal("Service Areas"),
                                  _buildNormal("Years of Operation"),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  //normal title
                                  _buildNormalTitle("Information"),
                                  //normal texts
                                  _buildNormal("Hope Aid Foundation"),
                                  _buildNormal("Hope Aid Welfare Organization"),
                                  _buildNormal("Asma Rizwan"),
                                  _buildNormal("+92 312 4567890"),
                                  _buildNormal("contact@hopeaid.org.pk"),
                                  _buildNormal("Food Distribution"),
                                  _buildNormal("Korangi, Karachi"),
                                  _buildNormal(
                                    "Slum areas in Karachi, Mobile Food Units",
                                  ),
                                  _buildNormal("4 years"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.w),
                  //second detail
                  Column(
                    children: [
                      //title
                      _buildTitle("Submitted Documents"),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          margin: EdgeInsets.only(top: 10.h),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  //normal title
                                  _buildNormalTitle("Document Type"),
                                  //normal texts
                                  _buildNormal("CNIC (Admin)"),
                                  _buildNormal("CNIC (Admin)"),
                                  _buildNormal("Past Service Photos"),
                                  _buildNormal("NGO Registration Cert"),
                                  _buildNormal("Bank Statement"),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  //normal title
                                  _buildNormalTitle("Status"),
                                  //normal texts
                                  _buildNormal("Uploaded"),
                                  _buildNormal("Uploaded"),
                                  _buildNormal("Uploaded"),
                                  _buildNormal("Uploaded"),
                                  _buildNormal("Not Uploaded"),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  //normal title
                                  _buildNormalTitle("Link/Preview", wid: 140),
                                  //normal texts
                                  _buildNormal("[View]", wid: 140),
                                  _buildNormal("[View]", wid: 140),
                                  _buildNormal("[View]", wid: 140),
                                  _buildNormal("[View]", wid: 140),
                                  _buildNormal("-", wid: 140),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.w),
                  //3rd detail
                  Column(
                    children: [
                      //title
                      _buildTitle("Activity Overview"),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          margin: EdgeInsets.only(top: 10.h),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  //normal title
                                  _buildNormalTitle("Metric"),
                                  //normal texts
                                  _buildNormal("Total Services Offered"),
                                  _buildNormal("User Likes / Appreciation"),
                                  _buildNormal("Last Verified By"),
                                  _buildNormal("Number of Flags"),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  //normal title
                                  _buildNormalTitle("Value", wid: 140),
                                  //normal text
                                  _buildNormal("128 events", wid: 140),
                                  _buildNormal("345", wid: 140),
                                  _buildNormal("—", wid: 140),
                                  _buildNormal("0", wid: 140),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.w),
                  //4th detail
                  Column(
                    children: [
                      //title
                      _buildTitle("Communication Log"),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          margin: EdgeInsets.only(top: 10.h),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  //normal title
                                  _buildNormalTitle("Date"),
                                  //normal texts
                                  _buildNormal("2025-06-10"),
                                  _buildNormal("-"),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  //normal title
                                  _buildNormalTitle("Admin", wid: 140),
                                  //normal text
                                  _buildNormal("Admin (Ahmed)", wid: 140),
                                  _buildNormal("-", wid: 140),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  //normal title
                                  _buildNormalTitle("Message/Action Taken"),
                                  //normal text
                                  _buildNormal(
                                    "Requested missing bank statement",
                                  ),
                                  _buildNormal("-"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.w),
                  //5th detail:All titles
                  _buildTitle("Verify Application"),
                  SizedBox(height: 10.w),

                  _buildTitle("Reject Application"),
                  SizedBox(height: 10.w),
                  _buildTitle("Flag for Review"),
                  SizedBox(height: 10.w),
                  _buildTitle("Send Message to Applicant"),
                  SizedBox(height: 10.w),
                  Center(
                    child: Container(
                      width: 1.sw,
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: Text.rich(
                        TextSpan(
                          text: "This will be edited\n\n",

                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            height: 1.5.h,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "Reject Application ",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                                height: 1.5.h,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(text: "(Option to give reason)\n\n"),
                            TextSpan(
                              text: "Note Section (Private to Admin)\n",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                                height: 1.5.h,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "This NGO has a good reputation and visible presence on social media. However, one key document is missing (bank statement). If not provided within 48 hours, we may need to follow up or reject.",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //title widget
  Widget _buildTitle(String text) {
    return Container(
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      width: 1.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Color(0XFFC8E6C9),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
            color: Color(0XFF505050),
          ),
        ),
      ),
    );
  }

  //build normal title
  Widget _buildNormalTitle(String text, {double wid = 220}) {
    return Container(
      width: wid.w,
      decoration: BoxDecoration(color: Color(0XFFC8E6C9)),
      padding: EdgeInsets.all(10),
      child: Center(
        child: SingleChildScrollView(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              height: 1.5.h,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  //normal
  Widget _buildNormal(String text, {double wid = 220}) {
    return Container(
      width: wid.w,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0XFF393939)),
        ),
      ),
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              height: 1.5.h,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
