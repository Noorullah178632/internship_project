import 'package:first_app/view_models/recent_activity_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

class RecentActivity extends StatefulWidget {
  const RecentActivity({super.key});

  @override
  State<RecentActivity> createState() => _RecentActivityState();
}

class _RecentActivityState extends State<RecentActivity> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider(
      create: (_) => RecentActivityViewModel(),
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Recent Activity & Logs',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                height: 1.4,
                color: Color(0XFF505050),
              ),
            ),

            SizedBox(height: 20.h),
            //scroll view for container
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(left: 10),

                constraints: BoxConstraints(minWidth: screenWidth),
                decoration: BoxDecoration(color: Color(0XFFF6F6F6)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  mainAxisSize: MainAxisSize.min,
                  children: [
                    //first row:search and drowdown buttons
                    Consumer<RecentActivityViewModel>(
                      builder: (context, vm, child) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 170.w,
                              height: 40.h,
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  width: 0.5.w,
                                  color: Colors.green,
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',

                                  prefixIcon: Icon(Icons.search),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            //for ALL dropdown
                            _dropDownContainer(
                              vm.selectedAll,
                              vm.allList,
                              vm.setAll,
                            ),
                            //for Listing
                            _dropDownContainer(
                              vm.selectedListings,
                              vm.Listings,
                              vm.setListings,
                            ),
                            //for Logins
                            _dropDownContainer(
                              vm.selectedLogins,
                              vm.loginList,
                              vm.setLogins,
                            ),
                            //for varifications
                            _dropDownContainer(
                              vm.selectedVarifications,
                              vm.varificationList,
                              vm.setVarifiactions,
                            ),
                          ],
                        );
                      },
                    ),
                    SizedBox(height: 20.h),
                    //second row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //first column component
                        Container(
                          decoration: BoxDecoration(),
                          child: Column(
                            children: [
                              //first title
                              _buildTitle("Event Description", 280.w),
                              //further items
                              _buildContainer(
                                "New listing submitted: \"Shelter Lahore\"",
                              ),

                              _buildContainer("Listing approved"),

                              _buildContainer(
                                "Listing rejected: \"Food Aid Karachi\"",
                              ),

                              _buildContainer("Admin login"),

                              _buildContainer("NGO profile verified"),
                              _buildContainer(
                                " Listing updated: \"Free Clinic Rawalpindi\"",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15.w),
                        //second column component
                        Column(
                          children: [
                            _buildTitle("Status", 100.w),
                            _buildStatus("Submitted", Colors.yellow),
                            _buildStatus("Approved", Colors.green),
                            _buildStatus(
                              "Rejected",
                              const Color.fromARGB(
                                255,
                                225,
                                60,
                                225,
                              ).withOpacity(0.4),
                            ),
                            _buildStatus(
                              "-",
                              const Color.fromARGB(
                                255,
                                112,
                                102,
                                26,
                              ).withOpacity(0.4),
                            ),
                            _buildStatus(
                              "Varified",
                              const Color.fromARGB(
                                255,
                                48,
                                142,
                                219,
                              ).withOpacity(0.4),
                            ),
                            _buildStatus(
                              "Updated",
                              const Color.fromARGB(
                                255,
                                231,
                                183,
                                28,
                              ).withOpacity(0.4),
                            ),
                          ],
                        ),
                        SizedBox(width: 15.w),
                        //third column component
                        Column(
                          children: [
                            _buildTitle("Performed By", 200),
                            _buildPerformed("ngo_hope_pk"),
                            _buildPerformed("Admin_Talha"),
                            _buildPerformed("Admin_Nimra"),
                            _buildPerformed("Admin_Talha"),
                            _buildPerformed("Admin_Nimra"),
                            _buildPerformed("ngo_hope_pk"),
                          ],
                        ),
                        SizedBox(width: 15.w),
                        //fourth column
                        Column(
                          children: [
                            _buildTitle("Timestampd", 200),
                            _buildPerformed("july 3,2025-10:15 AM"),
                            _buildPerformed("july 3,2025-10:22 AM"),
                            _buildPerformed("july 2,2025-5:40 PM"),
                            _buildPerformed("july 2,2025-4:00 PM"),
                            _buildPerformed("july 2,2025-3:30 PM"),
                            _buildPerformed("july 1,2025-11:45 AM"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //build widgets for performance
  Widget _buildPerformed(String text) {
    return Container(
      width: 200.w,

      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0XFF393939)),
        ),
      ),
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w200,
              fontSize: 12.sp,
              height: 1.5,
              letterSpacing: 0.75,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  //build widgets for Status
  Widget _buildStatus(String text, Color boxColor) {
    return Container(
      width: 100.w,

      decoration: BoxDecoration(
        color: boxColor,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0XFF393939)),
        ),
      ),
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w200,
            fontSize: 12.sp,
            height: 1.5,
            letterSpacing: 0.75,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  //build widgets for event description
  Widget _buildContainer(String text) {
    return Container(
      width: 290.w,

      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0XFF393939)),
        ),
      ),
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ), // padding: EdgeInsets.all(10),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            height: 1.5,
            letterSpacing: 0.75,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  //making title
  Widget _buildTitle(String text, double w) {
    return Container(
      width: w,

      padding: EdgeInsets.all(10),

      // height: 45.h,
      decoration: BoxDecoration(color: Color(0XFFC8E6C9)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            height: 1.5,
            letterSpacing: 0.5,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  //making widget for dropdown
  Widget _dropDownContainer(
    String selectedValue,
    List<String> dropDownList,
    void Function(String) function,
  ) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(4),
        width: 110.w,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(width: 0.5, color: Colors.black),
        ),
        child: DropdownButton<String>(
          value: selectedValue,
          icon: Icon(Icons.keyboard_arrow_down),
          iconSize: 20.sp,
          underline: SizedBox(),
          isExpanded: true,
          // padding: EdgeInsets.symmetric(horizontal: 10),
          onChanged: (value) {
            if (value != null) {
              function(value);
            }
          },
          items: dropDownList.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
