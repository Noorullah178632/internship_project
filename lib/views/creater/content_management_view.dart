import 'package:first_app/view_models/Table_view_model.dart';
import 'package:first_app/views/creater/Drawer/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContentManagementView extends StatefulWidget {
  const ContentManagementView({super.key});

  @override
  State<ContentManagementView> createState() => _ContentManagementViewState();
}

class _ContentManagementViewState extends State<ContentManagementView> {
  //static user//
  List<Map<String, dynamic>> staticPages = [
    {
      'pageTitle': 'About Us',
      'lastUpdated': '2025-06-10',
      'status': {
        'color': Color(0xFF4CAF50).withOpacity(0.4), // Green
        'text': 'Published',
      },
      'actions1': 'Edit',
      'actions2': 'Unpublish',
    },
    {
      'pageTitle': 'FAQs',
      'lastUpdated': '2025-09-11',
      'status': {
        'color': Color(0xFF4CAF50).withOpacity(0.4), // Green
        'text': 'Published',
      },
      'actions1': 'Edit',
      'actions2': 'Unpublish',
    },
    {
      'pageTitle': 'Community Guidelines',
      'lastUpdated': '2025-05-28',
      'status': {
        'color': Color(0xFF4CAF50).withOpacity(0.4), // Green
        'text': 'Published',
      },
      'actions1': 'Edit',
      'actions2': 'Unpublish',
    },
    {
      'pageTitle': 'Terms & Conditions',
      'lastUpdated': '2025-06-01',
      'status': {
        'color': Color(0xFF4CAF50).withOpacity(0.4), // Green
        'text': 'Published',
      },
      'actions1': 'Edit',
      'actions2': '–',
    },
    {
      'pageTitle': 'Privacy Policy',
      'lastUpdated': '2025-06-07',
      'status': {
        'color': Color(0xFFFFC107).withOpacity(0.4), // Yellow
        'text': 'Draft',
      },
      'actions1': 'Edit',
      'actions2': '–',
    },
  ];
  //Banned user //
  List<Map<String, dynamic>> bannedUser = [
    {
      'bannerTitle': 'Ramadan Food Drive',
      'type': 'Image',
      'start_end_dates': 'Apr 1 - Apr 30, 2025',
      'status': {
        'color': Color(0xFFFF8A80).withOpacity(0.4), // Red
        'text': 'Inactive',
      },
      'actions1': 'Edit',
      'actions2': 'Activate',
      'actions3': 'Delete',
    },
    {
      'bannerTitle': 'Summer Health Camp',
      'type': 'Text',
      'start_end_dates': 'Jun 5 - Jun 25, 2025',
      'status': {
        'color': Color(0xFF4CAF50).withOpacity(0.4), // Green
        'text': 'Active',
      },
      'actions1': 'Edit',
      'actions2': 'Deactivate',
      'actions3': 'Delete',
    },
    {
      'bannerTitle': 'Earthquake Relief Fund',
      'type': 'Image',
      'start_end_dates': '–',
      'status': {
        'color': Color(0xFF4CAF50).withOpacity(0.4), // Green
        'text': 'Active',
      },
      'actions1': 'Edit',
      'actions2': 'Deactivate',
      'actions3': 'Delete',
    },
  ];

  //Emergency Notice//
  List<Map<String, dynamic>> emergencyNotices = [
    {
      'alertTitle': 'Heatwave Safety Tips',
      'visibilityScope': 'Public (All Users)',
      'postedOn': '2025-06-15',
      'status': {
        'color': Color(0xFF4CAF50).withOpacity(0.4), // Green
        'text': 'Active',
      },
      'actions1': 'Edit',
      'actions2': 'Deactivate',
    },
    {
      'alertTitle': 'NGO Verification Delay',
      'visibilityScope': 'Admin Panel Only',
      'postedOn': '2025-06-14',
      'status': {
        'color': Color(0xFF4CAF50).withOpacity(0.4), // Green
        'text': 'Active',
      },
      'actions1': 'Edit',
      'actions2': 'Deactivate',
    },
    {
      'alertTitle': 'Shelter Full Notice',
      'visibilityScope': 'Specific Region Only',
      'postedOn': '2025-06-13',
      'status': {
        'color': Color(0xFFFF8A80).withOpacity(0.4), // Pink/Red
        'text': 'Inactive',
      },
      'actions1': 'Edit',
      'actions2': 'Activate',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    "Content Management",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 32.sp,
                      height: 1.5.h,
                      color: Color(0XFF505050),
                    ),
                  ),
                  SizedBox(height: 10.h),

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
                          text: "Static page control \n\n",
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
                              "This section allows admins to manage non-user-generated content such as FAQs, About Us, Community Guidelines, Terms & Conditions, and homepage visuals (banners, alerts, notices). This ensures the platform remains up to date, informative, and responsive to crises or awareness needs.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            letterSpacing: 0.75,
                            height: 1.4.h,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      _buildTitleText(text: "Save as draft", width: 90),
                      Spacer(),
                      _buildTitleText(text: "Preview", width: 90),
                    ],
                  ),
                ],
              ),
            ),
            //2nd part of the screen
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              color: Colors.white,

              width: 1.sw,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(color: Color(0XFFF6F6F6)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //first section
                      SizedBox(height: 15.h),
                      Text(
                        "Static Pages",
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Color(0XFF505050),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      //2nd section
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          SizedBox(width: 10.w),
                          //3rd
                          Column(
                            children: [
                              _buildTitleText(text: "Page Title", width: 150),
                              ...List.generate(
                                staticPages.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: staticPages[index]["pageTitle"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //4th
                          Column(
                            children: [
                              _buildTitleText(text: "Last Updated", width: 150),
                              ...List.generate(
                                staticPages.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: staticPages[index]["lastUpdated"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //5th
                          Column(
                            children: [
                              _buildTitleText(text: "Status", width: 100),
                              ...List.generate(
                                staticPages.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text: staticPages[index]["status"]["text"],
                                  color: staticPages[index]["status"]["color"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),

                          //6th
                          Column(
                            children: [
                              _buildTitleText(text: 'Action', width: 100),
                              ...List.generate(
                                staticPages.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text: staticPages[index]["actions1"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //7th
                          Column(
                            children: [
                              _buildTitleText(text: 'Action', width: 100),
                              ...List.generate(
                                staticPages.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text: staticPages[index]["actions2"],
                                ),
                              ),
                            ],
                          ),

                          //8th
                        ],
                      ),
                      SizedBox(height: 20.h),

                      //3rd section
                    ],
                  ),
                ),
              ),
            ),
            //3rd part of the screen
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
              color: Colors.white,

              width: 1.sw,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(color: Color(0XFFF6F6F6)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      //first section
                      Text(
                        "Banned User",
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Color(0XFF505050),
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      //2nd section
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          SizedBox(width: 10.w),

                          //3rd
                          Column(
                            children: [
                              _buildTitleText(text: "Banner Title", width: 200),
                              ...List.generate(
                                bannedUser.length,
                                (index) => _buildTextContainer(
                                  width: 200,
                                  text: bannedUser[index]["bannerTitle"],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 10.w),
                          //5th
                          Column(
                            children: [
                              _buildTitleText(text: "Type", width: 150),
                              ...List.generate(
                                bannedUser.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: bannedUser[index]['type'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //6th
                          Column(
                            children: [
                              _buildTitleText(
                                text: 'Start-EndDates',
                                width: 150,
                              ),
                              ...List.generate(
                                bannedUser.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: bannedUser[index]['start_end_dates'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              _buildTitleText(text: 'Status', width: 100),
                              ...List.generate(
                                bannedUser.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text: bannedUser[index]['status']['text'],
                                  color: bannedUser[index]['status']['color'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //7th
                          Column(
                            children: [
                              _buildTitleText(text: 'Action', width: 100),
                              ...List.generate(
                                bannedUser.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text: bannedUser[index]['actions1'],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              _buildTitleText(text: 'Action', width: 100),
                              ...List.generate(
                                bannedUser.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text: bannedUser[index]['actions2'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.h),
                          Column(
                            children: [
                              _buildTitleText(text: 'Action', width: 100),
                              ...List.generate(
                                bannedUser.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text: bannedUser[index]['actions3'],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 10.w),
                        ],
                      ),
                      SizedBox(height: 20.h),

                      //3rd section
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.only(
                top: 10.h,
                bottom: 40.h,
                left: 20.w,
                right: 20.w,
              ),
              color: Color(0XFFFEF9EF),
              width: 1.sw,
              height: 280.h,
              child: Center(
                child: Text(
                  "Have to make banner here",
                  style: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    color: Colors.black,
                    height: 1.4.h,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            //4th part of the screen
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
              color: Colors.white,

              width: 1.sw,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(color: Color(0XFFF6F6F6)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //first section
                      Text(
                        "Emergency Alerts / Notices",
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Color(0XFF505050),
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      //2nd section
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          //1st
                          SizedBox(width: 10.w),
                          //3rd
                          Column(
                            children: [
                              _buildTitleText(text: "Alert Title", width: 200),
                              ...List.generate(
                                emergencyNotices.length,
                                (index) => _buildTextContainer(
                                  width: 200,
                                  text: emergencyNotices[index]["alertTitle"],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 10.w),
                          //5th
                          Column(
                            children: [
                              _buildTitleText(
                                text: "Visibility Scope",
                                width: 150,
                              ),
                              ...List.generate(
                                emergencyNotices.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text:
                                      emergencyNotices[index]['visibilityScope'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //6th
                          Column(
                            children: [
                              _buildTitleText(text: 'Posted On', width: 200),
                              ...List.generate(
                                emergencyNotices.length,
                                (index) => _buildTextContainer(
                                  width: 200,
                                  text: emergencyNotices[index]['postedOn'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              _buildTitleText(text: 'Status', width: 100),
                              ...List.generate(
                                emergencyNotices.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text:
                                      emergencyNotices[index]['status']["text"],
                                  color:
                                      emergencyNotices[index]["status"]["color"],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 10.w),
                          //9th
                          Column(
                            children: [
                              _buildTitleText(text: 'Action', width: 100),
                              ...List.generate(
                                emergencyNotices.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text: emergencyNotices[index]['actions1'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //10th
                          Column(
                            children: [
                              _buildTitleText(text: 'Action', width: 100),
                              ...List.generate(
                                emergencyNotices.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text: emergencyNotices[index]['actions2'],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //button widget
  Widget _buildButton(String text, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Color(0XFF2E7D32),
      ),
      child: Center(
        child: Row(
          children: [
            Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                height: 1.5,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 5.w),
            Icon(icon, color: Colors.white, size: 16.r),
          ],
        ),
      ),
    );
  }

  //widget : titletext
  Widget _buildTitleText({required String text, required double width}) {
    return Container(
      width: width.w,
      height: 40.h,
      decoration: BoxDecoration(color: Color(0XFFC8E6C9)),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              height: 1.5.h,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  //widget : containerImage
  Widget _buildContainerImage(String imagePath) {
    return Container(
      width: 60.w,
      height: 40.h,

      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.2.w, color: Colors.black),
        ),
      ),

      child: CircleAvatar(child: Image.asset(imagePath)),
    );
  }

  //widget:container checkbox
  Widget _buildCheckBox({
    Color? color,
    required bool value,
    required Function(bool?) onchanged,
  }) {
    return Container(
      width: 60.w,
      height: 40.h,
      decoration: BoxDecoration(color: color),
      child: Checkbox(
        activeColor: Colors.white,
        checkColor: Colors.green,

        value: value,
        onChanged: onchanged,
      ),
    );
  }

  //normal container
  Widget _buildcontainer({required String text, required Color color}) {
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          height: 1.5.h,
          color: Color(0XFF6C757D),
        ),
      ),
    );
  }

  //Widget : text container
  Widget _buildTextContainer({
    required double width,
    required String text,
    Color color = Colors.white,
  }) {
    return Container(
      width: width.w,
      height: 40.h,

      decoration: BoxDecoration(
        color: color,
        border: Border(
          bottom: BorderSide(width: 0.2.w, color: Colors.black),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            height: 1.5.h,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  //widget: action widget
  Widget _buildActionWidget({
    required double width,
    required String text,
    required Color color,
  }) {
    return Container(
      width: width.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.2.w, color: Colors.black),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 8.h,
      ), // Add padding
      child: Container(
        // Remove fixed height, let it fit content
        // padding: EdgeInsets.symmetric(
        //   horizontal: 12.w,
        //   vertical: 4.h,
        // ), // Add internal padding
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.r), // More rounded
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              decoration: TextDecoration.underline,
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black, // White text for better contrast
            ),
          ),
        ),
      ),
    );
  }
}
