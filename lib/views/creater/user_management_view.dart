import 'package:first_app/view_models/Table_view_model.dart';

import 'package:first_app/view_models/user_management_view_model.dart';
import 'package:first_app/views/creater/Drawer/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserManagementView extends StatefulWidget {
  const UserManagementView({super.key});

  @override
  State<UserManagementView> createState() => _UserManagementViewState();
}

class _UserManagementViewState extends State<UserManagementView> {
  List<String> images = List.generate(
    6,
    (i) => "assets/images/admin/imagelisting/${i + 1}.png",
  );
  //this list for basically all user
  List<Map<String, dynamic>> users = [
    {
      'userID': 'U-1001',
      'userName': '@ahmed_khan',
      'role': 'Help Seeker',
      'joinDate': '2025-05-21',
      'servicesInteracted': '12 Requests',
      'status': 'Active',
      'actions': ['View Profile', 'Ban', 'Flag'],

      'rowColor': Color(0XFFFF7ED957), // Green
    },
    {
      'userID': 'U-1002',
      'userName': '@foodckarachi',
      'role': 'Help Provider',
      'joinDate': '2025-04-15',
      'servicesInteracted': '8 Listings',
      'status': 'Active',
      'actions': ['View Profile', 'Ban', 'Flag'],

      'rowColor': Color(0XFFFF7ED957), // Green
    },
    {
      'userID': 'U-1003',
      'userName': '@sana_dev',
      'role': 'NGO Admin',
      'joinDate': '2025-03-10',
      'servicesInteracted': '21 Listings',
      'status': 'Active',
      'flagsCount': '2',
      'lastFlag': 'Spam re',
      'actions': ['View Profile', 'Ban', 'Flag'],

      'rowColor': Color(0XFFFFFFF59D), // Yellow
    },
    {
      'userID': 'U-1004',
      'userName': '@ali_folkuser',
      'role': 'Help Seeker',
      'joinDate': '2025-06-30',
      'servicesInteracted': '1 Request',
      'status': 'Flagged',
      'flagsCount': '3',
      'lastFlag': 'Frauduler',
      'actions': ['View Profile', 'Ban', 'Flag'],
      // ignore: use_full_hex_values_for_flutter_colors
      'rowColor': Color(0XFF0FFFFB74D), // Orange
    },
    {
      'userID': 'U-1005',
      'userName': '@shifa_ost',
      'role': 'Help Provider',
      'joinDate': '2025-02-2',
      'servicesInteracted': '25 Listings',
      'status': 'Banned',
      'actions': ['View Profile', 'Ban', 'Flag'],

      'rowColor': Color(0XFFFFFF8A80), // Red
    },
    {
      'userID': 'U-1006',
      'userName': '@muhnoor_help',
      'role': 'Help Provider',
      'joinDate': '2025-06-01',
      'servicesInteracted': '0',
      'status': 'Active',
      'actions': ['View Profile', 'Ban', 'Flag'],

      // ignore: use_full_hex_values_for_flutter_colors
      'rowColor': Color(0XFFFF7ED957), // Green
    },
  ];
  // Flagged Users List
  List<Map<String, dynamic>> flaggedUsers = [
    {
      'userID': 'U-1004',
      'userName': '@ali_folkuser',

      'flagCount': '3',
      'lastFlagReason': 'Fraudulent listing',
      'dateFlagged': '2025-06-10',
      'actions': <Map<String, dynamic>>[
        // ignore: use_full_hex_values_for_flutter_colors
        {'name': 'View Profile', 'color': Color(0XFFFF6B7280)}, // Gray
        // ignore: use_full_hex_values_for_flutter_colors
        {'name': 'Ban', 'color': Color(0XFFFFFF8A80)}, // Red
        // ignore: use_full_hex_values_for_flutter_colors
        {'name': 'Dismiss Flag', 'color': Color(0XFFFFFF8A80)}, // Red
      ],
      // Red indicator
    },
    {
      'userID': 'U-1007',
      'userName': '@rana_dev',

      'flagCount': '2',
      'lastFlagReason': 'Spam requests',
      'dateFlagged': '2025-06-12',
      'actions': [
        {'name': 'View Profile', 'color': Color(0XFFFF6B7280)}, // Gray

        {'name': 'Warn', 'color': Color(0XFFFFFFA726)}, // Yellow/Orange
        {'name': 'Dismiss Flag', 'color': Color(0XFFFFFF8A80)}, // Red
      ],
      'statusColor': 0xFFFFA726, // Orange/Yellow indicator
    },
  ];
  // Banned Users List
  List<Map<String, dynamic>> bannedUsers = [
    {
      'userID': 'U-1005',
      'userName': '@shifa_ost',
      'banDate': '2025-06-05',
      'reason': 'Repeated false claims',
      'actions': [
        {'name': 'View Profile', 'color': Color(0xFF808080)}, // Gray
        {'name': 'Unban', 'color': Color(0xFFFF8A80)}, // Red
      ],
    },
    {
      'userID': 'U-1008',
      'userName': '@said_spammer',
      'banDate': '2025-06-08',
      'reason': 'Abuse in feedback',
      'actions': [
        {'name': 'View Profile', 'color': Color(0xFF808080)}, // Gray
        {'name': 'Unban', 'color': Color(0xFFFF8A80)}, // Red
      ],
    },
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
                    "User Management",
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
                          text: "User Data / Moderation \n\n",
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
                              "This section allows admins to monitor all platform users (both those seeking and offering help), review their activity logs, manage warnings or bans, and ensure community guidelines are followed.",
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
                          children: [
                            Container(
                              width: 240.w,

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
                            Consumer<UserManagementViewModel>(
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
                                    items: vm.statusOptions.map((item) {
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
                            Consumer<UserManagementViewModel>(
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
                                    value: vm.selectedRole,
                                    items: vm.roleOption.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedRole(newVal!);
                                    },
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.w),
                            Consumer<UserManagementViewModel>(
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
                                    value: vm.selectedJoinData,
                                    items: vm.joinDataOption.map((item) {
                                      return DropdownMenuItem(
                                        value: item.value,
                                        child: Text(item.value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newVal) {
                                      vm.updateSelectedJoinData(newVal!);
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
                          SizedBox(child: Text("All (16)")),
                          SizedBox(width: 3.w),
                          DropdownButton(items: [], onChanged: (value) {}),
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
                                  ...List.generate(6, (index) {
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

                              ...List.generate(
                                images.length,
                                (index) => _buildContainerImage(images[index]),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //3rd
                          Column(
                            children: [
                              _buildTitleText(text: "User ID", width: 150),
                              ...List.generate(
                                users.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: users[index]["userID"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //4th
                          Column(
                            children: [
                              _buildTitleText(text: "User Name", width: 150),
                              ...List.generate(
                                users.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: users[index]['userName'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //5th
                          Column(
                            children: [
                              _buildTitleText(text: "Role", width: 200),
                              ...List.generate(
                                users.length,
                                (index) => _buildTextContainer(
                                  width: 200,
                                  text: users[index]['role'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //6th
                          Column(
                            children: [
                              _buildTitleText(text: 'Join Date', width: 150),
                              ...List.generate(
                                users.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: users[index]['joinDate'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //7th
                          Column(
                            children: [
                              _buildTitleText(
                                text: 'servicesInteracted',
                                width: 170,
                              ),
                              ...List.generate(
                                users.length,
                                (index) => _buildTextContainer(
                                  width: 170,
                                  text: users[index]['servicesInteracted'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //8th
                          Column(
                            children: [
                              _buildTitleText(text: "Status", width: 100),
                              ...List.generate(
                                users.length,
                                (index) => _buildTextContainer(
                                  width: 100,
                                  text: users[index]['status'],
                                  color: users[index]["rowColor"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //9th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 100),
                              ...List.generate(
                                users.length,
                                (index) => _buildActionWidget(
                                  width: 100,
                                  text: users[index]["actions"][0],
                                  color: Colors.grey,
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
                                users.length,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: users[index]["actions"][1],
                                  color: Colors.red.withOpacity(0.8),
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
                                users.length,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text: users[index]["actions"][2],
                                  color: Color(0xFFE57373),
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
                      //first section
                      Text(
                        "Flagged User",
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

                              ...List.generate(
                                2,
                                (index) => _buildContainerImage(images[index]),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //3rd
                          Column(
                            children: [
                              _buildTitleText(text: "User ID", width: 150),
                              ...List.generate(
                                flaggedUsers.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: flaggedUsers[index]["userID"],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 10.w),
                          //5th
                          Column(
                            children: [
                              _buildTitleText(text: "User Name", width: 150),
                              ...List.generate(
                                flaggedUsers.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: flaggedUsers[index]['userName'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //6th
                          Column(
                            children: [
                              _buildTitleText(text: 'Flag Count', width: 150),
                              ...List.generate(
                                flaggedUsers.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: flaggedUsers[index]['flagCount'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              _buildTitleText(
                                text: 'Last Flag Reason',
                                width: 200,
                              ),
                              ...List.generate(
                                flaggedUsers.length,
                                (index) => _buildTextContainer(
                                  width: 200,
                                  text: flaggedUsers[index]['lastFlagReason'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //7th
                          Column(
                            children: [
                              _buildTitleText(text: 'Date Flagged', width: 170),
                              ...List.generate(
                                flaggedUsers.length,
                                (index) => _buildTextContainer(
                                  width: 170,
                                  text: flaggedUsers[index]['dateFlagged'],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 10.w),
                          //9th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 100),
                              ...List.generate(
                                flaggedUsers.length,
                                (index) => _buildActionWidget(
                                  width: 100,
                                  text:
                                      flaggedUsers[index]["actions"][0]["name"],
                                  color:
                                      flaggedUsers[index]["actions"][0]["color"],
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
                                flaggedUsers.length,
                                (index) => _buildActionWidget(
                                  width: 80,
                                  text:
                                      flaggedUsers[index]["actions"][1]["name"],
                                  color:
                                      flaggedUsers[index]["actions"][1]["color"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //11th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 100),
                              ...List.generate(
                                flaggedUsers.length,
                                (index) => _buildActionWidget(
                                  width: 100,
                                  text:
                                      flaggedUsers[index]["actions"][2]["name"],
                                  color:
                                      flaggedUsers[index]["actions"][2]["color"],
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

                              ...List.generate(
                                2,
                                (index) => _buildContainerImage(images[index]),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //3rd
                          Column(
                            children: [
                              _buildTitleText(text: "User ID", width: 150),
                              ...List.generate(
                                bannedUsers.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: bannedUsers[index]["userID"],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 10.w),
                          //5th
                          Column(
                            children: [
                              _buildTitleText(text: "User Name", width: 150),
                              ...List.generate(
                                bannedUsers.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: bannedUsers[index]['userName'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //6th
                          Column(
                            children: [
                              _buildTitleText(text: 'Ban Date', width: 150),
                              ...List.generate(
                                bannedUsers.length,
                                (index) => _buildTextContainer(
                                  width: 150,
                                  text: bannedUsers[index]['banDate'],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              _buildTitleText(text: 'Reason', width: 200),
                              ...List.generate(
                                bannedUsers.length,
                                (index) => _buildTextContainer(
                                  width: 200,
                                  text: bannedUsers[index]['reason'],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 10.w),
                          //9th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 100),
                              ...List.generate(
                                bannedUsers.length,
                                (index) => _buildActionWidget(
                                  width: 100,
                                  text:
                                      bannedUsers[index]["actions"][0]["name"],
                                  color:
                                      bannedUsers[index]["actions"][0]["color"],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          //10th
                          Column(
                            children: [
                              _buildTitleText(text: "Actions", width: 100),
                              ...List.generate(
                                bannedUsers.length,
                                (index) => _buildActionWidget(
                                  width: 100,
                                  text:
                                      bannedUsers[index]["actions"][1]["name"],
                                  color:
                                      bannedUsers[index]["actions"][1]["color"],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
