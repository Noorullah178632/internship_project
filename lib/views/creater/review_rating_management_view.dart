import 'package:first_app/models/status_model.dart';
import 'package:first_app/view_models/Table_view_model.dart';
import 'package:first_app/view_models/drop_down_service_provider_view_model.dart';
import 'package:first_app/view_models/review_rating_management_view_model.dart';
import 'package:first_app/views/creater/Drawer/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewRatingManagementView extends StatefulWidget {
  const ReviewRatingManagementView({super.key});

  @override
  State<ReviewRatingManagementView> createState() =>
      _ReviewRatingManagementViewState();
}

class _ReviewRatingManagementViewState
    extends State<ReviewRatingManagementView> {
  //user daata//
  List<Map<String, dynamic>> usersList = [
    {
      'reviewId': '3214',
      'serviceTitle': 'Free Clinic',
      'reviewer': 'User123',
      'rating': 5,
      'reviewSnippet': 'Helpful staff...',
      'date': '15 Jun 2025',
      'status': {
        'text': 'Active',
        'color': Color(0xFF4CAF50).withOpacity(0.5), // Green
      },
      'actions1': {
        'text': 'View',
        'color': Color(0xFF424242).withOpacity(0.5), // Dark Gray
      },
      'actions2': {
        'text': 'Hide',
        'color': Color(0xFF5C6BC0).withOpacity(0.5), // Dark Gray
      },
      'actions3': {
        'text': 'Flag',
        'color': Color(0xFFE53935).withOpacity(0.5), // Blue
      },
    },
    {
      'reviewId': '3215',
      'serviceTitle': 'Shelter PC',
      'reviewer': 'Ayesha_56',
      'rating': 3,
      'reviewSnippet': 'Crowded & slow...',
      'date': '14 Jun 2025',
      'status': {
        'text': 'Active',
        'color': Color(0xFF4CAF50).withOpacity(0.5), // Green
      },
      'actions1': {
        'text': 'Review',
        'color': Color(0xFF424242).withOpacity(0.5), // Dark Gray
      },
      'actions2': {
        'text': 'Review',
        'color': Color(0xFF5C6BC0).withOpacity(0.5), // Blue
      },
      'actions3': {
        'text': 'Delete',
        'color': Color(0xFFE53935).withOpacity(0.5), // Red
      },
    },
  ];
  // Images
  List<String> images = List.generate(
    10,
    (i) => "assets/images/admin/imagelisting/${i + 1}.png",
  );

  // Added Dates

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
                    "Reviews & Ratings Management",
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
                      text: "Purpose :\n",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        height: 1.5,
                        letterSpacing: 1,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text:
                              "• Let admins monitor user-submitted reviews and ratings\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            letterSpacing: 0.75,
                            height: 1.4.h,
                            color: Colors.black,
                          ),
                        ),

                        TextSpan(
                          text:
                              "• Filter, flag, hide, or delete inappropriate or misleading reviews \n",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            letterSpacing: 0.75,
                            height: 1.4.h,
                            color: Colors.black,
                          ),
                        ),

                        TextSpan(
                          text:
                              "• Maintain trust and transparency on the platform \n",
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
                ],
              ),
            ),
            //2nd part of the screen
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
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0XFFF6F6F6),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.r,
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0.r, 4.r),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 170.w,

                              // padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.5,
                                  color: Colors.green,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),

                                  hint: Text("Search"),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            SizedBox(width: 10.w),
                            Consumer<ReviewRatingManagementViewModel>(
                              builder: (context, vm, child) {
                                return Container(
                                  // width: 140.w,
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 5.w,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.2,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    value: vm.selectedServices,
                                    items: vm.serviceOptions.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedServices(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<ReviewRatingManagementViewModel>(
                              builder: (context, vm, child) {
                                return Container(
                                  // width: 140.w,
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 5.w,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.2,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    value: vm.selectedUser,
                                    items: vm.usersOptions.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedUser(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<ReviewRatingManagementViewModel>(
                              builder: (context, vm, child) {
                                return Container(
                                  //  width: 140.w,
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 5.w,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.2,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    value: vm.selectedRating,
                                    items: vm.ratingOptions.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedRating(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<ReviewRatingManagementViewModel>(
                              builder: (context, vm, child) {
                                return Container(
                                  //  width: 140.w,
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 5.w,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.2,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    value: vm.selectedStatus,
                                    items: vm.statusgOptions.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedStatus(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<ReviewRatingManagementViewModel>(
                              builder: (context, vm, child) {
                                return Container(
                                  //  width: 140.w,
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 5.w,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.2,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    value: vm.selectedDataRange,
                                    items: vm.dataRangeOptions.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedDataRange(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15.h),
                      Text(
                        "All User List",
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Color(0XFF505050),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          //1st
                          Consumer<CheckBoxViewModel>(
                            builder: (context, vm, child) {
                              return Column(
                                children: [
                                  _buildCheckBox(
                                    value: true,
                                    onchanged: (value) {},
                                    color: Colors.green,
                                  ),
                                  ...List.generate(2, (index) {
                                    return _buildCheckBox(
                                      value: vm.check[index],
                                      onchanged: (value) {
                                        vm.toggle(index, value!);
                                      },
                                    );
                                  }),
                                ],
                              );
                            },
                          ),
                          SizedBox(width: 10.w),
                          //2nd
                          Column(
                            children: [
                              _buildTitleText(text: "Image", width: 60),
                              ...List.generate(usersList.length, (index) {
                                return _buildContainerImage(images[index]);
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //3rd
                          Column(
                            children: [
                              _buildTitleText(text: "Review ID", width: 150),
                              ...List.generate(usersList.length, (index) {
                                return _buildTextContainer(
                                  width: 150,
                                  text: usersList[index]["reviewId"],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //4th
                          Column(
                            children: [
                              _buildTitleText(
                                text: "Service Title",
                                width: 150,
                              ),
                              ...List.generate(usersList.length, (index) {
                                return _buildTextContainer(
                                  width: 150,
                                  text: usersList[index]["serviceTitle"],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //5th
                          Column(
                            children: [
                              _buildTitleText(text: "Reviewer", width: 150),
                              ...List.generate(usersList.length, (index) {
                                return _buildTextContainer(
                                  width: 150,
                                  text: usersList[index]["reviewer"],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //6th
                          Column(
                            children: [
                              _buildTitleText(text: "Rating", width: 150),
                              ...List.generate(usersList.length, (index) {
                                return _buildTextContainer(
                                  width: 150,
                                  text: usersList[index]["rating"].toString(),
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),

                          Column(
                            children: [
                              _buildTitleText(
                                text: "ReviewSnippet",
                                width: 150,
                              ),
                              ...List.generate(usersList.length, (index) {
                                return _buildTextContainer(
                                  width: 150,
                                  text: usersList[index]["reviewSnippet"],
                                );
                              }),
                            ],
                          ),

                          SizedBox(width: 10.h),
                          Column(
                            children: [
                              _buildTitleText(text: "Date", width: 150),
                              ...List.generate(usersList.length, (index) {
                                return _buildTextContainer(
                                  width: 150,
                                  text: usersList[index]["date"],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //7th
                          Column(
                            children: [
                              _buildTitleText(text: "Status", width: 80),
                              ...List.generate(usersList.length, (index) {
                                return _buildTextContainer(
                                  width: 80,
                                  text: usersList[index]["status"]["text"],
                                  color: usersList[index]["status"]["color"],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),

                          //9th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 80),
                              ...List.generate(
                                usersList.length,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: usersList[index]["actions1"]["text"],
                                  color: usersList[index]["actions1"]["color"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //10th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 80),
                              ...List.generate(
                                usersList.length,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: usersList[index]["actions2"]["text"],
                                  color: usersList[index]["actions2"]["color"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //11th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 80),

                              ...List.generate(
                                usersList.length,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: usersList[index]["actions3"]["text"],
                                  color: usersList[index]["actions3"]["color"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                        ],
                      ),

                      SizedBox(height: 15.h),
                      //3rd section
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            //  width: 1400.w,
                            height: 60.h,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.w, 2.h),
                                  blurRadius: 3,
                                  color: Colors.black.withOpacity(0.25),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 7.h,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Showing 1 to 10 of 50 entries",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    height: 1.5.h,
                                    color: Color(0XFF6C757D),
                                  ),
                                ),
                                SizedBox(width: 150.w),
                                Text(
                                  "display",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    height: 1.5.h,
                                    color: Color(0XFF6C757D),
                                  ),
                                ),
                                SizedBox(width: 20.w),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 6.w,
                                    vertical: 8.h,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.3,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                  ),
                                  child: Text("20"),
                                ),
                                SizedBox(width: 20.w),
                                Container(
                                  padding: EdgeInsets.all(8.r),
                                  decoration: BoxDecoration(
                                    color: Color(0XFFF6F6F6),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(child: Icon(Icons.arrow_left)),
                                ),
                                SizedBox(width: 7.w),
                                _buildcontainer(text: "1", color: Colors.white),
                                SizedBox(width: 7.w),
                                _buildcontainer(text: "2", color: Colors.green),
                                SizedBox(width: 7.w),
                                _buildcontainer(text: "3", color: Colors.white),
                                SizedBox(width: 7.w),
                                _buildcontainer(text: "4", color: Colors.white),
                                SizedBox(width: 7.w),
                                Container(
                                  padding: EdgeInsets.all(8.r),
                                  decoration: BoxDecoration(
                                    color: Color(0XFFF6F6F6),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(child: Icon(Icons.arrow_right)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //last
                      SizedBox(height: 30.h),
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
            Icon(icon, color: Colors.white, size: 16.sp),
          ],
        ),
      ),
    );
  }

  //widget : titletext
  Widget _buildTitleText({required String text, required double width}) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
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
