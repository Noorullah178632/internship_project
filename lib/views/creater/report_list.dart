import 'package:first_app/models/status_model.dart';
import 'package:first_app/view_models/Table_view_model.dart';
import 'package:first_app/view_models/report_list_view_model.dart';
import 'package:first_app/views/creater/Drawer/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReportList extends StatefulWidget {
  const ReportList({super.key});

  @override
  State<ReportList> createState() => _ReportListState();
}

class _ReportListState extends State<ReportList> {
  //all Images
  // Images
  List<String> images = List.generate(
    10,
    (i) => "assets/images/admin/imagelisting/${i + 1}.png",
  );
  // Report IDs List
  final List<String> reportIds = [
    'RPT-1021',
    'RPT-1022',
    'RPT-1023',
    'RPT-1024',
    'RPT-1025',
    'RPT-1026',
    'RPT-1027',
    'RPT-1028',
    'RPT-1029',
    'RPT-1030',
  ];

  // Service Titles List
  final List<String> serviceTitles = [
    'Free Meals Karachi',
    'Emergency Clinic LHR',
    'Homeless Shelter KHI',
    'Free Medicine Depot',
    'Water Distribution',
    'Karachi Night Aid',
    'City Care Center',
    'Daily Food Support',
    'Safe House Islamabad',
    'First Aid Box Hub',
  ];
  // Category List
  final List<String> categories = [
    'Food',
    'Medical',
    'Shelter',
    'Medical',
    'Food',
    'Shelter',
    'Medical',
    'Food',
    'Shelter',
    'Medical',
  ];

  // Reported By List
  final List<String> reportedBy = [
    '@user_ahmad',
    '@sara_789',
    '@ali_909',
    '@fatso_user',
    '@abdullah_r',
    '@amha_dev',
    '@hamnaajaz007',
    '@sam_123',
    '@nohaj_m',
    '@girl_dev',
  ];

  // Reason List
  final List<String> reasons = [
    'Fraud',
    'Inaccuracy',
    'Duplicated',
    'Spam',
    'Inaccuracy',
    'Fraud',
    'Spam',
    'Duplicated',
    'Fraud',
    'Inaccuracy',
  ];

  // Report Date List
  final List<String> reportDates = [
    '2025-06-14',
    '2025-06-13',
    '2025-06-12',
    '2025-06-11',
    '2025-06-10',
    '2025-06-09',
    '2025-06-09',
    '2025-06-08',
    '2025-06-08',
    '2025-06-07',
  ];

  // Resolution Status List
  List<StatusItem> resolutionStatus = [
    StatusItem(text: "Pending", color: Colors.orange),
    StatusItem(text: "Resolved", color: Colors.green),
    StatusItem(text: "Dismissed", color: Colors.pink),
    StatusItem(text: "Pending", color: Colors.orange),
    StatusItem(text: "Pending", color: Colors.orange),
    StatusItem(text: "Resolved", color: Colors.green),
    StatusItem(text: "Pending", color: Colors.orange),
    StatusItem(text: "Dismissed", color: Colors.pink),
    StatusItem(text: "Pending", color: Colors.orange),
    StatusItem(text: "Pending", color: Colors.orange),
  ];
  // Contact NGO/Provider List
  final List<String> contactNGO = [
    'Contact',
    '--',
    '--',
    'Contact',
    'Contact',
    '--',
    '--',
    'Contact',
    '--',
    'Contact',
  ];

  // Warn Provider/NGO List
  final List<String> warnProvider = [
    'Warn',
    '--',
    '--',
    'Warn',
    'Warn',
    '--',
    '--',
    'Warn',
    '--',
    '--',
  ];

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
                    "Reported Listings",
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
                      text: "User Case: :",
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
                              "This module is important for handling abuse reports, improving service quality, and maintaining trust.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            letterSpacing: 0.75,
                            height: 2,
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
                              width: 220.w,

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

                                  hint: Text("By keyword, item, or user "),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            SizedBox(width: 10.w),
                            Consumer<ReportListViewModel>(
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
                                    value: vm.selectedOption1,
                                    items: vm.option1List.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedOption1(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<ReportListViewModel>(
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
                                    value: vm.selectedCategory,
                                    items: vm.categoryList.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedCategory(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<ReportListViewModel>(
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
                                    items: vm.dataRangeList.map((item) {
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
                            Consumer<ReportListViewModel>(
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
                                    value: vm.selectedFeedbackType,
                                    items: vm.feedbackTypeList.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedFeedbackType(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),

                            SizedBox(width: 20.w),
                            Consumer<ReportListViewModel>(
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
                                    value: vm.selectedOption1,
                                    items: vm.option1List.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedOption1(newVal!);
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
                          SizedBox(child: Text("All 56")),
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
                              _buildTitleText(text: "Report ID", width: 200),
                              ...List.generate(reportIds.length, (index) {
                                return _buildTextContainer(
                                  width: 220,
                                  text: reportIds[index],
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
                                width: 200,
                              ),
                              ...List.generate(serviceTitles.length, (index) {
                                return _buildTextContainer(
                                  width: 200,
                                  text: serviceTitles[index],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //5th
                          Column(
                            children: [
                              _buildTitleText(text: "Category", width: 170),
                              ...List.generate(categories.length, (index) {
                                return _buildTextContainer(
                                  width: 170,
                                  text: categories[index],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //6th
                          Column(
                            children: [
                              _buildTitleText(text: "Reported By", width: 170),
                              ...List.generate(reportedBy.length, (index) {
                                return _buildTextContainer(
                                  width: 170,
                                  text: reportedBy[index],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //7th
                          Column(
                            children: [
                              _buildTitleText(text: "Reason", width: 120),
                              ...List.generate(reasons.length, (index) {
                                return _buildTextContainer(
                                  width: 120,
                                  text: reasons[index],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              _buildTitleText(text: "Report Date", width: 120),
                              ...List.generate(reportDates.length, (index) {
                                return _buildTextContainer(
                                  width: 120,
                                  text: reportDates[index],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),

                          //8th
                          Column(
                            children: [
                              _buildTitleText(
                                text: "Resolution Status",
                                width: 150,
                              ),
                              ...List.generate(
                                resolutionStatus.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: resolutionStatus[index].text,
                                  color: resolutionStatus[index].color,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //9th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 80),
                              ...List.generate(
                                10,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: "View",
                                  color: Color(0xFF9E9E9E),
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
                                10,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: "Approved",
                                  color: Color(0xFF5C6BC0),
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
                                10,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: "Delete",
                                  color: Color(0xFFE57373),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //12th
                          Column(
                            children: [
                              _buildTitleText(
                                text: "Contact NGO/Provider",
                                width: 200,
                              ),
                              ...List.generate(
                                contactNGO.length,
                                (index) => _buildTextContainer(
                                  width: 200,
                                  text: contactNGO[index],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 10.w),
                          //13th
                          Column(
                            children: [
                              _buildTitleText(
                                text: "Warn Provider/NGO",
                                width: 200,
                              ),
                              ...List.generate(
                                warnProvider.length,
                                (index) => _buildTextContainer(
                                  width: 200,
                                  text: warnProvider[index],
                                ),
                              ),
                            ],
                          ),
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
                    ],
                  ),
                ),
              ),
            ),
            //User Feedback
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
                    "User Feedback",
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
                      text: "User Case:",
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
                              "All user-submitted feedback, whether positive or negative, about listed services or NGOs.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            letterSpacing: 0.75,
                            height: 2,
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

                                  hint: Text("Search "),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            SizedBox(width: 10.w),
                            Consumer<ReportListViewModel>(
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
                                    items: vm.statusList.map((item) {
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
                            Consumer<ReportListViewModel>(
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
                                    value: vm.selectedCategory,
                                    items: vm.categoryList.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedCategory(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<ReportListViewModel>(
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
                                    items: vm.dataRangeList.map((item) {
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
                            Consumer<ReportListViewModel>(
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
                                    value: vm.selectedFeedbackType,
                                    items: vm.feedbackTypeList.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedFeedbackType(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),

                            SizedBox(width: 20.w),
                            Consumer<ReportListViewModel>(
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
                                    value: vm.selectedReport,
                                    items: vm.reportList.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedReport(newVal!);
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
                          SizedBox(child: Text("All 56")),
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
                              _buildTitleText(text: "Feedback ID", width: 200),
                              ...List.generate(feedbackIds.length, (index) {
                                return _buildTextContainer(
                                  width: 220,
                                  text: feedbackIds[index],
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
                                width: 200,
                              ),
                              ...List.generate(service_Titles.length, (index) {
                                return _buildTextContainer(
                                  width: 200,
                                  text: service_Titles[index],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //5th
                          Column(
                            children: [
                              _buildTitleText(text: "Feedback", width: 170),
                              ...List.generate(categories.length, (index) {
                                return _buildTextContainer(
                                  width: 170,
                                  text: feedbackTypes[index].text,
                                  color: feedbackTypes[index].color.withOpacity(
                                    0.3,
                                  ),
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //6th
                          Column(
                            children: [
                              _buildTitleText(
                                text: "Comment Snippet",
                                width: 250,
                              ),
                              ...List.generate(reportedBy.length, (index) {
                                return _buildTextContainer(
                                  width: 250,
                                  text: commentSnippets[index],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //7th
                          Column(
                            children: [
                              _buildTitleText(text: "Submitted By", width: 150),
                              ...List.generate(reasons.length, (index) {
                                return _buildTextContainer(
                                  width: 150,
                                  text: submittedBy[index],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              _buildTitleText(
                                text: "Date Submitted",
                                width: 140,
                              ),
                              ...List.generate(reportDates.length, (index) {
                                return _buildTextContainer(
                                  width: 140,
                                  text: dateSubmitted[index],
                                );
                              }),
                            ],
                          ),
                          SizedBox(width: 10.w),

                          //8th
                          Column(
                            children: [
                              _buildTitleText(text: "Tags", width: 150),
                              ...List.generate(
                                resolutionStatus.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: tags[index],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //9th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 80),
                              ...List.generate(
                                10,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: "View",
                                  color: Color(0xFF9E9E9E),
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
                                10,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: "Delete",
                                  color: Color(0xFFE57373),
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
                            //2nd
                            //end
                          ),
                        ],
                      ),
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

      child: CircleAvatar(
        child: Image.asset(imagePath, width: 36.w, height: 36.h),
      ),
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
  //tags

  final List<String> tags = [
    'UI',
    'UI',
    'Accessibility',
    'Suggestions',
    'Accessibility',
    'UI',
    'Suggestions',
    'Accessibility',
    'Suggestions',
    'UI',
  ];
  //comment snipptent
  final List<String> commentSnippets = [
    "Very helpful staff and timely food.",
    "Clinic was closed during posted hours.",
    "Clean and safe shelter, thanks!",
    "Didn't receive all the listed medicine.",
    "Water was clean and delivered on time.",
    "Staff was rude to patients.",
    "Warm beds and good care. Highly grateful.",
    "Only 1 person there and long wait time.",
    "Best initiative! Please expand this.",
    "No one responded on emergency call.",
  ];
  final List<String> service_Titles = [
    'Free Meals Karachi',
    'Emergency Clinic LHR',
    'Homeless Shelter KHI',
    'Free Medicine Depot',
    'Water Distribution',
    'City Care Center',
    'Safe House Islamabad',
    'First Aid Box Hub',
    'Daily Food Support',
    'Karachi Night Aid',
  ];

  final List<StatusItem> feedbackTypes = [
    StatusItem(text: "Positive", color: Colors.green),
    StatusItem(text: "Negative", color: Colors.pink),
    StatusItem(text: "Positive", color: Colors.green),
    StatusItem(text: "Negative", color: Colors.pink),
    StatusItem(text: "Positive", color: Colors.green),
    StatusItem(text: "Negative", color: Colors.pink),
    StatusItem(text: "Positive", color: Colors.green),
    StatusItem(text: "Negative", color: Colors.pink),
    StatusItem(text: "Positive", color: Colors.green),
    StatusItem(text: "Negative", color: Colors.pink),
  ];

  final List<String> comments = [
    "Very helpful...",
    "Clinic was cl...",
    "Clean and...",
    "Didn't receive...",
    "Water was cl...",
    "Staff is...",
    "Warm beds on...",
    "Only 1 person...",
    "Best initiative...",
    "No one respo...",
  ];
  // Feedback ID List
  final List<String> feedbackIds = [
    'FBK-2001',
    'FBK-2002',
    'FBK-2003',
    'FBK-2004',
    'FBK-2005',
    'FBK-2006',
    'FBK-2007',
    'FBK-2008',
    'FBK-2009',
    'FBK-2010',
  ];
  final List<String> submittedBy = [
    '@hira_123',
    '@user_ahmad',
    '@ali_909',
    '@fatso_user',
    '@abdullah_r',
    '@hamnaajaz007',
    '@nohaj_m',
    '@girl_dev',
    '@sam_123',
    '@amha_dev',
  ];

  final List<String> dateSubmitted = [
    '2025-06-14',
    '2025-06-13',
    '2025-06-12',
    '2025-06-11',
    '2025-06-10',
    '2025-06-09',
    '2025-06-08',
    '2025-06-07',
    '2025-06-07',
    '2025-06-06',
  ];
}
