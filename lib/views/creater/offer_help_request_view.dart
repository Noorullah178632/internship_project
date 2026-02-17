import 'package:first_app/view_models/Table_view_model.dart';

import 'package:first_app/view_models/offer_help_view_model.dart';
import 'package:first_app/views/creater/Drawer/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OfferHelpRequestView extends StatefulWidget {
  const OfferHelpRequestView({super.key});

  @override
  State<OfferHelpRequestView> createState() => _OfferHelpRequestViewState();
}

class _OfferHelpRequestViewState extends State<OfferHelpRequestView> {
  //all Images
  // Images
  List<String> images = List.generate(
    10,
    (i) => "assets/images/admin/imagelisting/${i + 1}.png",
  );
  // ignore: deprecated_member_use
  List<Map<String, dynamic>> helpUsers = [
    {
      'requestId': 'OHR-3001',
      'offeredBy': '@food4karachi',
      'helpType': 'Food',
      'location': 'Karachi',
      'availability': 'Daily: 1-4 PM',
      'submissionDate': '2025-06-16',
      // ignore: deprecated_member_use
      'status': {'text': 'Pending', 'color': Colors.orange.withOpacity(0.5)},
      // ignore: deprecated_member_use
      'actions1': {'text': 'View', 'color': Colors.black.withOpacity(0.5)},
      'actions2': {'text': 'Approve', 'color': Colors.blue.withOpacity(0.5)},

      'actions3': {'text': 'Reject', 'color': Colors.red.withOpacity(0.5)},
    },
    {
      'requestId': 'OHR-3002',
      'offeredBy': '@shelter_hope',
      'helpType': 'Shelter',
      'location': 'Lahore',
      'availability': '24/7 availability',
      'submissionDate': '2025-06-15',
      'status': {'text': 'Verified', 'color': Colors.green.withOpacity(0.5)},
      'actions1': {'text': 'View', 'color': Colors.black.withOpacity(0.5)},
      'actions2': {'text': 'Approve', 'color': Colors.blue.withOpacity(0.5)},
      'actions3': {'text': 'Reject', 'color': Colors.red.withOpacity(0.5)},
    },
    {
      'requestId': 'OHR-3003',
      'offeredBy': '@ahsan_foundation',
      'helpType': 'Medical',
      'location': 'Islamabad',
      'availability': 'Weekdays: 10 AM-3 PM',
      'submissionDate': '2025-06-14',
      'status': {'text': 'Pending', 'color': Colors.orange.withOpacity(0.5)},
      'actions1': {'text': 'View', 'color': Colors.black.withOpacity(0.5)},
      'actions2': {'text': 'Approve', 'color': Colors.blue.withOpacity(0.5)},
      'actions3': {'text': 'Reject', 'color': Colors.red.withOpacity(0.5)},
    },
    {
      'requestId': 'OHR-3004',
      'offeredBy': '@amna_ngo',
      'helpType': 'Food',
      'location': 'Peshawar',
      'availability': 'Evenings: 5-8 PM',
      'submissionDate': '2025-06-13',
      'status': {'text': 'Rejected', 'color': Colors.red.withOpacity(0.5)},
      'actions1': {'text': 'View', 'color': Colors.black.withOpacity(0.5)},
      'actions2': {'text': 'Approve', 'color': Colors.blue.withOpacity(0.5)},
      'actions3': {'text': 'Reject', 'color': Colors.red.withOpacity(0.5)},
    },
    {
      'requestId': 'OHR-3005',
      'offeredBy': '@raheel_aid',
      'helpType': 'Shelter',
      'location': 'Quetta',
      'availability': 'Weekends only',
      'submissionDate': '2025-06-12',
      'status': {'text': 'Pending', 'color': Colors.orange.withOpacity(0.5)},
      'actions1': {'text': 'View', 'color': Colors.black.withOpacity(0.5)},
      'actions2': {'text': 'Approve', 'color': Colors.blue.withOpacity(0.5)},
      'actions3': {'text': 'Reject', 'color': Colors.red.withOpacity(0.5)},
    },
    {
      'requestId': 'OHR-3006',
      'offeredBy': '@dr_hiba_clinic',
      'helpType': 'Medical',
      'location': 'Karachi',
      'availability': 'Mon-Wed-Fri: 2-6 PM',
      'submissionDate': '2025-06-12',
      'status': {'text': 'Pending', 'color': Colors.orange.withOpacity(0.5)},
      'actions1': {'text': 'View', 'color': Colors.black.withOpacity(0.5)},
      'actions2': {'text': 'Approve', 'color': Colors.blue.withOpacity(0.5)},
      'actions3': {'text': 'Reject', 'color': Colors.red.withOpacity(0.5)},
    },
    {
      'requestId': 'OHR-3007',
      'offeredBy': '@madad_org',
      'helpType': 'Other',
      'location': 'Hyderabad',
      'availability': 'Flexible on request',
      'submissionDate': '2025-06-11',
      'status': {'text': 'Verified', 'color': Colors.green.withOpacity(0.5)},
      'actions1': {'text': 'View', 'color': Colors.black.withOpacity(0.5)},
      // ignore: deprecated_member_use
      'actions2': {'text': 'Approve', 'color': Colors.blue.withOpacity(0.5)},
      'actions3': {'text': 'Reject', 'color': Colors.red.withOpacity(0.5)},
    },
    {
      'requestId': 'OHR-3008',
      'offeredBy': '@pak_volunteers',
      'helpType': 'Food',
      'location': 'Multan',
      'availability': 'Fridays only',
      'submissionDate': '2025-06-10',
      'status': {'text': 'Verified', 'color': Colors.green.withOpacity(0.5)},
      'actions1': {'text': 'View', 'color': Colors.black.withOpacity(0.5)},
      'actions2': {'text': 'Approve', 'color': Colors.blue.withOpacity(0.5)},
      'actions3': {'text': 'Reject', 'color': Colors.red.withOpacity(0.5)},
    },
    {
      'requestId': 'OHR-3009',
      'offeredBy': '@abdullah_help',
      'helpType': 'Shelter',
      'location': 'Rawalpindi',
      'availability': 'Daily: 6-10 PM',
      'submissionDate': '2025-06-09',
      'status': {'text': 'Pending', 'color': Colors.orange.withOpacity(0.5)},
      'actions1': {'text': 'View', 'color': Colors.black.withOpacity(0.5)},
      'actions2': {'text': 'Approve', 'color': Colors.blue.withOpacity(0.5)},
      'actions3': {'text': 'Reject', 'color': Colors.red.withOpacity(0.5)},
    },
    {
      'requestId': 'OHR-3010',
      'offeredBy': '@shifa_care',
      'helpType': 'Medical',
      'location': 'Faisalabad',
      'availability': 'Urgent aid only (on call)',
      'submissionDate': '2025-06-08',
      'status': {'text': 'Verified', 'color': Colors.green.withOpacity(0.5)},
      'actions1': {'text': 'View', 'color': Colors.black.withOpacity(0.5)},
      'actions2': {'text': 'Approve', 'color': Colors.blue.withOpacity(0.5)},
      'actions3': {'text': 'Reject', 'color': Colors.red.withOpacity(0.5)},
    },
  ];
  //help user data //

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
                    "Offer Help Requests",
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
                          text: "Data Review / Moderation \n\n",
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
                              "This panel is used by admins to review and verify help offers submitted by individuals or organizations. These offers can include food distribution, shelter provision, or medical aid. After verification, approved offers are added to the live service listings.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            letterSpacing: 0.75,
                            height: 1.4,
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
                              width: 350.w,

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

                                  hint: Text(
                                    "Keyword, user/org name, location ",
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            SizedBox(width: 10.w),
                            Consumer<OfferHelpViewModel>(
                              builder: (context, vm, child) {
                                return Container(
                                  width: 140.w,
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
                                    items: vm.statusOption
                                        .map(
                                          (item) => DropdownMenuItem(
                                            value: item.value,
                                            child: Text(item.value),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) {
                                      vm.updateSelectedStatus(value!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<OfferHelpViewModel>(
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
                                    value: vm.selectedHelp,
                                    items: vm.helpOptions.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      vm.updateSelectedHelp(value!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<OfferHelpViewModel>(
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
                            SizedBox(width: 20.w),
                            Consumer<OfferHelpViewModel>(
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
                                    value: vm.selectedLocation,
                                    items: vm.locationOptions.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedLocation(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                      //2nd section
                      Row(
                        children: [
                          SizedBox(
                            child: Text(
                              "All 56",
                              style: TextStyle(fontSize: 18.sp),
                            ),
                          ),
                          DropdownButton(
                            iconSize: 30.sp,
                            dropdownColor: Color(0XFF9FA2AB),
                            items: [],
                            onChanged: (value) {},
                          ),
                          SizedBox(width: 35.w),
                          _buildButton("Add New", Icons.add),
                          SizedBox(width: 35.w),
                          _buildButton("Export List", Icons.file_open_outlined),
                          SizedBox(width: 35.w),
                          _buildButton(
                            "Generate Listing Reports",
                            FontAwesomeIcons.listCheck,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
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
                                  ...List.generate(10, (index) {
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
                              ...List.generate(images.length, (index) {
                                return _buildContainerImage(images[index]);
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //3rd
                          Column(
                            children: [
                              _buildTitleText(text: "Request ID", width: 150),
                              ...List.generate(helpUsers.length, (index) {
                                return _buildTextContainer(
                                  width: 150,
                                  text: helpUsers[index]["requestId"],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //4th
                          Column(
                            children: [
                              _buildTitleText(text: "Offered By", width: 150),
                              ...List.generate(helpUsers.length, (index) {
                                return _buildTextContainer(
                                  width: 150,
                                  text: helpUsers[index]["offeredBy"],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //5th
                          Column(
                            children: [
                              _buildTitleText(text: "Help Type", width: 100),
                              ...List.generate(helpUsers.length, (index) {
                                return _buildTextContainer(
                                  width: 100,
                                  text: helpUsers[index]["helpType"],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //6th
                          Column(
                            children: [
                              _buildTitleText(text: "Location", width: 120),
                              ...List.generate(helpUsers.length, (index) {
                                return _buildTextContainer(
                                  width: 120,
                                  text: helpUsers[index]["location"],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //7th
                          Column(
                            children: [
                              _buildTitleText(text: "Availability", width: 200),
                              ...List.generate(helpUsers.length, (index) {
                                return _buildTextContainer(
                                  width: 200,
                                  text: helpUsers[index]["availability"],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              _buildTitleText(
                                text: "submission Date",
                                width: 200,
                              ),
                              ...List.generate(helpUsers.length, (index) {
                                return _buildTextContainer(
                                  width: 200,
                                  text: helpUsers[index]["submissionDate"],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              _buildTitleText(text: "Status", width: 100),
                              ...List.generate(helpUsers.length, (index) {
                                return _buildTextContainer(
                                  width: 100,
                                  text: helpUsers[index]["status"]["text"],
                                  color: helpUsers[index]["status"]["color"],
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
                                helpUsers.length,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: helpUsers[index]["actions1"]["text"],
                                  color: helpUsers[index]["actions1"]["color"],
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
                                helpUsers.length,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: helpUsers[index]["actions2"]["text"],
                                  color: helpUsers[index]["actions2"]["color"],
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
                                helpUsers.length,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: helpUsers[index]["actions3"]["text"],
                                  color: helpUsers[index]["actions3"]["color"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),

                          //12th
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
